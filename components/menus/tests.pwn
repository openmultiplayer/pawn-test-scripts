// Menus component test suite

TEST__ CreateMenu()
{
    for (new i = 1; i < _:MAX_MENUS; i++)
        ASSERT_EQ(CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0), Menu:i);

    ASSERT_EQ(CreateMenu("This should fail", 2, 200.0, 100.0, 150.0, 150.0), -1); // FIXME: Returns INVALID_MENU instead
    // TODO: What happens when you try to create a Menu with 3 columns?
}
TEST_CLOSE__ CreateMenu()
{
    for (new i; i < _:MAX_MENUS; i++)
        DestroyMenu(Menu:i);
}

TEST__ IsValidMenu()
{
    ASSERT_EQ(IsValidMenu(INVALID_MENU), 0);
    g_iMenu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT_EQ(IsValidMenu(g_iMenu), 1);
}
TEST_CLOSE__ IsValidMenu()
{
    DestroyMenu(g_iMenu);
    ASSERT_EQ(IsValidMenu(g_iMenu), 0);
}

TEST__ DestroyMenu()
{
    ASSERT_EQ(DestroyMenu(INVALID_MENU), false);
    g_iMenu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT_EQ(DestroyMenu(g_iMenu), true);
    ASSERT_EQ(DestroyMenu(g_iMenu), false);
}

// vim: se ft=cpp:
