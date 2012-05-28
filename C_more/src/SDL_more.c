/* Util function for Eiffel Game Lib. 	*
 * Author: Louis Marchand		*
 * Date: May 24, 2012			*
 * Version: 0.1				*/

#include "SDL_more.h" 

SDL_Surface* rotateSurface90Degrees_16(SDL_Surface* src, int numClockwiseTurns) 
{
	int row, col, newWidth, newHeight;
	int bpp, src_ipr, dst_ipr;
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
					srcBuf = (Uint16*)(src->pixels); 
					dstBuf = (Uint16*)(dst->pixels);
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
	int bpp, src_ipr, dst_ipr;
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
					srcBuf = (Uint8*)(src->pixels); 
					dstBuf = (Uint8*)(dst->pixels);
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
				 srcBuf = (Uint8*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint8*)(dst->pixels) + (dst->w - row - 1);
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
				 srcBuf = (Uint8*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint8*)(dst->pixels) + ((dst->h - row - 1) * dst_ipr) + (dst->w - 1);
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
				 srcBuf = (Uint8*)(src->pixels) + (row * src_ipr);
				 dstBuf = (Uint8*)(dst->pixels) + row + ((dst->h - 1) * dst_ipr);
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

	for (i = 0; i < src->format->palette->ncolors; i++) {
		dst->format->palette->colors[i] = src->format->palette->colors[i];
	}
	dst->format->palette->ncolors = src->format->palette->ncolors;

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
		return rotateSurface90Degrees(src,numClockwiseTurns);
	}
	else
	{
		return NULL;
	}
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
