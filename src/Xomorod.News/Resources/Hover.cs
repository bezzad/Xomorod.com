using System.Collections.Generic;

namespace Xomorod.News.Resources
{
    public static class Hover
    {
        public static List<string> IHoverModels;

        static Hover()
        {
            // http://gudh.github.io/ihover/dist/index.html
            IHoverModels = new List<string>()
            {
                "ih-item square colored effect13 left_to_right",
                "ih-item square effect7",
                "ih-item square effect6 from_top_and_bottom",
                "ih-item square colored effect6 from_left_and_right"
                //"ih-item square colored effect4",
                //"ih-item square effect3 bottom_to_top",
                //"ih-item square colored effect3 bottom_to_top",
                //"ih-item square colored effect3 top_to_bottom",
                //"ih-item circle effect19",
                //"ih-item circle colored effect1",
                //"ih-item circle colored effect19",
                //"ih-item circle effect17",
                //"ih-item circle colored effect16 right_to_left",
                //"ih-item circle colored effect15 left_to_right",
                //"ih-item circle effect15 left_to_right",
                //"ih-item circle colored effect13 from_left_and_right",
                //"ih-item circle colored effect13 top_to_bottom",
                //"ih-item circle effect3 left_to_right",
                //"ih-item circle colored effect3 right_to_left",
                //"ih-item circle effect1"
            };
        }
    }
}
