#include <a_samp>

#define NO_VALUE(%0) ((2*%0-1)==2*(%0-1))

// `YSI_OPEN.MP` and `fixes.inc` are mutually exclusive.
#if !defined USE_FIXES
	#define YSI_OPEN.MP
#if NO_VALUE(USE_FIXES)
	#include <fixes>
#elseif USE_FIXES == 1
	#include <fixes>
#else
	#define YSI_OPEN.MP
#endif

#pragma warning disable 200

// Minimal YSI.
#define RUN_TESTS
#define YSI_NO_DIALOG_ASK
#define YSI_NO_ANDROID_CHECK
#define YSI_NO_GET_IP
#define YSI_OPEN.MP
#define FOREACH_NO_BOTS
#define FOREACH_NO_LOCALS
#define FOREACH_NO_VEHICLES
#define FOREACH_NO_ACTORS
#define FOREACH_NO_STREAMED

#include <YSI_Core\y_testing>

