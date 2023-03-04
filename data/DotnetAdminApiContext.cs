using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using dotnet_admin_api.models.system;

namespace dotnet_admin_api.data
{
    public partial class DotnetAdminApiContext : DbContext
    {
        public DotnetAdminApiContext()
        {
        }

        public DotnetAdminApiContext(DbContextOptions<DotnetAdminApiContext> options)
            : base(options)
        {
        }

        public virtual DbSet<SysDept> SysDepts { get; set; } = null!;
        public virtual DbSet<SysDict> SysDicts { get; set; } = null!;
        public virtual DbSet<SysDictDetail> SysDictDetails { get; set; } = null!;
        public virtual DbSet<SysJob> SysJobs { get; set; } = null!;
        public virtual DbSet<SysLog> SysLogs { get; set; } = null!;
        public virtual DbSet<SysMenu> SysMenus { get; set; } = null!;
        public virtual DbSet<SysQuartzJob> SysQuartzJobs { get; set; } = null!;
        public virtual DbSet<SysQuartzLog> SysQuartzLogs { get; set; } = null!;
        public virtual DbSet<SysRole> SysRoles { get; set; } = null!;
        public virtual DbSet<SysRolesDept> SysRolesDepts { get; set; } = null!;
        public virtual DbSet<SysRolesMenu> SysRolesMenus { get; set; } = null!;
        public virtual DbSet<SysUser> SysUsers { get; set; } = null!;
        public virtual DbSet<SysUsersJob> SysUsersJobs { get; set; } = null!;
        public virtual DbSet<SysUsersRole> SysUsersRoles { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=ConnectionStrings:DotnetAdmin");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("Chinese_PRC_CI_AS");

            modelBuilder.Entity<SysDept>(entity =>
            {
                entity.HasKey(e => e.DeptId)
                    .HasName("PK__sys_dept__DCA65974DA269266");

                entity.ToTable("sys_dept");

                entity.Property(e => e.DeptId)
                    .ValueGeneratedNever()
                    .HasColumnName("dept_id");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.DeptSort)
                    .HasColumnName("dept_sort")
                    .HasDefaultValueSql("((999))");

                entity.Property(e => e.Enabled).HasColumnName("enabled");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.Pid).HasColumnName("pid");

                entity.Property(e => e.SubCount)
                    .HasColumnName("sub_count")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysDict>(entity =>
            {
                entity.HasKey(e => e.DictId)
                    .HasName("PK__sys_dict__3BD4186CC0E0529A");

                entity.ToTable("sys_dict");

                entity.Property(e => e.DictId)
                    .ValueGeneratedNever()
                    .HasColumnName("dict_id");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("description");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysDictDetail>(entity =>
            {
                entity.HasKey(e => e.DetailId)
                    .HasName("PK__sys_dict__38E9A2242966C997");

                entity.ToTable("sys_dict_detail");

                entity.Property(e => e.DetailId)
                    .ValueGeneratedNever()
                    .HasColumnName("detail_id");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.DictId).HasColumnName("dict_id");

                entity.Property(e => e.DictSort).HasColumnName("dict_sort");

                entity.Property(e => e.Label)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("label");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");

                entity.Property(e => e.Value)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("value");
            });

            modelBuilder.Entity<SysJob>(entity =>
            {
                entity.HasKey(e => e.JobId)
                    .HasName("PK__sys_job__6E32B6A5FE937320");

                entity.ToTable("sys_job");

                entity.HasIndex(e => e.Name, "UQ__sys_job__72E12F1B87C4D030")
                    .IsUnique();

                entity.Property(e => e.JobId)
                    .ValueGeneratedNever()
                    .HasColumnName("job_id");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.Enabled).HasColumnName("enabled");

                entity.Property(e => e.JobSort).HasColumnName("job_sort");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysLog>(entity =>
            {
                entity.HasKey(e => e.LogId)
                    .HasName("PK__sys_log__9E2397E01B64EE1B");

                entity.ToTable("sys_log");

                entity.Property(e => e.LogId)
                    .ValueGeneratedNever()
                    .HasColumnName("log_id");

                entity.Property(e => e.Address)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("address");

                entity.Property(e => e.Browser)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("browser");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("description");

                entity.Property(e => e.ExceptionDetail)
                    .IsUnicode(false)
                    .HasColumnName("exception_detail");

                entity.Property(e => e.LogType)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("log_type");

                entity.Property(e => e.Method)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("method");

                entity.Property(e => e.Params)
                    .IsUnicode(false)
                    .HasColumnName("params");

                entity.Property(e => e.RequestIp)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("request_ip");

                entity.Property(e => e.Time).HasColumnName("time");

                entity.Property(e => e.Username)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("username");
            });

            modelBuilder.Entity<SysMenu>(entity =>
            {
                entity.HasKey(e => e.MenuId)
                    .HasName("PK__sys_menu__4CA0FADC37307B17");

                entity.ToTable("sys_menu");

                entity.Property(e => e.MenuId)
                    .ValueGeneratedNever()
                    .HasColumnName("menu_id");

                entity.Property(e => e.Cache)
                    .HasColumnName("cache")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Component)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("component");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.Hidden)
                    .HasColumnName("hidden")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.IFrame).HasColumnName("i_frame");

                entity.Property(e => e.Icon)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("icon");

                entity.Property(e => e.MenuSort).HasColumnName("menu_sort");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.Path)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("path");

                entity.Property(e => e.Permission)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("permission");

                entity.Property(e => e.Pid).HasColumnName("pid");

                entity.Property(e => e.SubCount)
                    .HasColumnName("sub_count")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Title)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("title");

