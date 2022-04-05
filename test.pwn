#pragma warning disable 200
//#pragma option -l

// Run tests.
#define YSI_TESTS
#define RUN_TESTS
// Uncomment (and edit) to run a single test case
#define JUST_TEST Timers

#include "test-header"
#include <YSI_Coding\y_hooks>
#include <YSI_Coding\y_inline>
#include <YSI_Coding\y_timers>
#include "test-natives"

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
}

hook OnGameModeInit()
{
    AddPlayerClass(0, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, 0, 0, 0);
    CreateVehicle(562, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, false);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFF0000FF, "Welcome to your test open.mp server.");
    return 1;
}

// vim: se ft=cpp:
