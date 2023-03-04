using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysDept
    {
        public long DeptId { get; set; }
        public long? Pid { get; set; }
        public int? SubCount { get; set; }
        public string Name { get; set; } = null!;
        public int? DeptSort { get; set; }
        public bool Enabled { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
