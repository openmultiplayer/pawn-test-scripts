// Pickup component player test suite

@test(.group = "pickups") PK_03_CreatePickup(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        ASSERT_EQ(CreatePickup(1337, 1, 0.0 + (i % 64 * 10), 0.0 + (i / 64 * 10), 3.0), i);
	SetPlayerPos(playerid, -1.0, -1.0, 3.0);
    ASK("Can you see a lot of pickups?");
}

static bool:show = false;

@timer(1000) FlashPickups(playerid)
{
	#pragma unused playerid
	if (show)
	{
	    for (new i; i < MAX_PICKUPS; i++)
	        CreatePickup(1337, 1, 0.0 + (i % 64 * 10), 0.0 + (i / 64 * 10), 3.0);
	}
	else
	{
	    for (new i; i < MAX_PICKUPS; i++)
	        DestroyPickup(i);
	}
	show = !show;
}

new Timer:gPickupTimer;
@test(.group = "pickups") PK_05a_FlashPickups(playerid)
{
    gPickupTimer = repeat FlashPickups(playerid);
    ASK("Are they flashing?");
}
@testclose() PK_05a_FlashPickups(playerid)
{
	if (show)
	{
		FlashPickups(playerid);
	}
	stop gPickupTimer;
}

@test(.group = "pickups") PK_04_SetPickupModel(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        SetPickupModel(i, 625);
    ASK("Have they all turned in to potted plants?");
}

@test(.group = "pickups") PK_05b_SetPickupVirtualWorld(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
		SetPickupVirtualWorld(i, 1);
    ASK("Have they gone (presumably) to a different VW to you?");
}

@test(.group = "pickups") PK_06_SetVirtualWorld(playerid)
{
    SetPlayerVirtualWorld(playerid, 1);
    ASK("Are you now in the same VW as them?");
}

@test(.group = "pickups") PK_07_DestroyPickup(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        DestroyPickup(i);
    ASK("Have they vanished?");
}

@testclose() PK_07_DestroyPickup(playerid)
{
    SetPlayerVirtualWorld(playerid, 0);
}

@test(.group = "pickups") PK_08_CreatePlayerPickup(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        ASSERT_EQ(CreatePlayerPickup(playerid, 1337, 1, 0.0 + (i % 64 * 10), 0.0 + (i / 64 * 10), 3.0), i);
	SetPlayerPos(playerid, -1.0, -1.0, 3.0);
    ASK("Have they reappeared?");
}

@test(.group = "pickups") PK_09_SetPlayerPickupModel(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        SetPlayerPickupModel(playerid, i, 625);
    ASK("Have they all turned in to potted plants?");
}

@test(.group = "pickups") PK_10_SetPlayerPickupVirtualWorld(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
		SetPlayerPickupVirtualWorld(playerid, i, 1);
    ASK("Have they gone (presumably) to a different VW to you?");
}

@test(.group = "pickups") PK_11_SetPlayerVirtualWorld(playerid)
{
    SetPlayerVirtualWorld(playerid, 1);
    ASK("Are you now in the same VW as them?");
}

@test(.group = "pickups") PK_12_DestroyPlayerPickup(playerid)
{
    for (new i; i < MAX_PICKUPS; i++)
        DestroyPlayerPickup(playerid, i);
    ASK("Have they vanished?");
}

@testclose() PK_12_DestroyPlayerPickup(playerid)
{
    SetPlayerVirtualWorld(playerid, 0);
}	

