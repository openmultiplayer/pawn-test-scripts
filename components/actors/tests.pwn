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
    ASSERT(!SetActorVirtualWorld(INVALID_ACTOR_ID, 69));

    ASSERT_EQ(GetActorVirtualWorld(g_iActor), 0);
    ASSERT(SetActorVirtualWorld(g_iActor, 69));
    ASSERT_EQ(GetActorVirtualWorld(g_iActor), 69);
    ASSERT(SetActorVirtualWorld(g_iActor, -69));
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

    ASSERT(!GetActorPos(INVALID_ACTOR_ID, x, y, z));
    ASSERT(!SetActorPos(INVALID_ACTOR_ID, 1.0, 2.0, 3.0));

    ASSERT(GetActorPos(g_iActor, x, y, z));
    ASSERT_EQ(x, 1.0);
    ASSERT_EQ(y, 2.0);
    ASSERT_EQ(z, 3.0);
    ASSERT(SetActorPos(g_iActor, 10.0, 20.0, 3.0));
    ASSERT(GetActorPos(g_iActor, x, y, z));
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
    ASSERT(!IsActorInvulnerable(INVALID_ACTOR_ID));
    ASSERT(!SetActorInvulnerable(INVALID_ACTOR_ID, true));

    ASSERT(IsActorInvulnerable(g_iActor));
    ASSERT(SetActorInvulnerable(g_iActor, false));
    ASSERT(!IsActorInvulnerable(g_iActor));
}

TEST_CLOSE__ A_05_IsAndSetActorInv()
{
    DestroyActor(g_iActor);
}

TEST__ A_06_GetAndSetActorHealth()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);
    new Float:health;

    ASSERT(!GetActorHealth(INVALID_ACTOR_ID, health));
    ASSERT(!SetActorHealth(INVALID_ACTOR_ID, 69.0));

    ASSERT(GetActorHealth(g_iActor, health));
    ASSERT_EQ(health, 100.0);
    ASSERT(SetActorHealth(g_iActor, 69.0));
    ASSERT(GetActorHealth(g_iActor, health));
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

    ASSERT(!GetActorFacingAngle(INVALID_ACTOR_ID, angle));
    ASSERT(!SetActorFacingAngle(INVALID_ACTOR_ID, 69.0));

    ASSERT(GetActorFacingAngle(g_iActor, angle));
    ASSERT_EQ(angle, 30.0);
    ASSERT(SetActorFacingAngle(g_iActor, 69.0));
    ASSERT(GetActorFacingAngle(g_iActor, angle));
    ASSERT_EQ(angle, 69.0);
}

TEST_CLOSE__ A_07_GetAndSetActorFacingA()
{
    DestroyActor(g_iActor);
}

TEST__ A_08_IsValidActor()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);

    ASSERT(!IsValidActor(INVALID_ACTOR_ID));
    ASSERT(IsValidActor(g_iActor));
}

TEST_CLOSE__ A_08_IsValidActor()
{
    DestroyActor(g_iActor);
    ASSERT(!IsValidActor(g_iActor));
}

TEST__ A_09_DestroyActor()
{
    g_iActor = CreateActor(0, 0.0, 0.0, 0.0, 0.0);

    ASSERT(!DestroyActor(INVALID_ACTOR_ID));
    ASSERT(DestroyActor(g_iActor));
    ASSERT(!DestroyActor(g_iActor));
}

