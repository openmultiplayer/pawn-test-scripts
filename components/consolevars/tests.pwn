// Menus component test suite

// NOTE: "D" suffix = "Deprecated" (should give a warning).

/////////////
// STRINGS //
/////////////

// Test for old (legacy) script vars.
TEST__ CV01_StringOldD()
{
	new buffer[32] = "init";
	// This should give a warning, but there's no way to test that in the current test suite.
	GetServerVarAsString("gamemode", buffer);
	ASSERT_SAME(buffer, "unit-tests");
}

TEST__ CV02_StringOld()
{
	new buffer[32] = "init";
	GetConsoleVarAsString("version", buffer);
	ASSERT_SAME(buffer, "0.3.7");
}

// Test for new (open.mp) script vars.
TEST__ CV03_StringNewD()
{
	new buffer[32] = "init";
	GetServerVarAsString("map_name", buffer);
	ASSERT_SAME(buffer, "Tester City");
}

TEST__ CV04_StringNew()
{
	new buffer[32] = "init";
	GetConsoleVarAsString("server_name", buffer);
	ASSERT_SAME(buffer, "OMP Test Server");
}

// Test for script vars that don't exist.
TEST__ CV05_StringFakeD()
{
	new buffer[32] = "init";
	GetServerVarAsString("DONT-CREATE-THIS-VAR", buffer);
	ASSERT_SAME(buffer, "");
}

TEST__ CV06_StringFake()
{
	new buffer[32] = "init";
	GetConsoleVarAsString("NOR-THIS-ONE", buffer);
	ASSERT_SAME(buffer, "");
}

// Test for script vars that aren't explicitly specified.
TEST__ CV11_StringDefaultD()
{
	new buffer[32] = "init";
	GetServerVarAsString("weburl", buffer);
	ASSERT_SAME(buffer, "open.mp");
}

TEST__ CV12_StringDefault()
{
	new buffer[32] = "init";
	GetConsoleVarAsString("logging_timestamp_format", buffer);
	ASSERT_SAME(buffer, "[%Y-%m-%dT%H:%M:%SZ]");
}

// Test for script vars that aren't pre-defined.
TEST__ CV11_StringCustomD()
{
	new buffer[32] = "init";
	GetServerVarAsString("my_custom_var", buffer);
	ASSERT_SAME(buffer, "Hello World");
}

TEST__ CV12_StringCustom()
{
	new buffer[32] = "init";
	new const VALUE[] = "and%value!!!";
	GetConsoleVarAsString("try$this-varname", buffer);
	ASSERT_SAME(buffer, VALUE);
}

/////////////
// STRINGS //
/////////////

// Test for old (legacy) script vars.
TEST__ CV07_IntOldD()
{
	new result = -1;
	#pragma unused result
	result = GetServerVarAsInt("maxplayers");
	ASSERT_EQ(result, 25);
}

TEST__ CV08_IntOld()
{
	new result = -1;
	#pragma unused result
	result = GetConsoleVarAsInt("lanmode");
	ASSERT_EQ(result, 1);
}

// Test for new (open.mp) script vars.
TEST__ CV09_IntNewD()
{
	new result = -1;
	#pragma unused result
	result = GetServerVarAsInt("in_car_rate");
	ASSERT_EQ(result, 50);
}

TEST__ CV10_IntNew()
{
	new result = -1;
	#pragma unused result
	result = GetConsoleVarAsInt("lag_compensation");
	ASSERT_EQ(result, 1);
}

// Test for script vars that don't exist.
TEST__ CV11_IntFakeD()
{
	new result = -1;
	#pragma unused result
	result = GetServerVarAsInt("FAKE_INT_VAR");
	ASSERT_EQ(result, 0);
}

TEST__ CV12_IntFake()
{
	new result = -1;
	#pragma unused result
	result = GetConsoleVarAsInt("FAKE_NUMBER");
	ASSERT_EQ(result, 0);
}

// Test for script vars that aren't explicitly specified.
TEST__ CV11_IntDefaultD()
{
	new result = -1;
	#pragma unused result
	result = GetServerVarAsInt("timestamp");
	ASSERT_EQ(result, 1);
}

TEST__ CV12_IntDefault()
{
	new result = -1;
	#pragma unused result
	result = GetConsoleVarAsInt("enable_query");
	ASSERT_EQ(result, 1);
}

// vim: se ft=cpp:

