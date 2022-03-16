forward TestAllNatives();

public TestAllNatives()
{
	// This just tests that the natives compile and load.  It doesn't test that
	// they work.
	new Float:fvar, ivar, svar[32];
	CreateVehicle(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0);
	DestroyVehicle(0);
	IsVehicleStreamedIn(0, 0);
	GetVehiclePos(0, fvar, fvar, fvar);
	SetVehiclePos(0, 0.0, 0.0, 0.0);
	GetVehicleZAngle(0, fvar);
	GetVehicleRotationQuat(0, fvar, fvar, fvar, fvar);
	GetVehicleDistanceFromPoint(0, 0.0, 0.0, 0.0);
	SetVehicleZAngle(0, 0.0);
	SetVehicleParamsForPlayer(0, 0, 0, 0);
	ManualVehicleEngineAndLights();
	SetVehicleParamsEx(0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0);
	GetVehicleParamsEx(0, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar);
	GetVehicleParamsSirenState(0);
	SetVehicleParamsCarDoors(0, 0, 0, 0, 0);
	GetVehicleParamsCarDoors(0, ivar, ivar, ivar, ivar);
	SetVehicleParamsCarWindows(0, 0, 0, 0, 0);
	GetVehicleParamsCarWindows(0, ivar, ivar, ivar, ivar);
	SetVehicleToRespawn(0);
	LinkVehicleToInterior(0, 0);
	AddVehicleComponent(0, 0);
	RemoveVehicleComponent(0, 0);
	ChangeVehicleColor(0, 0, 0);
	ChangeVehiclePaintjob(0, 0);
	SetVehicleHealth(0, 0.0);
	GetVehicleHealth(0, fvar);
	AttachTrailerToVehicle(0, 0);
	DetachTrailerFromVehicle(0);
	IsTrailerAttachedToVehicle(0);
	GetVehicleTrailer(0);
	SetVehicleNumberPlate(0, "");
	GetVehicleModel(0);
	GetVehicleComponentInSlot(0, CARMODTYPE:0);
	new CARMODTYPE:carmodtype = GetVehicleComponentType(0);
	#pragma unused carmodtype
	RepairVehicle(0);
	GetVehicleVelocity(0, fvar, fvar, fvar);
	SetVehicleVelocity(0, 0.0, 0.0, 0.0);
	SetVehicleAngularVelocity(0, 0.0, 0.0, 0.0);
	GetVehicleDamageStatus(0, ivar, ivar, ivar, ivar);
	UpdateVehicleDamageStatus(0, 0, 0, 0, 0);
	GetVehicleModelInfo(0, VEHICLE_MODEL_INFO:0, fvar, fvar, fvar);
	SetVehicleVirtualWorld(0, 0);
	GetVehicleVirtualWorld(0);
	IsValidVehicle(0);
	new DB:db = DB_Open("");
	#pragma unused db
	DB_Close(DB:0);
	new DBResult:dbresult = DB_Query(DB:0, "");
	#pragma unused dbresult
	DB_FreeResult(DBResult:0);
	DB_NumRows(DBResult:0);
	DB_NextRow(DBResult:0);
	DB_NumFields(DBResult:0);
	DB_FieldName(DBResult:0, 0, svar);
	DB_GetField(DBResult:0, 0, svar);
	DB_GetFieldInt(DBResult:0);
	DB_GetFieldFloat(DBResult:0);
	DB_GetFieldAssoc(DBResult:0, "", svar);
	DB_GetFieldAssocInt(DBResult:0, "");
	DB_GetFieldAssocFloat(DBResult:0, "");
	DB_GetMemHandle(DB:0);
	DB_GetResultMemHandle(DBResult:0);
	DB_DebugOpenFiles();
	DB_DebugOpenResults();
	CreateActor(0, 0.0, 0.0, 0.0, 0.0);
	DestroyActor(0);
	IsActorStreamedIn(0, 0);
	SetActorVirtualWorld(0, 0);
	GetActorVirtualWorld(0);
	ApplyActorAnimation(0, "", "", 0.0, false, false, false, false, 0);
	ClearActorAnimations(0);
	SetActorPos(0, 0.0, 0.0, 0.0);
	GetActorPos(0, fvar, fvar, fvar);
	SetActorFacingAngle(0, 0.0);
	GetActorFacingAngle(0, fvar);
	SetActorHealth(0, 0.0);
	GetActorHealth(0, fvar);
	SetActorInvulnerable(0);
	IsActorInvulnerable(0);
	IsValidActor(0);
	HTTP(0, HTTP_METHOD:0, "", "", "");
	CreateObject(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	AttachObjectToVehicle(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	AttachObjectToObject(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	AttachObjectToPlayer(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	SetObjectPos(0, 0.0, 0.0, 0.0);
	GetObjectPos(0, fvar, fvar, fvar);
	SetObjectRot(0, 0.0, 0.0, 0.0);
	GetObjectRot(0, fvar, fvar, fvar);
	GetObjectModel(0);
	SetObjectNoCameraCol(0);
	IsValidObject(0);
	DestroyObject(0);
	MoveObject(0, 0.0, 0.0, 0.0, 0.0);
	StopObject(0);
	IsObjectMoving(0);
	EditObject(0, 0);
	EditPlayerObject(0, 0);
	SelectObject(0);
	CancelEdit(0);
	CreatePlayerObject(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	AttachPlayerObjectToVehicle(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	SetPlayerObjectPos(0, 0, 0.0, 0.0, 0.0);
	GetPlayerObjectPos(0, 0, fvar, fvar, fvar);
	SetPlayerObjectRot(0, 0, 0.0, 0.0, 0.0);
	GetPlayerObjectRot(0, 0, fvar, fvar, fvar);
	GetPlayerObjectModel(0, 0);
	SetPlayerObjectNoCameraCol(0, 0);
	IsValidPlayerObject(0, 0);
	DestroyPlayerObject(0, 0);
	MovePlayerObject(0, 0, 0.0, 0.0, 0.0, 0.0);
	StopPlayerObject(0, 0);
	IsPlayerObjectMoving(0, 0);
	AttachPlayerObjectToPlayer(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	SetObjectMaterial(0, 0, 0, "", "");
	SetPlayerObjectMaterial(0, 0, 0, 0, "", "");
	SetObjectMaterialText(0, "");
	SetPlayerObjectMaterialText(0, 0, "");
	SetObjectsDefaultCameraCol(false);
	SetSpawnInfo(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
	SpawnPlayer(0);
	SetPlayerPos(0, 0.0, 0.0, 0.0);
	SetPlayerPosFindZ(0, 0.0, 0.0, 0.0);
	GetPlayerPos(0, fvar, fvar, fvar);
	SetPlayerFacingAngle(0, 0.0);
	GetPlayerFacingAngle(0, fvar);
	IsPlayerInRangeOfPoint(0, 0.0, 0.0, 0.0, 0.0);
	GetPlayerDistanceFromPoint(0, 0.0, 0.0, 0.0);
	IsPlayerStreamedIn(0, 0);
	SetPlayerInterior(0, 0);
	GetPlayerInterior(0);
	SetPlayerHealth(0, 0.0);
	GetPlayerHealth(0, fvar);
	SetPlayerArmour(0, 0.0);
	GetPlayerArmour(0, fvar);
	SetPlayerAmmo(0, WEAPON:0, 0);
	GetPlayerAmmo(0);
	new WEAPONSTATE:weaponstate = GetPlayerWeaponState(0);
	#pragma unused weaponstate
	GetPlayerTargetPlayer(0);
	GetPlayerTargetActor(0);
	SetPlayerTeam(0, 0);
	GetPlayerTeam(0);
	SetPlayerScore(0, 0);
	GetPlayerScore(0);
	GetPlayerDrunkLevel(0);
	SetPlayerDrunkLevel(0, 0);
	SetPlayerColor(0, 0);
	GetPlayerColor(0);
	SetPlayerSkin(0, 0);
	GetPlayerSkin(0);
	GetPlayerCustomSkin(0);
	GivePlayerWeapon(0, WEAPON:0, 0);
	ResetPlayerWeapons(0);
	SetPlayerArmedWeapon(0, WEAPON:0);
	GetPlayerWeaponData(0, 0, WEAPON:ivar, ivar);
	GivePlayerMoney(0, 0);
	ResetPlayerMoney(0);
	SetPlayerName(0, "");
	GetPlayerMoney(0);
	new PLAYER_STATE:player_state = GetPlayerState(0);
	#pragma unused player_state
	GetPlayerIp(0, svar);
	GetPlayerPing(0);
	new WEAPON:weapon = GetPlayerWeapon(0);
	#pragma unused weapon
	GetPlayerKeys(0, KEY:ivar, KEY:ivar, KEY:ivar);
	GetPlayerName(0, svar);
	SetPlayerTime(0, 0, 0);
	GetPlayerTime(0, ivar, ivar);
	TogglePlayerClock(0, false);
	SetPlayerWeather(0, 0);
	ForceClassSelection(0);
	SetPlayerWantedLevel(0, 0);
	GetPlayerWantedLevel(0);
	SetPlayerFightingStyle(0, FIGHT_STYLE:0);
	new FIGHT_STYLE:fight_style = GetPlayerFightingStyle(0);
	#pragma unused fight_style
	SetPlayerVelocity(0, 0.0, 0.0, 0.0);
	GetPlayerVelocity(0, fvar, fvar, fvar);
	PlayCrimeReportForPlayer(0, 0, 0);
	PlayAudioStreamForPlayer(0, "");
	StopAudioStreamForPlayer(0);
	SetPlayerShopName(0, "");
	SetPlayerSkillLevel(0, WEAPONSKILL:0, 0);
	GetPlayerSurfingVehicleID(0);
	GetPlayerSurfingObjectID(0);
	RemoveBuildingForPlayer(0, 0, 0.0, 0.0, 0.0, 0.0);
	GetPlayerLastShotVectors(0, fvar, fvar, fvar, fvar, fvar, fvar);
	SetPlayerAttachedObject(0, 0, 0, 0);
	RemovePlayerAttachedObject(0, 0);
	IsPlayerAttachedObjectSlotUsed(0, 0);
	EditAttachedObject(0, 0);
	new PlayerText:playertext = CreatePlayerTextDraw(0, 0.0, 0.0, "");
	#pragma unused playertext
	PlayerTextDrawDestroy(0, PlayerText:0);
	PlayerTextDrawLetterSize(0, PlayerText:0, 0.0, 0.0);
	PlayerTextDrawTextSize(0, PlayerText:0, 0.0, 0.0);
	PlayerTextDrawAlignment(0, PlayerText:0, TEXT_DRAW_ALIGN:0);
	PlayerTextDrawColor(0, PlayerText:0, 0);
	PlayerTextDrawUseBox(0, PlayerText:0, false);
	PlayerTextDrawBoxColor(0, PlayerText:0, 0);
	PlayerTextDrawSetShadow(0, PlayerText:0, 0);
	PlayerTextDrawSetOutline(0, PlayerText:0, 0);
	PlayerTextDrawBackgroundColor(0, PlayerText:0, 0);
	PlayerTextDrawFont(0, PlayerText:0, TEXT_DRAW_FONT:0);
	PlayerTextDrawSetProportional(0, PlayerText:0, false);
	PlayerTextDrawSetSelectable(0, PlayerText:0, false);
	PlayerTextDrawShow(0, PlayerText:0);
	PlayerTextDrawHide(0, PlayerText:0);
	PlayerTextDrawSetString(0, PlayerText:0, "");
	PlayerTextDrawSetPreviewModel(0, PlayerText:0, 0);
	PlayerTextDrawSetPreviewRot(0, PlayerText:0, 0.0, 0.0, 0.0);
	PlayerTextDrawSetPreviewVehCol(0, PlayerText:0, 0, 0);
	SetPVarInt(0, "", 0);
	GetPVarInt(0, "");
	SetPVarString(0, "", "");
	GetPVarString(0, "", svar);
	SetPVarFloat(0, "", 0.0);
	GetPVarFloat(0, "");
	DeletePVar(0, "");
	GetPVarsUpperIndex(0);
	GetPVarNameAtIndex(0, 0, svar);
	new PLAYER_VARTYPE:player_vartype = GetPVarType(0, "");
	#pragma unused player_vartype
	SetPlayerChatBubble(0, "", 0, 0.0, 0);
	PutPlayerInVehicle(0, 0, 0);
	GetPlayerVehicleID(0);
	GetPlayerVehicleSeat(0);
	RemovePlayerFromVehicle(0);
	TogglePlayerControllable(0, false);
	PlayerPlaySound(0, 0, 0.0, 0.0, 0.0);
	ApplyAnimation(0, "", "", 0.0, false, false, false, false, 0);
	ClearAnimations(0);
	GetPlayerAnimationIndex(0);
	GetAnimationName(0, svar, _, svar);
	new SPECIAL_ACTION:special_action = GetPlayerSpecialAction(0);
	#pragma unused special_action
	SetPlayerSpecialAction(0, SPECIAL_ACTION:0);
	DisableRemoteVehicleCollisions(0, false);
	SetPlayerCheckpoint(0, 0.0, 0.0, 0.0, 0.0);
	DisablePlayerCheckpoint(0);
	SetPlayerRaceCheckpoint(0, CP_TYPE:0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	DisablePlayerRaceCheckpoint(0);
	SetPlayerWorldBounds(0, 0.0, 0.0, 0.0, 0.0);
	SetPlayerMarkerForPlayer(0, 0, 0);
	ShowPlayerNameTagForPlayer(0, 0, false);
	SetPlayerMapIcon(0, 0, 0.0, 0.0, 0.0, 0, 0);
	RemovePlayerMapIcon(0, 0);
	SetPlayerCameraPos(0, 0.0, 0.0, 0.0);
	SetPlayerCameraLookAt(0, 0.0, 0.0, 0.0);
	SetCameraBehindPlayer(0);
	GetPlayerCameraPos(0, fvar, fvar, fvar);
	GetPlayerCameraFrontVector(0, fvar, fvar, fvar);
	new CAM_MODE:cam_mode = GetPlayerCameraMode(0);
	#pragma unused cam_mode
	EnablePlayerCameraTarget(0, false);
	GetPlayerCameraTargetObject(0);
	GetPlayerCameraTargetVehicle(0);
	GetPlayerCameraTargetPlayer(0);
	GetPlayerCameraTargetActor(0);
	GetPlayerCameraAspectRatio(0);
	GetPlayerCameraZoom(0);
	AttachCameraToObject(0, 0);
	AttachCameraToPlayerObject(0, 0);
	InterpolateCameraPos(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0);
	InterpolateCameraLookAt(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0);
	IsPlayerConnected(0);
	IsPlayerInVehicle(0, 0);
	IsPlayerInAnyVehicle(0);
	IsPlayerInCheckpoint(0);
	IsPlayerInRaceCheckpoint(0);
	SetPlayerVirtualWorld(0, 0);
	GetPlayerVirtualWorld(0);
	EnableStuntBonusForPlayer(0, false);
	EnableStuntBonusForAll(false);
	TogglePlayerSpectating(0, false);
	PlayerSpectatePlayer(0, 0);
	PlayerSpectateVehicle(0, 0);
	StartRecordingPlayerData(0, PLAYER_RECORDING_TYPE:0, "");
	StopRecordingPlayerData(0);
	SelectTextDraw(0, 0);
	CancelSelectTextDraw(0);
	CreateExplosionForPlayer(0, 0.0, 0.0, 0.0, 0, 0.0);
	SendClientCheck(0, 0, 0, 0, 0);
	new PlayerText3D:playertext3d = CreatePlayer3DTextLabel(0, "", 0, 0.0, 0.0, 0.0, 0.0);
	#pragma unused playertext3d
	DeletePlayer3DTextLabel(0, PlayerText3D:0);
	UpdatePlayer3DTextLabelText(0, PlayerText3D:0, 0, "");
	format(svar, _, "");
	SendClientMessage(0, 0, "");
	SendClientMessageToAll(0, "");
	SendPlayerMessageToPlayer(0, 0, "");
	SendPlayerMessageToAll(0, "");
	SendDeathMessage(0, 0, 0);
	SendDeathMessageToPlayer(0, 0, 0, 0);
	GameTextForAll("", 0, 0);
	GameTextForPlayer(0, "", 0, 0);
	SetTimer("", 0, false);
	SetTimerEx("", 0, false);
	KillTimer(0);
	GetTickCount();
	GetMaxPlayers();
	CallRemoteFunction("");
	CallLocalFunction("");
	VectorSize(0.0, 0.0, 0.0);
	asin(0.0);
	acos(0.0);
	atan(0.0);
	atan2(0.0, 0.0);
	GetPlayerPoolSize();
	GetVehiclePoolSize();
	GetActorPoolSize();
	SetSVarInt("", 0);
	GetSVarInt("");
	SetSVarString("", "");
	GetSVarString("", svar);
	SetSVarFloat("", 0.0);
	GetSVarFloat("");
	DeleteSVar("");
	GetSVarsUpperIndex();
	GetSVarNameAtIndex(0, svar);
	new SERVER_VARTYPE:server_vartype = GetSVarType("");
	#pragma unused server_vartype
	SetGameModeText("");
	SetTeamCount(0);
	AddPlayerClass(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
	AddPlayerClassEx(0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
	AddStaticVehicle(0, 0.0, 0.0, 0.0, 0.0, 0, 0);
	AddStaticVehicleEx(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0);
	AddStaticPickup(0, 0, 0.0, 0.0, 0.0);
	CreatePickup(0, 0, 0.0, 0.0, 0.0);
	DestroyPickup(0);
	ShowNameTags(false);
	ShowPlayerMarkers(PLAYER_MARKERS_MODE:0);
	GameModeExit();
	SetWorldTime(0);
	GetWeaponName(WEAPON:0, svar);
	EnableVehicleFriendlyFire();
	SetWeather(0);
	GetGravity();
	SetGravity(0.0);
	CreateExplosion(0.0, 0.0, 0.0, 0, 0.0);
	EnableZoneNames(false);
	UsePlayerPedAnims();
	DisableInteriorEnterExits();
	SetNameTagDrawDistance(0.0);
	DisableNameTagLOS();
	LimitGlobalChatRadius(0.0);
	LimitPlayerMarkerRadius(0.0);
	ConnectNPC("", "");
	IsPlayerNPC(0);
	AddCharModel(0, 0, "", "");
	AddSimpleModel(0, 0, 0, "", "");
	AddSimpleModelTimed(0, 0, 0, "", "", 0, 0);
	FindModelFileNameFromCRC(0, svar);
	FindTextureFileNameFromCRC(0, svar);
	RedirectDownload(0, "");
	IsPlayerAdmin(0);
	Kick(0);
	Ban(0);
	BanEx(0, "");
	SendRconCommand("");
	GetPlayerNetworkStats(0, svar);
	GetNetworkStats(svar);
	GetPlayerVersion(0, svar);
	BlockIpAddress("", 0);
	UnBlockIpAddress("");
	GetConsoleVarAsString("", svar);
	GetConsoleVarAsInt("");
	GetConsoleVarAsBool("");
	GetServerTickRate();
	NetStats_GetConnectedTime(0);
	NetStats_MessagesReceived(0);
	NetStats_BytesReceived(0);
	NetStats_MessagesSent(0);
	NetStats_BytesSent(0);
	NetStats_MessagesRecvPerSecond(0);
	NetStats_PacketLossPercent(0);
	NetStats_ConnectionStatus(0);
	NetStats_GetIpPort(0, svar);
	new Menu:menu = CreateMenu("", 0, 0.0, 0.0, 0.0);
	#pragma unused menu
	DestroyMenu(Menu:0);
	AddMenuItem(Menu:0, 0, "");
	SetMenuColumnHeader(Menu:0, 0, "");
	ShowMenuForPlayer(Menu:0, 0);
	HideMenuForPlayer(Menu:0, 0);
	IsValidMenu(Menu:0);
	DisableMenu(Menu:0);
	DisableMenuRow(Menu:0, 0);
	new Menu:menu2 = GetPlayerMenu(0);
	#pragma unused menu2
	new Text:text = TextDrawCreate(0.0, 0.0, "");
	#pragma unused text
	TextDrawDestroy(Text:0);
	TextDrawLetterSize(Text:0, 0.0, 0.0);
	TextDrawTextSize(Text:0, 0.0, 0.0);
	TextDrawAlignment(Text:0, TEXT_DRAW_ALIGN:0);
	TextDrawColor(Text:0, 0);
	TextDrawUseBox(Text:0, false);
	TextDrawBoxColor(Text:0, 0);
	TextDrawSetShadow(Text:0, 0);
	TextDrawSetOutline(Text:0, 0);
	TextDrawBackgroundColor(Text:0, 0);
	TextDrawFont(Text:0, TEXT_DRAW_FONT:0);
	TextDrawSetProportional(Text:0, false);
	TextDrawSetSelectable(Text:0, false);
	TextDrawShowForPlayer(0, Text:0);
	TextDrawHideForPlayer(0, Text:0);
	TextDrawShowForAll(Text:0);
	TextDrawHideForAll(Text:0);
	TextDrawSetString(Text:0, "");
	TextDrawSetPreviewModel(Text:0, 0);
	TextDrawSetPreviewRot(Text:0, 0.0, 0.0, 0.0);
	TextDrawSetPreviewVehCol(Text:0, 0, 0);
	GangZoneCreate(0.0, 0.0, 0.0, 0.0);
	GangZoneDestroy(0);
	GangZoneShowForPlayer(0, 0, 0);
	GangZoneShowForAll(0, 0);
	GangZoneHideForPlayer(0, 0);
	GangZoneHideForAll(0);
	GangZoneFlashForPlayer(0, 0, 0);
	GangZoneFlashForAll(0, 0);
	GangZoneStopFlashForPlayer(0, 0);
	GangZoneStopFlashForAll(0);
	new Text3D:text3d = Create3DTextLabel("", 0, 0.0, 0.0, 0.0, 0.0, 0);
	#pragma unused text3d
	Delete3DTextLabel(Text3D:0);
	Attach3DTextLabelToPlayer(Text3D:0, 0, 0.0, 0.0, 0.0);
	Attach3DTextLabelToVehicle(Text3D:0, 0, 0.0, 0.0, 0.0);
	Update3DTextLabelText(Text3D:0, 0, "");
	ShowPlayerDialog(0, 0, DIALOG_STYLE:0, "", "", "", "");
	GPCI(0, svar);
}

public OnTrailerUpdate(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnEnterExitModShop(playerid, enterexit, interiorid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	return 1;
}

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z)
{
	return 1;
}

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float:amount, weaponid, bodypart)
{
	return 1;
}

public OnActorStreamIn(actorid, forplayerid)
{
	return 1;
}

public OnActorStreamOut(actorid, forplayerid)
{
	return 1;
}

public OnPlayerSelectObject(playerid, SELECT_OBJECT:type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnPlayerEditObject(playerid, playerobject, objectid, EDIT_RESPONSE:response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
	return 1;
}

public OnPlayerEditAttachedObject(playerid, EDIT_RESPONSE:response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
	return 1;
}

public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, CLICK_SOURCE:source)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnGameModeInit()
{
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	return 1;
}

public OnIncomingConnection(playerid, ip_address[], port)
{
	return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
	return 1;
}

public OnPlayerRequestDownload(playerid, type, crc)
{
	return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, BULLET_HIT_TYPE:hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	return 1;
}

public OnClientCheckResponse(playerid, actionid, memaddr, retndata)
{
	return 1;
}

public OnScriptCash(playerid, amount, source)
{
	return 1;
}

