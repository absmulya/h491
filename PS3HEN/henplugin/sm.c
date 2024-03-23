#include "common.h"
#include "sm.h"

void show_msg(char* msg)
{
	if(!vshtask_notify)
		vshtask_notify = getNIDfunc("vshtask", 0xA02D46E7, 0);

	if(!vshtask_notify) return;

	if(strlen(msg) > 200) msg[200] = NULL; // truncate on-screen message
	vshtask_notify(0, msg);

}