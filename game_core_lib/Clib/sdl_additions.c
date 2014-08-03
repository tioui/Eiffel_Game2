/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: June 10, 2012			*
 * Version: 2.0				*/

#include "sdl_additions.h" 

static Sint64 mysizefunc(SDL_RWops *context)
{
//	return cpfFileSeek(offset,whence,context->hidden.unknown.data1);
	return -1;
}

static Sint64 myseekfunc(SDL_RWops *context, Sint64 offset, int whence)
{
	return cpfFileSeek(offset,whence,context->hidden.unknown.data1);
}

static size_t myreadfunc(SDL_RWops *context, void *ptr, size_t size, size_t maxnum)
{
	CustomPackageFileInfos* cpfInfos = (CustomPackageFileInfos*)context->hidden.unknown.data1;
	int64_t currentOffset = cpfFileTell(cpfInfos);

	if(currentOffset+size*maxnum>cpfInfos->TotalSize){
		maxnum = (cpfInfos->TotalSize-currentOffset)/size;
	}

	maxnum=fread(ptr,size,maxnum,cpfInfos->filePtr);

	return maxnum;
}


// Writing is not supported yet (do not need it).
static size_t mywritefunc(SDL_RWops *context, const void *ptr, size_t size, size_t num)
{
	return 0;
}

// The Application must free the context
static int myclosefunc(SDL_RWops *context)
{
	return 0;
}

void setSDLRWops(SDL_RWops *rwop,CustomPackageFileInfos* cpfInfos)
{
	rwop->seek = myseekfunc;
	rwop->read = myreadfunc;
	rwop->write = mywritefunc;
	rwop->close = myclosefunc;
	rwop->type = 0x501e11;
	rwop->hidden.unknown.data1 = cpfInfos;

}



