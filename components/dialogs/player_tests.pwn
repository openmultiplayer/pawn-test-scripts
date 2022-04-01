// Dialogs component player test suite

#if !defined HidePlayerDialog
	native HidePlayerDialog(playerid);
#endif

PTEST__ DG_03_ShowPlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 100, DIALOG_STYLE_MSGBOX, "Title", "Caption - Hello World", "Button 1", "Button 2");
    ASK("Can you see the dialog (you may need to close it)?");
}

forward DG_04_HidePlayerDialog(playerid);

public DG_04_HidePlayerDialog(playerid)
{
    HidePlayerDialog(playerid);
}

PTEST__ DG_04_HidePlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 101, DIALOG_STYLE_MSGBOX, "Hello", "World", "OK", "Cancel");
	SetTimerEx("DG_04_HidePlayerDialog", 2000, false, "i", playerid);
    ASK("Did you see a dialog vanish (otherwise you may need to close it)?");
}

