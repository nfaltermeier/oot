/*
 * File: z_bg_mori_hashira4
 * Overlay: ovl_Bg_Mori_Hashira4
 * Description: Forest Temple gates and rotating pillars
 */

#include "z_bg_mori_hashira4.h"

#define FLAGS 0x00000010

#define THIS ((BgMoriHashira4*)thisx)

void BgMoriHashira4_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashira4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashira4_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashira4_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMoriHashira4_SetupWaitForMoriTex(BgMoriHashira4* this);
void BgMoriHashira4_WaitForMoriTex(BgMoriHashira4* this, GlobalContext* globalCtx);
void BgMoriHashira4_SetupPillarsRotate(BgMoriHashira4* this);
void BgMoriHashira4_PillarsRotate(BgMoriHashira4* this, GlobalContext* globalCtx);
void BgMoriHashira4_GateWait(BgMoriHashira4* this, GlobalContext* globalCtx);
void BgMoriHashira4_GateOpen(BgMoriHashira4* this, GlobalContext* globalCtx);

extern ColHeader D_06001AF8;
extern ColHeader D_060089E0;

const ActorInit Bg_Mori_Hashira4_InitVars = {
    ACTOR_BG_MORI_HASHIRA4,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriHashira4),
    (ActorFunc)BgMoriHashira4_Init,
    (ActorFunc)BgMoriHashira4_Destroy,
    (ActorFunc)BgMoriHashira4_Update,
    NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

static Gfx* sDisplayLists[] = { 0x06001300, 0x06008840 };

static s16 sUnkTimer; // seems to be unused

void BgMoriHashira4_SetupAction(BgMoriHashira4* this, BgMoriHashira4ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgMoriHashira4_InitDynaPoly(BgMoriHashira4* this, GlobalContext* globalCtx, ColHeader* collision, s32 moveFlag) {
    s32 pad;
    ColHeader* colHeader;
    s32 pad2;

    colHeader = NULL;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(collision, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.dynaPolyId == 0x32) {
        // Warning : move BG login failed
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_mori_hashira4.c", 155,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void BgMoriHashira4_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashira4* this = THIS;

    this->switchFlag = (this->dyna.actor.params >> 8) & 0x3F;
    this->dyna.actor.params &= 0xFF;

    if (this->dyna.actor.params == 0) {
        BgMoriHashira4_InitDynaPoly(this, globalCtx, &D_06001AF8, DPM_UNK3);
    } else {
        BgMoriHashira4_InitDynaPoly(this, globalCtx, &D_060089E0, DPM_UNK);
    }
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->moriTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjIndex < 0) {
        Actor_Kill(&this->dyna.actor);
        // Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->dyna.actor.params,
                     "../z_bg_mori_hashira4.c", 196);
        return;
    }
    if ((this->dyna.actor.params != 0) && Flags_GetSwitch(globalCtx, this->switchFlag)) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_SetHeight(&this->dyna.actor, 50.0f);
    BgMoriHashira4_SetupWaitForMoriTex(this);
    // (4 pillars of the Forest Temple) Bank danger
    osSyncPrintf("(森の神殿 ４本柱)(arg_data 0x%04x)\n", this->dyna.actor.params);
    sUnkTimer = 0;
}

void BgMoriHashira4_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashira4* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgMoriHashira4_SetupWaitForMoriTex(BgMoriHashira4* this) {
    BgMoriHashira4_SetupAction(this, BgMoriHashira4_WaitForMoriTex);
}

void BgMoriHashira4_WaitForMoriTex(BgMoriHashira4* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->moriTexObjIndex)) {
        this->gateTimer = 0;
        if (this->dyna.actor.params == 0) {
            BgMoriHashira4_SetupPillarsRotate(this);
        } else {
            BgMoriHashira4_SetupAction(this, BgMoriHashira4_GateWait);
        }
        this->dyna.actor.draw = BgMoriHashira4_Draw;
    }
}

void BgMoriHashira4_SetupPillarsRotate(BgMoriHashira4* this) {
    BgMoriHashira4_SetupAction(this, BgMoriHashira4_PillarsRotate);
}

void BgMoriHashira4_PillarsRotate(BgMoriHashira4* this, GlobalContext* globalCtx) {
    this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y += 0x96;
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
}

void BgMoriHashira4_GateWait(BgMoriHashira4* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag) || (this->gateTimer != 0)) {
        this->gateTimer++;
        if (this->gateTimer > 30) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_OPEN);
            BgMoriHashira4_SetupAction(this, BgMoriHashira4_GateOpen);
            func_800800F8(globalCtx, 0x177A, 0x14, &this->dyna.actor, 0);
            sUnkTimer++;
        }
    }
}

void BgMoriHashira4_GateOpen(BgMoriHashira4* this, GlobalContext* globalCtx) {
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 120.0f, 10.0f)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgMoriHashira4_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashira4* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgMoriHashira4_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashira4* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_hashira4.c", 339);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, globalCtx->objectCtx.status[this->moriTexObjIndex].segment);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_hashira4.c", 344),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, sDisplayLists[this->dyna.actor.params]);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_hashira4.c", 348);
}
