#pragma warning disable 200
#pragma option -d2
#pragma option -O0
//#pragma option -l
//#pragma option -a

// Run tests.
#define YSI_TESTS
//#define YSI_PROFILINGS
#define RUN_TESTS
// Uncomment (and edit) to run a single test case
//#define JUST_TEST GZ_13_PlayerGangZoneShow

#define frename YSF_frename
#include "test-header"
#undef frename
#include "YSF"
#if !defined SetPlayerSyncPosition
	native SetPlayerSyncPosition(playerid, Float:x, Float:y, Float:z);
#endif
#include <YSI_Coding\y_hooks>
#include <YSI_Coding\y_inline>
#include <YSI_Coding\y_timers>
#include <YSI_Visual\y_commands>
#include <YSI_Server\y_files>

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
#include "components/menus/main.pwn"
#include "components/players/main.pwn"
#include "components/vehicles/main.pwn"

main()
{
	print("Loading test Pawn scripts");
	/*for ( ; ; )
	{
		sleep 1000;
		print("Looping `main()`");
	}*/
}

hook OnGameModeInit()
{
    AddPlayerClass(0, 1000.0, 1000.0, 50.0, 0.0, WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0);
    CreateVehicle(562, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, false);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFF0000FF, "Welcome to your test open.mp server.");
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 376.0939, 850.4130, 33.3843);
	SetPlayerFacingAngle(playerid, 94.3991);
	SetPlayerCameraPos(playerid, 369.9781, 849.8905, 40.0);
	SetPlayerCameraLookAt(playerid, 376.0939, 850.4130, 33.3843);
	ApplyAnimation(playerid, "WOP", "DANCE_G9", 4.0, true, false, false, false, 0);
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
