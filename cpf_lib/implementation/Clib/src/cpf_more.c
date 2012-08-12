/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: June 10, 2012			*
 * Version: 0.3				*/

#include "cpf_more.h" 

/* Functions to add the "Custom Package File" functionality	*/

int64_t cpfFileLength(void* UserData)
{
	CustomPackageFileInfos* cpfInfos = (CustomPackageFileInfos*)UserData;

	return cpfInfos->TotalSize;
}


int64_t cpfFileTell(void* UserData)
{
	CustomPackageFileInfos* cpfInfos = (CustomPackageFileInfos*)UserData;

	return ftell(cpfInfos->filePtr)-cpfInfos->StartOffset;
}


int64_t cpfFileSeek(int64_t Offset, int Whence, void* UserData)
{
	CustomPackageFileInfos* cpfInfos = (CustomPackageFileInfos*)UserData;


	int64_t Position = 0;
	switch (Whence)
	{
		case SEEK_SET :
			Position = Offset;
			break;
		case SEEK_CUR :
			Position = cpfFileTell(UserData) + Offset;
			break;
		case SEEK_END :
			Position = cpfInfos->TotalSize + Offset - 1;
			break;
		default :
			return(-1);
			break;
	}

	if (Position >= cpfInfos->TotalSize)
		Position = cpfInfos->TotalSize - 1;
	else if (Position < 0)
		Position = 0;

	fseek(cpfInfos->filePtr,Position+cpfInfos->StartOffset,SEEK_SET);

	return Position;
}

int64_t cpfFileRead(void* Ptr, int64_t Count, void* UserData)
{
	CustomPackageFileInfos* cpfInfos = (CustomPackageFileInfos*)UserData;
	int64_t currentOffset = cpfFileTell(UserData);

	if(currentOffset>=cpfInfos->TotalSize){
		return 0;
	}

	if(currentOffset+Count>cpfInfos->TotalSize){
		Count = cpfInfos->TotalSize-currentOffset;
	}

	Count=fread(Ptr,1,Count,cpfInfos->filePtr);

	return Count;
}

// Writing is not supported yet (do not need it).
int64_t cpfFileWrite(const void *ptr, int64_t count, void *user_data)
{
	return 0;
}

