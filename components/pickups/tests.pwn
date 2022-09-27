// Pickup component test suite

@test(.group = "pickups") PK_01_PickupCreate()
{
	for (new i; i < MAX_PICKUPS; i++)
	{
		new p = CreatePickup(1337, 1, 0.0 + (i % 100), 0.0 + (i * 100), 3.0);
		//printf("i = %d, p = %d", i, p);
        ASSERT_EQ(p, i);
	}

    ASSERT_EQ(CreatePickup(1337, 1, 0.0, 0.0, 0.0), -1);
}
@testclose() PK_01_PickupCreate()
{
    for (new i; i < MAX_PICKUPS; i++)
        DestroyPickup(i);
}

@test(.group = "pickups") PK_02_PickupDestroy()
{
    new Pickup = CreatePickup(1337, 0, 0.0, 0.0, 0.0);
    ASSERT_EQ(DestroyPickup(Pickup), true);
    ASSERT_EQ(DestroyPickup(Pickup), false);
    ASSERT_EQ(DestroyPickup(INVALID_PICKUP), false);
}

// vim: se ft=cpp:
