#pragma warning disable 200

// Run tests.
#define RUN_TESTS
// Uncomment (and edit) to run a single test case
// #define JUST_TEST TestName

#include "test-header"

// Test suites
#include "components/core/main.pwn"
#include "components/databases/main.pwn"
#include "components/menus/main.pwn"
#include "components/actors/main.pwn"
#include "components/players/main.pwn"
#include "components/consolevars/main.pwn"
#include "components/gangzones/main.pwn"

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
    return 1;
}

// vim: se ft=cpp:
