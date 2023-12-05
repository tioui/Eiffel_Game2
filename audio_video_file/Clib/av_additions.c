/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: June 10, 2012			*
 * Version: 0.3				*/

#include "av_additions.h"

/* Functions to add the "Custom Package File" functionality	*/

int av_more_read_packet(void *opaque, uint8_t *buf, int buf_size){
	return(cpfFileRead(buf, buf_size, opaque));
}


int64_t av_more_seek(void *opaque, int64_t offset, int whence){	
	return(cpfFileSeek(offset, whence, opaque));
}


