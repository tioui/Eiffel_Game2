/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: June 10, 2012			*
 * Version: 2.0				*/

#include "sndfile_additions.h"

/* Functions to add the "Custom Package File" functionality	*/

void setSndFileVirtualIo(SF_VIRTUAL_IO *VirtualIO)
{
	VirtualIO->get_filelen = &cpfFileLength;
	VirtualIO->read = &cpfFileRead;
	VirtualIO->seek = &cpfFileSeek;
	VirtualIO->tell = &cpfFileTell;
	VirtualIO->write = &cpfFileWrite;
}


