using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysRole
    {
        public long RoleId { get; set; }
        public string Name { get; set; } = null!;
        public int? Level { get; set; }
        public string? Description { get; set; }
        public string? DataScope { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
