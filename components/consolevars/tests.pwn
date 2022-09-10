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
	printf("Running GetServerVarAsString(\"gamemode\", buffer);");
	GetServerVarAsString("gamemode", buffer);
	ASSERT_SAME(buffer, "unit-tests");
}

TEST__ CV02_StringOld()
{
	new buffer[32] = "init";
	printf("Running GetConsoleVarAsString(\"version\", buffer);");
	GetConsoleVarAsString("version", buffer);
	ASSERT_SAME(buffer, "open.mp 0.0.0");
}

// Test for new (open.mp) script vars.
TEST__ CV03_StringNewD()
{
	new buffer[32] = "init";
	printf("Running GetServerVarAsString(\"game.map\", buffer);");
	GetServerVarAsString("game.map", buffer);
	ASSERT_SAME(buffer, "Tester City");
}

TEST__ CV04_StringNew()
{
	new buffer[32] = "init";
	printf("Running GetConsoleVarAsString(\"name\", buffer);");
	GetConsoleVarAsString("name", buffer);
	ASSERT_SAME(buffer, "OMP Test Server");
}

// Test for script vars that don't exist.
TEST__ CV05_StringFakeD()
{
	new buffer[32] = "init";
	printf("Running GetServerVarAsString(\"DONT-CREATE-THIS-VAR\", buffer);");
	GetServerVarAsString("DONT-CREATE-THIS-VAR", buffer);
	ASSERT_SAME(buffer, "");
}

TEST__ CV06_StringFake()
{
	new buffer[32] = "init";
	printf("Running GetConsoleVarAsString(\"NOR-THIS-ONE\", buffer);");
	GetConsoleVarAsString("NOR-THIS-ONE", buffer);
	ASSERT_SAME(buffer, "");
}

// Test for script vars that aren't explicitly specified.
TEST__ CV11_StringDefaultD()
{
	new buffer[32] = "init";
	printf("Running GetServerVarAsString(\"weburl\", buffer);");
	GetServerVarAsString("weburl", buffer);
	ASSERT_SAME(buffer, "open.mp");
}

TEST__ CV12_StringDefault()
{
	new buffer[32] = "init";
	printf("Running GetConsoleVarAsString(\"logging.timestamp_format\", buffer);");
	GetConsoleVarAsString("logging.timestamp_format", buffer);
	ASSERT_SAME(buffer, "[%Y-%m-%dT%H:%M:%S%z]");
}

// Test for script vars that aren't pre-defined.
TEST__ CV11_StringCustomD()
{
	new buffer[32] = "init";
	printf("Running GetServerVarAsString(\"my_custom_var\", buffer);");
	GetServerVarAsString("my_custom_var", buffer);
	ASSERT_SAME(buffer, "Hello World");
}

TEST__ CV12_StringCustom()
{
	new buffer[32] = "init";
	new const VALUE[] = "and%value!!!";
	printf("Running GetConsoleVarAsString(\"try$this-varname\", buffer);");
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
	printf("Running GetServerVarAsInt(\"maxplayers\", buffer);");
	result = GetServerVarAsInt("maxplayers");
	ASSERT_EQ(result, 25);
}

TEST__ CV08_IntOld()
{
	new result = -1;
	#pragma unused result
	printf("Running GetConsoleVarAsInt(\"lanmode\", buffer);");
	result = GetConsoleVarAsInt("lanmode");
	ASSERT_EQ(result, 1);
}

// Test for new (open.mp) script vars.
TEST__ CV09_IntNewD()
{
	new result = -1;
	#pragma unused result
	printf("Running GetServerVarAsInt(\"in_car_rate\", buffer);");
	result = GetServerVarAsInt("in_car_rate");
	ASSERT_EQ(result, 50);
}

TEST__ CV10_IntNew()
{
	new result = -1;
	#pragma unused result
	printf("Running GetConsoleVarAsInt(\"lag_compensation\", buffer);");
	result = GetConsoleVarAsInt("lag_compensation");
	ASSERT_EQ(result, 1);
}

// Test for script vars that don't exist.
TEST__ CV11_IntFakeD()
{
	new result = -1;
	#pragma unused result
	printf("Running GetServerVarAsInt(\"FAKE_INT_VAR\", buffer);");
	result = GetServerVarAsInt("FAKE_INT_VAR");
	ASSERT_EQ(result, 0);
}

TEST__ CV12_IntFake()
{
	new result = -1;
	#pragma unused result
	printf("Running GetConsoleVarAsInt(\"FAKE_NUMBER\", buffer);");
	result = GetConsoleVarAsInt("FAKE_NUMBER");
	ASSERT_EQ(result, 0);
}

// Test for script vars that aren't explicitly specified.
TEST__ CV11_IntDefaultD()
{
	new result = -1;
	#pragma unused result
	printf("Running GetServerVarAsInt(\"timestamp\", buffer);");
	result = GetServerVarAsInt("timestamp");
	ASSERT_EQ(result, 1);
}

TEST__ CV12_IntDefault()
{
	new result = -1;
	#pragma unused result
	printf("Running GetConsoleVarAsInt(\"enable_query\", buffer);");
	result = GetConsoleVarAsInt("enable_query");
	ASSERT_EQ(result, 1);
}

// vim: se ft=cpp:

