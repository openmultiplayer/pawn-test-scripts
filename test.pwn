#include <a_samp>

// Run tests.
#define RUN_TESTS

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

main()
{
    print("Loading Cman's test Pawn scripts");
}

public OnGameModeInit()
{
    AddPlayerClass(0, 1000.0, 1000.0, 50.0, 0.0, 0, 0, 0, 0, 0, 0);
	return 1;
}

forward SendTestMessagePID(playerid);
forward SendTestMessage();

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFF0000FF, "This is Cman's test open.mp server.");
}

PTEST__ SendClientMessage(playerid)
{
	SendClientMessage(playerid, -1, "HELLO, WORLD!");
	ASK("Can you see the client message \"HELLO WORLD\"?");
}

PTEST__ SetPlayerCamera0(playerid)
{
	SetPlayerCameraPos(playerid, 10, -10, 2);
	SetPlayerCameraLookAt(playerid, 0, 0, 0);
	ASK("Are you looking at the middle of Blueberry Farm?");
}

PTEST__ SetPlayerCamera1(playerid)
{
	SetCameraBehindPlayer(playerid);
	ASK("Is the camera behind you?");
}

PTEST__ SetPlayerDrunkLevel0(playerid)
{
	SetPlayerDrunkLevel(playerid, 50000);
	ASK("Are you drunk?");
}

PTEST__ SetPlayerDrunkLevel1(playerid)
{
	SetPlayerDrunkLevel(playerid, 0);
	ASK("Are you sober?");
}

PTEST__ SetPlayerInterior(playerid)
{
	SetPlayerInterior(playerid, 17);
	SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469);
	ASK("Are you in some shop?");
}

PTEST_CLOSE__ SetPlayerInterior(playerid)
{
	SetPlayerInterior(playerid, 0);
	SetPlayerPos(playerid, 1010.0, 1010.0, 50.0);
}

PTEST__ SetPlayerWantedLevel(playerid)
{
	SetPlayerWantedLevel(playerid, 6);
	ASK("Do you have a wanted level of 6?");
}

PTEST_CLOSE__ SetPlayerWantedLevel(playerid)
{
	SetPlayerWantedLevel(playerid, 0);
}

PTEST__ SetPlayerWeather(playerid)
{
	SetPlayerWeather(playerid, 16);
	ASK("Is the weather rainy?");
}

PTEST_CLOSE__ SetPlayerWeather(playerid)
{
	SetPlayerWeather(playerid, 0);
}

PTEST__ setskin(playerid)
{
	SetPlayerSkin(playerid, 1);
	ASK("Did your skin change?");
}

PTEST__ SetPlayerShopName(playerid)
{
	SetPlayerInterior(playerid, 5);
	SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
	SetPlayerShopName(playerid, "FDPIZA");
	SendClientMessage(playerid, 0xFFFFFFFF, "Welcome to Pizza Stack!");
	ASK("Are you buying a pizza?");
}

PTEST_CLOSE__ SetPlayerShopName(playerid)
{
	SetPlayerInterior(playerid, 0);
	SetPlayerPos(playerid, 1010.0, 1010.0, 50.0);
}

PTEST__ GivePlayerMoney(playerid)
{
	GivePlayerMoney(playerid, 1000000);
	ASK("Are you suddenly rich ($1000000)?");
}

PTEST__ GetPlayerPos(playerid)
{
	new Float:x, Float:y, Float:z, ret[128];
	GetPlayerPos(playerid, x, y, z);
	format(ret, sizeof(ret), "Your pos is: %f %f %f", x, y, z);
	SendClientMessage(playerid, -1, ret);
	ASK("Does your position in a client message look vaguely correct?");
}

PTEST__ CreateExplosion(playerid)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	CreateExplosion(x - 10.0, y - 10.0, z, 1, 5.0);
	ASK("Was there an explosion near you?");
}

PTEST__ format(playerid)
{
	new ret[128];
	format(ret, sizeof(ret), "Test formatting: %s", "blibli");
	SendClientMessage(playerid, -1, ret);
	ASK("Did you see \"Test formatting: blibli\" client message?");
}

PTEST__ GetPlayerName(playerid)
{
	new name[MAX_PLAYER_NAME + 1], ret[128];
	GetPlayerName(playerid, name, sizeof(name));
	format(ret, sizeof(ret), "Your name is: %s", name);
	SendClientMessage(playerid, -1, ret);
	ASK("Did you see your name in a client message?");
}

PTEST__ SendDeathMessage(playerid)
{
	SendDeathMessage(INVALID_PLAYER_ID, playerid, 10);
	SendDeathMessage(playerid, playerid + 1, 3);
	ASK("Do you see two death messages?");
}

PTEST__ PlayAudioStreamForPlayer(playerid)
{
	PlayAudioStreamForPlayer(playerid, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true);
	ASK("Is there a radio station playing?");
}

PTEST__ SetPlayerHealth(playerid)
{
	SetPlayerHealth(playerid, 50.0);
	ASK("Is your health at half?");
}

PTEST__ GetPlayerHealth(playerid)
{
	new ret[128], Float:hp;
	GetPlayerHealth(playerid, hp);
	format(ret, sizeof(ret), "Your hp are: %f", hp);
	SendClientMessage(playerid, -1, ret);
	ASK("Do you see your health displayed in a client message?");
}

// XXX: Does not work yet
PTEST__ EnableVehicleFriendlyFire(playerid)
{
	EnableVehicleFriendlyFire();
	SendClientMessage(playerid, -1, "Vehicle friendly fire is enabled");
	ASK("Is vehicle friendly fire on?");
}

// XXX: Does not work yet
PTEST__ SetTimer(playerid)
{
	//SetTimer("SendTestMessage", 5000, false);
	SendClientMessage(playerid, -1, "Timer is set");
	ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}

// XXX: Does not work yet
PTEST__ SetTimerEx(playerid)
{
	//SetTimerEx("SendTestMessagePID", 5000, false, "i", playerid);
	SendClientMessage(playerid, -1, "Timer is set");
	ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}

public SendTestMessage()
{
	//SendClientMessageToAll(-1, "Timer was processed");
}

public SendTestMessagePID(playerid)
{
	SendClientMessage(playerid, -1, "Timer was processed");
}
// vim: se ft=cpp:

