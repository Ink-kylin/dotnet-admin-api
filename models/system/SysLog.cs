using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysLog
    {
        public long LogId { get; set; }
        public string? Description { get; set; }
        public string? LogType { get; set; }
        public string? Method { get; set; }
        public string? Params { get; set; }
        public string? RequestIp { get; set; }
        public long? Time { get; set; }
        public string? Username { get; set; }
        public string? Address { get; set; }
        public string? Browser { get; set; }
        public string? ExceptionDetail { get; set; }
        public DateTime? CreateTime { get; set; }
    }
}
