#include <a_samp.inc>
#include <YSI_Core\y_testing>

main()
{
    print("Loading Cman's test Pawn scripts");
}

forward send_test_message();

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFF0000FF, "This is Cman's test open.mp server.");
}

PTEST__ hello()
{
	SendClientMessage(playerid, -1, "HELLO, WORLD!");
	ASK("Can you see the client message \"HELLO WORLD\"?");
}

PTEST__ setcampos()
{
	SetPlayerCameraPos(playerid, 10, -10, 2);
	SetPlayerCameraLookAt(playerid, 0, 0, 0);
	ASK("Are you looking at the middle of Blueberry Farm?");
}

PTEST__ setcamzzbehind() // `zz` so this test comes after `setcampos`.
{
	SetCameraBehindPlayer(playerid);
	ASK("Is the behind you?");
}

PTEST__ setdrunk0()
{
	SetPlayerDrunkLevel(playerid, 50000);
	ASK("Are you drunk?");
}

PTEST__ setdrunk1()
{
	SetPlayerDrunkLevel(playerid, 0);
	ASK("Are you sober?");
}

PTEST__ setposint()
{
	SetPlayerInterior(playerid, 17);
	SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469);
	ASK("Are you in some shop?");
}

PTEST__ setwanted()
{
	SetPlayerWantedLevel(playerid, 6);
	ASK("Do you have a wanted level of 6?");
}

PTEST__ setweather()
{
	SetPlayerWeather(playerid, 16);
	ASK("Is the weather rainy?");
}

PTEST__ setskin()
{
	SetPlayerSkin(playerid, 1);
	ASK("Did your skin change?");
}

PTEST__ setshopname()
{
	SetPlayerInterior(playerid, 5);
	SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
	SetPlayerShopName(playerid, "FDPIZA");
	SendClientMessage(playerid, 0xFFFFFFFF, "Welcome to Pizza Stack!");
	ASK("Are you buying a pizza?");
}

PTEST__ gibmoni()
{
	GivePlayerMoney(playerid, 1000000);
	ASK("Are you suddenly rich ($1000000)?");
}

PTEST__ getpos()
{
	new Float:x, Float:y, Float:z, ret[128];
	GetPlayerPos(playerid, x, y, z);
	format(ret, sizeof(ret), "Your pos is: %f %f %f", x, y, z);
	SendClientMessage(playerid, -1, ret);
	ASK("Does your position in a client message look vaguely correct?");
}

PTEST__ explode()
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	CreateExplosion(x, y, z, 1, 5.0);
	ASK("Was there an explosion on you?");
}

PTEST__ format()
{
	new ret[128];
	format(ret, sizeof(ret), "Test formatting: %s", "blibli");
	SendClientMessage(playerid, -1, ret);
	ASK("Did you see \"Test formatting: blibli\" client message?");
}

PTEST__ getname()
{
	new name[MAX_PLAYER_NAME + 1], ret[128];
	GetPlayerName(playerid, name, sizeof(name));
	format(ret, sizeof(ret), "Your name is: %s", name);
	SendClientMessage(playerid, -1, ret);
	ASK("Did you see your name in a client message?");
}

PTEST__ deathmsg()
{
	SendDeathMessage(INVALID_PLAYER_ID, playerid, 10);
	SendDeathMessage(playerid, playerid + 1, 3);
	ASK("Do you see two death messages?");
}

PTEST__ radio()
{
	PlayAudioStreamForPlayer(playerid, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true);
	ASK("Is there a radio station playing?");
}

PTEST__ sethp()
{
	SetPlayerHealth(playerid, 50.0);
	ASK("Is your health at half?");
}

PTEST__ gethp()
{
	new ret[128], Float:hp;
	GetPlayerHealth(playerid, hp);
	format(ret, sizeof(ret), "Your hp are: %f", hp);
	SendClientMessage(playerid, -1, ret);
	ASK("Do you see your health displayed in a client message?");
}

// XXX: Does not work yet
PTEST__ vehff()
{
	EnableVehicleFriendlyFire();
	SendClientMessage(playerid, -1, "Vehicle friendly fire is enabled");
	ASK("Is vehicle friendly fire on?  Sorry, I don't know how you can tell...");
}

// XXX: Does not work yet
PTEST__ settimer()
{
	SetTimer("send_test_message", 5000, false);
	SendClientMessage(playerid, -1, "Timer is set");
	ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}

public send_test_message()
{
	SendClientMessageToAll(-1, "Timer was processed");
}
// vim: se ft=cpp:

