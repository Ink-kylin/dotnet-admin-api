using System;
using System.Collections.Generic;

namespace dotnet_admin_api.models.system
{
    public partial class SysUser
    {
        public long UserId { get; set; }
        public long? DeptId { get; set; }
        public string? Username { get; set; }
        public string? NickName { get; set; }
        public string? Gender { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public string? AvatarName { get; set; }
        public string? AvatarPath { get; set; }
        public string? Password { get; set; }
        public bool? IsAdmin { get; set; }
        public long? Enabled { get; set; }
        public string? CreateBy { get; set; }
        public string? UpdateBy { get; set; }
        public DateTime? PwdResetTime { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? UpdateTime { get; set; }
    }
}
