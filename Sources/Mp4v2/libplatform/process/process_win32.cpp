#include "libplatform/impl.h"
#include <process.h>

namespace mp4v2 { namespace platform { namespace process {

///////////////////////////////////////////////////////////////////////////////
// ***chapterrelatedfile***
int32_t
getpid()
{
    return ::_getpid();
}

///////////////////////////////////////////////////////////////////////////////

}}} // namespace mp4v2::platform::process
