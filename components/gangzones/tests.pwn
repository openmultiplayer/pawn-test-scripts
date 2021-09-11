// GangZones component test suite

TEST__ GZ_01_GangZoneCreate()
{
    for (new i; i < MAX_GANG_ZONES; i++)
        ASSERT_EQ(GangZoneCreate(0.0, 0.0, 0.0, 0.0), i);

    ASSERT_EQ(GangZoneCreate(0.0, 0.0, 0.0, 0.0), -1);
}
TEST_CLOSE__ GZ_01_GangZoneCreate()
{
    for (new i; i < MAX_GANG_ZONES; i++)
        GangZoneDestroy(i);
}

TEST__ GZ_02_GangZoneDestroy()
{
    new gangzone = GangZoneCreate(0.0, 0.0, 0.0, 0.0);
    ASSERT_EQ(GangZoneDestroy(gangzone), 1);
    ASSERT_EQ(GangZoneDestroy(gangzone), 0);
    ASSERT_EQ(GangZoneDestroy(INVALID_GANG_ZONE), 0);
}

// vim: se ft=cpp:
