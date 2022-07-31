
forward TestAllNatives();

public TestAllNatives()
{
	// This just tests that the natives compile and load.  It doesn't test that
	// they work.
	new Float:fvar, ivar, svar[32], bool:bvar;
	CreateVehicle(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0);
	DestroyVehicle(0);
	IsVehicleStreamedIn(0, 0);
	GetVehiclePos(0, fvar, fvar, fvar);
	SetVehiclePos(0, 0.0, 0.0, 0.0);
	GetVehicleZAngle(0, fvar);
	GetVehicleRotationQuat(0, fvar, fvar, fvar, fvar);
	GetVehicleDistanceFromPoint(0, 0.0, 0.0, 0.0);
	SetVehicleZAngle(0, 0.0);
	SetVehicleParamsForPlayer(0, false, false, false);
	ManualVehicleEngineAndLights();
	SetVehicleParamsEx(0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0);
	GetVehicleParamsEx(0, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar, VEHICLE_PARAMS:ivar);
	GetVehicleParamsSirenState(0);
	SetVehicleParamsCarDoors(0, false, false, false, false);
	GetVehicleParamsCarDoors(0, bvar, bvar, bvar, bvar);
	SetVehicleParamsCarWindows(0, false, false, false, false);
	GetVehicleParamsCarWindows(0, bvar, bvar, bvar, bvar);
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
	GetVehicleDamageStatus(0, VEHICLE_PANEL_STATUS:ivar, VEHICLE_DOOR_STATUS:ivar, VEHICLE_LIGHT_STATUS:ivar, VEHICLE_TYRE_STATUS:ivar);
	UpdateVehicleDamageStatus(0, VEHICLE_PANEL_STATUS:0, VEHICLE_DOOR_STATUS:0, VEHICLE_LIGHT_STATUS:0, VEHICLE_TYRE_STATUS:0);
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
	SetSpawnInfo(0, 0, 0, 0.0, 0.0, 0.0, 0.0, WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0);
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
	//GetPlayerCustomSkin(0);
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
	//StartRecordingPlayerData(0, PLAYER_RECORDING_TYPE:0, "");
	//StopRecordingPlayerData(0);
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
	//SetTeamCount(0);
	AddPlayerClass(0, 0.0, 0.0, 0.0, 0.0, WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0);
	AddPlayerClassEx(0, 0, 0.0, 0.0, 0.0, 0.0, WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0);
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
	//EnableZoneNames(false);
	UsePlayerPedAnims();
	DisableInteriorEnterExits();
	SetNameTagDrawDistance(0.0);
	DisableNameTagLOS();
	LimitGlobalChatRadius(0.0);
	LimitPlayerMarkerRadius(0.0);
	ConnectNPC("", "");
	IsPlayerNPC(0);
	//AddCharModel(0, 0, "", "");
	//AddSimpleModel(0, 0, 0, "", "");
	//AddSimpleModelTimed(0, 0, 0, "", "", 0, 0);
	//FindModelFileNameFromCRC(0, svar);
	//FindTextureFileNameFromCRC(0, svar);
	//RedirectDownload(0, "");
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

forward TestYSFNatives();

public TestYSFNatives()
{
	// This just tests that the natives compile and load.  It doesn't test that
	// they work.
	new Float:fvar, ivar, svar[32];
	execute("", _, _);
	ffind("", svar, 0, ivar);
	frename("", "");
	dfind("", svar, 0, ivar);
	dcreate("");
	drename("", "");
	SetModeRestartTime(0.0);
	GetModeRestartTime();
	SetMaxPlayers(0);
	SetMaxNPCs(0);
	LoadFilterScript("");
	UnLoadFilterScript("");
	GetFilterScriptCount();
	GetFilterScriptName(0, svar, _);
	AddServerRule("", "");
	SetServerRule("", "");
	IsValidServerRule("");
	//SetServerRuleFlags("", E_SERVER_RULE_FLAGS:0);
	//GetServerRuleFlags("");
	ToggleChatTextReplacement(false);
	ChatTextReplacementToggled();
	GetServerSettings(ivar, _, _, _, _, _, _, _, _, _, _, _, _, _);
	GetNPCCommandLine(0, svar, _);
	GetSyncBounds(fvar, _, _, _);
	SetSyncBounds(0.0, 0.0, 0.0, 0.0);
	GetRCONCommandName("", svar, _);
	ChangeRCONCommandName("", svar);
	CallFunctionInScript("", "", "");
	EnableConsoleMSGsForPlayer(0, 0);
	DisableConsoleMSGsForPlayer(0);
	HasPlayerConsoleMessages(0, _);
	YSF_SetTickRate(0);
	YSF_GetTickRate();
	YSF_EnableNightVisionFix(false);
	YSF_IsNightVisionFixEnabled();
	YSF_ToggleOnServerMessage(false);
	YSF_IsOnServerMessageEnabled();
	YSF_SetExtendedNetStatsEnabled(false);
	YSF_IsExtendedNetStatsEnabled();
	YSF_SetAFKAccuracy(0);
	YSF_GetAFKAccuracy();
	SetRecordingDirectory("");
	GetRecordingDirectory(svar, _);
	IsValidNickName("");
	AllowNickNameCharacter(0, false);
	IsNickNameCharacterAllowed(0);
	GetAvailableClasses();
	GetPlayerClass(0, ivar, _, _, _, _, _, _, _, _, _, _, _);
	EditPlayerClass(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
	GetRunningTimers();
	SetPlayerGravity(0, 0.0);
	GetPlayerGravity(0);
	SetPlayerAdmin(0, false);
	SetPlayerTeamForPlayer(0, 0, 0);
	GetPlayerTeamForPlayer(0, 0);
	SetPlayerSkinForPlayer(0, 0, 0);
	GetPlayerSkinForPlayer(0, 0);
	SetPlayerNameForPlayer(0, 0, "");
	GetPlayerNameForPlayer(0, 0, svar, _);
	SetPlayerFightStyleForPlayer(0, 0, 0);
	GetPlayerFightStyleForPlayer(0, 0);
	SetPlayerPosForPlayer(0, 0, 0.0, 0.0, 0.0, _);
	SetPlayerRotationQuatForPlayer(0, 0, 0.0, 0.0, 0.0, 0.0, _);
	ApplyAnimationForPlayer(0, 0, "", "", 0.0, 0, 0, 0, 0, 0);
	GetPlayerWeather(0);
	TogglePlayerWidescreen(0, false);
	IsPlayerWidescreenToggled(0);
	GetSpawnInfo(0, ivar, _, _, _, _, _, _, _, _, _, _, _);
	GetPlayerSkillLevel(0, 0);
	IsPlayerCheckpointActive(0);
	GetPlayerCheckpoint(0, fvar, _, _, _);
	IsPlayerRaceCheckpointActive(0);
	GetPlayerRaceCheckpoint(0, fvar, _, _, _, _, _, _);
	GetPlayerWorldBounds(0, fvar, _, _, _);
	IsPlayerInModShop(0);
	GetPlayerSirenState(0);
	GetPlayerLandingGearState(0);
	GetPlayerHydraReactorAngle(0);
	GetPlayerTrainSpeed(0);
	GetPlayerZAim(0);
	GetPlayerSurfingOffsets(0, fvar, _, _);
	GetPlayerRotationQuat(0, fvar, _, _, _);
	GetPlayerDialogID(0);
	GetPlayerSpectateID(0);
	GetPlayerSpectateType(0);
	GetPlayerLastSyncedVehicleID(0);
	GetPlayerLastSyncedTrailerID(0);
	GetPlayerRawIp(0);
	SendBulletData(0, _, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	ShowPlayerForPlayer(0, 0, _);
	HidePlayerForPlayer(0, 0);
	AddPlayerForPlayer(0, 0, _);
	RemovePlayerForPlayer(0, 0);
	SetPlayerChatBubbleForPlayer(0, 0, "", 0, 0.0, 0);
	ResetPlayerMarkerForPlayer(0, 0);
	SetPlayerVersion(0, "");
	IsPlayerSpawned(0);
	IsPlayerControllable(0);
	SpawnForWorld(0);
	BroadcastDeath(0);
	IsPlayerCameraTargetEnabled(0);
	SetPlayerDisabledKeysSync(0, 0, _, _);
	GetPlayerDisabledKeysSync(0, ivar, _, _);
	GetPlayerBuildingsRemoved(0);
	IsBuildingRemovedForPlayer(0, 0, 0.0, 0.0, 0.0, 0.0);
	TogglePlayerGhostMode(0, false);
	GetPlayerGhostMode(0);
	SetPlayerSyncKeys(0, 0, 0, 0);
	SetPlayerSyncPos(0, 0.0, 0.0, 0.0);
	SetPlayerSyncVelocity(0, 0.0, 0.0, 0.0);
	SetPlayerSyncRotationQuat(0, 0.0, 0.0, 0.0, 0.0);
	SetPlayerSyncCameraFrontVector(0, 0.0, 0.0, 0.0);
	SetPlayerSyncCameraPos(0, 0.0, 0.0, 0.0);
	SetPlayerSyncCameraMode(0, 0);
	SetPlayerSyncWeapon(0, 0);
	GetPlayerSyncWeapon(0);
	SetPlayerSyncWeaponState(0, 0);
	SetPlayerSyncSpecialAction(0, 0);
	SetPlayerSyncHealth(0, 0.0);
	SetPlayerSyncArmour(0, 0.0);
	SetPlayerSyncVehicleId(0, 0, _);
	SetPlayerSyncVehicleSeat(0, 0);
	SetPlayerSyncVehiclePosition(0, 0.0, 0.0, 0.0);
	SetPlayerSyncVehicleVelocity(0, 0.0, 0.0, 0.0);
	SetPlayerSyncVehicleRotQuat(0, 0.0, 0.0, 0.0, 0.0);
	SetPlayerSyncVehicleHealth(0, 0.0);
	SetPlayerSyncTrainSpeed(0, 0.0);
	SendPlayerDeath(0, _);
	UpdatePlayerSyncData(0, _, _);
	SendPlayerClientGameInit(0, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, "");
	SetPlayerConnectMode(0, E_PLAYER_CONNECT_MODE:0);
	GetPlayerConnectMode(0);
	GetActorSpawnInfo(0, ivar, _, _, _, _);
	GetActorSkin(0);
	GetActorAnimation(0, svar, _, svar, _, fvar, _, _, _, _, _);
	TogglePlayerScoresPingsUpdate(0, false);
	TogglePlayerFakePing(0, false);
	SetPlayerFakePing(0, 0);
	SetPlayerNameInServerQuery(0, "");
	GetPlayerNameInServerQuery(0, svar, _);
	ResetPlayerNameInServerQuery(0);
	IsPlayerPaused(0);
	GetPlayerPausedTime(0);
	HideObjectForPlayer(0, 0);
	ShowObjectForPlayer(0, 0);
	HideNewObjectsForPlayer(0, false);
	IsObjectHiddenForPlayer(0, 0);
	NewObjectsHiddenForPlayer(0);
	GetObjectDrawDistance(0);
	SetObjectMoveSpeed(0, 0.0);
	GetObjectMoveSpeed(0);
	GetObjectTarget(0, fvar, _, _);
	GetObjectAttachedData(0, ivar, _, _);
	GetObjectAttachedOffset(0, fvar, _, _, _, _, _);
	GetObjectSyncRotation(0);
	IsObjectMaterialSlotUsed(0, 0);
	GetObjectMaterial(0, 0, ivar, svar, _, svar, _, _);
	GetObjectMaterialText(0, 0, svar, _, ivar, svar, _, _, _, _, _, _);
	IsObjectNoCameraCol(0);
	GetPlayerObjectDrawDistance(0, 0);
	SetPlayerObjectMoveSpeed(0, 0, 0.0);
	GetPlayerObjectMoveSpeed(0, 0);
	GetPlayerObjectTarget(0, 0, fvar, _, _);
	GetPlayerObjectAttachedData(0, 0, ivar, _, _);
	GetPlayerObjectAttachedOffset(0, 0, fvar, _, _, _, _, _);
	GetPlayerObjectSyncRotation(0, 0);
	IsPlayerObjectMaterialSlotUsed(0, 0, 0);
	GetPlayerObjectMaterial(0, 0, 0, ivar, svar, _, svar, _, _);
	GetPlayerObjectMaterialText(0, 0, 0, svar, _, ivar, svar, _, _, _, _, _, _);
	IsPlayerObjectNoCameraCol(0, 0);
	GetPlayerSurfingPlayerObjectID(0);
	GetPlayerCameraTargetPlayerObj(0);
	GetObjectType(0, 0);
	GetPlayerAttachedObject(0, 0, ivar, _, _, _, _, _, _, _, _, _, _, _, _);
	AttachPlayerObjectToObject(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, _);
	ClearBanList();
	IsBanned("");
	SetTimeoutTime(0, 0);
	GetLocalIP(0, svar, _);
	SetExclusiveBroadcast(0);
	BroadcastToPlayer(0, _);
	ToggleCloseConnectionFix(false);
	GetVehicleSpawnInfo(0, fvar, _, _, _, _, _);
	SetVehicleSpawnInfo(0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, _, _);
	GetVehicleColor(0, ivar, _);
	GetVehiclePaintjob(0);
	GetVehicleInterior(0);
	GetVehicleNumberPlate(0, svar, _);
	SetVehicleRespawnDelay(0, 0);
	GetVehicleRespawnDelay(0);
	SetVehicleOccupiedTick(0, 0);
	GetVehicleOccupiedTick(0);
	SetVehicleRespawnTick(0, 0);
	GetVehicleRespawnTick(0);
	GetVehicleLastDriver(0);
	GetVehicleCab(0);
	HasVehicleBeenOccupied(0);
	SetVehicleBeenOccupied(0, false);
	IsVehicleOccupied(0);
	IsVehicleDead(0);
	SetVehicleDead(0, false);
	SetVehicleParamsSirenState(0, 0);
	ToggleVehicleSirenEnabled(0, 0);
	IsVehicleSirenEnabled(0);
	GetVehicleMatrix(0, fvar, fvar, fvar, fvar, fvar, fvar, fvar, fvar, fvar);
	GetVehicleModelCount(0);
	GetVehicleModelsUsed();
	HideVehicle(0);
	ShowVehicle(0);
	IsVehicleHidden(0);
	IsValidGangZone(0);
	IsPlayerInGangZone(0, 0);
	IsGangZoneVisibleForPlayer(0, 0);
	GangZoneGetColorForPlayer(0, 0);
	GangZoneGetFlashColorForPlayer(0, 0);
	IsGangZoneFlashingForPlayer(0, 0);
	GangZoneGetPos(0, fvar, _, _, _);
	CreatePlayerGangZone(0, 0.0, 0.0, 0.0, 0.0);
	PlayerGangZoneDestroy(0, 0);
	PlayerGangZoneShow(0, 0, 0);
	PlayerGangZoneHide(0, 0);
	PlayerGangZoneFlash(0, 0, 0);
	PlayerGangZoneStopFlash(0, 0);
	IsValidPlayerGangZone(0, 0);
	IsPlayerInPlayerGangZone(0, 0);
	IsPlayerGangZoneVisible(0, 0);
	PlayerGangZoneGetColor(0, 0);
	PlayerGangZoneGetFlashColor(0, 0);
	IsPlayerGangZoneFlashing(0, 0);
	PlayerGangZoneGetPos(0, 0, fvar, _, _, _);
	IsValidTextDraw(Text:0);
	IsTextDrawVisibleForPlayer(0, Text:0);
	TextDrawGetString(Text:0, svar, _);
	TextDrawSetPos(Text:0, 0.0, 0.0);
	TextDrawGetLetterSize(Text:0, fvar, _);
	TextDrawGetTextSize(Text:0, fvar, _);
	TextDrawGetPos(Text:0, fvar, _);
	TextDrawGetColor(Text:0);
	TextDrawGetBoxColor(Text:0);
	TextDrawGetBackgroundColor(Text:0);
	TextDrawGetShadow(Text:0);
	TextDrawGetOutline(Text:0);
	TextDrawGetFont(Text:0);
	TextDrawIsBox(Text:0);
	TextDrawIsProportional(Text:0);
	TextDrawIsSelectable(Text:0);
	TextDrawGetAlignment(Text:0);
	TextDrawGetPreviewModel(Text:0);
	TextDrawGetPreviewRot(Text:0, fvar, _, _, _);
	TextDrawGetPreviewVehCol(Text:0, ivar, _);
	TextDrawSetStringForPlayer(Text:0, 0, "");
	IsValidPlayerTextDraw(0, PlayerText:0);
	IsPlayerTextDrawVisible(0, PlayerText:0);
	PlayerTextDrawGetString(0, PlayerText:0, svar, _);
	PlayerTextDrawSetPos(0, PlayerText:0, 0.0, 0.0);
	PlayerTextDrawGetLetterSize(0, PlayerText:0, fvar, _);
	PlayerTextDrawGetTextSize(0, PlayerText:0, fvar, _);
	PlayerTextDrawGetPos(0, PlayerText:0, fvar, _);
	PlayerTextDrawGetColor(0, PlayerText:0);
	PlayerTextDrawGetBoxColor(0, PlayerText:0);
	PlayerTextDrawGetBackgroundCol(0, PlayerText:0);
	PlayerTextDrawGetShadow(0, PlayerText:0);
	PlayerTextDrawGetOutline(0, PlayerText:0);
	PlayerTextDrawGetFont(0, PlayerText:0);
	PlayerTextDrawIsBox(0, PlayerText:0);
	PlayerTextDrawIsProportional(0, PlayerText:0);
	PlayerTextDrawIsSelectable(0, PlayerText:0);
	PlayerTextDrawGetAlignment(0, PlayerText:0);
	PlayerTextDrawGetPreviewModel(0, PlayerText:0);
	PlayerTextDrawGetPreviewRot(0, PlayerText:0, fvar, _, _, _);
	PlayerTextDrawGetPreviewVehCol(0, PlayerText:0, ivar, _);
	IsValid3DTextLabel(Text3D:0);
	Is3DTextLabelStreamedIn(0, Text3D:0);
	Get3DTextLabelText(Text3D:0, svar, _);
	Get3DTextLabelColor(Text3D:0);
	Get3DTextLabelPos(Text3D:0, fvar, _, _);
	Get3DTextLabelDrawDistance(Text3D:0);
	Get3DTextLabelLOS(Text3D:0);
	Get3DTextLabelVirtualWorld(Text3D:0);
	Get3DTextLabelAttachedData(Text3D:0, ivar, _);
	IsValidPlayer3DTextLabel(0, PlayerText3D:0);
	GetPlayer3DTextLabelText(0, PlayerText3D:0, svar, _);
	GetPlayer3DTextLabelColor(0, PlayerText3D:0);
	GetPlayer3DTextLabelPos(0, PlayerText3D:0, fvar, fvar, fvar);
	GetPlayer3DTextLabelDrawDist(0, PlayerText3D:0);
	GetPlayer3DTextLabelDrawDistance(0, PlayerText3D:0);
	GetPlayer3DTextLabelLOS(0, PlayerText3D:0);
	GetPlayer3DTextLabelVirtualW(0, PlayerText3D:0);
	GetPlayer3DTextLabelVirtualWorld(0, PlayerText3D:0);
	GetPlayer3DTextLabelAttached(0, PlayerText3D:0, ivar, ivar);
	GetPlayer3DTextLabelAttachedData(0, PlayerText3D:0, ivar, ivar);
	SetPlayer3DTextLabelLOS(0, PlayerText3D:0, false);
	IsMenuDisabled(Menu:0);
	IsMenuRowDisabled(Menu:0, 0);
	GetMenuColumns(Menu:0);
	GetMenuItems(Menu:0, 0);
	GetMenuPos(Menu:0, fvar, _);
	GetMenuColumnWidth(Menu:0, fvar, _);
	GetMenuColumnHeader(Menu:0, 0, svar, _);
	GetMenuItem(Menu:0, 0, 0, svar, _);
	IsValidPickup(0);
	IsPickupStreamedIn(0, 0);
	GetPickupPos(0, fvar, _, _);
	GetPickupModel(0);
	GetPickupType(0);
	GetPickupVirtualWorld(0);
	SetPickupPos(0, 0.0, 0.0, 0.0, _);
	SetPickupModel(0, 0, _);
	SetPickupType(0, 0, _);
	SetPickupVirtualWorld(0, 0);
	ShowPickupForPlayer(0, 0);
	HidePickupForPlayer(0, 0);
	SetPickupForPlayer(0, 0, 0, 0, 0.0, 0.0, 0.0);
	/*
	CreatePlayerPickup(0, 0, 0, 0.0, 0.0, 0.0, _);
	DestroyPlayerPickup(0, 0);
	IsValidPlayerPickup(0, 0);
	IsPlayerPickupStreamedIn(0, 0);
	GetPlayerPickupPos(0, 0, fvar, _, _);
	GetPlayerPickupModel(0, 0);
	GetPlayerPickupType(0, 0);
	GetPlayerPickupVirtualWorld(0, 0);
	*/
	GetColCount();
	GetColSphereRadius(0);
	GetColSphereOffset(0, fvar, _, _);
	SendClientMessagef(0, 0, "");
	SendClientMessageToAllf(0, "");
	GameTextForPlayerf(0, 0, 0, "");
	GameTextForAllf(0, 0, "");
	SendPlayerMessageToPlayerf(0, 0, "");
	SendPlayerMessageToAllf(0, "");
	SendRconCommandf("");
	IsValidVehicle(0);
	GetGravity();
	GetWeaponSlot(0);
	SendRPC(0, 0);
	SendData(0);
	SetPlayerSyncPosition(0, 0.0, 0.0, 0.0);
	RemovePlayerWeapon(0, WEAPON_FIST);
	UseGangZoneCheck(0, false);
	UsePlayerGangZoneCheck(0, 0, true);
	GetObjectMovingTargetPos(0, fvar, fvar, fvar);
	GetObjectMovingTargetRot(0, fvar, fvar, fvar);
	IsPickupHiddenForPlayer(0, 0);
	Set3DTextLabelDrawDistance(Text3D:0, 0.0);
	Get3DTextLabelLOS(Text3D:0);
	Set3DTextLabelLOS(Text3D:0, false);
	Set3DTextLabelVirtualWorld(Text3D:0, 0);
	SetPlayer3DTextLabelDrawDist(0, PlayerText3D:0, 0.0);
	SetPlayer3DTextLabelDrawDistance(0, PlayerText3D:0, 0.0);
	GetVehicleTower(0);
	GetVehicleSirenState(0);
	GetVehicleLandingGearState(0);
	GetVehicleLandingGearState(0);
	GetVehicleHydraReactorAngle(0);
	GetVehicleTrainSpeed(0);
	SetActorSkin(0, 0);
	RemoveServerRule("");
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

public OnPlayerEnterGangZone(playerid, zoneid)
{
}

public OnPlayerLeaveGangZone(playerid, zoneid)
{
}

public OnPlayerClickGangZone(playerid, zoneid)
{
}

public OnPlayerEnterPlayerGangZone(playerid, zoneid)
{
}

public OnPlayerLeavePlayerGangZone(playerid, zoneid)
{
}

public OnPlayerClickPlayerGangZone(playerid, zoneid)
{
}

public OnPlayerPickUpPlayerPickup(playerid, pickupid)
{
}

public OnPlayerPauseStateChange(playerid, pausestate)
{
}

public OnPlayerStatsAndWeaponsUpdate(playerid)
{
}

public OnRemoteRCONPacket(const ipaddr[], port, const password[], success, const command[])
{
}

public OnServerMessage(const msg[])
{
}

public OnPlayerClientGameInit(playerid, &usecjwalk, &limitglobalchat, &Float:globalchatradius, &Float:nametagdistance, &disableenterexits, &nametaglos, &manualvehengineandlights, &spawnsavailable, &shownametags, &showplayermarkers, &onfoot_rate, &incar_rate, &weapon_rate, &lagcompmode, &vehiclefriendlyfire)
{
}

public OnOutcomeScmEvent(playerid, issuerid, E_SCM_EVENT_TYPE:eventid, vehicleid, arg1, arg2)
{
}

public OnServerQueryInfo(const ipaddr[], hostname[51], gamemode[31], language[31])
{
}

public OnSystemCommandExecute(const line_output[], retval, index, success, line_current, line_total)
{
}

public OnPickupStreamIn(pickupid, forplayerid)
{
}

public OnPickupStreamOut(pickupid, forplayerid)
{
}

