#include "ZResource.h"

using namespace std;

ZResource::ZResource()
{
	parent = nullptr;
	name = "";
	outName = "";
	relativePath = "";
	sourceOutput = "";
	rawData = vector<uint8_t>();
	rawDataIndex = 0;
	outputDeclaration = true;
	arrayCnt = -1;
}

void ZResource::ParseXML(tinyxml2::XMLElement* reader)
{
	name = reader->Attribute("Name");

	if (reader->Attribute("OutName") != nullptr)
		outName = reader->Attribute("OutName");
	else
		outName = name;
}

void ZResource::Save(string outFolder)
{

}

void ZResource::PreGenSourceFiles()
{
}

string ZResource::GetName()
{
	return name;
}

std::string ZResource::GetOutName()
{
	return outName;
}

void ZResource::SetName(string nName)
{
	name = nName;
}

bool ZResource::IsExternalResource()
{
	return false;
}

std::string ZResource::GetExternalExtension()
{
	return "";
}

string ZResource::GetRelativePath()
{
	return relativePath;
}

vector<uint8_t> ZResource::GetRawData()
{
	return rawData;
}

int ZResource::GetRawDataIndex()
{
	return rawDataIndex;
}

int ZResource::GetRawDataSize()
{
	return rawData.size();
}

void ZResource::SetRawDataIndex(int value)
{
	rawDataIndex = value;
}

string ZResource::GetSourceOutputCode(std::string prefix)
{
	return "";
}

string ZResource::GetSourceOutputHeader(std::string prefix)
{
	return "";
}

void ZResource::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{

}

ZResourceType ZResource::GetResourceType()
{
	return ZResourceType::Error;
}

void ZResource::CalcHash()
{
	hash = 0;
}
