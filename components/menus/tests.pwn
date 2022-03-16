// Menus component test suite

TEST__ M_01_CreateMenu()
{
    for (new i = 1; i < _:MAX_MENUS; i++)
        ASSERT_EQ(CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0), Menu:i);

    ASSERT_EQ(CreateMenu("This should fail", 2, 200.0, 100.0, 150.0, 150.0), Menu:-1);
    // TODO: What happens when you try to create a Menu with 3 columns?
}
TEST_CLOSE__ M_01_CreateMenu()
{
    for (new i = 1; i < _:MAX_MENUS; i++)
        DestroyMenu(Menu:i);
}

TEST__ M_02_IsValidMenu()
{
    new Menu:menu;
    ASSERT_EQ(IsValidMenu(menu), false);
    menu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT_EQ(IsValidMenu(menu), true);
    DestroyMenu(menu);
    ASSERT_EQ(IsValidMenu(menu), false);
    ASSERT_EQ(IsValidMenu(Menu:0), false);
    ASSERT_EQ(IsValidMenu(INVALID_MENU), false);
}

TEST__ M_03_DestroyMenu()
{
    new Menu:menu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT_EQ(DestroyMenu(menu), true);
    ASSERT_EQ(DestroyMenu(menu), false);
    ASSERT_EQ(DestroyMenu(Menu:0), false);
    ASSERT_EQ(DestroyMenu(INVALID_MENU), false);
}

// vim: se ft=cpp:
