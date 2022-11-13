// Menus component player test suite

PTEST_INIT__ M_04_ShowMenuForPlayer(playerid)
{
    g_iMenu = CreateMenu("Simple menu test", 0, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_04_ShowMenuForPlayer(playerid)
{
    ASSERT(ShowMenuForPlayer(g_iMenu, playerid));
    ASK("Can you see the menu on your screen?");
    ASSERT(!ShowMenuForPlayer(INVALID_MENU, playerid));
    ASSERT(!ShowMenuForPlayer(g_iMenu, INVALID_PLAYER_ID));
}
PTEST_CLOSE__ M_04_ShowMenuForPlayer(playerid)
{
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_05_HideMenuForPlayer(playerid)
{
    g_iMenu = CreateMenu("Simple menu test", 0, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_05_HideMenuForPlayer(playerid)
{
    ASSERT(HideMenuForPlayer(g_iMenu, playerid));
    ASK("Is the menu hidden?");
    ASSERT(!HideMenuForPlayer(INVALID_MENU, playerid));
    ASSERT(!HideMenuForPlayer(g_iMenu, INVALID_PLAYER_ID));
}
PTEST_CLOSE__ M_05_HideMenuForPlayer(playerid)
{
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_06_GetPlayerMenu(playerid)
{
    g_iMenu = CreateMenu("Get menu test", 0, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_06_GetPlayerMenu(playerid)
{
    ASSERT_EQ(GetPlayerMenu(INVALID_PLAYER_ID), INVALID_MENU);
    ShowMenuForPlayer(g_iMenu, playerid);
    ASSERT_EQ(GetPlayerMenu(playerid), g_iMenu);
    HideMenuForPlayer(g_iMenu, playerid);
    ASSERT_EQ(GetPlayerMenu(playerid), INVALID_MENU);
}
PTEST_CLOSE__ M_06_GetPlayerMenu(playerid)
{
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_07_SetMenuColumnHeader(playerid)
{
    g_iMenu = CreateMenu("Column headers test", 2, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_07_SetMenuColumnHeader(playerid)
{
    // TODO: Add open.mp assertions for SetMenuColumnHeader
    ASSERT(SetMenuColumnHeader(g_iMenu, 0, "Col 0"));
    ASSERT(SetMenuColumnHeader(g_iMenu, 1, "Col 1"));
    ShowMenuForPlayer(g_iMenu, playerid);
    ASK("Can you see the column headers \"Col 0\" and \"Col 1\" in the menu?");
}
PTEST_CLOSE__ M_07_SetMenuColumnHeader(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_08_AddMenuItem(playerid)
{
    g_iMenu = CreateMenu("Menu items test", 2, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_08_AddMenuItem(playerid)
{
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
PTEST_CLOSE__ M_08_AddMenuItem(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_09_DisableMenuRow(playerid)
{
    g_iMenu = CreateMenu("Disable rows test", 2, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_09_DisableMenuRow(playerid)
{
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
PTEST_CLOSE__ M_09_DisableMenuRow(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}


PTEST_INIT__ M_10_DisableMenu(playerid)
{
    g_iMenu = CreateMenu("Disable menu test", 2, 200.0, 100.0, 150.0, 150.0);
}
@test(.group = "menus") M_10_DisableMenu(playerid)
{
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
PTEST_CLOSE__ M_10_DisableMenu(playerid)
{
    HideMenuForPlayer(g_iMenu, playerid);
    DestroyMenu(g_iMenu);
}

// vim: se ft=cpp:
