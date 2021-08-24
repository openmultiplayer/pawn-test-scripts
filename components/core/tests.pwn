// Core component test suite

TEST__ C_1_format()
{
    new ret[128];
    ASSERT_EQ(format(ret, sizeof(ret), "Test formatting: %s", "blibli"), 1);
    ASSERT_SAME(ret, "Test formatting: blibli");
}

TEST__ C_2_strval()
{
    ASSERT_EQ(strval("0"), 0);
    ASSERT_EQ(strval("5"), 5);
    ASSERT_EQ(strval("5.0"), 5);
    ASSERT_EQ(strval(""), 0);
    ASSERT_EQ(strval("invalid_integer"), 0);
    ASSERT_EQ(strval("-5"), -5);
    ASSERT_EQ(strval("-5.0"), -5);
}

TEST__ C_3_floatstr()
{
    // Not implemented (yet) in master
    //ASSERT_EQ(floatstr("5.0"), 5.0);
}

// vim: se ft=cpp:
