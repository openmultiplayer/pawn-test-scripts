#pragma option -d3
#pragma option -O0

#define CGEN_MEMORY 70000
//#pragma option -l
//#pragma option -r
//#pragma option -a

#define STRONG_TAGS

#include <open.mp>

// Run tests.
#define YSI_TESTS
//#define YSI_PROFILINGS
#define RUN_TESTS
// Uncomment (and edit) to run a single test case
//#define JUST_TEST sscanf_test
//#define JUST_TEST_GROUP "y_commands"

// Currently failing tests:

// V__IsVehicleStreamedIn (1)
// V__GetVehicleTrailer (1)
// V__GetVehicleModelInfo (1)
// V__AttachTrailerToVehicle (1)
// CV12_StringDefault (1)
// CV12_StringCustom (1)
// CV11_StringCustomD (1)
// CV10_IntNew (1)
// CV09_IntNewD (1)
// CV08_IntOld (1)
// CV07_IntOldD (1)
// CV04_StringNew (1)
// CV03_StringNewD (1)
// CV02_StringOld (1)

//#define frename YSF_frename
#include "test-header"
//#undef frename
#include "YSF"
#if !defined SetPlayerSyncPosition
	native SetPlayerSyncPosition(playerid, Float:x, Float:y, Float:z);
#endif

#include <sscanf2>

@test() sscanf_test()
{
	new a, b, Float:c, d, e;
	sscanf("5 100 2.2", "iI(4)fI(*)I(99)", a, b, c, 77, d, e);
	ASSERT_EQ(a, 5);
	ASSERT_EQ(b, 100);
	ASSERT_EQ(c, 2.2);
	ASSERT_EQ(d, 77);
	ASSERT_EQ(e, 99);
	new f[6];
	sscanf("5 100 5 6 7", "A<i>(99)[*]", sizeof (f), f);
	ASSERT_EQ(f[0], 5);
	ASSERT_EQ(f[1], 100);
	ASSERT_EQ(f[2], 5);
	ASSERT_EQ(f[3], 6);
	ASSERT_EQ(f[4], 7);
	ASSERT_EQ(f[5], 99);
	sscanf("hi", "S()[*]", sizeof (f), f);
	ASSERT_EQ(f[0], 5);
	ASSERT_EQ(f[1], 100);
	ASSERT_EQ(f[2], 5);
	ASSERT_EQ(f[3], 6);
	ASSERT_EQ(f[4], 7);
	ASSERT_EQ(f[5], 99);
}

public OnPlayerSpawn(playerid) //(Player:playerid)
{
	for (new WEAPON_SLOT:i; i != MAX_WEAPON_SLOTS; ++i)
	{
	}
	//new alts[][] = { "first", "second", "third" };
	//_Command_Decorator(.altcount = sizeof (alts), .alts = ref(alts));
	printf("player connected %d %d %d", playerid, 42, IsPlayerNPC(playerid));
	#if defined Mode_OnPlayerSpawn
		return Mode_OnPlayerSpawn(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerSpawn
	#undef OnPlayerSpawn
#else
	#define _ALS_OnPlayerSpawn
#endif
#define OnPlayerSpawn Mode_OnPlayerSpawn
#if defined Mode_OnPlayerSpawn
	forward Mode_OnPlayerSpawn(playerid);
#endif

// YSI tests have a lot of warnings, on purpose (to test warnings).  But they
// aren't the focus of this mode, so disable them.
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

#include <YSI_Players\y_groups>
#include <YSI_Coding\y_hooks>
#include <YSI_Coding\y_inline>
#include <YSI_Coding\y_timers>
#include <YSI_Visual\y_commands>
#include <YSI_Server\y_files>

#include <YSI_Core\y_als>
#include <YSI_Core\y_debug>
#include <YSI_Core\y_testing>
#include <YSI_Core\y_utils>
#include <YSI_Coding\y_va>
#include <YSI_Core\y_cell>
#include <YSI_Core\y_master>
#include <YSI_Core\y_profiling>

#include <YSI_Coding\y_hooks>
#include <YSI_Coding\y_inline>
#include <YSI_Coding\y_malloc>
#include <YSI_Coding\y_remote>
#include <YSI_Coding\y_stringhash>
#include <YSI_Coding\y_timers>
#include <YSI_Coding\y_ctrl>
#include <YSI_Coding\y_functional>

#include <YSI_Data\y_bintree>
#include <YSI_Data\y_circular>
#include <YSI_Data\y_bit>
#include <YSI_Data\y_hashmap>
#include <YSI_Data\y_iterate>
#include <YSI_Data\y_jaggedarray>
#include <YSI_Data\y_playerarray>
#include <YSI_Data\y_playerset>


/*#include <YSI_Players\y_languages>
//#include <YSI_Players\y_text>
//#include <YSI_Players\y_users>

#include <YSI_Server\y_colours>
#include <YSI_Server\y_flooding>
#include <YSI_Server\y_punycode>
#include <YSI_Server\y_scriptinit>
#include <YSI_Server\y_td>*/

#include <YSI_Storage\y_amx>
////#include <YSI_Storage\y_bitmap>
#include <YSI_Storage\y_ini>
//#include <YSI_Storage\y_php>
//#include <YSI_Storage\y_svar>
//#include <YSI_Storage\y_uvar>
#include <YSI_Storage\y_xml>
#include <YSI_Storage\y_dumpamx>

//#include <YSI_Visual\y_areas>
//#include <YSI_Visual\y_classes>
#include <YSI_Visual\y_commands>
#include <YSI_Visual\y_dialog>
//#include <YSI_Visual\y_properties>
//#include <YSI_Visual\y_races>
//#include <YSI_Visual\y_zonenames>
#include <YSI_Visual\y_zonepulse>

#include <YSI_Players\y_groups>

#pragma warning pop

/*@cmd() Hello1(playerid, params[], help)
{
}

@cmd(.name = "hello") Hello2(playerid, params[], help)
{
}

@cmd(.group = gAdmin, .alts = { "hi", "yo", "ciao" }, .disabled = true) Hello3(playerid, params[], help)
{
}

@cmd(.hidden = true, .prefx = '!') Hello4(playerid, params[], help)
{
}*/

// Comment this out to skip native port status.
//#include "test-natives"

forward Timers1(a, b, c);

public Timers1(a, b, c)
{
	if (a + b != c)
	{
		printf("========= %d + %d != %d", a, b, c);
	}
}

forward Timers2(const str[], a);

public Timers2(const str[], a)
{
	if (strval(str) != a)
	{
		printf("========= %s != %d", str, a);
	}
}

forward Timers3(const arr[], size, a);

public Timers3(const arr[], size, a)
{
	if (arr[0] + arr[1] + arr[2] + arr[3] != a)
	{
		printf("========= %d + %d + %d + %d != %d", arr[0], arr[1], arr[2], arr[3], a);
	}
}

forward Timers4();

public Timers4()
{
	printf("Maybe crash?");
	new arr[5];
	new idx = random(10);
	printf("No: %d", arr[idx]);
}

TEST__ Timers()
{
	for (new i = 0; i != 1000; ++i)
	{
		new a = random(1000), b = random(1000);
		//printf("%d + %d = %d", a, b, a + b);
		SetTimerEx("Timers1", 1, false, "iii", a, b, a + b);
	}
	for (new i = 0; i != 1000; ++i)
	{
		new a = random(10000);
		new str[32];
		valstr(str, a);
		SetTimerEx("Timers2", 1, false, "si", str, a);
	}
	for (new i = 0; i != 1000; ++i)
	{
		new a = random(100000);
		new str[32];
		str[0] = a * 1;
		str[1] = a * 2;
		str[2] = a * 3;
		str[3] = a * 4;
		SetTimerEx("Timers3", 1, false, "aii", str, sizeof (str), a * 10);
	}
	//SetTimer("Timers4", 10, true);
}

// Test suites
#include "components/actors/main.pwn"
#include "components/consolevars/main.pwn"
#include "components/core/main.pwn"
#include "components/databases/main.pwn"
#include "components/dialogs/main.pwn"
#include "components/gangzones/main.pwn"
#include "components/gametexts/main.pwn"
#include "components/menus/main.pwn"
#include "components/players/main.pwn"
#include "components/vehicles/main.pwn"
#include "components/pawn/main.pwn"
#include "components/pickups/main.pwn"

main()
{
	new a, b, c;
	printf("sscanf: %d", sscanf("5, 6, 7", "p<,>iii", a, b, c));
	printf("after: %d, %d, %d", a, b, c);
	print("Loading test Pawn scripts");
	/*for ( ; ; )
	{
		sleep 1000;
		print("Looping `main()`");
	}*/
}

hook OnGameModeInit()
{
    AddPlayerClass(0, 1002.0, 1002.0, 50.0, 0.0, WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0);
    CreateVehicle(562, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, false);
    return 1;
}

hook OnPlayerConnect(playerid)
{
	printf("OnPlayerConnect");
    SendClientMessage(playerid, 0xFF0000FF, "Welcome to your test open.mp server.");
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	printf("OnPlayerRequestClass");
	SetPlayerPos(playerid, 376.0939, 850.4130, 33.3843);
	SetPlayerFacingAngle(playerid, 94.3991);
	SetPlayerCameraPos(playerid, 369.9781, 849.8905, 40.0);
	SetPlayerCameraLookAt(playerid, 376.0939, 850.4130, 33.3843);
	ApplyAnimation(playerid, "WOP", "DANCE_G9", 4.0, true, false, false, false, 0);
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	printf("OnPlayerEnterVehicle");
	return 1;
}


YCMD:v(playerid, params[], help)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	CreateVehicle(strval(params), x, y, z, 0.0, -1, -1, 0, false);
	return 1;
}

// vim: se ft=cpp:

/*PTEST__ AAA(playerid)
{
	ASK("AAA?");
}

@test() BBB(playerid)
{
	ASK("BBB?");
}

@test(.group = "h") CCC(playerid)
{
	ASK("CCC?");
}*/

new Iterator:canBeAnything<30>;

@test() WiredForeach()
{
    new unusedIndex = Iter_Alloc(canBeAnything); // allocate free index
    Iter_Add(canBeAnything, unusedIndex + 5); // 0 + 5 i guess
	printf("%d %d %d", unusedIndex, Iter_Contains(canBeAnything, unusedIndex), Iter_Contains(canBeAnything, unusedIndex + 5));

    if (Iter_Contains(canBeAnything, unusedIndex + 5))
    {
        printf("Wow index %d is exists!", unusedIndex + 5);
    }

	printf("%d %d %d", unusedIndex, Iter_Contains(canBeAnything, unusedIndex), Iter_Contains(canBeAnything, unusedIndex + 5));
	printf("%d %d %d", Iter_First(canBeAnything), Iter_Next(canBeAnything, unusedIndex), Iter_Last(canBeAnything));
    foreach (new idx : canBeAnything)
    {
        printf("We are currently at index %d", idx);
    }
}

