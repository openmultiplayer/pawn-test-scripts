TEST__ V_01_CreateVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
	ASSERT_NE(g_iVehicle, INVALID_VEHICLE_ID);
}
TEST_CLOSE__ V_01_CreateVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__DestroyVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__DestroyVehicle()
{
	ASSERT(DestroyVehicle(g_iVehicle));
}
TEST_CLOSE__ V__DestroyVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__IsVehicleStreamedIn()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__IsVehicleStreamedIn()
{
	ASSERT(IsVehicleStreamedIn(g_iVehicle, 0));
}
TEST_CLOSE__ V__IsVehicleStreamedIn()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehiclePos()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehiclePos()
{
	new Float:x, Float:y, Float:z;
	ASSERT(GetVehiclePos(g_iVehicle, x, y, z));
}
TEST_CLOSE__ V__GetVehiclePos()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehiclePos()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehiclePos()
{
	ASSERT(SetVehiclePos(g_iVehicle, 0.0, 0.0, 0.0));
}
TEST_CLOSE__ V__SetVehiclePos()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleZAngle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleZAngle()
{
	new Float:a;
	ASSERT(GetVehicleZAngle(g_iVehicle, a));
}
TEST_CLOSE__ V__GetVehicleZAngle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleRotationQuat()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleRotationQuat()
{
	new Float:x, Float:y, Float:z, Float:w;
	ASSERT(GetVehicleRotationQuat(g_iVehicle, x, y, z, w));
}
TEST_CLOSE__ V__GetVehicleRotationQuat()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleDistanceFromPoint()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleDistanceFromPoint()
{
	ASSERT_EQ(GetVehicleDistanceFromPoint(g_iVehicle, 0.0, 0.0, 0.0), 4.0);
}
TEST_CLOSE__ V__GetVehicleDistanceFromPoint()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleZAngle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleZAngle()
{
	ASSERT(SetVehicleZAngle(g_iVehicle, 0.0));
}
TEST_CLOSE__ V__SetVehicleZAngle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


PTEST_INIT__ V__SetVehicleParamsForPlayer(playerid)
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
PTEST__ V__SetVehicleParamsForPlayer(playerid)
{
	ASSERT(SetVehicleParamsForPlayer(g_iVehicle, playerid, 0, 0));
}
PTEST_CLOSE__ V__SetVehicleParamsForPlayer(playerid)
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__ManualVehicleEngineAndLights()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__ManualVehicleEngineAndLights()
{
	ASSERT_EQ(ManualVehicleEngineAndLights(), 1);
}
TEST_CLOSE__ V__ManualVehicleEngineAndLights()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleParamsEx()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleParamsEx()
{
	ASSERT(SetVehicleParamsEx(g_iVehicle, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0, VEHICLE_PARAMS:0));
}
TEST_CLOSE__ V__SetVehicleParamsEx()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleParamsEx()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleParamsEx()
{
	new VEHICLE_PARAMS:a, VEHICLE_PARAMS:b, VEHICLE_PARAMS:c, VEHICLE_PARAMS:d, VEHICLE_PARAMS:e, VEHICLE_PARAMS:f, VEHICLE_PARAMS:g;
	ASSERT(GetVehicleParamsEx(g_iVehicle, a, b, c, d, e, f, g));
}
TEST_CLOSE__ V__GetVehicleParamsEx()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleParamsSirenState()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleParamsSirenState()
{
	ASSERT_EQ(GetVehicleParamsSirenState(g_iVehicle), VEHICLE_PARAMS_UNSET);
}
TEST_CLOSE__ V__GetVehicleParamsSirenState()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleParamsCarDoors()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleParamsCarDoors()
{
	ASSERT(SetVehicleParamsCarDoors(g_iVehicle, 0, 0, 0, 0));
}
TEST_CLOSE__ V__SetVehicleParamsCarDoors()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleParamsCarDoors()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleParamsCarDoors()
{
	new a = 0, b = 0, c = 0, d = 0;
	ASSERT(GetVehicleParamsCarDoors(g_iVehicle, a, b, c, d));
	ASSERT_EQ(a, -1);
	ASSERT_EQ(b, -1);
	ASSERT_EQ(c, -1);
	ASSERT_EQ(d, -1);
}
TEST_CLOSE__ V__GetVehicleParamsCarDoors()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleParamsCarWindows()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleParamsCarWindows()
{
	ASSERT(SetVehicleParamsCarWindows(g_iVehicle, 0, 0, 0, 0));
}
TEST_CLOSE__ V__SetVehicleParamsCarWindows()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleParamsCarWindows()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleParamsCarWindows()
{
	new a = 0, b = 0, c = 0, d = 0;
	ASSERT(GetVehicleParamsCarWindows(g_iVehicle, a, b, c, d));
	ASSERT_EQ(a, -1);
	ASSERT_EQ(b, -1);
	ASSERT_EQ(c, -1);
	ASSERT_EQ(d, -1);
}
TEST_CLOSE__ V__GetVehicleParamsCarWindows()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleToRespawn()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleToRespawn()
{
	ASSERT(SetVehicleToRespawn(g_iVehicle));
}
TEST_CLOSE__ V__SetVehicleToRespawn()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__LinkVehicleToInterior()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__LinkVehicleToInterior()
{
	ASSERT(LinkVehicleToInterior(g_iVehicle, 0));
}
TEST_CLOSE__ V__LinkVehicleToInterior()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__AddVehicleComponent()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__AddVehicleComponent()
{
	ASSERT(AddVehicleComponent(g_iVehicle, 0));
}
TEST_CLOSE__ V__AddVehicleComponent()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__RemoveVehicleComponent()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__RemoveVehicleComponent()
{
	ASSERT(RemoveVehicleComponent(g_iVehicle, 0));
}
TEST_CLOSE__ V__RemoveVehicleComponent()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__ChangeVehicleColor()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__ChangeVehicleColor()
{
	ASSERT(ChangeVehicleColor(g_iVehicle, 0, 0));
}
TEST_CLOSE__ V__ChangeVehicleColor()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__ChangeVehiclePaintjob()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__ChangeVehiclePaintjob()
{
	ASSERT(ChangeVehiclePaintjob(g_iVehicle, 0));
}
TEST_CLOSE__ V__ChangeVehiclePaintjob()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleHealth()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleHealth()
{
	ASSERT(SetVehicleHealth(g_iVehicle, 0.0));
}
TEST_CLOSE__ V__SetVehicleHealth()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleHealth()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleHealth()
{
	new Float:h;
	ASSERT(GetVehicleHealth(g_iVehicle, h));
	ASSERT_EQ(h, 1000.0);
}
TEST_CLOSE__ V__GetVehicleHealth()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__AttachTrailerToVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__AttachTrailerToVehicle()
{
	new trailer = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
	ASSERT(!AttachTrailerToVehicle(g_iVehicle, trailer));
	DestroyVehicle(trailer);
}
TEST_CLOSE__ V__AttachTrailerToVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__DetachTrailerFromVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__DetachTrailerFromVehicle()
{
	ASSERT(DetachTrailerFromVehicle(g_iVehicle));
}
TEST_CLOSE__ V__DetachTrailerFromVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__IsTrailerAttachedToVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__IsTrailerAttachedToVehicle()
{
	ASSERT(!IsTrailerAttachedToVehicle(g_iVehicle));
}
TEST_CLOSE__ V__IsTrailerAttachedToVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleTrailer()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleTrailer()
{
	ASSERT_EQ(GetVehicleTrailer(g_iVehicle), INVALID_VEHICLE_ID);
}
TEST_CLOSE__ V__GetVehicleTrailer()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleNumberPlate()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleNumberPlate()
{
	ASSERT(SetVehicleNumberPlate(g_iVehicle, ""));
}
TEST_CLOSE__ V__SetVehicleNumberPlate()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleModel()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleModel()
{
	ASSERT_EQ(GetVehicleModel(g_iVehicle), 400);
}
TEST_CLOSE__ V__GetVehicleModel()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleComponentInSlot()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleComponentInSlot()
{
	ASSERT_EQ(GetVehicleComponentInSlot(g_iVehicle, CARMODTYPE:0), 0);
}
TEST_CLOSE__ V__GetVehicleComponentInSlot()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleComponentType()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleComponentType()
{
	new CARMODTYPE:carmodtype = GetVehicleComponentType(g_iVehicle);
	ASSERT_EQ(carmodtype, CARMODTYPE_NONE);
	#pragma unused carmodtype
}
TEST_CLOSE__ V__GetVehicleComponentType()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__RepairVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__RepairVehicle()
{
	ASSERT(RepairVehicle(g_iVehicle));
}
TEST_CLOSE__ V__RepairVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleVelocity()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleVelocity()
{
	new Float:x, Float:y, Float:z;
	ASSERT(GetVehicleVelocity(g_iVehicle, x, y, z));
}
TEST_CLOSE__ V__GetVehicleVelocity()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleVelocity()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleVelocity()
{
	ASSERT(SetVehicleVelocity(g_iVehicle, 0.0, 0.0, 0.0));
}
TEST_CLOSE__ V__SetVehicleVelocity()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleAngularVelocity()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleAngularVelocity()
{
	ASSERT(SetVehicleAngularVelocity(g_iVehicle, 0.0, 0.0, 0.0));
}
TEST_CLOSE__ V__SetVehicleAngularVelocity()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleDamageStatus()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleDamageStatus()
{
	new a = -1, b = -1, c = -1, d = -1;
	ASSERT(GetVehicleDamageStatus(g_iVehicle, a, b, c, d));
	ASSERT_EQ(a, 0);
	ASSERT_EQ(b, 0);
	ASSERT_EQ(c, 0);
	ASSERT_EQ(d, 0);
}
TEST_CLOSE__ V__GetVehicleDamageStatus()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__UpdateVehicleDamageStatus()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__UpdateVehicleDamageStatus()
{
	ASSERT(UpdateVehicleDamageStatus(g_iVehicle, 0, 0, 0, 0));
}
TEST_CLOSE__ V__UpdateVehicleDamageStatus()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleModelInfo()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleModelInfo()
{
	new Float:x, Float:y, Float:z;
	ASSERT(GetVehicleModelInfo(400, VEHICLE_MODEL_INFO_SIZE, x, y, z));
	ASSERT(GetVehicleModelInfo(400, VEHICLE_MODEL_INFO_WHEELSFRONT, x, y, z));
	ASSERT_EQ(x,  0.879999);
	ASSERT_EQ(y, -1.379999);
	ASSERT_EQ(z, -0.610000);
}
TEST_CLOSE__ V__GetVehicleModelInfo()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__SetVehicleVirtualWorld()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__SetVehicleVirtualWorld()
{
	ASSERT(SetVehicleVirtualWorld(g_iVehicle, 0));
}
TEST_CLOSE__ V__SetVehicleVirtualWorld()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__GetVehicleVirtualWorld()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__GetVehicleVirtualWorld()
{
	ASSERT_EQ(GetVehicleVirtualWorld(g_iVehicle), -1);
}
TEST_CLOSE__ V__GetVehicleVirtualWorld()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}


TEST_INIT__ V__IsValidVehicle()
{
	g_iVehicle = CreateVehicle(400, 0.0, 0.0, 4.0, 90.0, -1, -1, 0);
}
TEST__ V__IsValidVehicle()
{
	ASSERT(IsValidVehicle(g_iVehicle));
	ASSERT(!IsValidVehicle(1000));
}
TEST_CLOSE__ V__IsValidVehicle()
{
	DestroyVehicle(g_iVehicle);
	g_iVehicle = INVALID_VEHICLE_ID;
}

