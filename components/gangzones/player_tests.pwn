// GangZones component player test suite

PTEST__ GZ_03_GangZoneShowForPlayer(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneShowForPlayer(playerid, INVALID_GANG_ZONE, -1), 0);
    ASSERT_EQ(GangZoneShowForPlayer(INVALID_PLAYER_ID, g_iGangZone, -1), 0);
    ASSERT_EQ(GangZoneShowForPlayer(playerid, g_iGangZone, -1), 1);
    ASK("Can you see the white gangzone near 1000.0 1000.0 50.0?");
}
PTEST_CLOSE__ GZ_03_GangZoneShowForPlayer(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_04_GangZoneShowForAll(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneShowForAll(INVALID_GANG_ZONE, -1), 0);
    ASSERT_EQ(GangZoneShowForAll(g_iGangZone, -1), 1);
    ASK("Can you see the white gangzone near 1000.0 1000.0 50.0?");
}
PTEST_CLOSE__ GZ_04_GangZoneShowForAll(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_05_GangZoneHideForPlayer(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneHideForPlayer(playerid, INVALID_GANG_ZONE), 0);
    ASSERT_EQ(GangZoneHideForPlayer(INVALID_PLAYER_ID, g_iGangZone), 0);
    GangZoneShowForPlayer(playerid, g_iGangZone, -1);
    ASSERT_EQ(GangZoneHideForPlayer(playerid, g_iGangZone), 1);
    ASK("Has the zone near 1000.0 1000.0 50.0 disappeared?");
}
PTEST_CLOSE__ GZ_05_GangZoneHideForPlayer(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_06_GangZoneHideForAll(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneHideForAll(INVALID_GANG_ZONE), 0);
    GangZoneShowForAll(g_iGangZone, -1);
    ASSERT_EQ(GangZoneHideForAll(g_iGangZone), 1);
    ASK("Has the zone near 1000.0 1000.0 50.0 disappeared?");
}
PTEST_CLOSE__ GZ_06_GangZoneHideForAll(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_07_GangZoneFlashForPlayer(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneFlashForPlayer(playerid, INVALID_GANG_ZONE, 255), 0);
    ASSERT_EQ(GangZoneFlashForPlayer(INVALID_PLAYER_ID, g_iGangZone, 255), 0);
    GangZoneShowForPlayer(playerid, g_iGangZone, -1);
    ASSERT_EQ(GangZoneFlashForPlayer(playerid, g_iGangZone, 255), 1);
    ASK("Is the white gangzone near 1000.0 1000.0 50.0 flashing black?");
}
PTEST_CLOSE__ GZ_07_GangZoneFlashForPlayer(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_08_GangZoneFlashForAll(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneFlashForAll(INVALID_GANG_ZONE, 255), 0);
    GangZoneShowForAll(g_iGangZone, -1);
    ASSERT_EQ(GangZoneFlashForAll(g_iGangZone, 255), 1);
    ASK("Is the white gangzone near 1000.0 1000.0 50.0 flashing black?");
}
PTEST_CLOSE__ GZ_08_GangZoneFlashForAll(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_09_GangZoneStopFlashForPlayer(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneStopFlashForPlayer(playerid, INVALID_GANG_ZONE), 0);
    ASSERT_EQ(GangZoneStopFlashForPlayer(INVALID_PLAYER_ID, g_iGangZone), 0);
    GangZoneShowForPlayer(playerid, g_iGangZone, -1);
    GangZoneFlashForPlayer(playerid, g_iGangZone, 255);
    ASSERT_EQ(GangZoneStopFlashForPlayer(playerid, g_iGangZone), 1);
    ASK("Has the gangzone near 1000.0 1000.0 50.0 stopped flashing?");
}
PTEST_CLOSE__ GZ_09_GangZoneStopFlashForPlayer(playerid)
{
    GangZoneDestroy(g_iGangZone);
}

PTEST__ GZ_10_GangZoneStopFlashForAll(playerid)
{
    g_iGangZone = GangZoneCreate(955.0, 955.0, 1045.0, 1045.0);
    ASSERT_EQ(GangZoneStopFlashForAll(INVALID_GANG_ZONE), 0);
    GangZoneShowForAll(g_iGangZone, -1);
    GangZoneFlashForAll(g_iGangZone, 255);
    ASSERT_EQ(GangZoneStopFlashForAll(g_iGangZone), 1);
    ASK("Has the gangzone near 1000.0 1000.0 50.0 stopped flashing?");
}
PTEST_CLOSE__ GZ_10_GangZoneStopFlashForAll(playerid)
{
    GangZoneDestroy(g_iGangZone);
}
