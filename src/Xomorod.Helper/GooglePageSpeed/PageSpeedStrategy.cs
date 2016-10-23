using System;

namespace Xomorod.Helper.GooglePageSpeed
{
    [Flags]
    public enum PageSpeedStrategy
    {
        Mobile = 1,
        Desktop = 2,
        All = Mobile | Desktop
    }
}