                entity.Property(e => e.Type).HasColumnName("type");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysQuartzJob>(entity =>
            {
                entity.HasKey(e => e.JobId)
                    .HasName("PK__sys_quar__6E32B6A58F0ACB02");

                entity.ToTable("sys_quartz_job");

                entity.Property(e => e.JobId)
                    .ValueGeneratedNever()
                    .HasColumnName("job_id");

                entity.Property(e => e.BeanName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("bean_name");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.CronExpression)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("cron_expression");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("description");

                entity.Property(e => e.Email)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("email");

                entity.Property(e => e.IsPause).HasColumnName("is_pause");

                entity.Property(e => e.JobName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("job_name");

                entity.Property(e => e.MethodName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("method_name");

                entity.Property(e => e.Params)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("params");

                entity.Property(e => e.PauseAfterFailure).HasColumnName("pause_after_failure");

                entity.Property(e => e.PersonInCharge)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("person_in_charge");

                entity.Property(e => e.SubTask)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("sub_task");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysQuartzLog>(entity =>
            {
                entity.HasKey(e => e.LogId)
                    .HasName("PK__sys_quar__9E2397E02E23735E");

                entity.ToTable("sys_quartz_log");

                entity.Property(e => e.LogId)
                    .ValueGeneratedNever()
                    .HasColumnName("log_id");

                entity.Property(e => e.BeanName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("bean_name");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.CronExpression)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("cron_expression");

                entity.Property(e => e.ExceptionDetail)
                    .IsUnicode(false)
                    .HasColumnName("exception_detail");

                entity.Property(e => e.IsSuccess).HasColumnName("is_success");

                entity.Property(e => e.JobName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("job_name");

                entity.Property(e => e.MethodName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("method_name");

                entity.Property(e => e.Params)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("params");

                entity.Property(e => e.Time).HasColumnName("time");
            });

            modelBuilder.Entity<SysRole>(entity =>
            {
                entity.HasKey(e => e.RoleId)
                    .HasName("PK__sys_role__760965CC4D286DBB");

                entity.ToTable("sys_role");

                entity.HasIndex(e => e.Name, "UQ__sys_role__72E12F1BB21F4684")
                    .IsUnique();

                entity.Property(e => e.RoleId)
                    .ValueGeneratedNever()
                    .HasColumnName("role_id");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.DataScope)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("data_scope");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("description");

                entity.Property(e => e.Level).HasColumnName("level");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");
            });

            modelBuilder.Entity<SysRolesDept>(entity =>
            {
                entity.HasKey(e => new { e.RoleId, e.DeptId })
                    .HasName("PK__sys_role__2BC3005B93FC48AB");

                entity.ToTable("sys_roles_depts");

                entity.Property(e => e.RoleId).HasColumnName("role_id");

                entity.Property(e => e.DeptId).HasColumnName("dept_id");
            });

            modelBuilder.Entity<SysRolesMenu>(entity =>
            {
                entity.HasKey(e => new { e.MenuId, e.RoleId })
                    .HasName("PK__sys_role__9BC06C808B4B5B0F");

                entity.ToTable("sys_roles_menus");

                entity.Property(e => e.MenuId).HasColumnName("menu_id");

                entity.Property(e => e.RoleId).HasColumnName("role_id");
            });

            modelBuilder.Entity<SysUser>(entity =>
            {
                entity.HasKey(e => e.UserId)
                    .HasName("PK__sys_user__B9BE370F43F90AD8");

                entity.ToTable("sys_user");

                entity.HasIndex(e => e.Email, "UQ__sys_user__AB6E61645BF7E331")
                    .IsUnique();

                entity.HasIndex(e => e.Username, "UQ__sys_user__F3DBC57222C3AFFF")
                    .IsUnique();

                entity.Property(e => e.UserId)
                    .ValueGeneratedNever()
                    .HasColumnName("user_id");

                entity.Property(e => e.AvatarName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("avatar_name");

                entity.Property(e => e.AvatarPath)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("avatar_path");

                entity.Property(e => e.CreateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("create_by");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("create_time");

                entity.Property(e => e.DeptId).HasColumnName("dept_id");

                entity.Property(e => e.Email)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("email");

                entity.Property(e => e.Enabled).HasColumnName("enabled");

                entity.Property(e => e.Gender)
                    .HasMaxLength(2)
                    .IsUnicode(false)
                    .HasColumnName("gender");

                entity.Property(e => e.IsAdmin)
                    .HasColumnName("is_admin")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.NickName)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("nick_name");

                entity.Property(e => e.Password)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("password");

                entity.Property(e => e.Phone)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("phone");

                entity.Property(e => e.PwdResetTime)
                    .HasColumnType("datetime")
                    .HasColumnName("pwd_reset_time");

                entity.Property(e => e.UpdateBy)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("update_by");

                entity.Property(e => e.UpdateTime)
                    .HasColumnType("datetime")
                    .HasColumnName("update_time");

                entity.Property(e => e.Username)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("username");
            });

            modelBuilder.Entity<SysUsersJob>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.JobId })
                    .HasName("PK__sys_user__FF5D1C6508FACB69");

                entity.ToTable("sys_users_jobs");

                entity.Property(e => e.UserId).HasColumnName("user_id");

                entity.Property(e => e.JobId).HasColumnName("job_id");
            });

            modelBuilder.Entity<SysUsersRole>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId })
                    .HasName("PK__sys_user__6EDEA153AC1319C4");

                entity.ToTable("sys_users_roles");

                entity.Property(e => e.UserId).HasColumnName("user_id");

                entity.Property(e => e.RoleId).HasColumnName("role_id");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
