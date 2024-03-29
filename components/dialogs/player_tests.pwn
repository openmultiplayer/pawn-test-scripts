// Dialogs component player test suite

#if !defined HidePlayerDialog
	//native HidePlayerDialog(playerid);
	stock HidePlayerDialog(playerid)
	{
		ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, " ", " ", " ", " ");
	}
#endif

@test(.group = "dialogs") DG_03_ShowPlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 100, DIALOG_STYLE_MSGBOX, "Title", "Caption - Hello World", "Button 1", "Button 2");
    ASK("Can you see the dialog (you may need to close it)?");
}

forward DG_04_HidePlayerDialog(playerid);

public DG_04_HidePlayerDialog(playerid)
{
    HidePlayerDialog(playerid);
}

@test(.group = "dialogs") DG_04_HidePlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 101, DIALOG_STYLE_MSGBOX, "Hello", "World", "OK", "Cancel");
	SetTimerEx("DG_04_HidePlayerDialog", 2000, false, "i", playerid);
    ASK("Does this dialog vanish after two seconds (otherwise you may need to close it)?");
}

