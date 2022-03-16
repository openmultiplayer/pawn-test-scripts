// Actors component player test suite

PTEST__ A_10_CreateActor(playerid)
{
    g_iActor = CreateActor(299, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_NE(g_iActor, INVALID_ACTOR_ID);
    ASK("Can you see the actor in front of you with Skin ID 299 (claude)?");
}
PTEST_CLOSE__ A_10_CreateActor(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_11_SetActorPos(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(SetActorPos(g_iActor, 1003.0, 1005.0, 50.0), true);
    ASK("Can you see the actor on your right? (X: 1003.0, Y: 1005.0, Z: 50.0)");
}
PTEST_CLOSE__ A_11_SetActorPos(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_12_SetActorVirtualWorld(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(SetActorVirtualWorld(g_iActor, 69), true);
    SetPlayerVirtualWorld(playerid, 69);
    ASK("Can you still see the actor?");
}
PTEST_CLOSE__ A_12_SetActorVirtualWorld(playerid)
{
    SetPlayerVirtualWorld(playerid, 0);
    DestroyActor(g_iActor);
}

PTEST__ A_13_SetActorInvulnerable(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(SetActorInvulnerable(g_iActor, false), true);
    ASK("Are you able to hit the actor?");
}
PTEST_CLOSE__ A_13_SetActorInvulnerable(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_14_SetActorFacingAngle(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(SetActorFacingAngle(g_iActor, 0.0), true);
    ASK("Is the actor facing north?");
}
PTEST_CLOSE__ A_14_SetActorFacingAngle(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_15_ApplyActorAnimation(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(ApplyActorAnimation(INVALID_ACTOR_ID, "DEALER", "shop_pay", 4.1, true, false, false, false, 0), false);
    ASSERT_EQ(ApplyActorAnimation(g_iActor, "DEALER", "shop_pay", 4.1, true, false, false, false, 0), true);
    ASK("Is the actor acting like he's paying in a shop?");
}
PTEST_CLOSE__ A_15_ApplyActorAnimation(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_16_ClearActorAnimations(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ApplyActorAnimation(g_iActor, "DEALER", "shop_pay", 4.1, true, false, false, false, 0);
    ASSERT_EQ(ClearActorAnimations(INVALID_ACTOR_ID), false);
    ASSERT_EQ(ClearActorAnimations(g_iActor), true);
    ASK("Has the actor stopped animating?");
}
PTEST_CLOSE__ A_16_ClearActorAnimations(playerid)
{
    DestroyActor(g_iActor);
}

PTEST__ A_17_GetPlayerTargetActor(playerid)
{
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    ASSERT_EQ(GetPlayerTargetActor(playerid), INVALID_ACTOR_ID);
    GivePlayerWeapon(playerid, WEAPON_DEAGLE, 3);
    ASK("Aim at the actor and press ~k~~CONVERSATION_YES~ when ready.");
}
PTEST_CLOSE__ A_17_GetPlayerTargetActor(playerid)
{
    ASSERT_EQ(GetPlayerTargetActor(playerid), g_iActor);
    ResetPlayerWeapons(playerid);
    DestroyActor(g_iActor);
}

PTEST__ A_18_GetPlayerCameraTA(playerid)
{
    EnablePlayerCameraTarget(playerid, true);
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    
    ASK("Look at the actor and press ~k~~CONVERSATION_YES~ when ready.");
}
PTEST_CLOSE__ A_18_GetPlayerCameraTA(playerid)
{
    ASSERT_EQ(GetPlayerCameraTargetActor(playerid), g_iActor);
    EnablePlayerCameraTarget(playerid, false);
    DestroyActor(g_iActor);
}

PTEST__ A_19_GetPlayerCameraTA(playerid)
{
    EnablePlayerCameraTarget(playerid, true);
    g_iActor = CreateActor(0, 1000.0, 1005.0, 50.0, 180.0);
    
    ASK("Look away from the actor and press ~k~~CONVERSATION_YES~ when ready.");
}
PTEST_CLOSE__ A_19_GetPlayerCameraTA(playerid)
{
    ASSERT_EQ(GetPlayerCameraTargetActor(playerid), INVALID_ACTOR_ID);
    EnablePlayerCameraTarget(playerid, false);
    DestroyActor(g_iActor);
}

PTEST__ A_20_IsActorStreamedIn(playerid)
{
    // TODO: Improve test - it takes a while to stream in the actor
    g_iActor = CreateActor(0, 0.0, 0.0, 3.0, 0.0);
    ASSERT_EQ(IsActorStreamedIn(g_iActor, playerid), false);
    ASSERT_EQ(IsActorStreamedIn(g_iActor, INVALID_PLAYER_ID), false);
    ASSERT_EQ(IsActorStreamedIn(INVALID_ACTOR_ID, playerid), false);

    SetPlayerPos(playerid, 3.0, 3.0, 3.0);
    ASK("Did you spawn at 3.0 3.0 3.0?");
}
PTEST_CLOSE__ A_20_IsActorStreamedIn(playerid)
{
    ASSERT_EQ(IsActorStreamedIn(g_iActor, playerid), true);
    SpawnPlayer(playerid);
    DestroyActor(g_iActor);
}
