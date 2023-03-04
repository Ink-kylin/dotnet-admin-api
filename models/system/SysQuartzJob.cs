using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysQuartzJob
    {
        public long JobId { get; set; }
        public string? BeanName { get; set; }
        public string? CronExpression { get; set; }
        public bool? IsPause { get; set; }
        public string? JobName { get; set; }
        public string? MethodName { get; set; }
        public string? Params { get; set; }
        public string? Description { get; set; }
        public string? PersonInCharge { get; set; }
        public string? Email { get; set; }
        public string? SubTask { get; set; }
        public bool? PauseAfterFailure { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
