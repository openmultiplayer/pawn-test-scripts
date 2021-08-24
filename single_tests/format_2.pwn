#include <a_samp>

#define RUN_TESTS
#define YSI_NO_DIALOG_ASK
#define YSI_NO_ANDROID_CHECK
#define YSI_NO_GET_IP
#define FOREACH_NO_BOTS
#define FOREACH_NO_LOCALS
#define FOREACH_NO_VEHICLES
#define FOREACH_NO_ACTORS
#define FOREACH_NO_STREAMED

#include <YSI_Core\y_testing>

TEST__ format_failure()
{
    new ret[128];
    ASSERT_EQ(format(ret, sizeof(ret), "Failed formatting: %s %s", "blibli"), 0);
    ASSERT_SAME(ret, "");
}
// vim: se ft=cpp:
