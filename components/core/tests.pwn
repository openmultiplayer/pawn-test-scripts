// Core component test suite

@test(.group = "core") C_1_format()
{
    new ret[128];
    ASSERT_EQ(format(ret, sizeof(ret), "Test formatting: %s", "blibli"), 1);
    ASSERT_SAME(ret, "Test formatting: blibli");
}

@test(.group = "core") C_2_strval()
{
    ASSERT_EQ(strval("0"), 0);
    ASSERT_EQ(strval("5"), 5);
    ASSERT_EQ(strval("5.0"), 5);
    ASSERT_EQ(strval(""), 0);
    ASSERT_EQ(strval("invalid_integer"), 0);
    ASSERT_EQ(strval("-5"), -5);
    ASSERT_EQ(strval("-5.0"), -5);
}

@test(.group = "core") C_3_floatstr()
{
    // Not implemented (yet) in master
    //ASSERT_EQ(floatstr("5.0"), 5.0);
}

// vim: se ft=cpp:

@test(.group = "gametext") GT_000(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 0", 5000, 0);
	ASK("Does GT style 0 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_001(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 1", 5000, 1);
	ASK("Does GT style 1 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_002(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 2", 5000, 2);
	ASK("Does GT style 0 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_003(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 3", 5000, 3);
	ASK("Does GT style 3 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_004(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 4", 5000, 4);
	ASK("Does GT style 4 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_005(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 5", 5000, 5);
	ASK("Does GT style 5 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_006(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 6", 5000, 6);
	ASK("Does GT style 6 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_007(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 7", 5000, 7);
	ASK("Does GT style 7 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_008(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 8", 5000, 8);
	ASK("Does GT style 8 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_009(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 9", 5000, 9);
	ASK("Does GT style 9 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_010(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 10", 5000, 10);
	ASK("Does GT style 10 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_011(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 11", 5000, 11);
	ASK("Does GT style 11 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_012(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 12", 5000, 12);
	ASK("Does GT style 12 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_013(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 13", 5000, 13);
	ASK("Does GT style 13 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_014(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 14", 5000, 14);
	ASK("Does GT style 14 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_015(playerid)
{
	GameTextForPlayer(playerid, "Game Text style 15", 5000, 15);
	ASK("Does GT style 15 appear and disappear after five seconds?");
}

@test(.group = "gametext") GT_999(playerid)
{
	GameTextForPlayer(playerid, "Style 0", 5000, 0);
	GameTextForPlayer(playerid, "Style 1", 5000, 1);
	GameTextForPlayer(playerid, "Style 2", 5000, 2);
	GameTextForPlayer(playerid, "Style 3", 5000, 3);
	GameTextForPlayer(playerid, "Style 4", 5000, 4);
	GameTextForPlayer(playerid, "Style 5", 5000, 5);
	GameTextForPlayer(playerid, "Style 6", 5000, 6);
	GameTextForPlayer(playerid, "Style 7", 5000, 7);
	GameTextForPlayer(playerid, "Style 8", 5000, 8);
	GameTextForPlayer(playerid, "Style 9", 5000, 9);
	GameTextForPlayer(playerid, "Style 10", 5000, 10);
	GameTextForPlayer(playerid, "Style 11", 5000, 11);
	GameTextForPlayer(playerid, "Style 12", 5000, 12);
	GameTextForPlayer(playerid, "Style 13", 5000, 13);
	GameTextForPlayer(playerid, "Style 14", 5000, 14);
	GameTextForPlayer(playerid, "Style 15", 5000, 15);
	ASK("Does every game text appear and disappear after five seconds?");
}

