#ifndef __COMMON_H__
#define __COMMON_H__

#define MAP_BASE (0x80000000007FAE00ULL)		// lv2 memory area to store path redirections table
#define	MAP_ADDR (0xE8)							// address in lv2 to store MAP_BASE address (0x0000 ---> 0xFFFF)

#ifdef DEBUG

#define DPRINTF		printf

#else

#define DPRINTF(...)

#endif

int filecopy(const char *src, const char *dst, const char *chk);

#endif /* __COMMON_H__ */

