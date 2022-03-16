

// Vehicle


native CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:rotation, colour1, colour2, respawnDelay);


native DestroyVehicle(vehicleid);


native bool:IsVehicleStreamedIn(vehicleid, playerid);


native GetVehiclePos(vehicleid, &Float:x, &Float:y, &Float:z);


native SetVehiclePos(vehicleid, Float:x, Float:y, Float:z);


native GetVehicleZAngle(vehicleid, &Float:angle);


native GetVehicleRotationQuat(vehicleid, &Float:w, &Float:x, &Float:y, &Float:z);


native Float:GetVehicleDistanceFromPoint(vehicleid, Float:x, Float:y, Float:z);


native SetVehicleZAngle(vehicleid, Float:angle);


native SetVehicleParamsForPlayer(vehicleid, playerid, objective, doors);


native ManualVehicleEngineAndLights();


native SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS:engine, VEHICLE_PARAMS:lights, VEHICLE_PARAMS:alarm, VEHICLE_PARAMS:doors, VEHICLE_PARAMS:bonnet, VEHICLE_PARAMS:boot, VEHICLE_PARAMS:objective);


native GetVehicleParamsEx(vehicleid, &VEHICLE_PARAMS:engine, &VEHICLE_PARAMS:lights, &VEHICLE_PARAMS:alarm, &VEHICLE_PARAMS:doors, &VEHICLE_PARAMS:bonnet, &VEHICLE_PARAMS:boot, &VEHICLE_PARAMS:objective);


native GetVehicleParamsSirenState(vehicleid);


native SetVehicleParamsCarDoors(vehicleid, frontLeft, frontRight, rearLeft, rearRight);


native GetVehicleParamsCarDoors(vehicleid, &frontLeft, &frontRight, &rearLeft, &rearRight);


native SetVehicleParamsCarWindows(vehicleid, frontLeft, frontRight, rearLeft, rearRight);


native GetVehicleParamsCarWindows(vehicleid, &frontLeft, &frontRight, &rearLeft, &rearRight);


native SetVehicleToRespawn(vehicleid);


native LinkVehicleToInterior(vehicleid, interiorid);


native AddVehicleComponent(vehicleid, componentid);


native RemoveVehicleComponent(vehicleid, componentid);


native ChangeVehicleColor(vehicleid, colour1, colour2);


native ChangeVehiclePaintjob(vehicleid, paintjobid);


native SetVehicleHealth(vehicleid, Float:health);


native GetVehicleHealth(vehicleid, &Float:health);


native AttachTrailerToVehicle(trailerid, vehicleid);


native DetachTrailerFromVehicle(vehicleid);


native bool:IsTrailerAttachedToVehicle(vehicleid);


native GetVehicleTrailer(vehicleid);


native SetVehicleNumberPlate(vehicleid, "");


native GetVehicleModel(vehicleid);


native GetVehicleComponentInSlot(vehicleid, CARMODTYPE:slot); // There is 1 slot for each CARMODTYPE_*


native CARMODTYPE:GetVehicleComponentType(component); // Find CARMODTYPE_* for component ID


native RepairVehicle(vehicleid); // Repairs the damage model and resets the health


native GetVehicleVelocity(vehicleid, &Float:x, &Float:y, &Float:z);


native SetVehicleVelocity(vehicleid, Float:x, Float:y, Float:z);


native SetVehicleAngularVelocity(vehicleid, Float:x, Float:y, Float:z);


native GetVehicleDamageStatus(vehicleid, &panels, &doors, &lights, &tires);


native UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires);


native GetVehicleModelInfo(vehiclemodel, VEHICLE_MODEL_INFO:infotype, &Float:x, &Float:y, &Float:z);

// Virtual Worlds


native SetVehicleVirtualWorld(vehicleid, virtualWorld);


native GetVehicleVirtualWorld(vehicleid);


native bool:IsValidVehicle(vehicleid);


public OnTrailerUpdate(playerid, vehicleid) {}


public OnVehicleSirenStateChange(playerid, vehicleid, newstate) {}


public OnVehicleStreamIn(vehicleid, forplayerid) {}


public OnVehicleStreamOut(vehicleid, forplayerid) {}


public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {}


public OnPlayerExitVehicle(playerid, vehicleid) {}


public OnVehicleSpawn(vehicleid) {}


public OnVehicleDeath(vehicleid, killerid) {}


public OnVehicleMod(playerid, vehicleid, componentid) {}


public OnEnterExitModShop(playerid, enterexit, interiorid) {}


public OnVehiclePaintjob(playerid, vehicleid, paintjobid) {}


public OnVehicleRespray(playerid, vehicleid, color1, color2) {}


public OnVehicleDamageStatusUpdate(vehicleid, playerid) {}


public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z) {}



native DB:DB_Open("");





native bool:DB_Close(DB:db);





native DBResult:DB_Query(DB:db, "");





native bool:DB_FreeResult(DBResult:result);





native DB_NumRows(DBResult:result);





native bool:DB_NextRow(DBResult:result);





native DB_NumFields(DBResult:result);





native bool:DB_FieldName(DBResult:result, field, output[]);





native bool:DB_GetField(DBResult:result, field, output[]);





native DB_GetFieldInt(DBResult:result);





native Float:DB_GetFieldFloat(DBResult:result);





native bool:DB_GetFieldAssoc(DBResult:result, "", output[]);





native DB_GetFieldAssocInt(DBResult:result, "");





native Float:DB_GetFieldAssocFloat(DBResult:result, "");





native DB_GetMemHandle(DB:db);





native DB_GetResultMemHandle(DBResult:result);





native DB_DebugOpenFiles();





native DB_DebugOpenResults();






native CreateActor(modelid, Float:x, Float:y, Float:z, Float:angle);


native bool:DestroyActor(actorid);


native bool:IsActorStreamedIn(actorid, playerid);


native bool:SetActorVirtualWorld(actorid, virtualWorld);


native GetActorVirtualWorld(actorid);


native bool:ApplyActorAnimation(actorid, "", "", Float:delta, bool:loop, bool:lockX, bool:lockY, bool:freeze, time);


native bool:ClearActorAnimations(actorid);


native bool:SetActorPos(actorid, Float:x, Float:y, Float:z);


native bool:GetActorPos(actorid, &Float:x, &Float:y, &Float:z);


native bool:SetActorFacingAngle(actorid, Float:angle);


native bool:GetActorFacingAngle(actorid, &Float:angle);


native bool:SetActorHealth(actorid, Float:health);


native bool:GetActorHealth(actorid, &Float:health);


native bool:SetActorInvulnerable(actorid);


native bool:IsActorInvulnerable(actorid);


native bool:IsValidActor(actorid);


public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float:amount, weaponid, bodypart) {}


public OnActorStreamIn(actorid, forplayerid) {}


public OnActorStreamOut(actorid, forplayerid) {}



native HTTP(index, HTTP_METHOD:method, "", "", "");



native CreateObject(modelid, Float:x, Float:y, Float:z, Float:rotX, Float:rotY, Float:rotZ);


native AttachObjectToVehicle(objectid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ, Float:rotX, Float:rotY, Float:rotZ);


native AttachObjectToObject(objectid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ, Float:rotX, Float:rotY, Float:rotZ);


native AttachObjectToPlayer(objectid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ, Float:rotX, Float:rotY, Float:rotZ);


native SetObjectPos(objectid, Float:x, Float:y, Float:z);


native GetObjectPos(objectid, &Float:x, &Float:y, &Float:z);


native SetObjectRot(objectid, Float:rotX, Float:rotY, Float:rotZ);


native GetObjectRot(objectid, &Float:rotX, &Float:rotY, &Float:rotZ);


native GetObjectModel(objectid);


native SetObjectNoCameraCol(objectid);


native bool:IsValidObject(objectid);


native DestroyObject(objectid);


native MoveObject(objectid, Float:x, Float:y, Float:z, Float:speed);


native StopObject(objectid);


native bool:IsObjectMoving(objectid);


native EditObject(playerid, objectid);


native EditPlayerObject(playerid, objectid);


native SelectObject(playerid);


native CancelEdit(playerid);


native CreatePlayerObject(playerid, modelid, Float:x, Float:y, Float:z, Float:rotX, Float:rotY, Float:rotZ);


native AttachPlayerObjectToVehicle(playerid, objectid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ, Float:rotX, Float:rotY, Float:rotZ);


native SetPlayerObjectPos(playerid, objectid, Float:x, Float:y, Float:z);


native GetPlayerObjectPos(playerid, objectid, &Float:x, &Float:y, &Float:z);


native SetPlayerObjectRot(playerid, objectid, Float:rotX, Float:rotY, Float:rotZ);


native GetPlayerObjectRot(playerid, objectid, &Float:rotX, &Float:rotY, &Float:rotZ);


native GetPlayerObjectModel(playerid, objectid);


native SetPlayerObjectNoCameraCol(playerid, objectid);


native bool:IsValidPlayerObject(playerid, objectid);


native DestroyPlayerObject(playerid, objectid);


native MovePlayerObject(playerid, objectid, Float:x, Float:y, Float:z, Float:speed);


native StopPlayerObject(playerid, objectid);


native bool:IsPlayerObjectMoving(playerid, objectid);


native AttachPlayerObjectToPlayer(playerid, objectid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ, Float:rotX, Float:rotY, Float:rotZ);


native SetObjectMaterial(objectid, materialIndex, modelid, "", "");


native SetPlayerObjectMaterial(playerid, objectid, materialIndex, modelid, "", "");


native SetObjectMaterialText(objectid, "");


native SetPlayerObjectMaterialText(playerid, objectid, "");


native SetObjectsDefaultCameraCol(bool:disable);


public OnPlayerSelectObject(playerid, SELECT_OBJECT:type, objectid, modelid, Float:fX, Float:fY, Float:fZ) {}


public OnPlayerEditObject(playerid, playerobject, objectid, EDIT_RESPONSE:response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ) {}


public OnPlayerEditAttachedObject(playerid, EDIT_RESPONSE:response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ) {}


public OnObjectMoved(objectid) {}


public OnPlayerObjectMoved(playerid, objectid) {}


// Player


native SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:rotation, weapon1, ammo1, weapon2, ammo2, weapon3, ammo3);


native SpawnPlayer(playerid);

// Player info


native SetPlayerPos(playerid, Float:x, Float:y, Float:z);


native SetPlayerPosFindZ(playerid, Float:x, Float:y, Float:z);


native GetPlayerPos(playerid, &Float:x, &Float:y, &Float:z);


native SetPlayerFacingAngle(playerid, Float:ang);


native GetPlayerFacingAngle(playerid, &Float:ang);


native bool:IsPlayerInRangeOfPoint(playerid, Float:range, Float:x, Float:y, Float:z);


native Float:GetPlayerDistanceFromPoint(playerid, Float:x, Float:y, Float:z);


native bool:IsPlayerStreamedIn(targetid, playerid);


native SetPlayerInterior(playerid, interiorid);


native GetPlayerInterior(playerid);


native SetPlayerHealth(playerid, Float:health);


native GetPlayerHealth(playerid, &Float:health);


native SetPlayerArmour(playerid, Float:armour);


native GetPlayerArmour(playerid, &Float:armour);


native SetPlayerAmmo(playerid, WEAPON:weaponid, ammo);


native GetPlayerAmmo(playerid);


native WEAPONSTATE:GetPlayerWeaponState(playerid);


native GetPlayerTargetPlayer(playerid);


native GetPlayerTargetActor(playerid);


native SetPlayerTeam(playerid, teamid);


native GetPlayerTeam(playerid);


native SetPlayerScore(playerid, score);


native GetPlayerScore(playerid);


native GetPlayerDrunkLevel(playerid);


native SetPlayerDrunkLevel(playerid, level);


native SetPlayerColor(playerid, colour);


native GetPlayerColor(playerid);


native SetPlayerSkin(playerid, skinid);


native GetPlayerSkin(playerid);


native GetPlayerCustomSkin(playerid);


native GivePlayerWeapon(playerid, WEAPON:weaponid, ammo);


native ResetPlayerWeapons(playerid);


native SetPlayerArmedWeapon(playerid, WEAPON:weaponid);


native GetPlayerWeaponData(playerid, slot, &WEAPON:weapons, &ammo);


native GivePlayerMoney(playerid, money);


native ResetPlayerMoney(playerid);


native SetPlayerName(playerid, "");


native GetPlayerMoney(playerid);


native PLAYER_STATE:GetPlayerState(playerid);


native GetPlayerIp(playerid, ip[]);


native GetPlayerPing(playerid);


native WEAPON:GetPlayerWeapon(playerid);


native GetPlayerKeys(playerid, &KEY:keys, &KEY:updown, &KEY:leftright);


native GetPlayerName(playerid, name[]);


native SetPlayerTime(playerid, hour, minute);


native GetPlayerTime(playerid, &hour, &minute);


native TogglePlayerClock(playerid, bool:toggle);


native SetPlayerWeather(playerid, weather);


native ForceClassSelection(playerid);


native SetPlayerWantedLevel(playerid, level);


native GetPlayerWantedLevel(playerid);


native SetPlayerFightingStyle(playerid, FIGHT_STYLE:style);


native FIGHT_STYLE:GetPlayerFightingStyle(playerid);


native SetPlayerVelocity(playerid, Float:x, Float:y, Float:z);


native GetPlayerVelocity(playerid, &Float:x, &Float:y, &Float:z);


native PlayCrimeReportForPlayer(playerid, suspectid, crime);


native PlayAudioStreamForPlayer(playerid, "");


native StopAudioStreamForPlayer(playerid);


native SetPlayerShopName(playerid, "");


native SetPlayerSkillLevel(playerid, WEAPONSKILL:skill, level);


native GetPlayerSurfingVehicleID(playerid);


native GetPlayerSurfingObjectID(playerid);


native RemoveBuildingForPlayer(playerid, modelid, Float:centerX, Float:centerY, Float:centerZ, Float:radius);


native GetPlayerLastShotVectors(playerid, &Float:originX, &Float:originY, &Float:originZ, &Float:hitPosX, &Float:hitPosY, &Float:hitPosZ);


native SetPlayerAttachedObject(playerid, index, modelid, bone);


native RemovePlayerAttachedObject(playerid, index);


native bool:IsPlayerAttachedObjectSlotUsed(playerid, index);


native EditAttachedObject(playerid, index);

// Per-player TextDraws


native PlayerText:CreatePlayerTextDraw(playerid, Float:x, Float:y, "");


native PlayerTextDrawDestroy(playerid, PlayerText:text);


native PlayerTextDrawLetterSize(playerid, PlayerText:text, Float:width, Float:height);


native PlayerTextDrawTextSize(playerid, PlayerText:text, Float:width, Float:height);


native PlayerTextDrawAlignment(playerid, PlayerText:text, TEXT_DRAW_ALIGN:alignment);


native PlayerTextDrawColor(playerid, PlayerText:text, colour);


native PlayerTextDrawUseBox(playerid, PlayerText:text, bool:use);


native PlayerTextDrawBoxColor(playerid, PlayerText:text, colour);


native PlayerTextDrawSetShadow(playerid, PlayerText:text, size);


native PlayerTextDrawSetOutline(playerid, PlayerText:text, size);


native PlayerTextDrawBackgroundColor(playerid, PlayerText:text, colour);


native PlayerTextDrawFont(playerid, PlayerText:text, TEXT_DRAW_FONT:font);


native PlayerTextDrawSetProportional(playerid, PlayerText:text, bool:set);


native PlayerTextDrawSetSelectable(playerid, PlayerText:text, bool:set);


native PlayerTextDrawShow(playerid, PlayerText:text);


native PlayerTextDrawHide(playerid, PlayerText:text);


native PlayerTextDrawSetString(playerid, PlayerText:text, "");


native PlayerTextDrawSetPreviewModel(playerid, PlayerText:text, modelIndex);


native PlayerTextDrawSetPreviewRot(playerid, PlayerText:text, Float:rotX, Float:rotY, Float:rotZ);


native PlayerTextDrawSetPreviewVehCol(playerid, PlayerText:text, colour1, colour2);

// Per-player variable system (PVars)


native SetPVarInt(playerid, "", value);


native GetPVarInt(playerid, "");


native SetPVarString(playerid, "", "");


native GetPVarString(playerid, "", output[]);


native SetPVarFloat(playerid, "", Float:value);


native Float:GetPVarFloat(playerid, "");


native DeletePVar(playerid, "");


native GetPVarsUpperIndex(playerid);


native GetPVarNameAtIndex(playerid, index, output[]);


native PLAYER_VARTYPE:GetPVarType(playerid, "");


native SetPlayerChatBubble(playerid, "", colour, Float:drawDistance, expireTime);

// Player control


native PutPlayerInVehicle(playerid, vehicleid, seatid);


native GetPlayerVehicleID(playerid);


native GetPlayerVehicleSeat(playerid);


native RemovePlayerFromVehicle(playerid);


native TogglePlayerControllable(playerid, bool:toggle);


native PlayerPlaySound(playerid, soundid, Float:x, Float:y, Float:z);


native ApplyAnimation(playerid, "", "", Float:delta, bool:loop, bool:lockX, bool:lockY, bool:freeze, time);


native ClearAnimations(playerid);


native GetPlayerAnimationIndex(playerid); // return the index of any running applied animations (0 if none are running)


native GetAnimationName(index, animationLibrary[], animationName[]); // get the animation lib/name for the index


native SPECIAL_ACTION:GetPlayerSpecialAction(playerid);


native SetPlayerSpecialAction(playerid, SPECIAL_ACTION:actionid);


native DisableRemoteVehicleCollisions(playerid, bool:disable);

// Player world/map related


native SetPlayerCheckpoint(playerid, Float:x, Float:y, Float:z, Float:size);


native DisablePlayerCheckpoint(playerid);


native SetPlayerRaceCheckpoint(playerid, CP_TYPE:type, Float:centerX, Float:centerY, Float:centerZ, Float:nextX, Float:nextY, Float:nextZ, Float:size);


native DisablePlayerRaceCheckpoint(playerid);


native SetPlayerWorldBounds(playerid, Float:maxX, Float:minX, Float:maxY, Float:minY);


native SetPlayerMarkerForPlayer(playerid, targetid, colour);


native ShowPlayerNameTagForPlayer(playerid, targetid, bool:show);


native SetPlayerMapIcon(playerid, iconid, Float:x, Float:y, Float:z, markerType, colour);


native RemovePlayerMapIcon(playerid, iconid);




// Player camera


native SetPlayerCameraPos(playerid, Float:x, Float:y, Float:z);


native SetPlayerCameraLookAt(playerid, Float:x, Float:y, Float:z);


native SetCameraBehindPlayer(playerid);


native GetPlayerCameraPos(playerid, &Float:x, &Float:y, &Float:z);


native GetPlayerCameraFrontVector(playerid, &Float:x, &Float:y, &Float:z);


native CAM_MODE:GetPlayerCameraMode(playerid);


native EnablePlayerCameraTarget(playerid, bool:enable);


native GetPlayerCameraTargetObject(playerid);


native GetPlayerCameraTargetVehicle(playerid);


native GetPlayerCameraTargetPlayer(playerid);


native GetPlayerCameraTargetActor(playerid);


native Float:GetPlayerCameraAspectRatio(playerid);


native Float:GetPlayerCameraZoom(playerid);


native AttachCameraToObject(playerid, objectid);


native AttachCameraToPlayerObject(playerid, objectid);


native InterpolateCameraPos(playerid, Float:fromX, Float:fromY, Float:fromZ, Float:toX, Float:toY, Float:toZ, time);


native InterpolateCameraLookAt(playerid, Float:fromX, Float:fromY, Float:fromZ, Float:toX, Float:toY, Float:toZ, time);

// Player conditionals


native bool:IsPlayerConnected(playerid);


native bool:IsPlayerInVehicle(playerid, vehicleid);


native bool:IsPlayerInAnyVehicle(playerid);


native bool:IsPlayerInCheckpoint(playerid);


native bool:IsPlayerInRaceCheckpoint(playerid);

// Virtual Worlds


native SetPlayerVirtualWorld(playerid, virtualWorld);


native GetPlayerVirtualWorld(playerid);

// Insane Stunts


native EnableStuntBonusForPlayer(playerid, bool:enable);


native EnableStuntBonusForAll(bool:enable);


native TogglePlayerSpectating(playerid, bool:toggle);


native PlayerSpectatePlayer(playerid, targetid);


native PlayerSpectateVehicle(playerid, targetid);


native StartRecordingPlayerData(playerid, PLAYER_RECORDING_TYPE:recordType, "");


native StopRecordingPlayerData(playerid);


native SelectTextDraw(playerid, hoverColour); // enables the mouse so the player can select a textdraw


native CancelSelectTextDraw(playerid);	// cancel textdraw selection with the mouse

// Explosion


native CreateExplosionForPlayer(playerid, Float:x, Float:y, Float:z, type, Float:radius);


native SendClientCheck(playerid, type, memoryAddress, memoryOffset, byteCount);


native PlayerText3D:CreatePlayer3DTextLabel(playerid, "", colour, Float:x, Float:y, Float:z, Float:drawDistance);


native DeletePlayer3DTextLabel(playerid, PlayerText3D:textid);


native UpdatePlayer3DTextLabelText(playerid, PlayerText3D:textid, colour, "");


public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid) {}


public OnPlayerStreamIn(playerid, forplayerid) {}


public OnPlayerStreamOut(playerid, forplayerid) {}


public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {}


public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart) {}


public OnPlayerClickPlayer(playerid, clickedplayerid, CLICK_SOURCE:source) {}


public OnPlayerDeath(playerid, killerid, reason) {}



native format(output[], "");


native SendClientMessage(playerid, colour, "");


native SendClientMessageToAll(colour, "");


native SendPlayerMessageToPlayer(playerid, senderid, "");


native SendPlayerMessageToAll(senderid, "");


native SendDeathMessage(killer, killee, weapon);


native SendDeathMessageToPlayer(playerid, killer, killee, weapon);


native GameTextForAll("", time, style);


native GameTextForPlayer(playerid, "", time, style);


native SetTimer("", interval, bool:repeating);


native SetTimerEx("", interval, bool:repeating);


native KillTimer(timerid);


native GetTickCount();


native GetMaxPlayers();


native CallRemoteFunction("");


native CallLocalFunction("");


native Float:VectorSize(Float:x, Float:y, Float:z);


native Float:asin(Float:value);


native Float:acos(Float:value);


native Float:atan(Float:value);


native Float:atan2(Float:y, Float:x);


native GetPlayerPoolSize();


native GetVehiclePoolSize();


native GetActorPoolSize();

// Hash




// Server wide persistent variable system (SVars)


native SetSVarInt("", value);


native GetSVarInt("");


native SetSVarString("", "");


native GetSVarString("", output[]);


native SetSVarFloat("", Float:value);


native Float:GetSVarFloat("");


native DeleteSVar("");


native GetSVarsUpperIndex();


native GetSVarNameAtIndex(index, output[]);


native SERVER_VARTYPE:GetSVarType("");

// Game


native SetGameModeText("");


native SetTeamCount(count);


native AddPlayerClass(modelid, Float:spawnX, Float:spawnY, Float:spawnZ, Float:angle, weapon1, ammo1, weapon2, ammo2, weapon3, ammo3);


native AddPlayerClassEx(teamid, modelid, Float:spawnX, Float:spawnY, Float:spawnZ, Float:angle, weapon1, ammo1, weapon2, ammo2, weapon3, ammo3);


native AddStaticVehicle(modelid, Float:spawnX, Float:spawnY, Float:spawnZ, Float:angle, colour1, colour2);


native AddStaticVehicleEx(modelid, Float:spawnX, Float:spawnY, Float:spawnZ, Float:angle, colour1, colour2, respawnDelay);


native AddStaticPickup(model, type, Float:x, Float:y, Float:z);


native CreatePickup(model, type, Float:x, Float:y, Float:z);


native DestroyPickup(pickup);


native ShowNameTags(bool:show);


native ShowPlayerMarkers(PLAYER_MARKERS_MODE:mode);


native GameModeExit();


native SetWorldTime(hour);


native GetWeaponName(WEAPON:weaponid, weapon[]);





native EnableVehicleFriendlyFire();





native SetWeather(weatherid);


native Float:GetGravity();


native SetGravity(Float:gravity);








native CreateExplosion(Float:x, Float:y, Float:z, type, Float:radius);


native EnableZoneNames(bool:enable);


native UsePlayerPedAnims(); // Will cause the players to use CJ running/walking animations


native DisableInteriorEnterExits();  // will disable all interior enter/exits in the game.


native SetNameTagDrawDistance(Float:distance); // Distance at which nametags will start rendering on the client.


native DisableNameTagLOS(); // Disables the nametag Line-Of-Sight checking


native LimitGlobalChatRadius(Float:chatRadius);


native LimitPlayerMarkerRadius(Float:markerRadius);

// Npc


native ConnectNPC("", "");


native bool:IsPlayerNPC(playerid);


native AddCharModel(baseid, newid, "", "");


native AddSimpleModel(virtualWorld, baseid, newid, "", "");


native AddSimpleModelTimed(virtualWorld, baseid, newid, "", "", timeOn, timeOff);


native FindModelFileNameFromCRC(crc, output[]);


native FindTextureFileNameFromCRC(crc, output[]);


native RedirectDownload(playerid, "");

// Admin


native bool:IsPlayerAdmin(playerid);


native Kick(playerid);


native Ban(playerid);


native BanEx(playerid, "");


native SendRconCommand("");


native GetPlayerNetworkStats(playerid, output[]);


native GetNetworkStats(output[]);


native GetPlayerVersion(playerid, version[]); // Returns the SA-MP client revision as reported by the player


native BlockIpAddress("", timeMS);


native UnBlockIpAddress("");








// These are the same 3 functions as above although they avoid the name ambiguity/conflict with the SVar system.


native GetConsoleVarAsString("", buffer[]);


native GetConsoleVarAsInt("");


native bool:GetConsoleVarAsBool("");

// Extended admin network stats


native GetServerTickRate();


native NetStats_GetConnectedTime(playerid);


native NetStats_MessagesReceived(playerid);


native NetStats_BytesReceived(playerid);


native NetStats_MessagesSent(playerid);


native NetStats_BytesSent(playerid);


native NetStats_MessagesRecvPerSecond(playerid);


native Float:NetStats_PacketLossPercent(playerid);


native NetStats_ConnectionStatus(playerid);


native NetStats_GetIpPort(playerid, output[]);

// Menu


native Menu:CreateMenu("", columns, Float:x, Float:y, Float:col1width);


native bool:DestroyMenu(Menu:menuid);


native AddMenuItem(Menu:menuid, column, "");


native bool:SetMenuColumnHeader(Menu:menuid, column, "");


native bool:ShowMenuForPlayer(Menu:menuid, playerid);


native bool:HideMenuForPlayer(Menu:menuid, playerid);


native bool:IsValidMenu(Menu:menuid);


native bool:DisableMenu(Menu:menuid);


native bool:DisableMenuRow(Menu:menuid, row);


native Menu:GetPlayerMenu(playerid);


native Text:TextDrawCreate(Float:x, Float:y, "");


native TextDrawDestroy(Text:text);


native TextDrawLetterSize(Text:text, Float:width, Float:height);


native TextDrawTextSize(Text:text, Float:width, Float:height);


native TextDrawAlignment(Text:text, TEXT_DRAW_ALIGN:alignment);


native TextDrawColor(Text:text, colour);


native TextDrawUseBox(Text:text, bool:use);


native TextDrawBoxColor(Text:text, colour);


native TextDrawSetShadow(Text:text, size);


native TextDrawSetOutline(Text:text, size);


native TextDrawBackgroundColor(Text:text, colour);


native TextDrawFont(Text:text, TEXT_DRAW_FONT:font);


native TextDrawSetProportional(Text:text, bool:set);


native TextDrawSetSelectable(Text:text, bool:set);


native TextDrawShowForPlayer(playerid, Text:text);


native TextDrawHideForPlayer(playerid, Text:text);


native TextDrawShowForAll(Text:text);


native TextDrawHideForAll(Text:text);


native TextDrawSetString(Text:text, "");


native TextDrawSetPreviewModel(Text:text, modelIndex);


native TextDrawSetPreviewRot(Text:text, Float:rotX, Float:rotY, Float:rotZ);


native TextDrawSetPreviewVehCol(Text:text, colour1, colour2);

// Gang Zones


native GangZoneCreate(Float:minX, Float:minY, Float:maxX, Float:maxY);


native GangZoneDestroy(zone);


native GangZoneShowForPlayer(playerid, zone, colour);


native GangZoneShowForAll(zone, colour);


native GangZoneHideForPlayer(playerid, zone);


native GangZoneHideForAll(zone);


native GangZoneFlashForPlayer(playerid, zone, flashColour);


native GangZoneFlashForAll(zone, flashColour);


native GangZoneStopFlashForPlayer(playerid, zone);


native GangZoneStopFlashForAll(zone);

// Global 3D Text Labels


native Text3D:Create3DTextLabel("", colour, Float:x, Float:y, Float:z, Float:drawDistance, virtualWorld);


native Delete3DTextLabel(Text3D:textid);


native Attach3DTextLabelToPlayer(Text3D:textid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ);


native Attach3DTextLabelToVehicle(Text3D:textid, parentid, Float:offsetX, Float:offsetY, Float:offsetZ);


native Update3DTextLabelText(Text3D:textid, colour, "");


native ShowPlayerDialog(playerid, dialogid, DIALOG_STYLE:style, "", "", "", "");





native GPCI(playerid, serial[]);

// --------------------------------------------------
// Forwards (Callback declarations)
// --------------------------------------------------


public OnGameModeInit() {}


public OnGameModeExit() {}


public OnFilterScriptInit() {}


public OnFilterScriptExit() {}


public OnPlayerConnect(playerid) {}


public OnPlayerDisconnect(playerid, reason) {}


public OnPlayerSpawn(playerid) {}


public OnPlayerText(playerid, text[]) {}


public OnPlayerCommandText(playerid, cmdtext[]) {}


public OnPlayerRequestClass(playerid, classid) {}


public OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate) {}


public OnPlayerEnterCheckpoint(playerid) {}


public OnPlayerLeaveCheckpoint(playerid) {}


public OnPlayerEnterRaceCheckpoint(playerid) {}


public OnPlayerLeaveRaceCheckpoint(playerid) {}


public OnRconCommand(cmd[]) {}


public OnPlayerRequestSpawn(playerid) {}


public OnPlayerPickUpPickup(playerid, pickupid) {}


public OnPlayerSelectedMenuRow(playerid, row) {}


public OnPlayerExitedMenu(playerid) {}


public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid) {}


public OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys) {}


public OnRconLoginAttempt(ip[], password[], success) {}


public OnPlayerUpdate(playerid) {}


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {}


public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ) {}


public OnPlayerClickTextDraw(playerid, Text:clickedid) {}


public OnIncomingConnection(playerid, ip_address[], port) {}


public OnPlayerFinishedDownloading(playerid, virtualworld) {}
public OnPlayerRequestDownload(playerid, type, crc) {}


public OnPlayerWeaponShot(playerid, weaponid, BULLET_HIT_TYPE:hittype, hitid, Float:fX, Float:fY, Float:fZ) {}


public OnClientCheckResponse(playerid, actionid, memaddr, retndata) {}


public OnScriptCash(playerid, amount, source) {}

