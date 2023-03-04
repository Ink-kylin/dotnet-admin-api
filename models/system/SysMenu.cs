using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysMenu
    {
        public long MenuId { get; set; }
        public long? Pid { get; set; }
        public int? SubCount { get; set; }
        public int? Type { get; set; }
        public string? Title { get; set; }
        public string? Name { get; set; }
        public string? Component { get; set; }
        public int? MenuSort { get; set; }
        public string? Icon { get; set; }
        public string? Path { get; set; }
        public bool? IFrame { get; set; }
        public bool? Cache { get; set; }
        public bool? Hidden { get; set; }
        public string? Permission { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
