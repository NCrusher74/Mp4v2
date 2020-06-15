// ***chapterrelatedfile***
#include "libplatform/impl.h"

namespace mp4v2 { namespace platform { namespace time {

///////////////////////////////////////////////////////////////////////////////

seconds_t
getLocalTimeSeconds()
{
    return getLocalTimeMilliseconds() / 1000;
}

///////////////////////////////////////////////////////////////////////////////

}}} // namespace mp4v2::platform::time
