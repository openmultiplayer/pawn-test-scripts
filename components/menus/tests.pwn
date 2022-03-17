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
    ASSERT(!IsValidMenu(menu));
    menu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT(IsValidMenu(menu));
    DestroyMenu(menu);
    ASSERT(!IsValidMenu(menu));
    ASSERT(!IsValidMenu(Menu:0));
    ASSERT(!IsValidMenu(INVALID_MENU));
}

TEST__ M_03_DestroyMenu()
{
    new Menu:menu = CreateMenu("Menu", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT(DestroyMenu(menu));
    ASSERT(!DestroyMenu(menu));
    ASSERT(!DestroyMenu(Menu:0));
    ASSERT(!DestroyMenu(INVALID_MENU));
}

// vim: se ft=cpp:
