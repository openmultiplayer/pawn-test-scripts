#include <a_samp>

// Run tests.
#define RUN_TESTS
// Uncomment (and edit) to run a single test case
//#define JUST_TEST TestName

// Minimal YSI.
#define YSI_NO_DIALOG_ASK
#define YSI_NO_ANDROID_CHECK
#define YSI_NO_GET_IP
#define FOREACH_NO_BOTS
#define FOREACH_NO_LOCALS
#define FOREACH_NO_VEHICLES
#define FOREACH_NO_ACTORS
#define FOREACH_NO_STREAMED

#include <YSI_Core\y_testing>

// Test suites
#include "components/core/main.pwn"
#include "components/menus/main.pwn"
#include "components/players/main.pwn"
#include "components/consolevars/main.pwn"

main()
{
    print("Loading test Pawn scripts");
}

public OnGameModeInit()
{
    AddPlayerClass(0, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, 0, 0, 0);
    CreateVehicle(562, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, 0);
    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFF0000FF, "Welcome to your test open.mp server.");
}

// vim: se ft=cpp:
