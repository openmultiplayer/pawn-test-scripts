// GameText component player test suite

@test(.group = "gametexts") GT_03_GameTextForPlayer(playerid)
{
    GameTextForPlayer(playerid, "Hello World", 5000, 3);
    ASK("Can you see a standard gametext for 5 seconds?");
}

@test(.group = "gametexts") GT_04_GameTextForPlayer(playerid)
{
    GameTextForPlayer(playerid, "Hello World", 5000, 13);
    ASK("Can you see a new gametext for 5 seconds?");
}

