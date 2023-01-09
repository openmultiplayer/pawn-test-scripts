// Databases component test suite

new const databaseFilePath[] = "test.db";

new const initializeDatabaseSQL[] = "BEGIN TRANSACTION;\
DROP TABLE IF EXISTS `test`;\
CREATE TABLE IF NOT EXISTS `test` (\
	`test_string`	TEXT NOT NULL,\
	`test_integer`	INTEGER NOT NULL,\
	`test_float`	REAL NOT NULL\
);\
INSERT INTO `test` VALUES ('Hello world!',69,420.69);\
INSERT INTO `test` VALUES ('Another test!',1337,1.5);\
COMMIT;";

OpenDatabase()
{
    g_iDatabaseConnection = DB_Open(databaseFilePath);
    DB_FreeResult(DB_Query(g_iDatabaseConnection, initializeDatabaseSQL));
}

OpenAndSelectDatabase()
{
    OpenDatabase();
    g_iFirstResultSet = DB_Query(g_iDatabaseConnection, "SELECT * FROM `test`;");
}

CloseDatabase()
{
    DB_FreeResult(g_iFirstResultSet);
    g_iFirstResultSet = DBResult:0;
    DB_FreeResult(g_iSecondResultSet);
    g_iSecondResultSet = DBResult:0;
    DB_Close(g_iDatabaseConnection);
    g_iDatabaseConnection = DB:0;
}

@test(.group = "databases") D_01_DB_Open()
{
    g_iDatabaseConnection = DB_Open(databaseFilePath);
    ASSERT_EQ(g_iDatabaseConnection, DB:1);
}

TEST_CLOSE__ D_01_DB_Open()
{
    CloseDatabase();
}

TEST_INIT__ D_02_DB_Close()
{
    OpenDatabase();
}

@test(.group = "databases") D_02_DB_Close()
{
    ASSERT(DB_Close(g_iDatabaseConnection));
    ASSERT(!DB_Close(g_iDatabaseConnection));
}

TEST_INIT__ D_03_DB_Query()
{
    OpenDatabase();
}

@test(.group = "databases") D_03_DB_Query()
{
    g_iFirstResultSet = DB_Query(g_iDatabaseConnection, "SELECT * FROM `test`;");
    ASSERT_EQ(g_iFirstResultSet, DBResult:1);
    g_iSecondResultSet = DB_Query(g_iDatabaseConnection, "SELECT * FROM `test` WHERE `test_string` = \"Hello world!\";");
    ASSERT_EQ(g_iSecondResultSet, DBResult:2);
}

TEST_CLOSE__ D_03_DB_Query()
{
    CloseDatabase();
}

TEST_INIT__ D_04_DB_FreeResult()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_04_DB_FreeResult()
{
    ASSERT(DB_FreeResult(g_iFirstResultSet));
    ASSERT(!DB_FreeResult(g_iFirstResultSet));
}

TEST_CLOSE__ D_04_DB_FreeResult()
{
    CloseDatabase();
}

TEST_INIT__ D_05_DB_NumRows()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_05_DB_NumRows()
{
    ASSERT_EQ(DB_NumRows(g_iFirstResultSet), 2);
}

TEST_CLOSE__ D_05_DB_NumRows()
{
    CloseDatabase();
}

TEST_INIT__ D_06_DB_NextRow()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_06_DB_NextRow()
{
    ASSERT(DB_NextRow(g_iFirstResultSet));
    ASSERT(!DB_NextRow(g_iFirstResultSet));
}

TEST_CLOSE__ D_06_DB_NextRow()
{
    CloseDatabase();
}

TEST_INIT__ D_07_DB_NumFields()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_07_DB_NumFields()
{
    ASSERT_EQ(DB_NumFields(g_iFirstResultSet), 3);
}

TEST_CLOSE__ D_07_DB_NumFields()
{
    CloseDatabase();
}

TEST_INIT__ D_08_DB_FieldName()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_08_DB_FieldName()
{
    new field_name[64];
    ASSERT(!DB_FieldName(g_iFirstResultSet, -1, field_name));
    ASSERT(!DB_FieldName(g_iFirstResultSet, 4, field_name));
    ASSERT(DB_FieldName(g_iFirstResultSet, 0, field_name));
    ASSERT_SAME(field_name, "test_string");
}

TEST_CLOSE__ D_08_DB_FieldName()
{
    CloseDatabase();
}

TEST_INIT__ D_09_DB_GetField()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_09_DB_GetField()
{
    static const hello_world[] = "Hello world!";
    static const another_test[] = "Another test!";
    new field_string[64];
    ASSERT(!DB_GetField(g_iFirstResultSet, -1, field_string));
    ASSERT(!DB_GetField(g_iFirstResultSet, 4, field_string));
    ASSERT(DB_GetField(g_iFirstResultSet, 0, field_string));
    ASSERT_SAME(field_string, hello_world);
    DB_NextRow(g_iFirstResultSet);
    ASSERT(!DB_GetField(g_iFirstResultSet, -1, field_string));
    ASSERT(!DB_GetField(g_iFirstResultSet, 4, field_string));
    ASSERT(DB_GetField(g_iFirstResultSet, 0, field_string));
    ASSERT_SAME(field_string, another_test);
}

TEST_CLOSE__ D_09_DB_GetField()
{
    CloseDatabase();
}

TEST_INIT__ D_10_DB_GetFieldAssoc()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_10_DB_GetFieldAssoc()
{
    static const hello_world[] = "Hello world!";
    static const another_test[] = "Another test!";
    new field_string[64];
    ASSERT(!DB_GetFieldAssoc(g_iFirstResultSet, "missing", field_string));
    ASSERT(DB_GetFieldAssoc(g_iFirstResultSet, "test_string", field_string));
    ASSERT_SAME(field_string, hello_world);
    DB_NextRow(g_iFirstResultSet);
    ASSERT(!DB_GetFieldAssoc(g_iFirstResultSet, "missing", field_string));
    ASSERT(DB_GetFieldAssoc(g_iFirstResultSet, "test_string", field_string));
    ASSERT_SAME(field_string, another_test);
}

TEST_CLOSE__ D_10_DB_GetFieldAssoc()
{
    CloseDatabase();
}

TEST_INIT__ D_11_DB_GetFieldInt()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_11_DB_GetFieldInt()
{
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, -1), 0);
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, 4), 0);
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, 1), 69);
    DB_NextRow(g_iFirstResultSet);
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, -1), 0);
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, 4), 0);
    ASSERT_EQ(DB_GetFieldInt(g_iFirstResultSet, 1), 1337);
}

TEST_CLOSE__ D_11_DB_GetFieldInt()
{
    CloseDatabase();
}

TEST_INIT__ D_12_DB_GetFieldAssocInt()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_12_DB_GetFieldAssocInt()
{
    ASSERT_EQ(DB_GetFieldAssocInt(g_iFirstResultSet, "missing"), 0);
    ASSERT_EQ(DB_GetFieldAssocInt(g_iFirstResultSet, "test_integer"), 69);
    DB_NextRow(g_iFirstResultSet);
    ASSERT_EQ(DB_GetFieldAssocInt(g_iFirstResultSet, "missing"), 0);
    ASSERT_EQ(DB_GetFieldAssocInt(g_iFirstResultSet, "test_integer"), 1337);
}

TEST_CLOSE__ D_12_DB_GetFieldAssocInt()
{
    CloseDatabase();
}

TEST_INIT__ D_13_DB_GetFieldFloat()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_13_DB_GetFieldFloat()
{
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, -1), 0.0);
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, 4), 0.0);
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, 2), 420.69);
    DB_NextRow(g_iFirstResultSet);
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, -1), 0.0);
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, 4), 0.0);
    ASSERT_EQ(DB_GetFieldFloat(g_iFirstResultSet, 2), 1.5);
}

TEST_CLOSE__ D_13_DB_GetFieldFloat()
{
    CloseDatabase();
}

TEST_INIT__ D_14_DB_GetFieldAssocFloat()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_14_DB_GetFieldAssocFloat()
{
    ASSERT_EQ(DB_GetFieldAssocFloat(g_iFirstResultSet, "missing"), 0.0);
    ASSERT_EQ(DB_GetFieldAssocFloat(g_iFirstResultSet, "test_float"), 420.69);
    DB_NextRow(g_iFirstResultSet);
    ASSERT_EQ(DB_GetFieldAssocFloat(g_iFirstResultSet, "missing"), 0.0);
    ASSERT_EQ(DB_GetFieldAssocFloat(g_iFirstResultSet, "test_float"), 1.5);
}

TEST_CLOSE__ D_14_DB_GetFieldAssocFloat()
{
    CloseDatabase();
}

/*TEST_INIT__ D_15_DB_GetMemHandle()
{
    OpenDatabase();
}

@test(.group = "databases") D_15_DB_GetMemHandle()
{
    ASSERT_NE(DB_GetMemHandle(g_iDatabaseConnection), 0);
}

TEST_CLOSE__ D_15_DB_GetMemHandle()
{
    CloseDatabase();
}*/

/*TEST_INIT__ D_16_DB_GetResultMemHandle()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_16_DB_GetResultMemHandle()
{
    ASSERT_NE(DB_GetResultMemHandle(g_iFirstResultSet), 0);
}

TEST_CLOSE__ D_16_DB_GetResultMemHandle()
{
    CloseDatabase();
}*/

TEST_INIT__ D_17_DB_DebugOpenFiles()
{
    OpenDatabase();
}

@test(.group = "databases") D_17_DB_DebugOpenFiles()
{
    ASSERT_EQ(DB_DebugOpenFiles(), 1);
    CloseDatabase();
    ASSERT_EQ(DB_DebugOpenFiles(), 0);
}

TEST_CLOSE__ D_17_DB_DebugOpenFiles()
{
    CloseDatabase();
}

TEST_INIT__ D_18_DB_DebugOpenResults()
{
    OpenAndSelectDatabase();
}

@test(.group = "databases") D_18_DB_DebugOpenResults()
{
    ASSERT_EQ(DB_DebugOpenResults(), 1);
    CloseDatabase();
    ASSERT_EQ(DB_DebugOpenResults(), 0);
}

TEST_CLOSE__ D_18_DB_DebugOpenResults()
{
    CloseDatabase();
}

// vim: se ft=cpp:
