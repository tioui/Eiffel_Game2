/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: June 10, 2012			*
 * Version: 0.3				*/

#include "core_more.h" 

/* Functions to add functionnalities to the SDL C library 	*
 * Strongly inspire by the code of the library SDL_gfx.		*/
SDL_Surface* rotateSurface90Degrees_32(SDL_Surface* src, int numClockwiseTurns) 
{
	int row, col, newWidth, newHeight;
	int bpp, src_ipr, dst_ipr;
	SDL_Surface* dst;
	Uint32* srcBuf;
	Uint32* dstBuf;

	/* Has to be a valid surface pointer and only 32-bit surfaces (for now) */
	if (!src || src->format->BitsPerPixel != 32) { return NULL; }

	/* normalize numClockwiseTurns */
	while(numClockwiseTurns < 0) { numClockwiseTurns += 4; }
	numClockwiseTurns = (numClockwiseTurns % 4);

	/* if it's even, our new width will be the same as the source surface */
	newWidth = (numClockwiseTurns % 2) ? (src->h) : (src->w);
	newHeight = (numClockwiseTurns % 2) ? (src->w) : (src->h);
	dst = SDL_CreateRGBSurface( src->flags, newWidth, newHeight, src->format->BitsPerPixel,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	/* Calculate int-per-row */
	bpp = src->format->BitsPerPixel / 8;
	src_ipr = src->pitch / bpp;
	dst_ipr = dst->pitch / bpp;

	switch(numClockwiseTurns) {
		case 0: /* Make a copy of the surface */
			{
				/* Unfortunately SDL_BlitSurface cannot be used to make a copy of the surface
				   since it does not preserve alpha. */

				if (src->pitch == dst->pitch) {
					/* If the pitch is the same for both surfaces, the memory can be copied all at once. */
					memcpy(dst->pixels, src->pixels, (src->h * src->pitch));
				}
				else
				{
					/* If the pitch differs, copy each row separately */
					srcBuf = (Uint32*)(src->pixels); 
					dstBuf = (Uint32*)(dst->pixels);
					for (row = 0; row < src->h; row++) {
						memcpy(dstBuf, srcBuf, dst->w * bpp);
						srcBuf += src_ipr;
						dstBuf += dst_ipr;
					} /* end for(col) */
				} /* end for(row) */
			}
			break;

			/* rotate clockwise */
		case 1: /* rotated 90 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint32*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint32*)(dst->pixels) + (dst->w - row - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf += dst_ipr;
				 } 
				 /* end for(col) */
			 } 
			 /* end for(row) */
		 }
		 break;

		case 2: /* rotated 180 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint32*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint32*)(dst->pixels) + ((dst->h - row - 1) * dst_ipr) + (dst->w - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 --dstBuf;
				 } 
			 } 
		 }
		 break;

		case 3:
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint32*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint32*)(dst->pixels) + row + ((dst->h - 1) * dst_ipr);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf -= dst_ipr;
				 } 
			 } 
		 }
		 break;
	} 
	/* end switch */

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	return dst;
}

SDL_Surface* rotateSurface90Degrees_16(SDL_Surface* src, int numClockwiseTurns) 
{
	int row, col, newWidth, newHeight;
	int src_ipr, dst_ipr;
	SDL_Surface* dst;
	Uint16* srcBuf;
	Uint16* dstBuf;

	if (!src || src->format->BitsPerPixel != 16) { return NULL; }

	/* normalize numClockwiseTurns */
	while(numClockwiseTurns < 0) { numClockwiseTurns += 4; }
	numClockwiseTurns = (numClockwiseTurns % 4);

	/* if it's even, our new width will be the same as the source surface */
	newWidth = (numClockwiseTurns % 2) ? (src->h) : (src->w);
	newHeight = (numClockwiseTurns % 2) ? (src->w) : (src->h);
	dst = SDL_CreateRGBSurface( src->flags, newWidth, newHeight, src->format->BitsPerPixel,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	/* Calculate int-per-row */
	src_ipr = src->pitch / 2;
	dst_ipr = dst->pitch / 2;

	switch(numClockwiseTurns) {
		case 0: /* Make a copy of the surface */
			{
				/* Unfortunately SDL_BlitSurface cannot be used to make a copy of the surface
				   since it does not preserve alpha. */

				if (src->pitch == dst->pitch) {
					/* If the pitch is the same for both surfaces, the memory can be copied all at once. */
					memcpy(dst->pixels, src->pixels, (src->h * src->pitch));
				}
				else
				{
					/* If the pitch differs, copy each row separately */
					srcBuf = (Uint16*)(src->pixels); 
					dstBuf = (Uint16*)(dst->pixels);
					for (row = 0; row < src->h; row++) {
						memcpy(dstBuf, srcBuf, dst->w * 2);
						srcBuf += src_ipr;
						dstBuf += dst_ipr;
					} /* end for(col) */
				} /* end for(row) */
			}
			break;

			/* rotate clockwise */
		case 1: /* rotated 90 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint16*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint16*)(dst->pixels) + (dst->w - row - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf += dst_ipr;
				 } 
				 /* end for(col) */
			 } 
			 /* end for(row) */
		 }
		 break;

		case 2: /* rotated 180 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint16*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint16*)(dst->pixels) + ((dst->h - row - 1) * dst_ipr) + (dst->w - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 --dstBuf;
				 } 
			 } 
		 }
		 break;

		case 3:
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint16*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint16*)(dst->pixels) + row + ((dst->h - 1) * dst_ipr);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf -= dst_ipr;
				 } 
			 } 
		 }
		 break;
	} 
	/* end switch */

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	return dst;
}

SDL_Surface* rotateSurface90Degrees_8(SDL_Surface* src, int numClockwiseTurns) 
{
	int row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint8* srcBuf;
	Uint8* dstBuf;

	if (!src || src->format->BitsPerPixel != 8) { return NULL; }

	/* normalize numClockwiseTurns */
	while(numClockwiseTurns < 0) { numClockwiseTurns += 4; }
	numClockwiseTurns = (numClockwiseTurns % 4);

	/* if it's even, our new width will be the same as the source surface */
	newWidth = (numClockwiseTurns % 2) ? (src->h) : (src->w);
	newHeight = (numClockwiseTurns % 2) ? (src->w) : (src->h);
	dst = SDL_CreateRGBSurface( src->flags, newWidth, newHeight, src->format->BitsPerPixel,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	switch(numClockwiseTurns) {
		case 0: /* Make a copy of the surface */
			{
				/* Unfortunately SDL_BlitSurface cannot be used to make a copy of the surface
				   since it does not preserve alpha. */

				if (src->pitch == dst->pitch) {
					/* If the pitch is the same for both surfaces, the memory can be copied all at once. */
					memcpy(dst->pixels, src->pixels, (src->h * src->pitch));
				}
				else
				{
					/* If the pitch differs, copy each row separately */
					srcBuf = (Uint8*)(src->pixels); 
					dstBuf = (Uint8*)(dst->pixels);
					for (row = 0; row < src->h; row++) {
						memcpy(dstBuf, srcBuf, dst->w);
						srcBuf += src->pitch;
						dstBuf += dst->pitch;
					} /* end for(col) */
				} /* end for(row) */
			}
			break;

			/* rotate clockwise */
		case 1: /* rotated 90 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint8*)(src->pixels) + (row * src->pitch);
				 dstBuf = (Uint8*)(dst->pixels) + (dst->w - row - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf += dst->pitch;
				 } 
				 /* end for(col) */
			 } 
			 /* end for(row) */
		 }
		 break;

		case 2: /* rotated 180 degrees clockwise */
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint8*)(src->pixels) + (row * src->pitch);
				 dstBuf = (Uint8*)(dst->pixels) + ((dst->h - row - 1) * dst->pitch) + (dst->w - 1);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 --dstBuf;
				 } 
			 } 
		 }
		 break;

		case 3:
		 {
			 for (row = 0; row < src->h; ++row) {
				 srcBuf = (Uint8*)(src->pixels) + (row * src->pitch);
				 dstBuf = (Uint8*)(dst->pixels) + row + ((dst->h - 1) * dst->pitch);
				 for (col = 0; col < src->w; ++col) {
					 *dstBuf = *srcBuf;
					 ++srcBuf;
					 dstBuf -= dst->pitch;
				 } 
			 } 
		 }
		 break;
	} 
	/* end switch */

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	CopyPalette_8(src,dst);

	return dst;
}


SDL_Surface* rotateSurface90Degrees_all(SDL_Surface* src, int numClockwiseTurns)
{
	if (src->format->BitsPerPixel == 8)
	{
		return rotateSurface90Degrees_8(src,numClockwiseTurns);
	}
	else if (src->format->BitsPerPixel == 16)
	{
		return rotateSurface90Degrees_16(src,numClockwiseTurns);
	}
	else if (src->format->BitsPerPixel == 32)
	{
		return rotateSurface90Degrees_32(src,numClockwiseTurns);
	}
	else
	{
		return NULL;
	}
}



SDL_Surface* mirrorSurfaceX_8(SDL_Surface* src) 
{
	int row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint8* srcBuf;
	Uint8* dstBuf;

	if (!src || src->format->BitsPerPixel != 8) { return NULL; }

	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 8,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}



	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint8*)(src->pixels) + (row * src->pitch);
		 dstBuf = (Uint8*)(dst->pixels) + (row * dst->pitch) + (dst->w - 1);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 --dstBuf;
		 } 
	 }

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	CopyPalette_8(src,dst);

	return dst;
}

SDL_Surface* mirrorSurfaceX_16(SDL_Surface* src) 
{
	int src_ipr,dst_ipr,row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint16* srcBuf;
	Uint16* dstBuf;

	if (!src || src->format->BitsPerPixel != 16) { return NULL; }

	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 16,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	src_ipr = src->pitch / 2;
	dst_ipr = dst->pitch / 2;

	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint16*)(src->pixels) + (row * src_ipr);
		 dstBuf = (Uint16*)(dst->pixels) + (row * dst_ipr) + (dst->w - 1);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 --dstBuf;
		 } 
	 }

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	return dst;
}

SDL_Surface* mirrorSurfaceX_32(SDL_Surface* src) 
{
	int src_ipr,dst_ipr,row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint32* srcBuf;
	Uint32* dstBuf;

	if (!src || src->format->BitsPerPixel != 32) { return NULL; }

	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 32,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	src_ipr = src->pitch / 4;
	dst_ipr = dst->pitch / 4;

	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint32*)(src->pixels) + (row * src_ipr);
		 dstBuf = (Uint32*)(dst->pixels) + (row * dst_ipr) + (dst->w - 1);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 --dstBuf;
		 } 
	 }

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}


	return dst;
}

SDL_Surface* MirrorSurfaceX( SDL_Surface *src )
{
	if (src->format->BitsPerPixel == 8)
	{
		return mirrorSurfaceX_8(src);
	}
	else if (src->format->BitsPerPixel == 16)
	{
		return mirrorSurfaceX_16(src);
	}
	else if (src->format->BitsPerPixel == 32)
	{
		return mirrorSurfaceX_32(src);
	}
	else
	{
		return NULL;
	}
}

SDL_Surface* mirrorSurfaceY_8(SDL_Surface* src) 
{
	int row, col, newWidth, newHeight;
	SDL_Surface* dst;
	Uint8* srcBuf;
	Uint8* dstBuf;
	if (!src || src->format->BitsPerPixel != 8) { return NULL; }

	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 8,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}



	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint8*)(src->pixels) + (row * src->pitch);
		 dstBuf = (Uint8*)(dst->pixels) + ((dst->h - row - 1) * dst->pitch);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 ++dstBuf;
		 } 
	 }

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}

	CopyPalette_8(src,dst);

	return dst;
}

SDL_Surface* mirrorSurfaceY_16(SDL_Surface* src) 
{
	int src_ipr,dst_ipr,row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint16* srcBuf;
	Uint16* dstBuf;
	if (!src || src->format->BitsPerPixel != 16) { return NULL; }
	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 16,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}
	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}
	src_ipr = src->pitch / 2;
	dst_ipr = dst->pitch / 2;
	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint16*)(src->pixels) + (row * src_ipr);
		 dstBuf = (Uint16*)(dst->pixels) + ((dst->h - row - 1) * dst_ipr);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 ++dstBuf;
		 } 
	 }
	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}
	return dst;
}

SDL_Surface* mirrorSurfaceY_32(SDL_Surface* src) 
{
	int src_ipr,dst_ipr,row, col, newWidth, newHeight,i;
	SDL_Surface* dst;
	Uint32* srcBuf;
	Uint32* dstBuf;
	if (!src || src->format->BitsPerPixel != 32) { return NULL; }

	dst = SDL_CreateRGBSurface( src->flags, src->w, src->h, 32,
		src->format->Rmask,
		src->format->Gmask, 
		src->format->Bmask, 
		src->format->Amask);
	if(!dst) {
		return NULL;
	}

	if (SDL_MUSTLOCK(src)) {
		SDL_LockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_LockSurface(dst);
	}

	src_ipr = src->pitch / 4;
	dst_ipr = dst->pitch / 4;

	for (row = 0; row < src->h; ++row) {
		 srcBuf = (Uint32*)(src->pixels) + (row * src_ipr);
		 dstBuf = (Uint32*)(dst->pixels) + ((dst->h - row - 1) * dst_ipr);
		 for (col = 0; col < src->w; ++col) {
			 *dstBuf = *srcBuf;
			 ++srcBuf;
			 ++dstBuf;
		 } 
	 }

	if (SDL_MUSTLOCK(src)) {
		SDL_UnlockSurface(src);
	}
	if (SDL_MUSTLOCK(dst)) {
		SDL_UnlockSurface(dst);
	}


	return dst;
}

SDL_Surface* MirrorSurfaceY( SDL_Surface *src )
{
	if (src->format->BitsPerPixel == 8)
	{
		return mirrorSurfaceY_8(src);
	}
	else if (src->format->BitsPerPixel == 16)
	{
		return mirrorSurfaceY_16(src);
	}
	else if (src->format->BitsPerPixel == 32)
	{
		return mirrorSurfaceY_32(src);
	}
	else
	{
		return NULL;
	}
}

void CopyPalette_8( SDL_Surface * src, SDL_Surface * dst){
	int i;
	if (!src || src->format->BitsPerPixel != 8 || !dst || dst->format->BitsPerPixel != 8) { return; }
	for (i = 0; i < src->format->palette->ncolors; i++) {
		dst->format->palette->colors[i] = src->format->palette->colors[i];
	}
	dst->format->palette->ncolors = src->format->palette->ncolors;
}

Uint32 getpixel(SDL_Surface *surface, int x, int y)
{
    int bpp = surface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to retrieve */
    Uint8 *p = (Uint8 *)surface->pixels + y * surface->pitch + x * bpp;

    switch(bpp) {
    case 1:
        return *p;
        break;

    case 2:
        return *(Uint16 *)p;
        break;

    case 3:
        if(SDL_BYTEORDER == SDL_BIG_ENDIAN)
            return p[0] << 16 | p[1] << 8 | p[2];
        else
            return p[0] | p[1] << 8 | p[2] << 16;
        break;

    case 4:
        return *(Uint32 *)p;
        break;

    default:
        return 0;       /* shouldn't happen, but avoids warnings */
    }
}

void putpixel(SDL_Surface *surface, int x, int y, Uint32 pixel)
{
    int bpp = surface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to set */
    Uint8 *p = (Uint8 *)surface->pixels + y * surface->pitch + x * bpp;

    switch(bpp) {
    case 1:
        *p = pixel;
        break;

    case 2:
        *(Uint16 *)p = pixel;
        break;

    case 3:
        if(SDL_BYTEORDER == SDL_BIG_ENDIAN) {
            p[0] = (pixel >> 16) & 0xff;
            p[1] = (pixel >> 8) & 0xff;
            p[2] = pixel & 0xff;
        } else {
            p[0] = pixel & 0xff;
            p[1] = (pixel >> 8) & 0xff;
            p[2] = (pixel >> 16) & 0xff;
        }
        break;

    case 4:
        *(Uint32 *)p = pixel;
        break;
    }
}

int SDL_MUSTLOCK_ALT(SDL_Surface *surface)
{
	return SDL_MUSTLOCK(surface);
}


static int myseekfunc(SDL_RWops *context, int offset, int whence)
{
	return cpfFileSeek(offset,whence,context->hidden.unknown.data1);
}

static int myreadfunc(SDL_RWops *context, void *ptr, int size, int maxnum)
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
static int mywritefunc(SDL_RWops *context, const void *ptr, int size, int num)
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



