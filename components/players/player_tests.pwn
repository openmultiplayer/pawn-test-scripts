// Players component player test suite

#define TEST_MESSAGE "HELLO, WORLD!"

forward SendTestMessagePID(playerid);
forward SendTestMessage();


PTEST__ P_01_SendClientMessage(playerid)
{
    ASSERT_EQ(SendClientMessage(playerid, -1, TEST_MESSAGE), 1);
    ASSERT_EQ(SendClientMessage(playerid + 999, -1, TEST_MESSAGE), 0);
    ASK("Can you see the client message " TEST_MESSAGE "?");
}


PTEST__ P_02_SetPlayerCameraPosLookAt(playerid)
{
    ASSERT_EQ(SetPlayerCameraPos(playerid, 10, -10, 2), 1);
    ASSERT_EQ(SetPlayerCameraLookAt(playerid, 0, 0, 0), 1);
    ASSERT_EQ(SetPlayerCameraPos(playerid + 999, 10, -10, 2), 0);
    ASSERT_EQ(SetPlayerCameraLookAt(playerid + 999, 0, 0, 0), 0);
    ASK("Are you looking at the middle of Blueberry Farm?");
}
PTEST_CLOSE__ P_02_SetPlayerCameraPosLookAt(playerid)
{
    SetCameraBehindPlayer(playerid);
}


PTEST__ P_03_SetCameraBehindPlayer(playerid)
{
    ASSERT_EQ(SetCameraBehindPlayer(playerid), 1);
    ASSERT_EQ(SetCameraBehindPlayer(playerid + 999), 0);
    ASK("Is the camera behind you?");
}


PTEST__ P_04_SetPlayerDrunkLevel(playerid)
{
    ASSERT_EQ(SetPlayerDrunkLevel(playerid, 50000), 1);
    ASSERT_EQ(SetPlayerDrunkLevel(playerid + 999, 50000), 0);
    ASK("Are you drunk?");
}


PTEST__ P_05_SetPlayerDrunkLevelToZero(playerid)
{
    ASSERT_EQ(SetPlayerDrunkLevel(playerid, 0), 1);
    ASSERT_EQ(SetPlayerDrunkLevel(playerid + 999, 0), 0);
    ASK("Are you sober?");
}


PTEST__ P_06_SetPlayerInteriorAndPos(playerid)
{
    ASSERT_EQ(SetPlayerInterior(playerid, 17), 1);
    ASSERT_EQ(SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469), 1);
    ASSERT_EQ(SetPlayerInterior(playerid + 999, 17), 0);
    ASSERT_EQ(SetPlayerPos(playerid + 999, -25.7220, -187.8216, 1003.5469), 0);
    ASK("Are you in some shop?");
}
PTEST_CLOSE__ P_06_SetPlayerInteriorAndPos(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1010.0, 1010.0, 50.0);
}


PTEST__ P_07_SetPlayerWantedLevel(playerid)
{
    ASSERT_EQ(SetPlayerWantedLevel(playerid, 6), 1);
    ASSERT_EQ(SetPlayerWantedLevel(playerid + 999, 6), 0);
    ASK("Do you have a wanted level of 6?");
}
PTEST_CLOSE__ P_07_SetPlayerWantedLevel(playerid)
{
    SetPlayerWantedLevel(playerid, 0);
}


PTEST__ P_08_SetPlayerWeather(playerid)
{
    ASSERT_EQ(SetPlayerWeather(playerid, 16), 1);
    ASSERT_EQ(SetPlayerWeather(playerid + 999, 16), 0);
    ASK("Is the weather rainy?");
}
PTEST_CLOSE__ P_08_SetPlayerWeather(playerid)
{
    SetPlayerWeather(playerid, 0);
}


PTEST__ P_09_SetPlayerSkin(playerid)
{
    ASSERT_EQ(SetPlayerSkin(playerid, 1), 1);
    ASSERT_EQ(SetPlayerSkin(playerid + 999, 1), 0);
    ASK("Did your skin change?");
}
PTEST_CLOSE__ P_09_SetPlayerSkin(playerid)
{
    SetPlayerSkin(playerid, 0);
}


PTEST_INIT__ P_10_SetPlayerShopName(playerid)
{
    SetPlayerInterior(playerid, 5);
    SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
}
PTEST__ P_10_SetPlayerShopName(playerid)
{
    ASSERT_EQ(SetPlayerShopName(playerid, "FDPIZA"), 1);
    ASSERT_EQ(SetPlayerShopName(playerid + 999, "FDPIZA"), 0);
    ASK("Are you buying a pizza?");
}
PTEST_CLOSE__ P_10_SetPlayerShopName(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1000.0, 1000.0, 50.0);
}


PTEST__ P_11_GivePlayerMoney(playerid)
{
    ASSERT_EQ(GivePlayerMoney(playerid, 1000000), 1);
    ASSERT_EQ(GivePlayerMoney(playerid + 999, 1000000), 0);
    ASK("Are you suddenly rich ($1000000)?");
}
PTEST_CLOSE__ P_11_GivePlayerMoney(playerid)
{
    GivePlayerMoney(playerid, -1000000);
}


PTEST__ P_12_GetPlayerPos(playerid)
{
    new Float:x, Float:y, Float:z, ret[128];
    ASSERT_EQ(GetPlayerPos(playerid, x, y, z), 1);
    ASSERT_EQ(GetPlayerPos(playerid + 999, x, y, z), 0);
    format(ret, sizeof(ret), "Your pos is: %f %f %f", x, y, z);
    SendClientMessage(playerid, -1, ret);
    ASK("Does your position in a client message look nearly correct? (expected 1000 1000 50)");
}


PTEST__ P_13_CreateExplosion(playerid)
{
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    ASSERT_EQ(CreateExplosion(x, y + 5, z, 1, 5.0), 1);
    ASSERT_EQ(CreateExplosion(x, y + 5, z, 14, -1.5), 1);
    ASK("Was there an explosion in front of you?");
}


PTEST__ P_14_GetPlayerName(playerid)
{
    new name[MAX_PLAYER_NAME + 1], ret[128];
    ASSERT_EQ(GetPlayerName(playerid, name, sizeof(name)), 1);
    ASSERT_EQ(GetPlayerName(playerid + 999, name, sizeof(name)), 0);
    format(ret, sizeof(ret), "Your name is: %s", name);
    SendClientMessage(playerid, -1, ret);
    ASK("Did you see your name in a client message?");
}


PTEST__ P_15_SendDeathMessage(playerid)
{
    ASSERT_EQ(SendDeathMessage(INVALID_PLAYER_ID, playerid, 10), 1);
    ASSERT_EQ(SendDeathMessage(playerid, playerid + 999, 5), 0);
    ASK("Do you see one death message?");
}


PTEST__ P_16_PlayAudioStreamForPlayer(playerid)
{
    ASSERT_EQ(PlayAudioStreamForPlayer(playerid, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true), 1);
    ASSERT_EQ(PlayAudioStreamForPlayer(playerid + 999, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true), 0);
    ASK("Is there a radio station playing?");
}
PTEST_CLOSE__ P_16_PlayAudioStreamForPlayer(playerid)
{
    StopAudioStreamForPlayer(playerid);
}


PTEST__ P_17_SetPlayerHealth(playerid)
{
    ASSERT_EQ(SetPlayerHealth(playerid, 50.0), 1);
    ASSERT_EQ(SetPlayerHealth(playerid + 999, 50.0), 0);
    ASK("Is your health at half?");
}
PTEST_CLOSE__ P_17_SetPlayerHealth(playerid)
{
    SetPlayerHealth(playerid, 100.0);
}


PTEST__ P_18_GetPlayerHealth(playerid)
{
    new ret[128], Float:hp;
    ASSERT_EQ(GetPlayerHealth(playerid, hp), 1);
    ASSERT_EQ(GetPlayerHealth(playerid + 999, hp), 0);
    format(ret, sizeof(ret), "Your hp are: %f", hp);
    SendClientMessage(playerid, -1, ret);
    ASK("Do you see your health displayed in a client message?");
}


PTEST_INIT__ P_19_EnableVehicleFriendlyFire(playerid)
{
    // TODO: Set players (playerid and +1) team, give them a weapon
}
PTEST__ P_19_EnableVehicleFriendlyFire(playerid)
{
    // XXX: Does not work yet
    ASSERT_EQ(EnableVehicleFriendlyFire(), 1);
    SendClientMessage(playerid, -1, "Vehicle friendly fire is enabled");
    ASK("Is vehicle friendly fire on?");
}
PTEST_CLOSE__ P_19_EnableVehicleFriendlyFire(playerid)
{
    // TODO: Revert state set in PTEST_INIT__
}


PTEST__ P_20_SetTimer(playerid)
{
    // XXX: Does not work yet
    //ASSERT_EQ(SetTimer("SendTestMessage", 5000, false), 1);
    SendClientMessage(playerid, -1, "Timer is set");
    ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}


PTEST__ P_21_SetTimerEx(playerid)
{
    // XXX: Does not work yet
    //ASSERT_EQ(SetTimerEx("SendTestMessagePID", 5000, false, "i", playerid), 1);
    SendClientMessage(playerid, -1, "Timer is set");
    ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}


public SendTestMessage()
{
    //ASSERT_EQ(SendClientMessageToAll(-1, "Timer was processed"), 1);
}

public SendTestMessagePID(playerid)
{
    SendClientMessage(playerid, -1, "Timer was processed");
}

// vim: se ft=cpp:
