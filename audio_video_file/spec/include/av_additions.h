#ifndef AV_MORE_H
#define AV_MORE_H
#include "cpf_additions.h"

int av_more_read_packet(void *opaque, uint8_t *buf, int buf_size);
int64_t av_more_seek(void *opaque, int64_t offset, int whence);

#endif
