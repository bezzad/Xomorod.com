using System;
using GridMvc.DataAnnotations;

namespace Xomorod.Com.Core
{
    public class GridColumnDisplayAttribute : GridColumnAttribute
    {
        public Type ResourceType { get; set; }

        public string Name
        {
            get { return Title; }
            set
            {
                Title = ResourceType?.GetProperty(value)?.GetValue(null)?.ToString() ?? value;
            }
        }
    }
}