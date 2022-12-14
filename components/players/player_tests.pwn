// Players component player test suite

#define TEST_MESSAGE "HELLO, WORLD!"

forward SendTestMessagePID(playerid);
forward SendTestMessage();


@test(.group = "players") P_01_SendClientMessage(playerid)
{
    ASSERT_EQ(SendClientMessage(playerid, -1, TEST_MESSAGE), true);
    ASSERT_EQ(SendClientMessage(playerid + 999, -1, TEST_MESSAGE), false);
    ASK("Can you see the client message " TEST_MESSAGE "?");
}


@test(.group = "players") P_02_SetPlayerCameraPosLookAt(playerid)
{
    ASSERT_EQ(SetPlayerCameraPos(playerid, 10, -10, 2), true);
    ASSERT_EQ(SetPlayerCameraLookAt(playerid, 0, 0, 0), true);
    ASSERT_EQ(SetPlayerCameraPos(playerid + 999, 10, -10, 2), false);
    ASSERT_EQ(SetPlayerCameraLookAt(playerid + 999, 0, 0, 0), false);
    ASK("Are you looking at the middle of Blueberry Farm?");
}
PTEST_CLOSE__ P_02_SetPlayerCameraPosLookAt(playerid)
{
    SetCameraBehindPlayer(playerid);
}


@test(.group = "players") P_03_SetCameraBehindPlayer(playerid)
{
    ASSERT_EQ(SetCameraBehindPlayer(playerid), true);
    ASSERT_EQ(SetCameraBehindPlayer(playerid + 999), false);
    ASK("Is the camera behind you?");
}


@test(.group = "players") P_04_SetPlayerDrunkLevel(playerid)
{
    ASSERT_EQ(SetPlayerDrunkLevel(playerid, 50000), true);
    ASSERT_EQ(SetPlayerDrunkLevel(playerid + 999, 50000), false);
    ASK("Are you drunk?");
}


@test(.group = "players") P_05_SetPlayerDrunkLevelToZero(playerid)
{
    ASSERT_EQ(SetPlayerDrunkLevel(playerid, 0), true);
    ASSERT_EQ(SetPlayerDrunkLevel(playerid + 999, 0), false);
    ASK("Are you sober?");
}


@test(.group = "players") P_06_SetPlayerInteriorAndPos(playerid)
{
    ASSERT_EQ(SetPlayerInterior(playerid, 17), true);
    ASSERT_EQ(SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469), true);
    ASSERT_EQ(SetPlayerInterior(playerid + 999, 17), false);
    ASSERT_EQ(SetPlayerPos(playerid + 999, -25.7220, -187.8216, 1003.5469), false);
    ASK("Are you in some shop?");
}
PTEST_CLOSE__ P_06_SetPlayerInteriorAndPos(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1002.0, 1002.0, 50.0);
}


@test(.group = "players") P_07_SetPlayerWantedLevel(playerid)
{
    ASSERT_EQ(SetPlayerWantedLevel(playerid, 6), true);
    ASSERT_EQ(SetPlayerWantedLevel(playerid + 999, 6), false);
    ASK("Do you have a wanted level of 6?");
}
PTEST_CLOSE__ P_07_SetPlayerWantedLevel(playerid)
{
    SetPlayerWantedLevel(playerid, 0);
}


@test(.group = "players") P_08_SetPlayerWeather(playerid)
{
    ASSERT_EQ(SetPlayerWeather(playerid, 16), true);
    ASSERT_EQ(SetPlayerWeather(playerid + 999, 16), false);
    ASK("Is the weather rainy?");
}
PTEST_CLOSE__ P_08_SetPlayerWeather(playerid)
{
    SetPlayerWeather(playerid, 0);
}


@test(.group = "players") P_09_SetPlayerSkin(playerid)
{
    ASSERT_EQ(SetPlayerSkin(playerid, 1), true);
    ASSERT_EQ(SetPlayerSkin(playerid + 999, 1), false);
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
@test(.group = "players") P_10_SetPlayerShopName(playerid)
{
    ASSERT_EQ(SetPlayerShopName(playerid, "FDPIZA"), true);
    ASSERT_EQ(SetPlayerShopName(playerid + 999, "FDPIZA"), false);
    ASK("Are you buying a pizza?");
}
PTEST_CLOSE__ P_10_SetPlayerShopName(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1002.0, 1002.0, 50.0);
}


@test(.group = "players") P_11_GivePlayerMoney(playerid)
{
    ASSERT_EQ(GivePlayerMoney(playerid, 1000000), 1);
    ASSERT_EQ(GivePlayerMoney(playerid + 999, 1000000), 0);
    ASK("Are you suddenly rich ($1000000)?");
}
PTEST_CLOSE__ P_11_GivePlayerMoney(playerid)
{
    GivePlayerMoney(playerid, -1000000);
}


@test(.group = "players") P_12_GetPlayerPos(playerid)
{
    new Float:x, Float:y, Float:z, ret[128];
    ASSERT_EQ(GetPlayerPos(playerid, x, y, z), true);
    ASSERT_EQ(GetPlayerPos(playerid + 999, x, y, z), false);
    format(ret, sizeof(ret), "Your pos is: %f %f %f", x, y, z);
    SendClientMessage(playerid, -1, ret);
    ASK("Does your position in a client message look nearly correct? (expected 1002 1002 50)");
}


@test(.group = "players") P_13_CreateExplosion(playerid)
{
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    ASSERT_EQ(CreateExplosion(x, y + 5, z, 1, 5.0), 1);
    ASSERT_EQ(CreateExplosion(x, y + 5, z, 14, -1.5), 1);
    ASK("Was there an explosion in front of you?");
}


@test(.group = "players") P_14_GetPlayerName(playerid)
{
    new name[MAX_PLAYER_NAME + 1], ret[128];
    ASSERT_EQ(GetPlayerName(playerid, name, sizeof(name)), true);
    ASSERT_EQ(GetPlayerName(playerid + 999, name, sizeof(name)), false);
    format(ret, sizeof(ret), "Your name is: %s", name);
    SendClientMessage(playerid, -1, ret);
    ASK("Did you see your name in a client message?");
}


@test(.group = "players") P_15_SendDeathMessage(playerid)
{
    ASSERT_EQ(SendDeathMessage(INVALID_PLAYER_ID, playerid, 10), true);
    ASSERT_EQ(SendDeathMessage(playerid, playerid + 999, 5), false);
    ASK("Do you see one death message?");
}


@test(.group = "players") P_16_PlayAudioStreamForPlayer(playerid)
{
    ASSERT_EQ(PlayAudioStreamForPlayer(playerid, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true), true);
    ASSERT_EQ(PlayAudioStreamForPlayer(playerid + 999, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true), false);
    ASK("Is there a radio station playing?");
}
PTEST_CLOSE__ P_16_PlayAudioStreamForPlayer(playerid)
{
    StopAudioStreamForPlayer(playerid);
}


@test(.group = "players") P_17_SetPlayerHealth(playerid)
{
    ASSERT_EQ(SetPlayerHealth(playerid, 50.0), true);
    ASSERT_EQ(SetPlayerHealth(playerid + 999, 50.0), false);
    ASK("Is your health at half?");
}
PTEST_CLOSE__ P_17_SetPlayerHealth(playerid)
{
    SetPlayerHealth(playerid, 100.0);
}


@test(.group = "players") P_18_GetPlayerHealth(playerid)
{
    new ret[128], Float:hp;
    ASSERT_EQ(GetPlayerHealth(playerid, hp), true);
    ASSERT_EQ(GetPlayerHealth(playerid + 999, hp), false);
    format(ret, sizeof(ret), "Your hp are: %f", hp);
    SendClientMessage(playerid, -1, ret);
    ASK("Do you see your health displayed in a client message?");
}


PTEST_INIT__ P_19_EnableVehicleFriendlyFire(playerid)
{
    // TODO: Set players (playerid and +1) team, give them a weapon
}
@test(.group = "players") P_19_EnableVehicleFriendlyFire(playerid)
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


@test(.group = "players") P_20_SetTimer(playerid)
{
    ASSERT_EQ(SetTimer("SendTestMessage", 5000, false), 1);
    SendClientMessage(playerid, -1, "Timer is set");
    ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}


@test(.group = "players") P_21_SetTimerEx(playerid)
{
    ASSERT_EQ(SetTimerEx("SendTestMessagePID", 5000, false, "i", playerid), 1);
    SendClientMessage(playerid, -1, "Timer is set");
    ASK("Is the client message \"Timer was processed\" appearing after 5 seconds?");
}


@test(.group = "players") P_22_ApplyAnimation(playerid)
{
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, true, false, false, true, 1000);
    //ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 0.0, false, false, false, false, 0);
    ASK("Are you placing a bomb?");
}
PTEST_CLOSE__ P_22_ApplyAnimation(playerid)
{
    ClearAnimations(playerid);
}


forward P_23_ClearAnimations(playerid);
public P_23_ClearAnimations(playerid)
{
    ClearAnimations(playerid);
}
@test(.group = "players") P_23_ClearAnimations(playerid)
{
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, true, false, false, true, 1000);
    ASK("Does your animation stop after 3 seconds?");
	SetTimerEx("P_23_ClearAnimations", 3000, false, "i", playerid);
}


public SendTestMessage()
{
    //ASSERT_EQ(SendClientMessageToAll(-1, "Timer was processed"), 1);
}

public SendTestMessagePID(playerid)
{
    SendClientMessage(playerid, -1, "Timer was processed");
}


native void:AllowInteriorWeapons_CBA_to_declare(bool:allow) = AllowInteriorWeapons;
native void:AllowPlayerWeapons_CBA_to_declare(playerid, bool:allow) = AllowPlayerWeapons;
native void:AllowPlayerTeleport_CBA_to_declare(playerid, bool:allow) = AllowPlayerTeleport;
PTEST_INIT__ P_24_AllowInteriorWeapons(playerid)
{
    GivePlayerWeapon(playerid, WEAPON_DEAGLE, 30);
    SetPlayerArmedWeapon(playerid, WEAPON_DEAGLE);
    SetPlayerInterior(playerid, 5);
    SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
	AllowInteriorWeapons_CBA_to_declare(false);
}
@test(.group = "players") P_24_AllowInteriorWeapons(playerid)
{
	ASK("Are you unarmed?");
}
PTEST_CLOSE__ P_24_AllowInteriorWeapons(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1002.0, 1002.0, 50.0);
	AllowInteriorWeapons_CBA_to_declare(true);
}


PTEST_INIT__ P_25_AllowInteriorWeapons(playerid)
{
    GivePlayerWeapon(playerid, WEAPON_DEAGLE, 30);
    SetPlayerArmedWeapon(playerid, WEAPON_DEAGLE);
    SetPlayerInterior(playerid, 5);
    SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
	AllowInteriorWeapons_CBA_to_declare(true);
}
@test(.group = "players") P_25_AllowInteriorWeapons(playerid)
{
	ASK("Are you armed?");
}
PTEST_CLOSE__ P_25_AllowInteriorWeapons(playerid)
{
    SetPlayerInterior(playerid, 0);
    SetPlayerPos(playerid, 1002.0, 1002.0, 50.0);
	AllowInteriorWeapons_CBA_to_declare(true);
}


PTEST_INIT__ P_26_AllowPlayerWeapons(playerid)
{
    GivePlayerWeapon(playerid, WEAPON_DEAGLE, 30);
    SetPlayerArmedWeapon(playerid, WEAPON_DEAGLE);
	AllowPlayerWeapons_CBA_to_declare(playerid, false);
}
@test(.group = "players") P_26_AllowPlayerWeapons(playerid)
{
	ASK("Are you unarmed?");
}
PTEST_CLOSE__ P_26_AllowPlayerWeapons(playerid)
{
	AllowPlayerWeapons_CBA_to_declare(playerid, true);
}


PTEST_INIT__ P_27_AllowPlayerWeapons(playerid)
{
    GivePlayerWeapon(playerid, WEAPON_DEAGLE, 30);
    SetPlayerArmedWeapon(playerid, WEAPON_DEAGLE);
	AllowPlayerWeapons_CBA_to_declare(playerid, true);
}
@test(.group = "players") P_27_AllowPlayerWeapons(playerid)
{
	ASK("Are you armed?");
}
PTEST_CLOSE__ P_27_AllowPlayerWeapons(playerid)
{
	AllowPlayerWeapons_CBA_to_declare(playerid, true);
}


PTEST_INIT__ P_28_AllowPlayerTeleport(playerid)
{
    AllowPlayerTeleport_CBA_to_declare(playerid, true);
}
@test(.group = "players") P_28_AllowPlayerTeleport(playerid)
{
	ASK("Can you teleport via the map?");
}
PTEST_CLOSE__ P_28_AllowPlayerTeleport(playerid)
{
	AllowPlayerTeleport_CBA_to_declare(playerid, false);
}


PTEST_INIT__ P_29_AllowPlayerTeleport(playerid)
{
    AllowPlayerTeleport_CBA_to_declare(playerid, false);
}
@test(.group = "players") P_29_AllowPlayerTeleport(playerid)
{
	ASK("Are you prevented from teleporting via the map?");
}
PTEST_CLOSE__ P_29_AllowPlayerTeleport(playerid)
{
	AllowPlayerTeleport_CBA_to_declare(playerid, false);
}

// vim: se ft=cpp:
