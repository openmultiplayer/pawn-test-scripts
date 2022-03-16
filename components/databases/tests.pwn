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
    g_iDatabaseConnection = db_open(databaseFilePath);
    db_free_result(db_query(g_iDatabaseConnection, initializeDatabaseSQL));
}

OpenAndSelectDatabase()
{
    OpenDatabase();
    g_iFirstResultSet = db_query(g_iDatabaseConnection, "SELECT * FROM `test`;");
}

CloseDatabase()
{
    db_free_result(g_iFirstResultSet);
    g_iFirstResultSet = DBResult:0;
    db_free_result(g_iSecondResultSet);
    g_iSecondResultSet = DBResult:0;
    db_close(g_iDatabaseConnection);
    g_iDatabaseConnection = DB:0;
}

TEST__ D_01_db_open()
{
    g_iDatabaseConnection = db_open(databaseFilePath);
    ASSERT_EQ(g_iDatabaseConnection, DB:1);
}

TEST_CLOSE__ D_01_db_open()
{
    CloseDatabase();
}

TEST_INIT__ D_02_db_close()
{
    OpenDatabase();
}

TEST__ D_02_db_close()
{
    ASSERT_EQ(db_close(g_iDatabaseConnection), true);
    ASSERT_EQ(db_close(g_iDatabaseConnection), false);
}

TEST_INIT__ D_03_db_query()
{
    OpenDatabase();
}

TEST__ D_03_db_query()
{
    g_iFirstResultSet = db_query(g_iDatabaseConnection, "SELECT * FROM `test`;");
    ASSERT_EQ(g_iFirstResultSet, DBResult:1);
    g_iSecondResultSet = db_query(g_iDatabaseConnection, "SELECT * FROM `test` WHERE `test_string` = \"Hello world!\";");
    ASSERT_EQ(g_iSecondResultSet, DBResult:2);
}

TEST_CLOSE__ D_03_db_query()
{
    CloseDatabase();
}

TEST_INIT__ D_04_db_free_result()
{
    OpenAndSelectDatabase();
}

TEST__ D_04_db_free_result()
{
    ASSERT_EQ(db_free_result(g_iFirstResultSet), true);
    ASSERT_EQ(db_free_result(g_iFirstResultSet), false);
}

TEST_CLOSE__ D_04_db_free_result()
{
    CloseDatabase();
}

TEST_INIT__ D_05_db_num_rows()
{
    OpenAndSelectDatabase();
}

TEST__ D_05_db_num_rows()
{
    ASSERT_EQ(db_num_rows(g_iFirstResultSet), 2);
}

TEST_CLOSE__ D_05_db_num_rows()
{
    CloseDatabase();
}

TEST_INIT__ D_06_db_next_row()
{
    OpenAndSelectDatabase();
}

TEST__ D_06_db_next_row()
{
    ASSERT_EQ(db_next_row(g_iFirstResultSet), true);
    ASSERT_EQ(db_next_row(g_iFirstResultSet), false);
}

TEST_CLOSE__ D_06_db_next_row()
{
    CloseDatabase();
}

TEST_INIT__ D_07_db_num_fields()
{
    OpenAndSelectDatabase();
}

TEST__ D_07_db_num_fields()
{
    ASSERT_EQ(db_num_fields(g_iFirstResultSet), 3);
}

TEST_CLOSE__ D_07_db_num_fields()
{
    CloseDatabase();
}

TEST_INIT__ D_08_db_field_name()
{
    OpenAndSelectDatabase();
}

TEST__ D_08_db_field_name()
{
    new field_name[64];
    ASSERT_EQ(db_field_name(g_iFirstResultSet, -1, field_name), false);
    ASSERT_EQ(db_field_name(g_iFirstResultSet, 4, field_name), false);
    ASSERT_EQ(db_field_name(g_iFirstResultSet, 0, field_name), true);
    ASSERT_SAME(field_name, "test_string");
}

TEST_CLOSE__ D_08_db_field_name()
{
    CloseDatabase();
}

TEST_INIT__ D_09_db_get_field()
{
    OpenAndSelectDatabase();
}

TEST__ D_09_db_get_field()
{
    static const hello_world[] = "Hello world!";
    static const another_test[] = "Another test!";
    new field_string[64];
    ASSERT_EQ(db_get_field(g_iFirstResultSet, -1, field_string), false);
    ASSERT_EQ(db_get_field(g_iFirstResultSet, 4, field_string), false);
    ASSERT_EQ(db_get_field(g_iFirstResultSet, 0, field_string), true);
    ASSERT_SAME(field_string, hello_world);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field(g_iFirstResultSet, -1, field_string), false);
    ASSERT_EQ(db_get_field(g_iFirstResultSet, 4, field_string), false);
    ASSERT_EQ(db_get_field(g_iFirstResultSet, 0, field_string), true);
    ASSERT_SAME(field_string, another_test);
}

TEST_CLOSE__ D_09_db_get_field()
{
    CloseDatabase();
}

TEST_INIT__ D_10_db_get_field_assoc()
{
    OpenAndSelectDatabase();
}

TEST__ D_10_db_get_field_assoc()
{
    static const hello_world[] = "Hello world!";
    static const another_test[] = "Another test!";
    new field_string[64];
    ASSERT_EQ(db_get_field_assoc(g_iFirstResultSet, "missing", field_string), false);
    ASSERT_EQ(db_get_field_assoc(g_iFirstResultSet, "test_string", field_string), true);
    ASSERT_SAME(field_string, hello_world);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field_assoc(g_iFirstResultSet, "missing", field_string), false);
    ASSERT_EQ(db_get_field_assoc(g_iFirstResultSet, "test_string", field_string), true);
    ASSERT_SAME(field_string, another_test);
}

TEST_CLOSE__ D_10_db_get_field_assoc()
{
    CloseDatabase();
}

TEST_INIT__ D_11_db_get_field_int()
{
    OpenAndSelectDatabase();
}

TEST__ D_11_db_get_field_int()
{
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, -1), 0);
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, 4), 0);
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, 1), 69);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, -1), 0);
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, 4), 0);
    ASSERT_EQ(db_get_field_int(g_iFirstResultSet, 1), 1337);
}

TEST_CLOSE__ D_11_db_get_field_int()
{
    CloseDatabase();
}

TEST_INIT__ D_12_db_get_field_assoc_int()
{
    OpenAndSelectDatabase();
}

TEST__ D_12_db_get_field_assoc_int()
{
    ASSERT_EQ(db_get_field_assoc_int(g_iFirstResultSet, "missing"), 0);
    ASSERT_EQ(db_get_field_assoc_int(g_iFirstResultSet, "test_integer"), 69);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field_assoc_int(g_iFirstResultSet, "missing"), 0);
    ASSERT_EQ(db_get_field_assoc_int(g_iFirstResultSet, "test_integer"), 1337);
}

TEST_CLOSE__ D_12_db_get_field_assoc_int()
{
    CloseDatabase();
}

TEST_INIT__ D_13_db_get_field_float()
{
    OpenAndSelectDatabase();
}

TEST__ D_13_db_get_field_float()
{
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, -1), 0.0);
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, 4), 0.0);
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, 2), 420.69);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, -1), 0.0);
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, 4), 0.0);
    ASSERT_EQ(db_get_field_float(g_iFirstResultSet, 2), 1.5);
}

TEST_CLOSE__ D_13_db_get_field_float()
{
    CloseDatabase();
}

TEST_INIT__ D_14_db_get_field_assoc_float()
{
    OpenAndSelectDatabase();
}

TEST__ D_14_db_get_field_assoc_float()
{
    ASSERT_EQ(db_get_field_assoc_float(g_iFirstResultSet, "missing"), 0.0);
    ASSERT_EQ(db_get_field_assoc_float(g_iFirstResultSet, "test_float"), 420.69);
    db_next_row(g_iFirstResultSet);
    ASSERT_EQ(db_get_field_assoc_float(g_iFirstResultSet, "missing"), 0.0);
    ASSERT_EQ(db_get_field_assoc_float(g_iFirstResultSet, "test_float"), 1.5);
}

TEST_CLOSE__ D_14_db_get_field_assoc_float()
{
    CloseDatabase();
}

TEST_INIT__ D_15_db_get_mem_handle()
{
    OpenDatabase();
}

TEST__ D_15_db_get_mem_handle()
{
    ASSERT_NE(db_get_mem_handle(g_iDatabaseConnection), 0);
}

TEST_CLOSE__ D_15_db_get_mem_handle()
{
    CloseDatabase();
}

TEST_INIT__ D_16_db_get_result_mem_handle()
{
    OpenAndSelectDatabase();
}

TEST__ D_16_db_get_result_mem_handle()
{
    ASSERT_NE(db_get_result_mem_handle(g_iFirstResultSet), 0);
}

TEST_CLOSE__ D_16_db_get_result_mem_handle()
{
    CloseDatabase();
}

TEST_INIT__ D_17_db_debug_openfiles()
{
    OpenDatabase();
}

TEST__ D_17_db_debug_openfiles()
{
    ASSERT_EQ(db_debug_openfiles(), 1);
    CloseDatabase();
    ASSERT_EQ(db_debug_openfiles(), 0);
}

TEST_CLOSE__ D_17_db_debug_openfiles()
{
    CloseDatabase();
}

TEST_INIT__ D_18_db_debug_openresults()
{
    OpenAndSelectDatabase();
}

TEST__ D_18_db_debug_openresults()
{
    ASSERT_EQ(db_debug_openresults(), 1);
    CloseDatabase();
    ASSERT_EQ(db_debug_openresults(), 0);
}

TEST_CLOSE__ D_18_db_debug_openresults()
{
    CloseDatabase();
}

// vim: se ft=cpp:
