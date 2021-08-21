// Actors component test suite

TEST__ A_01_CreateActor()
{
    for (new i; i < MAX_ACTORS; i++)
        ASSERT_EQ(CreateActor(0, 0.0, 0.0, 0.0, 0.0), i);

    ASSERT_EQ(CreateActor(0, 1.0, 2.0, 3.0, 20.0), INVALID_ACTOR_ID);
}
TEST_CLOSE__ A_01_CreateActor()
{
    for (new i; i < MAX_ACTORS; i++)
        DestroyActor(i);
}

TEST__ A_02_GetActorPoolSize()
{
    ASSERT_EQ(GetActorPoolSize(), 0);

    for (new i; i < 5; i++)
        CreateActor(0, 0.0, 0.0, 0.0, 0.0);

    ASSERT_EQ(GetActorPoolSize(), 4);
    DestroyActor(2);
    ASSERT_EQ(GetActorPoolSize(), 4);
}
TEST_CLOSE__ A_02_GetActorPoolSize()
{
    for (new i; i < 5; i++)
        DestroyActor(i);
    ASSERT_EQ(GetActorPoolSize(), 0);
}

TEST__ A_03_GetAndSetActorVW()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);
    ASSERT_EQ(GetActorVirtualWorld(INVALID_ACTOR_ID), 0);
    ASSERT_EQ(SetActorVirtualWorld(INVALID_ACTOR_ID, 69), 0);

    ASSERT_EQ(GetActorVirtualWorld(g_iActor), 0);
    ASSERT_EQ(SetActorVirtualWorld(g_iActor, 69), 1);
    ASSERT_EQ(GetActorVirtualWorld(g_iActor), 69);
    ASSERT_EQ(SetActorVirtualWorld(g_iActor, -69), 1);
    ASSERT_EQ(GetActorVirtualWorld(g_iActor), -69);
}
TEST_CLOSE__ A_03_GetAndSetActorVW()
{
    DestroyActor(g_iActor);
}

TEST__ A_04_GetAndSetActorPos()
{
    g_iActor = CreateActor(0, 1.0, 2.0, 3.0, 0.0);
    new Float:x, Float:y, Float:z;

    ASSERT_EQ(GetActorPos(INVALID_ACTOR_ID, x, y, z), 0);
    ASSERT_EQ(SetActorPos(INVALID_ACTOR_ID, 1.0, 2.0, 3.0), 0);

    ASSERT_EQ(GetActorPos(g_iActor, x, y, z), 1);
    ASSERT_EQ(x, 1.0);
    ASSERT_EQ(y, 2.0);
    ASSERT_EQ(z, 3.0);
    ASSERT_EQ(SetActorPos(g_iActor, 10.0, 20.0, 3.0), 1);
    ASSERT_EQ(GetActorPos(g_iActor, x, y, z), 1);
    ASSERT_EQ(x, 10.0);
    ASSERT_EQ(y, 20.0);
    ASSERT_EQ(z, 3.0);
}
TEST_CLOSE__ A_04_GetAndSetActorPos()
{
    DestroyActor(g_iActor);
}

TEST__ A_05_IsAndSetActorInv()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);
    ASSERT_EQ(IsActorInvulnerable(INVALID_ACTOR_ID), 0);
    ASSERT_EQ(SetActorInvulnerable(INVALID_ACTOR_ID, true), 0);

    ASSERT_EQ(IsActorInvulnerable(g_iActor), 1);
    ASSERT_EQ(SetActorInvulnerable(g_iActor, false), 1);
    ASSERT_EQ(IsActorInvulnerable(g_iActor), 0);
}
TEST_CLOSE__ A_05_IsAndSetActorInv()
{
    DestroyActor(g_iActor);
}

TEST__ A_06_GetAndSetActorHealth()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);
    new Float:health;

    ASSERT_EQ(GetActorHealth(INVALID_ACTOR_ID, health), 0);
    ASSERT_EQ(SetActorHealth(INVALID_ACTOR_ID, 69.0), 0);

    ASSERT_EQ(GetActorHealth(g_iActor, health), 1);
    ASSERT_EQ(health, 100.0);
    ASSERT_EQ(SetActorHealth(g_iActor, 69.0), 1);
    ASSERT_EQ(GetActorHealth(g_iActor, health), 1);
    ASSERT_EQ(health, 69.0);
}
TEST_CLOSE__ A_06_GetAndSetActorHealth()
{
    DestroyActor(g_iActor);
}

TEST__ A_07_GetAndSetActorFacingA()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 30.0);
    new Float:angle;

    ASSERT_EQ(GetActorFacingAngle(INVALID_ACTOR_ID, angle), 0);
    ASSERT_EQ(SetActorFacingAngle(INVALID_ACTOR_ID, 69.0), 0);

    ASSERT_EQ(GetActorFacingAngle(g_iActor, angle), 1);
    ASSERT_EQ(angle, 30.0);
    ASSERT_EQ(SetActorFacingAngle(g_iActor, 69.0), 1);
    ASSERT_EQ(GetActorFacingAngle(g_iActor, angle), 1);
    ASSERT_EQ(angle, 69.0);
}
TEST_CLOSE__ A_07_GetAndSetActorFacingA()
{
    DestroyActor(g_iActor);
}

TEST__ A_08_IsValidActor()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);

    ASSERT_EQ(IsValidActor(INVALID_ACTOR_ID), 0);
    ASSERT_EQ(IsValidActor(g_iActor), 1);
}
TEST_CLOSE__ A_08_IsValidActor()
{
    DestroyActor(g_iActor);
    ASSERT_EQ(IsValidActor(g_iActor), 0);
}

TEST__ A_09_DestroyActor()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);

    ASSERT_EQ(DestroyActor(INVALID_ACTOR_ID), 0);
    ASSERT_EQ(DestroyActor(g_iActor), 1);
    ASSERT_EQ(DestroyActor(g_iActor), 0);
}
