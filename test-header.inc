#define STRONG_TAGS

#tryinclude <open.mp>
//#tryinclude <samp-stdlib\a_samp>
//#tryinclude <a_samp>

#if !defined _samp_included
	#error Could not include <a_samp>
#endif

#define NO_VALUE(%0) ((2*%0-1)==2*(%0-1))

// `YSI_OPEN.MP` and `fixes.inc` are mutually exclusive.
#if !defined USE_FIXES
	#define YSI_OPEN.MP
#else
	#if NO_VALUE(USE_FIXES)
		#tryinclude <sa-mp-fixes\fixes>
		#tryinclude <fixes>
		#if !defined _INC_SAMP_Community_fixes
			#error Could not include <fixes>
		#endif
	#elseif USE_FIXES == 1
		#tryinclude <sa-mp-fixes\fixes>
		#tryinclude <fixes>
		#if !defined _INC_SAMP_Community_fixes
			#error Could not include <fixes>
		#endif
	#else
		#define YSI_OPEN.MP
	#endif
#endif

//#pragma warning disable 200

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

#define CUSTOM_TAG_TYPES DB, Menu, DBResult, T_CARMODTYPE, T_VEHICLE_PANEL_STATUS, T_VEHICLE_DOOR_STATUS, T_VEHICLE_TYRE_STATUS, T_VEHICLE_LIGHT_STATUS

#pragma warning push
#pragma warning disable 213
#pragma warning disable 234
#pragma warning disable 204
#pragma warning disable 219
#pragma warning disable 200
#pragma warning disable 237
#pragma warning disable 239
#pragma warning disable 214
//#pragma warning disable 203

#include <YSI_Core\y_testing>

#pragma warning pop

