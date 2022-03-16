#include "../test-header"

TEST__ format_failure()
{
    new ret[128];
    ASSERT_EQ(format(ret, sizeof(ret), "Failed formatting: %s %s", "blibli"), 0);
    ASSERT_SAME(ret, "");
}
// vim: se ft=cpp:
