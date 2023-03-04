using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysDictDetail
    {
        public long DetailId { get; set; }
        public long? DictId { get; set; }
        public string Label { get; set; } = null!;
        public string Value { get; set; } = null!;
        public int? DictSort { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
