using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysQuartzLog
    {
        public long LogId { get; set; }
        public string? BeanName { get; set; }
        public DateTime? CreateTime { get; set; }
        public string? CronExpression { get; set; }
        public string? ExceptionDetail { get; set; }
        public bool? IsSuccess { get; set; }
        public string? JobName { get; set; }
        public string? MethodName { get; set; }
        public string? Params { get; set; }
        public long? Time { get; set; }
    }
}
