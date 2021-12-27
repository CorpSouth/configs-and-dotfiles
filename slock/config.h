// user and group to drop privileges to //
static const char *user  = "nobody";
static const char *group = "nogroup";

// specify theme.h file //
#include "/home/pi/.config/suckless/slock/themes/slock-matcha-dark-azure.h"

// treat a cleared input like a wrong password (color) //
static const int failonclear = 1;

// allow control key to trigger fail on clear //
static const int controlkeyclear = 0;

// time in seconds before the monitor shuts down //
static const int monitortime = 5;

// time in seconds to cancel lock with mouse movement //
static const int timetocancel = 4;

// number of failed password attempts until failcommand is executed.
//   Set to 0 to disable //
static const int failcount = 3;

// command to be executed after [failcount] failed password attempts //
static const char *failcommand = "shutdown";
