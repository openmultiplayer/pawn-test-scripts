#include "samp-stdlib/a_samp.inc"
// Arguments: function to call, message format, val tag
#define CHECK_VAL(%1,%2,%3) \
    { \
        new ret[128], %1:val; \
        val = %3; \
        format(ret, sizeof(ret), %2, val); \
        SendClientMessage(playerid, -1, ret); \
    }

main() {
    print("Loading Cman's test Pawn scripts");
}

public OnPlayerConnect(playerid) {
    SendClientMessage(playerid, 0xFF0000FF, "This is Cman's test open.mp server.");
}

public OnPlayerCommandText(playerid, cmdtext[]) {
    if(!strcmp(cmdtext, "/hello")) {
        CHECK_VAL(_, "Your val is: %d", SendClientMessage(playerid, -1, "HELLO, WORLD!"))
        CHECK_VAL(_, "Other val is: %d", SendClientMessage(playerid + 1, -1, "HELLO, WORLD!"))
        return true;
    }

    if(!strcmp(cmdtext, "/setcampos")) {
        CHECK_VAL(_, "Your campos val is: %d", SetPlayerCameraPos(playerid, 10, -10, 2))
        CHECK_VAL(_, "Your lookat val is: %d", SetPlayerCameraLookAt(playerid, 0, 0, 0))
        CHECK_VAL(_, "Other campos val is: %d", SetPlayerCameraPos(playerid + 1, 10, -10, 2))
        CHECK_VAL(_, "Other lookat val is: %d", SetPlayerCameraLookAt(playerid + 1, 0, 0, 0))
        return true;
    }

    if(!strcmp(cmdtext, "/setcambehind")) {
        CHECK_VAL(_, "Your val is: %d", SetCameraBehindPlayer(playerid))
        CHECK_VAL(_, "Other val is: %d", SetCameraBehindPlayer(playerid + 1))
        return true;
    }

    if(!strcmp(cmdtext, "/setdrunk")) {
        CHECK_VAL(_, "Your val is: %d", SetPlayerDrunkLevel(playerid, 50000))
        CHECK_VAL(_, "Other val is: %d", SetPlayerDrunkLevel(playerid + 1, 50000))
        return true;
    }

    if(!strcmp(cmdtext, "/setposint")) {
        CHECK_VAL(_, "Your setint val is: %d", SetPlayerInterior(playerid, 17))
        CHECK_VAL(_, "Your setpos val is: %d", SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469))
        CHECK_VAL(_, "Other setint val is: %d", SetPlayerInterior(playerid + 1, 17))
        CHECK_VAL(_, "Other setpos val is: %d", SetPlayerPos(playerid + 1, -25.7220, -187.8216, 1003.5469))
        return true;
    }

    if(!strcmp(cmdtext, "/setwanted")) {
        CHECK_VAL(_, "Your val is: %d", SetPlayerWantedLevel(playerid, 6))
        CHECK_VAL(_, "Other val is: %d", SetPlayerWantedLevel(playerid + 1, 6))
        return true;
    }

    if(!strcmp(cmdtext, "/setweather")) {
        CHECK_VAL(_, "Your val is: %d", SetPlayerWeather(playerid, 17))
        CHECK_VAL(_, "Other val is: %d", SetPlayerWeather(playerid + 1, 17))
        return true;
    }

    if(!strcmp(cmdtext, "/setskin")) {
        CHECK_VAL(_, "Your val is: %d", SetPlayerSkin(playerid, 1))
        CHECK_VAL(_, "Other val is: %d", SetPlayerSkin(playerid + 1, 1))
        return true;
    }

    if(!strcmp(cmdtext, "/setshopname")) {
        SetPlayerInterior(playerid, 5);
        SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
        CHECK_VAL(_, "Your val is: %d", SetPlayerShopName(playerid, "FDPIZA"))
        CHECK_VAL(_, "Other val is: %d", SetPlayerShopName(playerid + 1, "FDPIZA"))
        return true;
    }

    if(!strcmp(cmdtext, "/gibmoni")) {
        CHECK_VAL(_, "Your val is: %d", GivePlayerMoney(playerid, 1000000))
        CHECK_VAL(_, "Other val is: %d", GivePlayerMoney(playerid + 1, 1000000))
        return true;
    }

    if(!strcmp(cmdtext, "/getpos")) {
        new Float:x, Float:y, Float:z, ret[128];
        GetPlayerPos(playerid, x, y, z);
        format(ret, sizeof(ret), "Your pos is: %f %f %f", x, y, z);
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    if(!strcmp(cmdtext, "/explodeme")) {
        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        CreateExplosionForPlayer(playerid, x, y, z, 1, 5.0);
        return true;
    }

    if(!strcmp(cmdtext, "/explode")) {
        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        CreateExplosion(x, y, z, 1, 5.0);
        return true;
    }

    if(!strcmp(cmdtext, "/format")) {
        new ret[128];
        format(ret, sizeof(ret), "Test formatting: %s", "blibli");
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    if(!strcmp(cmdtext, "/getname")) {
        new name[MAX_PLAYER_NAME + 1], ret[128];
        GetPlayerName(playerid, name, sizeof(name));
        format(ret, sizeof(ret), "Your name is: %s", name);
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    if(!strcmp(cmdtext, "/radio")) {
        PlayAudioStreamForPlayer(playerid, "http://tms-server.com/radio.mp3", 0, 0, 0, 100, true);
        return true;
    }

    if(!strcmp(cmdtext, "/radiooff")) {
        StopAudioStreamForPlayer(playerid);
        return true;
    }

    if(!strcmp(cmdtext, "/deathmsg")) {
        SendDeathMessage(INVALID_PLAYER_ID, playerid, 10);
        SendDeathMessage(playerid, playerid + 1, 3);
        return true;
    }

    if(!strcmp(cmdtext, "/sethp")) {
        SetPlayerHealth(playerid, 50.0);
        return true;
    }

    if(!strcmp(cmdtext, "/gethp")) {
        new ret[128], Float:hp;
        GetPlayerHealth(playerid, hp);
        format(ret, sizeof(ret), "Your hp are: %f", hp);
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    if(!strcmp(cmdtext, "/setarmor")) {
        SetPlayerArmour(playerid, 50.0);
        return true;
    }

    if(!strcmp(cmdtext, "/getarmor")) {
        new ret[128], Float:armor;
        GetPlayerArmour(playerid, armor);
        format(ret, sizeof(ret), "Your armor is: %f", armor);
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    if(!strcmp(cmdtext, "/setteam")) {
        SetPlayerTeam(playerid, 2);
        return true;
    }

    if(!strcmp(cmdtext, "/getteam")) {
        new ret[128], team;
        team = GetPlayerTeam(playerid);
        format(ret, sizeof(ret), "Your team is: %d", team);
        SendClientMessage(playerid, -1, ret);
        team = GetPlayerTeam(playerid + 1);
        format(ret, sizeof(ret), "Other team is: %d", team);
        SendClientMessage(playerid, -1, ret);
        return true;
    }

    // XXX: Does not work yet
    if(!strcmp(cmdtext, "/vehff")) {
        EnableVehicleFriendlyFire();
        SendClientMessage(playerid, -1, "Vehicle friendly fire is enabled");
        return true;
    }

    // XXX: Does not work yet
    if(!strcmp(cmdtext, "/settimer")) {
        //SetTimer("send_test_message", 1000, false);
        SendClientMessage(playerid, -1, "Timer is set");
        return true;
    }

    return false;
}


forward send_test_message();
public send_test_message() {
    // XXX: Does not work yet
    //SendClientMessageToAll(-1, "Timer was processed");
}
// vim: se ft=cpp:
