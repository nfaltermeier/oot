/*
 * File: z_bg_po_event.c
 * Overlay: ovl_Bg_Po_Event
 * Description: Poe sisters' paintings and puzzle blocks
 */

#include "z_bg_po_event.h"

#define FLAGS 0x00000000

#define THIS ((BgPoEvent*)thisx)

void BgPoEvent_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgPoEvent_BlockWait(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockShake(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockFall(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockIdle(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockPush(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockReset(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockSolved(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_AmyWait(BgPoEvent* this, GlobalContext* globalCtx); // Amy is the green Poe
void BgPoEvent_AmyPuzzle(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingEmpty(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingAppear(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingPresent(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingBurn(BgPoEvent* this, GlobalContext* globalCtx);

extern Gfx D_060075A0[];
extern Gfx D_060079E0[];
extern Gfx D_06006830[];
extern Gfx D_06006D60[];
extern Gfx D_06007230[];
extern ColHeader D_06007860;

const ActorInit Bg_Po_Event_InitVars = {
    ACTOR_BG_PO_EVENT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(BgPoEvent),
    (ActorFunc)BgPoEvent_Init,
    (ActorFunc)BgPoEvent_Destroy,
    (ActorFunc)BgPoEvent_Update,
    (ActorFunc)BgPoEvent_Draw,
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f } } },
    },
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f }, { 25.0f, -33.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

static u8 sBlocksAtRest = 0;

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

static u8 sPuzzleState;

void BgPoEvent_InitPaintings(BgPoEvent* this, GlobalContext* globalCtx) {
    static s16 paintingPosX[] = { -1302, -866, 1421, 985 };
    static s16 paintingPosY[] = { 1107, 1091 };
    static s16 paintingPosZ[] = { -3384, -3252 };
    ColliderTrisItemInit* item;
    Vec3f* vtxVec;
    s32 i1;
    s32 i2;
    Vec3f sp9C[3];
    f32 coss;
    f32 sins;
    f32 scaleY;
    s32 phi_t2;
    Actor* newPainting;

    sins = Math_SinS(this->dyna.actor.shape.rot.y);
    coss = Math_CosS(this->dyna.actor.shape.rot.y);
    if (this->type == 4) {
        sins *= 2.4f;
        scaleY = 1.818f;
        coss *= 2.4f;
    } else {
        scaleY = 1.0f;
    }
    for (i1 = 0; i1 < sTrisInit.count; i1++) {
        item = &sTrisInit.list[i1];
        if (1) {} // This section looks like a macro of some sort.
        for (i2 = 0; i2 < 3; i2++) {
            vtxVec = &item->dim.vtx[i2];
            sp9C[i2].x = (vtxVec->x * coss) + (this->dyna.actor.initPosRot.pos.x + (sins * vtxVec->z));
            sp9C[i2].y = (vtxVec->y * scaleY) + this->dyna.actor.initPosRot.pos.y;
            sp9C[i2].z = this->dyna.actor.initPosRot.pos.z + (coss * vtxVec->z) - (vtxVec->x * sins);
        }
        func_800627A0(&this->collider, i1, &sp9C[0], &sp9C[1], &sp9C[2]);
    }
    if ((this->type != 4) && (this->index != 2)) {
        phi_t2 = (this->type == 2) ? this->index : this->index + 2;
        newPainting = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_PO_EVENT,
                                         paintingPosX[phi_t2], paintingPosY[this->index], paintingPosZ[this->index], 0,
                                         this->dyna.actor.shape.rot.y + 0x8000, 0,
                                         ((this->index + 1) << 0xC) + (this->type << 8) + this->dyna.actor.params);
        if (newPainting == NULL) {
            Actor_Kill(&this->dyna.actor);
            return;
        }
        if (this->index == 0) {
            if (this->dyna.actor.child->child == NULL) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            this->dyna.actor.parent = this->dyna.actor.child->child;
            this->dyna.actor.child->child->child = &this->dyna.actor;
        }
    }
    this->timer = 0;
    if (this->type == 4) {
        sPuzzleState = 0;
        this->actionFunc = BgPoEvent_AmyWait;
    } else {
        sPuzzleState = (s32)(Rand_ZeroOne() * 3.0f) % 3;
        this->actionFunc = BgPoEvent_PaintingEmpty;
    }
}

void BgPoEvent_InitBlocks(BgPoEvent* this, GlobalContext* globalCtx) {
    static s16 blockPosX[] = { 2149, 1969, 1909 };
    static s16 blockPosZ[] = { -1410, -1350, -1530 };
    Actor* newBlock;
    ColHeader* colHeader = NULL;
    s32 bgId;

    this->dyna.actor.flags |= 0x30;
    DynaPolyInfo_Alloc(&D_06007860, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    if ((this->type == 0) && (this->index != 3)) {
        newBlock = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_PO_EVENT,
                                      blockPosX[this->index], this->dyna.actor.posRot.pos.y, blockPosZ[this->index], 0,
                                      this->dyna.actor.shape.rot.y, this->dyna.actor.shape.rot.z - 0x4000,
                                      ((this->index + 1) << 0xC) + (this->type << 8) + this->dyna.actor.params);
        if (newBlock == NULL) {
            Actor_Kill(&this->dyna.actor);
            return;
        }
        if (this->index == 0) {
            if (this->dyna.actor.child->child == NULL) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (this->dyna.actor.child->child->child == NULL) {
                Actor_Kill(&this->dyna.actor);
                Actor_Kill(this->dyna.actor.child);
                return;
            }
            this->dyna.actor.parent = this->dyna.actor.child->child->child;
            this->dyna.actor.child->child->child->child = &this->dyna.actor;
        }
    }
    this->dyna.actor.posRot.pos.y = 833.0f;
    this->dyna.actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &bgId, &this->dyna.actor,
                                             &this->dyna.actor.posRot.pos);
    this->actionFunc = BgPoEvent_BlockWait;
}

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgPoEvent_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgPoEvent* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->type = (thisx->params >> 8) & 0xF;
    this->index = (thisx->params >> 0xC) & 0xF;
    thisx->params &= 0x3F;

    if (this->type >= 2) {
        Collider_InitTris(globalCtx, &this->collider);
        Collider_SetTris(globalCtx, &this->collider, thisx, &sTrisInit, this->colliderItems);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(thisx);
        } else {
            BgPoEvent_InitPaintings(this, globalCtx);
        }
    } else {
        DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(thisx);
        } else {
            BgPoEvent_InitBlocks(this, globalCtx);
        }
    }
}

void BgPoEvent_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgPoEvent* this = THIS;

    if (this->type >= 2) {
        Collider_DestroyTris(globalCtx, &this->collider);
    } else {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        if ((this->type == 1) && (gSaveContext.timer1Value > 0)) {
            gSaveContext.timer1State = 0xA;
        }
    }
}

void BgPoEvent_BlockWait(BgPoEvent* this, GlobalContext* globalCtx) {
    this->dyna.actor.posRot.pos.y = 833.0f;
    if (sPuzzleState == 0x3F) {
        if (this->type == 1) {
            func_800800F8(globalCtx, 0xC4E, 0x41, NULL, 0);
        }
        this->timer = 45;
        this->actionFunc = BgPoEvent_BlockShake;
    } else if (this->dyna.actor.xzDistToLink > 50.0f) {
        if (this->type != 1) {
            sPuzzleState |= (1 << this->index);
        } else {
            sPuzzleState |= 0x10;
        }
    } else if (this->type != 1) {
        sPuzzleState &= ~(1 << this->index);
    } else {
        sPuzzleState &= ~0x10;
    }
}

void BgPoEvent_BlockShake(BgPoEvent* this, GlobalContext* globalCtx) {
    DECR(this->timer);
    if (this->timer < 15) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + 2.0f * ((this->timer % 3) - 1);
        if (!(this->timer % 4)) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
        }
    }
    if (this->timer == 0) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        sPuzzleState = 0;
        this->timer = 60;
        this->actionFunc = BgPoEvent_BlockFall;
    }
}

void BgPoEvent_CheckBlock(BgPoEvent* this) {
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_t0;
    s32 phi_a3;

    if ((this->index == 3) || (this->index == 1)) {
        phi_v1 = this->dyna.actor.posRot.pos.z;
        phi_a1 = this->dyna.actor.child->posRot.pos.z;
        if (this->index == 3) {
            phi_a3 = this->dyna.actor.posRot.pos.x;
            phi_t0 = this->dyna.actor.child->posRot.pos.x;
        } else { // this->index == 1
            phi_a3 = this->dyna.actor.child->posRot.pos.x;
            phi_t0 = this->dyna.actor.posRot.pos.x;
        }
    } else {
        phi_v1 = this->dyna.actor.posRot.pos.x;
        phi_a1 = this->dyna.actor.child->posRot.pos.x;
        if (this->index == 0) {
            phi_a3 = this->dyna.actor.posRot.pos.z;
            phi_t0 = this->dyna.actor.child->posRot.pos.z;
        } else { // this->index == 2
            phi_a3 = this->dyna.actor.child->posRot.pos.z;
            phi_t0 = this->dyna.actor.posRot.pos.z;
        }
    }
    if ((phi_v1 == phi_a1) && ((phi_t0 - phi_a3) == 60)) {
        sPuzzleState |= (1 << this->index);
    } else {
        sPuzzleState &= ~(1 << this->index);
    }
}

void BgPoEvent_BlockFall(BgPoEvent* this, GlobalContext* globalCtx) {
    static s32 firstFall = 0;

    this->dyna.actor.velocity.y++;
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, 433.0f, this->dyna.actor.velocity.y)) {
        this->dyna.actor.flags &= ~0x20;
        this->dyna.actor.velocity.y = 0.0f;
        sBlocksAtRest++;
        if (this->type != 1) {
            BgPoEvent_CheckBlock(this);
        } else {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
            func_80033E88(&this->dyna.actor, globalCtx, 5, 5);
            func_80088B34(this->timer);
            if (firstFall == 0) {
                firstFall = 1;
            } else {
                func_8002DF54(globalCtx, &PLAYER->actor, 7);
            }
        }
        this->direction = 0;
        this->actionFunc = BgPoEvent_BlockIdle;
    }
}

void BgPoEvent_BlockIdle(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* amy;

    if (sPuzzleState == 0xF) {
        this->actionFunc = BgPoEvent_BlockSolved;
        if ((this->type == 0) && (this->index == 0)) {
            amy =
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->dyna.actor.posRot.pos.x + 30.0f,
                            this->dyna.actor.posRot.pos.y - 30.0f, this->dyna.actor.posRot.pos.z + 30.0f, 0,
                            this->dyna.actor.shape.rot.y, 0, this->dyna.actor.params + 0x300);
            if (amy != NULL) {
                func_800800F8(globalCtx, 0xC62, 0x1E, amy, 0);
            }
            func_80078884(NA_SE_SY_CORRECT_CHIME);
            gSaveContext.timer1State = 0xA;
        }
    } else {
        if ((gSaveContext.timer1Value == 0) && (sBlocksAtRest == 5)) {
            player->stateFlags2 &= ~0x10;
            sPuzzleState = 0x10;
            sBlocksAtRest = 0;
        }
        if ((sPuzzleState == 0x40) || ((sPuzzleState == 0x10) && !Player_InCsMode(globalCtx))) {
            this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;
            this->actionFunc = BgPoEvent_BlockReset;
            if (sPuzzleState == 0x10) {
                sPuzzleState = 0x40;
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_RISING);
                func_8002DF54(globalCtx, &player->actor, 8);
            }
        } else if (this->dyna.unk_150 != 0.0f) {
            if (this->direction == 0) {
                if (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) != 0) {
                    sBlocksAtRest--;
                    this->direction = (this->dyna.unk_150 >= 0.0f) ? 1.0f : -1.0f;
                    this->actionFunc = BgPoEvent_BlockPush;
                } else {
                    player->stateFlags2 &= ~0x10;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                player->stateFlags2 &= ~0x10;
                this->dyna.unk_150 = 0.0f;
                DECR(this->direction);
            }
        } else {
            this->direction = 0;
        }
    }
}

void BgPoEvent_BlockPush(BgPoEvent* this, GlobalContext* globalCtx) {
    static f32 blockPushDist = 0.0f;
    f32 displacement;
    s32 blockStop;
    Player* player = PLAYER;

    this->dyna.actor.speedXZ += 0.1f;
    this->dyna.actor.speedXZ = CLAMP_MAX(this->dyna.actor.speedXZ, 2.0f);
    blockStop = Math_StepToF(&blockPushDist, 20.0f, this->dyna.actor.speedXZ);
    displacement = this->direction * blockPushDist;
    this->dyna.actor.posRot.pos.x = (Math_SinS(this->dyna.unk_158) * displacement) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z = (Math_CosS(this->dyna.unk_158) * displacement) + this->dyna.actor.initPosRot.pos.z;
    if (blockStop) {
        player->stateFlags2 &= ~0x10;
        if ((this->dyna.unk_150 > 0.0f) && (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) == 0)) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        }
        this->dyna.unk_150 = 0.0f;
        this->dyna.actor.initPosRot.pos.x = this->dyna.actor.posRot.pos.x;
        this->dyna.actor.initPosRot.pos.z = this->dyna.actor.posRot.pos.z;
        blockPushDist = 0.0f;
        this->dyna.actor.speedXZ = 0.0f;
        this->direction = 5;
        sBlocksAtRest++;
        this->actionFunc = BgPoEvent_BlockIdle;
        if (this->type == 1) {
            return;
        }
        BgPoEvent_CheckBlock(this);
        BgPoEvent_CheckBlock((BgPoEvent*)this->dyna.actor.parent);
    }
    func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void BgPoEvent_BlockReset(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, 493.0f, 1.0f) &&
        Math_ScaledStepToS(&this->dyna.actor.shape.rot.z, this->dyna.actor.posRot.rot.z - 0x4000, 0x400)) {

        this->index = (this->index + 1) % 4;
        this->actionFunc = BgPoEvent_BlockFall;
        sPuzzleState = 0;
        if (this->type == 1) {
            this->timer += 10;
            this->timer = CLAMP_MAX(this->timer, 120);
        }
    }
}

void BgPoEvent_BlockSolved(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
    }
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, 369.0f, 2.0f)) {
        sPuzzleState = 0x20;
        Actor_Kill(&this->dyna.actor);
    }
}

void BgPoEvent_AmyWait(BgPoEvent* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        sPuzzleState |= 0x20;
        this->timer = 5;
        func_8003426C(&this->dyna.actor, 0x4000, 0xFF, 0, 5);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_PO_LAUGH2);
        this->actionFunc = BgPoEvent_AmyPuzzle;
    }
}

void BgPoEvent_AmyPuzzle(BgPoEvent* this, GlobalContext* globalCtx) {
    Vec3f pos;

    if (sPuzzleState == 0xF) {
        pos.x = this->dyna.actor.posRot.pos.x - 5.0f;
        pos.y = Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.y;
        pos.z = Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.z;
        EffectSsDeadDb_Spawn(globalCtx, &pos, &sZeroVec, &sZeroVec, 170, 0, 200, 255, 100, 170, 0, 255, 0, 1, 9, true);
    } else if (sPuzzleState == 0x20) {
        Actor_Kill(&this->dyna.actor);
    } else {
        DECR(this->timer);
    }
}

s32 BgPoEvent_NextPainting(BgPoEvent* this) {
    if ((this->dyna.actor.parent != NULL) && (this->dyna.actor.child != NULL)) {
        if (Rand_ZeroOne() < 0.5f) {
            sPuzzleState = ((BgPoEvent*)this->dyna.actor.parent)->index;
        } else {
            sPuzzleState = ((BgPoEvent*)this->dyna.actor.child)->index;
        }
    } else if (this->dyna.actor.parent != NULL) {
        sPuzzleState = ((BgPoEvent*)this->dyna.actor.parent)->index;
    } else if (this->dyna.actor.child != NULL) {
        sPuzzleState = ((BgPoEvent*)this->dyna.actor.child)->index;
    } else {
        return false;
    }
    return true;
}

void BgPoEvent_PaintingEmpty(BgPoEvent* this, GlobalContext* globalCtx) {
    if (sPuzzleState == this->index) {
        this->timer = 255;
        this->actionFunc = BgPoEvent_PaintingAppear;
    }
}

void BgPoEvent_PaintingAppear(BgPoEvent* this, GlobalContext* globalCtx) {
    this->timer -= 20;
    if (this->timer <= 0) {
        this->timer = 1000;
        this->actionFunc = BgPoEvent_PaintingPresent;
    }
}

void BgPoEvent_PaintingVanish(BgPoEvent* this, GlobalContext* globalCtx) {
    this->timer += 20;
    if (this->timer >= 255) {
        BgPoEvent_NextPainting(this);
        this->actionFunc = BgPoEvent_PaintingEmpty;
    }
}

void BgPoEvent_PaintingPresent(BgPoEvent* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    Player* player = PLAYER;

    DECR(this->timer);

    if (((this->timer == 0) || ((thisx->xzDistToLink < 150.0f) && (thisx->yDistToLink < 50.0f)) ||
         (func_8002DD78(player) && (thisx->xzDistToLink < 320.0f) &&
          ((this->index != 2) ? (thisx->yDistToLink < 100.0f) : (thisx->yDistToLink < 0.0f)) &&
          func_8002DFC8(thisx, 0x2000, globalCtx))) &&
        ((thisx->parent != NULL) || (thisx->child != NULL))) {
        /*The third condition in the || is checking if
            1) Link is holding a ranged weapon
            2) Link is too close in the xz plane
            3) Link is too close in the y direction. The painting
               under the balcony allows him to be closer.
            4) Link is within 45 degrees of facing the painting. */
        this->timer = 0;
        Audio_PlayActorSound2(thisx, NA_SE_EN_PO_LAUGH);
        this->actionFunc = BgPoEvent_PaintingVanish;
    } else if (this->collider.base.acFlags & 2) {
        if (!BgPoEvent_NextPainting(this)) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, thisx->posRot.pos.x,
                        thisx->posRot.pos.y - 40.0f, thisx->posRot.pos.z, 0, thisx->shape.rot.y, 0,
                        thisx->params + ((this->type - 1) << 8));
            func_800800F8(globalCtx, 0xC58, 0x50, thisx, 0);
            func_80078884(NA_SE_SY_CORRECT_CHIME);

        } else {
            Audio_PlayActorSound2(thisx, NA_SE_EN_PO_LAUGH2);
            func_800800F8(globalCtx, 0xC58, 0x23, thisx, 0);
        }
        if (thisx->parent != NULL) {
            thisx->parent->child = NULL;
            thisx->parent = NULL;
        }
        if (thisx->child != NULL) {
            thisx->child->parent = NULL;
            thisx->child = NULL;
        }
        this->timer = 20;
        this->actionFunc = BgPoEvent_PaintingBurn;
    }
}

void BgPoEvent_PaintingBurn(BgPoEvent* this, GlobalContext* globalCtx) {
    Vec3f sp54;

    this->timer--;
    sp54.x = (Math_SinS(this->dyna.actor.shape.rot.y) * 5.0f) + this->dyna.actor.posRot.pos.x;
    sp54.y = Rand_CenteredFloat(66.0f) + this->dyna.actor.posRot.pos.y;
    sp54.z = Rand_CenteredFloat(50.0f) + this->dyna.actor.posRot.pos.z;
    if (this->timer >= 0) {
        if (this->type == 2) {
            EffectSsDeadDb_Spawn(globalCtx, &sp54, &sZeroVec, &sZeroVec, 100, 0, 255, 255, 150, 170, 255, 0, 0, 1, 9,
                                 true);
        } else {
            EffectSsDeadDb_Spawn(globalCtx, &sp54, &sZeroVec, &sZeroVec, 100, 0, 200, 255, 255, 170, 50, 100, 255, 1, 9,
                                 true);
        }
    }
    if (this->timer == 0) {
        this->dyna.actor.draw = NULL;
    }
    if (this->timer < -60) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgPoEvent_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgPoEvent* this = THIS;

    this->actionFunc(this, globalCtx);
    if ((this->actionFunc == BgPoEvent_AmyWait) || (this->actionFunc == BgPoEvent_PaintingPresent)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void BgPoEvent_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* displayLists[] = { D_060075A0, D_060079E0, D_06006830, D_06006D60, D_06007230 };
    s32 pad;
    BgPoEvent* this = THIS;
    u8 alpha;
    Vec3f sp58;
    Vec3f sp4C;
    f32 sp48;
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 1481);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((this->type == 3) || (this->type == 2)) {
        if (this->actionFunc == BgPoEvent_PaintingEmpty) {
            alpha = 255;
        } else if (this->actionFunc == BgPoEvent_PaintingPresent) {
            alpha = 0;
        } else {
            alpha = this->timer;
        }
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, alpha);
    }
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 1501),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, displayLists[this->type]);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 1508);

    if ((this->type == 0) || (this->type == 1)) {
        sp48 = (833.0f - this->dyna.actor.posRot.pos.y) * 0.0025f;
        if (!(sp48 > 1.0f)) {
            sp58.x = this->dyna.actor.posRot.pos.x;
            sp58.y = this->dyna.actor.posRot.pos.y - 30.0f;
            sp58.z = this->dyna.actor.posRot.pos.z;
            sp4C.y = 1.0f;
            sp4C.x = sp4C.z = (sp48 * 0.3f) + 0.4f;
            func_80033C30(&sp58, &sp4C, (u8)(155.0f + sp48 * 100.0f), globalCtx);
        }
    }
}
