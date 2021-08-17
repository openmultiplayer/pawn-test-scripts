// Menus component player test suite

PTEST__ ShowAndHideMenuForPlayer(playerid)
{
    g_iMenu = CreateMenu("Simple menu test", 0, 200.0, 100.0, 150.0, 150.0);
    ASSERT_EQ(ShowMenuForPlayer(INVALID_MENU, playerid), 0);
    ASSERT_EQ(ShowMenuForPlayer(g_iMenu, INVALID_PLAYER_ID), 0);
    ASSERT_EQ(ShowMenuForPlayer(g_iMenu, playerid), 1);
    ASK("Can you see the menu on your screen?");
}
PTEST_CLOSE__ ShowAndHideMenuForPlayer(playerid)
{
    ASSERT_EQ(HideMenuForPlayer(INVALID_MENU, playerid), 0);
    ASSERT_EQ(HideMenuForPlayer(g_iMenu, INVALID_PLAYER_ID), 0);
    ASSERT_EQ(HideMenuForPlayer(g_iMenu, playerid), 1);
    DestroyMenu(g_iMenu);
    ASK("Is the menu hidden?");
}

PTEST__ GetPlayerMenu(playerid)
{
    g_iMenu = CreateMenu("Get menu test", 0, 200.0, 100.0, 150.0, 150.0);
    ShowMenuForPlayer(g_iMenu, playerid);
    ASSERT_EQ(GetPlayerMenu(playerid), g_iMenu);
    HideMenuForPlayer(g_iMenu, playerid);
    ASSERT_EQ(GetPlayerMenu(playerid), INVALID_MENU);
    DestroyMenu(g_iMenu);
}

PTEST__ SetMenuColumnHeader(playerid)
{
    g_iMenu = CreateMenu("Column headers test", 2, 200.0, 100.0, 150.0, 150.0);
    // TODO: Add open.mp assertions for SetMenuColumnHeader
    SetMenuColumnHeader(g_iMenu, 0, "Col 0");
    SetMenuColumnHeader(g_iMenu, 1, "Col 1");
    ShowMenuForPlayer(g_iMenu, playerid);
    ASK("Can you see the column headers \"Col 0\" and \"Col 1\" in the menu?");
}
PTEST_CLOSE__ SetMenuColumnHeader(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}

PTEST__ AddMenuItem(playerid)
{
    g_iMenu = CreateMenu("Menu items test", 2, 200.0, 100.0, 150.0, 150.0);
    SetMenuColumnHeader(g_iMenu, 0, "Col 0");
    SetMenuColumnHeader(g_iMenu, 1, "Col 1");
    // FIXME: Return row index from AddMenuItem on success
    ASSERT_EQ(AddMenuItem(g_iMenu, 0, "Col 0, Row 0"), 0);
    ASSERT_EQ(AddMenuItem(g_iMenu, 0, "Col 0, Row 1"), 1);
    ASSERT_EQ(AddMenuItem(g_iMenu, 0, "Col 0, Row 2"), 2);
    ASSERT_EQ(AddMenuItem(g_iMenu, 1, "Col 1, Row 0"), 3);
    ASSERT_EQ(AddMenuItem(g_iMenu, 1, "Col 1, Row 1"), 4);
    ASSERT_EQ(AddMenuItem(g_iMenu, 1, "Col 1, Row 2"), 5);
    ShowMenuForPlayer(g_iMenu, playerid);
    ASK("Can you see the menu items in the correct position?");
}
PTEST_CLOSE__ AddMenuItem(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}

PTEST__ DisableMenuRow(playerid)
{
    g_iMenu = CreateMenu("Disable rows test", 2, 200.0, 100.0, 150.0, 150.0);
    SetMenuColumnHeader(g_iMenu, 0, "Col 0");
    SetMenuColumnHeader(g_iMenu, 1, "Col 1");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 0");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 1");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 2");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 0");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 1");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 2");
    // TODO: Does open.mp return something more useful than "1" or a server crash?
    DisableMenuRow(g_iMenu, 2); // Col 0, Row 2
    DisableMenuRow(g_iMenu, 5); // Col 1, Row 2
    ShowMenuForPlayer(g_iMenu, playerid);
    ASK("Are the menu items \"Col 0, Row 2\" and \"Col 1, Row 2\" disabled?");
}
PTEST_CLOSE__ DisableMenuRow(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}

PTEST__ DisableMenu(playerid)
{
    g_iMenu = CreateMenu("Disable menu test", 2, 200.0, 100.0, 150.0, 150.0);
    SetMenuColumnHeader(g_iMenu, 0, "Col 0");
    SetMenuColumnHeader(g_iMenu, 1, "Col 1");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 0");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 1");
    AddMenuItem(g_iMenu, 0, "Col 0, Row 2");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 0");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 1");
    AddMenuItem(g_iMenu, 1, "Col 1, Row 2");
    // TODO: Add open.mp assertions for DisableMenu
    DisableMenu(g_iMenu);
    ShowMenuForPlayer(g_iMenu, playerid);
    ASK("Are all the menu items disabled?");
}
PTEST_CLOSE__ DisableMenu(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}

// vim: se ft=cpp:
