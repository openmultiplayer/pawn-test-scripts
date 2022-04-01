// Dialogs component player test suite

#if !defined HidePlayerDialog
	native HidePlayerDialog(playerid);
#endif

PTEST__ DG_03_ShowPlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 100, DIALOG_STYLE_MSGBOX, "hi", "hi", "hi", "hi");
    ASK("Can you see the dialog (you may need to close it)?");
}

PTEST__ DG_04_HidePlayerDialog(playerid)
{
    ShowPlayerDialog(playerid, 101, DIALOG_STYLE_MSGBOX, "hi", "hi", "hi", "hi");
    HidePlayerDialog(playerid);
    ASK("Can you NOT see a dialog (you may need to close it)?");
}

