#include "samp-stdlib/a_samp.inc"

main() {
    print("Loading Cman's test Pawn scripts");
}

public OnPlayerConnect(playerid) {
    SendClientMessage(playerid, 0xFF0000FF, "This is Cman's test open.mp server.");
}

public OnPlayerCommandText(playerid, cmdtext[]) {
    if(!strcmp(cmdtext, "/hello")) {
        SendClientMessage(playerid, -1, "HELLO, WORLD!");
        return true;
    }

    if(!strcmp(cmdtext, "/setcampos")) {
        SetPlayerCameraPos(playerid, 10, -10, 2);
        SetPlayerCameraLookAt(playerid, 0, 0, 0);
        return true;
    }

    if(!strcmp(cmdtext, "/setcambehind")) {
        SetCameraBehindPlayer(playerid);
        return true;
    }

    if(!strcmp(cmdtext, "/setdrunk")) {
        SetPlayerDrunkLevel(playerid, 50000);
        return true;
    }

    if(!strcmp(cmdtext, "/setposint")) {
        SetPlayerInterior(playerid, 17);
        SetPlayerPos(playerid, -25.7220, -187.8216, 1003.5469);
        return true;
    }

    if(!strcmp(cmdtext, "/setwanted")) {
        SetPlayerWantedLevel(playerid, 6);
        return true;
    }

    if(!strcmp(cmdtext, "/setweather")) {
        SetPlayerWeather(playerid, 17);
        return true;
    }

    if(!strcmp(cmdtext, "/setskin")) {
        SetPlayerSkin(playerid, 1);
        return true;
    }

    if(!strcmp(cmdtext, "/setshopname")) {
        SetPlayerInterior(playerid, 5);
        SetPlayerPos(playerid, 372.5565, -131.3607, 1001.4922);
        SetPlayerShopName(playerid, "FDPIZA");
        SendClientMessage(playerid, 0xFFFFFFFF, "Welcome to Pizza Stack!");
        return true;
    }

    if(!strcmp(cmdtext, "/gibmoni")) {
        GivePlayerMoney(playerid, 1000000);
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
    SendClientMessageToAll(-1, "Timer was processed");
}
// vim: se ft=cpp:
