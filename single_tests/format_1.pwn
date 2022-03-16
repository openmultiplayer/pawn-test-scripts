#include "../test-header"

TEST__ format_failure()
{
    new ret[128];
    ASSERT_EQ(format(ret, sizeof(ret), "Failed formatting: %s", "blibli", "blabla"), 0);
    ASSERT_SAME(ret, "");
}
// vim: se ft=cpp:
