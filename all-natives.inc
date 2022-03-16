new Float:fvar, ivar, svar[32];


native CreateVehicle(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0);


native DestroyVehicle(0);


native IsVehicleStreamedIn(0, 0);


native GetVehiclePos(0, &0.0, &0.0, &0.0);


native SetVehiclePos(0, 0.0, 0.0, 0.0);


native GetVehicleZAngle(0, &0.0);


native GetVehicleRotationQuat(0, &0.0, &0.0, &0.0, &0.0);


native GetVehicleDistanceFromPoint(0, 0.0, 0.0, 0.0);


native SetVehicleZAngle(0, 0.0);


native SetVehicleParamsForPlayer(0, 0, 0, 0);


native ManualVehicleEngineAndLights();


native SetVehicleParamsEx(0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0);


native GetVehicleParamsEx(0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0, &VEHICLE_PARAMS:0);


native GetVehicleParamsSirenState(0);


native SetVehicleParamsCarDoors(0, 0, 0, 0, 0);


native GetVehicleParamsCarDoors(0, &0, &0, &0, &0);


native SetVehicleParamsCarWindows(0, 0, 0, 0, 0);


native GetVehicleParamsCarWindows(0, &0, &0, &0, &0);


native SetVehicleToRespawn(0);


native LinkVehicleToInterior(0, 0);


native AddVehicleComponent(0, 0);


native RemoveVehicleComponent(0, 0);


native ChangeVehicleColor(0, 0, 0);


native ChangeVehiclePaintjob(0, 0);


native SetVehicleHealth(0, 0.0);


native GetVehicleHealth(0, &0.0);


native AttachTrailerToVehicle(0, 0);


native DetachTrailerFromVehicle(0);


native IsTrailerAttachedToVehicle(0);


native GetVehicleTrailer(0);


native SetVehicleNumberPlate(0, "");


native GetVehicleModel(0);


native GetVehicleComponentInSlot(0, CARMODTYPE:0);


native CARMODTYPE:GetVehicleComponentType(0);


native RepairVehicle(0);


native GetVehicleVelocity(0, &0.0, &0.0, &0.0);


native SetVehicleVelocity(0, 0.0, 0.0, 0.0);


native SetVehicleAngularVelocity(0, 0.0, 0.0, 0.0);


native GetVehicleDamageStatus(0, &0, &0, &0, &0);


native UpdateVehicleDamageStatus(0, 0, 0, 0, 0);


native GetVehicleModelInfo(0, VEHICLE_MODEL_INFO:0, &0.0, &0.0, &0.0);


native SetVehicleVirtualWorld(0, 0);


native GetVehicleVirtualWorld(0);


native IsValidVehicle(0);


public OnTrailerUpdate(0, 0) {}


public OnVehicleSirenStateChange(0, 0, 0) {}


public OnVehicleStreamIn(0, 0) {}


public OnVehicleStreamOut(0, 0) {}


public OnPlayerEnterVehicle(0, 0, 0) {}


public OnPlayerExitVehicle(0, 0) {}


public OnVehicleSpawn(0) {}


public OnVehicleDeath(0, 0) {}


public OnVehicleMod(0, 0, 0) {}


public OnEnterExitModShop(0, 0, 0) {}


public OnVehiclePaintjob(0, 0, 0) {}


public OnVehicleRespray(0, 0, 0, 0) {}


public OnVehicleDamageStatusUpdate(0, 0) {}


public OnUnoccupiedVehicleUpdate(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) {}



native DB:DB_Open("");





native DB_Close(DB:0);





native DBResult:DB_Query(DB:0, "");





native DB_FreeResult(DBResult:0);





native DB_NumRows(DBResult:0);





native DB_NextRow(DBResult:0);





native DB_NumFields(DBResult:0);





native DB_FieldName(DBResult:0, 0, output[]);





native DB_GetField(DBResult:0, 0, output[]);





native DB_GetFieldInt(DBResult:0);





native DB_GetFieldFloat(DBResult:0);





native DB_GetFieldAssoc(DBResult:0, "", output[]);





native DB_GetFieldAssocInt(DBResult:0, "");





native DB_GetFieldAssocFloat(DBResult:0, "");





native DB_GetMemHandle(DB:0);





native DB_GetResultMemHandle(DBResult:0);





native DB_DebugOpenFiles();





native DB_DebugOpenResults();






native CreateActor(0, 0.0, 0.0, 0.0, 0.0);


native DestroyActor(0);


native IsActorStreamedIn(0, 0);


native SetActorVirtualWorld(0, 0);


native GetActorVirtualWorld(0);


native ApplyActorAnimation(0, "", "", 0.0, bool:0, bool:0, bool:0, bool:0, 0);


native ClearActorAnimations(0);


native SetActorPos(0, 0.0, 0.0, 0.0);


native GetActorPos(0, &0.0, &0.0, &0.0);


native SetActorFacingAngle(0, 0.0);


native GetActorFacingAngle(0, &0.0);


native SetActorHealth(0, 0.0);


native GetActorHealth(0, &0.0);


native SetActorInvulnerable(0);


native IsActorInvulnerable(0);


native IsValidActor(0);


public OnPlayerGiveDamageActor(0, 0, 0.0, 0, 0) {}


public OnActorStreamIn(0, 0) {}


public OnActorStreamOut(0, 0) {}



native HTTP(0, HTTP_METHOD:0, "", "", "");



native CreateObject(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native AttachObjectToVehicle(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native AttachObjectToObject(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native AttachObjectToPlayer(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native SetObjectPos(0, 0.0, 0.0, 0.0);


native GetObjectPos(0, &0.0, &0.0, &0.0);


native SetObjectRot(0, 0.0, 0.0, 0.0);


native GetObjectRot(0, &0.0, &0.0, &0.0);


native GetObjectModel(0);


native SetObjectNoCameraCol(0);


native IsValidObject(0);


native DestroyObject(0);


native MoveObject(0, 0.0, 0.0, 0.0, 0.0);


native StopObject(0);


native IsObjectMoving(0);


native EditObject(0, 0);


native EditPlayerObject(0, 0);


native SelectObject(0);


native CancelEdit(0);


native CreatePlayerObject(0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native AttachPlayerObjectToVehicle(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native SetPlayerObjectPos(0, 0, 0.0, 0.0, 0.0);


native GetPlayerObjectPos(0, 0, &0.0, &0.0, &0.0);


native SetPlayerObjectRot(0, 0, 0.0, 0.0, 0.0);


native GetPlayerObjectRot(0, 0, &0.0, &0.0, &0.0);


native GetPlayerObjectModel(0, 0);


native SetPlayerObjectNoCameraCol(0, 0);


native IsValidPlayerObject(0, 0);


native DestroyPlayerObject(0, 0);


native MovePlayerObject(0, 0, 0.0, 0.0, 0.0, 0.0);


native StopPlayerObject(0, 0);


native IsPlayerObjectMoving(0, 0);


native AttachPlayerObjectToPlayer(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native SetObjectMaterial(0, 0, 0, "", "");


native SetPlayerObjectMaterial(0, 0, 0, 0, "", "");


native SetObjectMaterialText(0, "");


native SetPlayerObjectMaterialText(0, 0, "");


native SetObjectsDefaultCameraCol(bool:0);


public OnPlayerSelectObject(0, SELECT_OBJECT:0, 0, 0, 0.0, 0.0, 0.0) {}


public OnPlayerEditObject(0, 0, 0, EDIT_RESPONSE:0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) {}


public OnPlayerEditAttachedObject(0, EDIT_RESPONSE:0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) {}


public OnObjectMoved(0) {}


public OnPlayerObjectMoved(0, 0) {}


native SetSpawnInfo(0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);


native SpawnPlayer(0);


native SetPlayerPos(0, 0.0, 0.0, 0.0);


native SetPlayerPosFindZ(0, 0.0, 0.0, 0.0);


native GetPlayerPos(0, &0.0, &0.0, &0.0);


native SetPlayerFacingAngle(0, 0.0);


native GetPlayerFacingAngle(0, &0.0);


native IsPlayerInRangeOfPoint(0, 0.0, 0.0, 0.0, 0.0);


native GetPlayerDistanceFromPoint(0, 0.0, 0.0, 0.0);


native IsPlayerStreamedIn(0, 0);


native SetPlayerInterior(0, 0);


native GetPlayerInterior(0);


native SetPlayerHealth(0, 0.0);


native GetPlayerHealth(0, &0.0);


native SetPlayerArmour(0, 0.0);


native GetPlayerArmour(0, &0.0);


native SetPlayerAmmo(0, WEAPON:0, 0);


native GetPlayerAmmo(0);


native WEAPONSTATE:GetPlayerWeaponState(0);


native GetPlayerTargetPlayer(0);


native GetPlayerTargetActor(0);


native SetPlayerTeam(0, 0);


native GetPlayerTeam(0);


native SetPlayerScore(0, 0);


native GetPlayerScore(0);


native GetPlayerDrunkLevel(0);


native SetPlayerDrunkLevel(0, 0);


native SetPlayerColor(0, 0);


native GetPlayerColor(0);


native SetPlayerSkin(0, 0);


native GetPlayerSkin(0);


native GetPlayerCustomSkin(0);


native GivePlayerWeapon(0, WEAPON:0, 0);


native ResetPlayerWeapons(0);


native SetPlayerArmedWeapon(0, WEAPON:0);


native GetPlayerWeaponData(0, 0, &WEAPON:0, &0);


native GivePlayerMoney(0, 0);


native ResetPlayerMoney(0);


native SetPlayerName(0, "");


native GetPlayerMoney(0);


native PLAYER_STATE:GetPlayerState(0);


native GetPlayerIp(0, ip[]);


native GetPlayerPing(0);


native WEAPON:GetPlayerWeapon(0);


native GetPlayerKeys(0, &KEY:0, &KEY:0, &KEY:0);


native GetPlayerName(0, name[]);


native SetPlayerTime(0, 0, 0);


native GetPlayerTime(0, &0, &0);


native TogglePlayerClock(0, bool:0);


native SetPlayerWeather(0, 0);


native ForceClassSelection(0);


native SetPlayerWantedLevel(0, 0);


native GetPlayerWantedLevel(0);


native SetPlayerFightingStyle(0, FIGHT_STYLE:0);


native FIGHT_STYLE:GetPlayerFightingStyle(0);


native SetPlayerVelocity(0, 0.0, 0.0, 0.0);


native GetPlayerVelocity(0, &0.0, &0.0, &0.0);


native PlayCrimeReportForPlayer(0, 0, 0);


native PlayAudioStreamForPlayer(0, "");


native StopAudioStreamForPlayer(0);


native SetPlayerShopName(0, "");


native SetPlayerSkillLevel(0, WEAPONSKILL:0, 0);


native GetPlayerSurfingVehicleID(0);


native GetPlayerSurfingObjectID(0);


native RemoveBuildingForPlayer(0, 0, 0.0, 0.0, 0.0, 0.0);


native GetPlayerLastShotVectors(0, &0.0, &0.0, &0.0, &0.0, &0.0, &0.0);


native SetPlayerAttachedObject(0, 0, 0, 0);


native RemovePlayerAttachedObject(0, 0);


native IsPlayerAttachedObjectSlotUsed(0, 0);


native EditAttachedObject(0, 0);


native PlayerText:CreatePlayerTextDraw(0, 0.0, 0.0, "");


native PlayerTextDrawDestroy(0, PlayerText:0);


native PlayerTextDrawLetterSize(0, PlayerText:0, 0.0, 0.0);


native PlayerTextDrawTextSize(0, PlayerText:0, 0.0, 0.0);


native PlayerTextDrawAlignment(0, PlayerText:0, TEXT_DRAW_ALIGN:0);


native PlayerTextDrawColor(0, PlayerText:0, 0);


native PlayerTextDrawUseBox(0, PlayerText:0, bool:0);


native PlayerTextDrawBoxColor(0, PlayerText:0, 0);


native PlayerTextDrawSetShadow(0, PlayerText:0, 0);


native PlayerTextDrawSetOutline(0, PlayerText:0, 0);


native PlayerTextDrawBackgroundColor(0, PlayerText:0, 0);


native PlayerTextDrawFont(0, PlayerText:0, TEXT_DRAW_FONT:0);


native PlayerTextDrawSetProportional(0, PlayerText:0, bool:0);


native PlayerTextDrawSetSelectable(0, PlayerText:0, bool:0);


native PlayerTextDrawShow(0, PlayerText:0);


native PlayerTextDrawHide(0, PlayerText:0);


native PlayerTextDrawSetString(0, PlayerText:0, "");


native PlayerTextDrawSetPreviewModel(0, PlayerText:0, 0);


native PlayerTextDrawSetPreviewRot(0, PlayerText:0, 0.0, 0.0, 0.0);


native PlayerTextDrawSetPreviewVehCol(0, PlayerText:0, 0, 0);


native SetPVarInt(0, "", 0);


native GetPVarInt(0, "");


native SetPVarString(0, "", "");


native GetPVarString(0, "", output[]);


native SetPVarFloat(0, "", 0.0);


native GetPVarFloat(0, "");


native DeletePVar(0, "");


native GetPVarsUpperIndex(0);


native GetPVarNameAtIndex(0, 0, output[]);


native PLAYER_VARTYPE:GetPVarType(0, "");


native SetPlayerChatBubble(0, "", 0, 0.0, 0);


native PutPlayerInVehicle(0, 0, 0);


native GetPlayerVehicleID(0);


native GetPlayerVehicleSeat(0);


native RemovePlayerFromVehicle(0);


native TogglePlayerControllable(0, bool:0);


native PlayerPlaySound(0, 0, 0.0, 0.0, 0.0);


native ApplyAnimation(0, "", "", 0.0, bool:0, bool:0, bool:0, bool:0, 0);


native ClearAnimations(0);


native GetPlayerAnimationIndex(0);


native GetAnimationName(0, animationLibrary[], animationName[]);


native SPECIAL_ACTION:GetPlayerSpecialAction(0);


native SetPlayerSpecialAction(0, SPECIAL_ACTION:0);


native DisableRemoteVehicleCollisions(0, bool:0);


native SetPlayerCheckpoint(0, 0.0, 0.0, 0.0, 0.0);


native DisablePlayerCheckpoint(0);


native SetPlayerRaceCheckpoint(0, CP_TYPE:0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);


native DisablePlayerRaceCheckpoint(0);


native SetPlayerWorldBounds(0, 0.0, 0.0, 0.0, 0.0);


native SetPlayerMarkerForPlayer(0, 0, 0);


native ShowPlayerNameTagForPlayer(0, 0, bool:0);


native SetPlayerMapIcon(0, 0, 0.0, 0.0, 0.0, 0, 0);


native RemovePlayerMapIcon(0, 0);


native SetPlayerCameraPos(0, 0.0, 0.0, 0.0);


native SetPlayerCameraLookAt(0, 0.0, 0.0, 0.0);


native SetCameraBehindPlayer(0);


native GetPlayerCameraPos(0, &0.0, &0.0, &0.0);


native GetPlayerCameraFrontVector(0, &0.0, &0.0, &0.0);


native CAM_MODE:GetPlayerCameraMode(0);


native EnablePlayerCameraTarget(0, bool:0);


native GetPlayerCameraTargetObject(0);


native GetPlayerCameraTargetVehicle(0);


native GetPlayerCameraTargetPlayer(0);


native GetPlayerCameraTargetActor(0);


native GetPlayerCameraAspectRatio(0);


native GetPlayerCameraZoom(0);


native AttachCameraToObject(0, 0);


native AttachCameraToPlayerObject(0, 0);


native InterpolateCameraPos(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0);


native InterpolateCameraLookAt(0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0);


native IsPlayerConnected(0);


native IsPlayerInVehicle(0, 0);


native IsPlayerInAnyVehicle(0);


native IsPlayerInCheckpoint(0);


native IsPlayerInRaceCheckpoint(0);


native SetPlayerVirtualWorld(0, 0);


native GetPlayerVirtualWorld(0);


native EnableStuntBonusForPlayer(0, bool:0);


native EnableStuntBonusForAll(bool:0);


native TogglePlayerSpectating(0, bool:0);


native PlayerSpectatePlayer(0, 0);


native PlayerSpectateVehicle(0, 0);


native StartRecordingPlayerData(0, PLAYER_RECORDING_TYPE:0, "");


native StopRecordingPlayerData(0);


native SelectTextDraw(0, 0);


native CancelSelectTextDraw(0);


native CreateExplosionForPlayer(0, 0.0, 0.0, 0.0, 0, 0.0);


native SendClientCheck(0, 0, 0, 0, 0);


native PlayerText3D:CreatePlayer3DTextLabel(0, "", 0, 0.0, 0.0, 0.0, 0.0);


native DeletePlayer3DTextLabel(0, PlayerText3D:0);


native UpdatePlayer3DTextLabelText(0, PlayerText3D:0, 0, "");


public OnPlayerClickPlayerTextDraw(0, PlayerText:0) {}


public OnPlayerStreamIn(0, 0) {}


public OnPlayerStreamOut(0, 0) {}


public OnPlayerTakeDamage(0, 0, 0.0, 0, 0) {}


public OnPlayerGiveDamage(0, 0, 0.0, 0, 0) {}


public OnPlayerClickPlayer(0, 0, CLICK_SOURCE:0) {}


public OnPlayerDeath(0, 0, 0) {}



native format(output[], "");


native SendClientMessage(0, 0, "");


native SendClientMessageToAll(0, "");


native SendPlayerMessageToPlayer(0, 0, "");


native SendPlayerMessageToAll(0, "");


native SendDeathMessage(0, 0, 0);


native SendDeathMessageToPlayer(0, 0, 0, 0);


native GameTextForAll("", 0, 0);


native GameTextForPlayer(0, "", 0, 0);


native SetTimer("", 0, bool:0);


native SetTimerEx("", 0, bool:0);


native KillTimer(0);


native GetTickCount();


native GetMaxPlayers();


native CallRemoteFunction("");


native CallLocalFunction("");


native VectorSize(0.0, 0.0, 0.0);


native asin(0.0);


native acos(0.0);


native atan(0.0);


native atan2(0.0, 0.0);


native GetPlayerPoolSize();


native GetVehiclePoolSize();


native GetActorPoolSize();


native SetSVarInt("", 0);


native GetSVarInt("");


native SetSVarString("", "");


native GetSVarString("", output[]);


native SetSVarFloat("", 0.0);


native GetSVarFloat("");


native DeleteSVar("");


native GetSVarsUpperIndex();


native GetSVarNameAtIndex(0, output[]);


native SERVER_VARTYPE:GetSVarType("");


native SetGameModeText("");


native SetTeamCount(0);


native AddPlayerClass(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);


native AddPlayerClassEx(0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);


native AddStaticVehicle(0, 0.0, 0.0, 0.0, 0.0, 0, 0);


native AddStaticVehicleEx(0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0);


native AddStaticPickup(0, 0, 0.0, 0.0, 0.0);


native CreatePickup(0, 0, 0.0, 0.0, 0.0);


native DestroyPickup(0);


native ShowNameTags(bool:0);


native ShowPlayerMarkers(PLAYER_MARKERS_MODE:0);


native GameModeExit();


native SetWorldTime(0);


native GetWeaponName(WEAPON:0, weapon[]);





native EnableVehicleFriendlyFire();





native SetWeather(0);


native GetGravity();


native SetGravity(0.0);








native CreateExplosion(0.0, 0.0, 0.0, 0, 0.0);


native EnableZoneNames(bool:0);


native UsePlayerPedAnims();


native DisableInteriorEnterExits();


native SetNameTagDrawDistance(0.0);


native DisableNameTagLOS();


native LimitGlobalChatRadius(0.0);


native LimitPlayerMarkerRadius(0.0);


native ConnectNPC("", "");


native IsPlayerNPC(0);


native AddCharModel(0, 0, "", "");


native AddSimpleModel(0, 0, 0, "", "");


native AddSimpleModelTimed(0, 0, 0, "", "", 0, 0);


native FindModelFileNameFromCRC(0, output[]);


native FindTextureFileNameFromCRC(0, output[]);


native RedirectDownload(0, "");


native IsPlayerAdmin(0);


native Kick(0);


native Ban(0);


native BanEx(0, "");


native SendRconCommand("");


native GetPlayerNetworkStats(0, output[]);


native GetNetworkStats(output[]);


native GetPlayerVersion(0, version[]);


native BlockIpAddress("", 0);


native UnBlockIpAddress("");


native GetConsoleVarAsString("", buffer[]);


native GetConsoleVarAsInt("");


native GetConsoleVarAsBool("");


native GetServerTickRate();


native NetStats_GetConnectedTime(0);


native NetStats_MessagesReceived(0);


native NetStats_BytesReceived(0);


native NetStats_MessagesSent(0);


native NetStats_BytesSent(0);


native NetStats_MessagesRecvPerSecond(0);


native NetStats_PacketLossPercent(0);


native NetStats_ConnectionStatus(0);


native NetStats_GetIpPort(0, output[]);


native Menu:CreateMenu("", 0, 0.0, 0.0, 0.0);


native DestroyMenu(Menu:0);


native AddMenuItem(Menu:0, 0, "");


native SetMenuColumnHeader(Menu:0, 0, "");


native ShowMenuForPlayer(Menu:0, 0);


native HideMenuForPlayer(Menu:0, 0);


native IsValidMenu(Menu:0);


native DisableMenu(Menu:0);


native DisableMenuRow(Menu:0, 0);


native Menu:GetPlayerMenu(0);


native Text:TextDrawCreate(0.0, 0.0, "");


native TextDrawDestroy(Text:0);


native TextDrawLetterSize(Text:0, 0.0, 0.0);


native TextDrawTextSize(Text:0, 0.0, 0.0);


native TextDrawAlignment(Text:0, TEXT_DRAW_ALIGN:0);


native TextDrawColor(Text:0, 0);


native TextDrawUseBox(Text:0, bool:0);


native TextDrawBoxColor(Text:0, 0);


native TextDrawSetShadow(Text:0, 0);


native TextDrawSetOutline(Text:0, 0);


native TextDrawBackgroundColor(Text:0, 0);


native TextDrawFont(Text:0, TEXT_DRAW_FONT:0);


native TextDrawSetProportional(Text:0, bool:0);


native TextDrawSetSelectable(Text:0, bool:0);


native TextDrawShowForPlayer(0, Text:0);


native TextDrawHideForPlayer(0, Text:0);


native TextDrawShowForAll(Text:0);


native TextDrawHideForAll(Text:0);


native TextDrawSetString(Text:0, "");


native TextDrawSetPreviewModel(Text:0, 0);


native TextDrawSetPreviewRot(Text:0, 0.0, 0.0, 0.0);


native TextDrawSetPreviewVehCol(Text:0, 0, 0);


native GangZoneCreate(0.0, 0.0, 0.0, 0.0);


native GangZoneDestroy(0);


native GangZoneShowForPlayer(0, 0, 0);


native GangZoneShowForAll(0, 0);


native GangZoneHideForPlayer(0, 0);


native GangZoneHideForAll(0);


native GangZoneFlashForPlayer(0, 0, 0);


native GangZoneFlashForAll(0, 0);


native GangZoneStopFlashForPlayer(0, 0);


native GangZoneStopFlashForAll(0);


native Text3D:Create3DTextLabel("", 0, 0.0, 0.0, 0.0, 0.0, 0);


native Delete3DTextLabel(Text3D:0);


native Attach3DTextLabelToPlayer(Text3D:0, 0, 0.0, 0.0, 0.0);


native Attach3DTextLabelToVehicle(Text3D:0, 0, 0.0, 0.0, 0.0);


native Update3DTextLabelText(Text3D:0, 0, "");


native ShowPlayerDialog(0, 0, DIALOG_STYLE:0, "", "", "", "");





native GPCI(0, serial[]);


public OnGameModeInit() {}


public OnGameModeExit() {}


public OnFilterScriptInit() {}


public OnFilterScriptExit() {}


public OnPlayerConnect(0) {}


public OnPlayerDisconnect(0, 0) {}


public OnPlayerSpawn(0) {}


public OnPlayerText(0, text[]) {}


public OnPlayerCommandText(0, cmdtext[]) {}


public OnPlayerRequestClass(0, 0) {}


public OnPlayerStateChange(0, PLAYER_STATE:0, PLAYER_STATE:0) {}


public OnPlayerEnterCheckpoint(0) {}


public OnPlayerLeaveCheckpoint(0) {}


public OnPlayerEnterRaceCheckpoint(0) {}


public OnPlayerLeaveRaceCheckpoint(0) {}


public OnRconCommand(cmd[]) {}


public OnPlayerRequestSpawn(0) {}


public OnPlayerPickUpPickup(0, 0) {}


public OnPlayerSelectedMenuRow(0, 0) {}


public OnPlayerExitedMenu(0) {}


public OnPlayerInteriorChange(0, 0, 0) {}


public OnPlayerKeyStateChange(0, KEY:0, KEY:0) {}


public OnRconLoginAttempt(ip[], password[], 0) {}


public OnPlayerUpdate(0) {}


public OnDialogResponse(0, 0, 0, 0, inputtext[]) {}


public OnPlayerClickMap(0, 0.0, 0.0, 0.0) {}


public OnPlayerClickTextDraw(0, Text:0) {}


public OnIncomingConnection(0, ip_address[], 0) {}


public OnPlayerFinishedDownloading(0, 0) {}
public OnPlayerRequestDownload(0, 0, 0) {}


public OnPlayerWeaponShot(0, 0, BULLET_HIT_TYPE:0, 0, 0.0, 0.0, 0.0) {}


public OnClientCheckResponse(0, 0, 0, 0) {}


public OnScriptCash(0, 0, 0) {}

