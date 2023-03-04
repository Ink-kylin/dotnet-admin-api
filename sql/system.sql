USE vue_admin_api;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS sys_dept;
CREATE TABLE sys_dept
(
    dept_id     BIGINT PRIMARY KEY NOT NULL,
    pid         BIGINT       DEFAULT NULL,
    sub_count   INT          DEFAULT 0,
    name        VARCHAR(255)       NOT NULL,
    dept_sort   INT          DEFAULT 999,
    enabled     BIT                NOT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,

);

-- ----------------------------
-- Records of sys_dept
-- ----------------------------

INSERT INTO sys_dept
    VALUES (2, 7, 1, '研发部', 3, 1, 'admin', 'admin', '2019-03-25 09:15:32', '2020-08-02 14:48:47');
INSERT INTO sys_dept
    VALUES (5, 7, 0, '运维部', 4, 1, 'admin', 'admin', '2019-03-25 09:20:44', '2020-05-17 14:27:27');
INSERT INTO sys_dept
    VALUES (6, 8, 0, '测试部', 6, 1, 'admin', 'admin', '2019-03-25 09:52:18', '2020-06-08 11:59:21');
INSERT INTO sys_dept
    VALUES (7, NULL, 2, '华南分部', 0, 1, 'admin', 'admin', '2019-03-25 11:04:50', '2020-06-08 12:08:56');
INSERT INTO sys_dept
    VALUES (8, NULL, 2, '华北分部', 1, 1, 'admin', 'admin', '2019-03-25 11:04:53', '2020-05-14 12:54:00');
INSERT INTO sys_dept
    VALUES (15, 8, 0, 'UI部门', 7, 1, 'admin', 'admin', '2020-05-13 22:56:53', '2020-05-14 12:54:13');
INSERT INTO sys_dept
    VALUES (17, 2, 0, '研发一组', 999, 1, 'admin', 'admin', '2020-08-02 14:49:07', '2020-08-02 14:49:07');


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS sys_dict;
CREATE TABLE sys_dict
(
    dict_id     BIGINT PRIMARY KEY NOT NULL,
    name        VARCHAR(255)       NOT NULL,
    description VARCHAR(255) DEFAULT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,
);

-- ----------------------------
-- Records of sys_dict
-- ----------------------------

INSERT INTO sys_dict
    VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO sys_dict
    VALUES (4, 'dept_status', '部门状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO sys_dict
    VALUES (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);


-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS sys_dict_detail;
CREATE TABLE sys_dict_detail
(
    detail_id   BIGINT PRIMARY KEY NOT NULL,
    dict_id     BIGINT       DEFAULT NULL,
    label       VARCHAR(255)       NOT NULL,
    value       VARCHAR(255)       NOT NULL,
    dict_sort   INT          DEFAULT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,
);

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------

INSERT INTO sys_dict_detail
    VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO sys_dict_detail
    VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO sys_dict_detail
    VALUES (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO sys_dict_detail
    VALUES (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO sys_dict_detail
    VALUES (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO sys_dict_detail
    VALUES (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);


-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS sys_job;
CREATE TABLE sys_job
(
    job_id      BIGINT PRIMARY KEY  NOT NULL,
    name        VARCHAR(255) UNIQUE NOT NULL,
    enabled     BIT                 NOT NULL,
    job_sort    INT          DEFAULT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,

);

-- ----------------------------
-- Records of sys_job
-- ----------------------------

INSERT INTO sys_job
    VALUES (8, '人事专员', 1, 3, NULL, NULL, '2019-03-29 14:52:28', NULL);
INSERT INTO sys_job
    VALUES (10, '产品经理', 1, 4, NULL, NULL, '2019-03-29 14:55:51', NULL);
INSERT INTO sys_job
    VALUES (11, '全栈开发', 1, 2, NULL, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43');
INSERT INTO sys_job
    VALUES (12, '软件测试', 1, 5, NULL, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');


-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS sys_log;
CREATE TABLE sys_log
(
    log_id           BIGINT PRIMARY KEY NOT NULL,
    description      VARCHAR(255) DEFAULT NULL,
    log_type         VARCHAR(255) DEFAULT NULL,
    method           VARCHAR(255) DEFAULT NULL,
    params           VARCHAR(MAX) DEFAULT NULL,
    request_ip       VARCHAR(255) DEFAULT NULL,
    time             BIGINT       DEFAULT NULL,
    username         VARCHAR(255) DEFAULT NULL,
    address          VARCHAR(255) DEFAULT NULL,
    browser          VARCHAR(255) DEFAULT NULL,
    exception_detail VARCHAR(MAX) DEFAULT NULL,
    create_time      DATETIME     DEFAULT NULL,

);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu
(
    menu_id     BIGINT PRIMARY KEY NOT NULL,
    pid         BIGINT       DEFAULT NULL,
    sub_count   INT          DEFAULT 0,
    type        INT          DEFAULT NULL,
    title       VARCHAR(255) DEFAULT NULL,
    name        VARCHAR(255) DEFAULT NULL,
    component   VARCHAR(255) DEFAULT NULL,
    menu_sort   INT          DEFAULT NULL,
    icon        VARCHAR(255) DEFAULT NULL,
    path        VARCHAR(255) DEFAULT NULL,
    i_frame     BIT          DEFAULT NULL,
    cache       BIT          DEFAULT 0,
    hidden      BIT          DEFAULT 0,
    permission  VARCHAR(255) DEFAULT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,

);

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

INSERT INTO sys_menu
    VALUES (1, NULL, 7, 0, '系统管理', NULL, NULL, 1, 'system', 'system', 0, 0, 0, NULL, NULL, NULL, '2018-12-18 15:11:29',
            NULL);
INSERT INTO sys_menu
    VALUES (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', 0, 0, 0, 'user:list', NULL, NULL,
            '2018-12-18 15:14:44', NULL);
INSERT INTO sys_menu
    VALUES (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', 0, 0, 0, 'roles:list', NULL, NULL,
            '2018-12-18 15:16:07', NULL);
INSERT INTO sys_menu
    VALUES (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', 0, 0, 0, 'menu:list', NULL, NULL,
            '2018-12-18 15:17:28', NULL);
INSERT INTO sys_menu
    VALUES (6, NULL, 5, 0, '系统监控', NULL, NULL, 10, 'monitor', 'monitor', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-18 15:17:48', NULL);
INSERT INTO sys_menu
    VALUES (7, 6, 0, 1, '操作日志', 'Log', 'monitor/log/index', 11, 'log', 'logs', 0, 1, 0, NULL, NULL, 'admin',
            '2018-12-18 15:18:26', '2020-06-06 13:11:57');
INSERT INTO sys_menu
    VALUES (9, 6, 0, 1, 'SQL监控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-18 15:19:34', NULL);
INSERT INTO sys_menu
    VALUES (10, NULL, 5, 0, '组件管理', NULL, NULL, 50, 'zujian', 'components', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-19 13:38:16', NULL);
INSERT INTO sys_menu
    VALUES (11, 10, 0, 1, '图标库', 'Icons', 'components/icons/index', 51, 'icon', 'icon', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-19 13:38:49', NULL);
INSERT INTO sys_menu
    VALUES (14, 36, 0, 1, '邮件工具', 'Email', 'tools/email/index', 35, 'email', 'email', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-27 10:13:09', NULL);
INSERT INTO sys_menu
    VALUES (15, 10, 0, 1, '富文本', 'Editor', 'components/Editor', 52, 'fwb', 'tinymce', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-27 11:58:25', NULL);
INSERT INTO sys_menu
    VALUES (18, 36, 3, 1, '存储管理', 'Storage', 'tools/storage/index', 34, 'qiniu', 'storage', 0, 0, 0, 'storage:list',
            NULL, NULL, '2018-12-31 11:12:15', NULL);
INSERT INTO sys_menu
    VALUES (19, 36, 0, 1, '支付宝工具', 'AliPay', 'tools/aliPay/index', 37, 'alipay', 'aliPay', 0, 0, 0, NULL, NULL, NULL,
            '2018-12-31 14:52:38', NULL);
INSERT INTO sys_menu
    VALUES (21, NULL, 2, 0, '多级菜单', NULL, '', 900, 'menu', 'nested', 0, 0, 0, NULL, NULL, 'admin',
            '2019-01-04 16:22:03', '2020-06-21 17:27:35');
INSERT INTO sys_menu
    VALUES (22, 21, 2, 0, '二级菜单1', NULL, '', 999, 'menu', 'menu1', 0, 0, 0, NULL, NULL, 'admin', '2019-01-04 16:23:29',
            '2020-06-21 17:27:20');
INSERT INTO sys_menu
    VALUES (23, 21, 0, 1, '二级菜单2', NULL, 'nested/menu2/index', 999, 'menu', 'menu2', 0, 0, 0, NULL, NULL, NULL,
            '2019-01-04 16:23:57', NULL);
INSERT INTO sys_menu
    VALUES (24, 22, 0, 1, '三级菜单1', 'Test', 'nested/menu1/menu1-1', 999, 'menu', 'menu1-1', 0, 0, 0, NULL, NULL, NULL,
            '2019-01-04 16:24:48', NULL);
INSERT INTO sys_menu
    VALUES (27, 22, 0, 1, '三级菜单2', NULL, 'nested/menu1/menu1-2', 999, 'menu', 'menu1-2', 0, 0, 0, NULL, NULL, NULL,
            '2019-01-07 17:27:32', NULL);
INSERT INTO sys_menu
    VALUES (28, 1, 3, 1, '任务调度', 'Timing', 'system/timing/index', 999, 'timing', 'timing', 0, 0, 0, 'timing:list', NULL,
            NULL, '2019-01-07 20:34:40', NULL);
INSERT INTO sys_menu
    VALUES (30, 36, 0, 1, '代码生成', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', 0, 1, 0, NULL, NULL,
            NULL, '2019-01-11 15:45:55', NULL);
INSERT INTO sys_menu
    VALUES (32, 6, 0, 1, '异常日志', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', 0, 0, 0, NULL, NULL, NULL,
            '2019-01-13 13:49:03', NULL);
INSERT INTO sys_menu
    VALUES (33, 10, 0, 1, 'Markdown', 'Markdown', 'components/MarkDown', 53, 'markdown', 'markdown', 0, 0, 0, NULL,
            NULL, NULL, '2019-03-08 13:46:44', NULL);
INSERT INTO sys_menu
    VALUES (34, 10, 0, 1, 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', 54, 'dev', 'yaml', 0, 0, 0, NULL, NULL, NULL,
            '2019-03-08 15:49:40', NULL);
INSERT INTO sys_menu
    VALUES (35, 1, 3, 1, '部门管理', 'Dept', 'system/dept/index', 6, 'dept', 'dept', 0, 0, 0, 'dept:list', NULL, NULL,
            '2019-03-25 09:46:00', NULL);
INSERT INTO sys_menu
    VALUES (36, NULL, 7, 0, '系统工具', NULL, '', 30, 'sys-tools', 'sys-tools', 0, 0, 0, NULL, NULL, NULL,
            '2019-03-29 10:57:35', NULL);
INSERT INTO sys_menu
    VALUES (37, 1, 3, 1, '岗位管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', 0, 0, 0, 'job:list', NULL, NULL,
            '2019-03-29 13:51:18', NULL);
INSERT INTO sys_menu
    VALUES (38, 36, 0, 1, '接口文档', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', 0, 0, 0, NULL, NULL,
            NULL, '2019-03-29 19:57:53', NULL);
INSERT INTO sys_menu
    VALUES (39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', 0, 0, 0, 'dict:list', NULL, NULL,
            '2019-04-10 11:49:04', NULL);
INSERT INTO sys_menu
    VALUES (41, 6, 0, 1, '在线用户', 'OnlineUser', 'monitor/online/index', 10, 'Steve-Jobs', 'online', 0, 0, 0, NULL, NULL,
            NULL, '2019-10-26 22:08:43', NULL);
INSERT INTO sys_menu
    VALUES (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', 0, 0, 0, 'user:add', NULL, NULL, '2019-10-29 10:59:46', NULL);
INSERT INTO sys_menu
    VALUES (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', 0, 0, 0, 'user:edit', NULL, NULL, '2019-10-29 11:00:08', NULL);
INSERT INTO sys_menu
    VALUES (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', 0, 0, 0, 'user:del', NULL, NULL, '2019-10-29 11:00:23', NULL);
INSERT INTO sys_menu
    VALUES (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', 0, 0, 0, 'roles:add', NULL, NULL, '2019-10-29 12:45:34', NULL);
INSERT INTO sys_menu
    VALUES (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', 0, 0, 0, 'roles:edit', NULL, NULL, '2019-10-29 12:46:16', NULL);
INSERT INTO sys_menu
    VALUES (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', 0, 0, 0, 'roles:del', NULL, NULL, '2019-10-29 12:46:51', NULL);
INSERT INTO sys_menu
    VALUES (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', 0, 0, 0, 'menu:add', NULL, NULL, '2019-10-29 12:55:07', NULL);
INSERT INTO sys_menu
    VALUES (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', 0, 0, 0, 'menu:edit', NULL, NULL, '2019-10-29 12:55:40', NULL);
INSERT INTO sys_menu
    VALUES (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', 0, 0, 0, 'menu:del', NULL, NULL, '2019-10-29 12:56:00', NULL);
INSERT INTO sys_menu
    VALUES (56, 35, 0, 2, '部门新增', NULL, '', 2, '', '', 0, 0, 0, 'dept:add', NULL, NULL, '2019-10-29 12:57:09', NULL);
INSERT INTO sys_menu
    VALUES (57, 35, 0, 2, '部门编辑', NULL, '', 3, '', '', 0, 0, 0, 'dept:edit', NULL, NULL, '2019-10-29 12:57:27', NULL);
INSERT INTO sys_menu
    VALUES (58, 35, 0, 2, '部门删除', NULL, '', 4, '', '', 0, 0, 0, 'dept:del', NULL, NULL, '2019-10-29 12:57:41', NULL);
INSERT INTO sys_menu
    VALUES (60, 37, 0, 2, '岗位新增', NULL, '', 2, '', '', 0, 0, 0, 'job:add', NULL, NULL, '2019-10-29 12:58:27', NULL);
INSERT INTO sys_menu
    VALUES (61, 37, 0, 2, '岗位编辑', NULL, '', 3, '', '', 0, 0, 0, 'job:edit', NULL, NULL, '2019-10-29 12:58:45', NULL);
INSERT INTO sys_menu
    VALUES (62, 37, 0, 2, '岗位删除', NULL, '', 4, '', '', 0, 0, 0, 'job:del', NULL, NULL, '2019-10-29 12:59:04', NULL);
INSERT INTO sys_menu
    VALUES (64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', 0, 0, 0, 'dict:add', NULL, NULL, '2019-10-29 13:00:17', NULL);
INSERT INTO sys_menu
    VALUES (65, 39, 0, 2, '字典编辑', NULL, '', 3, '', '', 0, 0, 0, 'dict:edit', NULL, NULL, '2019-10-29 13:00:42', NULL);
INSERT INTO sys_menu
    VALUES (66, 39, 0, 2, '字典删除', NULL, '', 4, '', '', 0, 0, 0, 'dict:del', NULL, NULL, '2019-10-29 13:00:59', NULL);
INSERT INTO sys_menu
    VALUES (73, 28, 0, 2, '任务新增', NULL, '', 2, '', '', 0, 0, 0, 'timing:add', NULL, NULL, '2019-10-29 13:07:28', NULL);
INSERT INTO sys_menu
    VALUES (74, 28, 0, 2, '任务编辑', NULL, '', 3, '', '', 0, 0, 0, 'timing:edit', NULL, NULL, '2019-10-29 13:07:41', NULL);
INSERT INTO sys_menu
    VALUES (75, 28, 0, 2, '任务删除', NULL, '', 4, '', '', 0, 0, 0, 'timing:del', NULL, NULL, '2019-10-29 13:07:54', NULL);
INSERT INTO sys_menu
    VALUES (77, 18, 0, 2, '上传文件', NULL, '', 2, '', '', 0, 0, 0, 'storage:add', NULL, NULL, '2019-10-29 13:09:09', NULL);
INSERT INTO sys_menu
    VALUES (78, 18, 0, 2, '文件编辑', NULL, '', 3, '', '', 0, 0, 0, 'storage:edit', NULL, NULL, '2019-10-29 13:09:22',
            NULL);
INSERT INTO sys_menu
    VALUES (79, 18, 0, 2, '文件删除', NULL, '', 4, '', '', 0, 0, 0, 'storage:del', NULL, NULL, '2019-10-29 13:09:34', NULL);
INSERT INTO sys_menu
    VALUES (80, 6, 0, 1, '服务监控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', 0, 0, 0,
            'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO sys_menu
    VALUES (82, 36, 0, 1, '生成配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName', 0,
            1, 1, '', NULL, NULL, '2019-11-17 20:08:56', NULL);
INSERT INTO sys_menu
    VALUES (83, 10, 0, 1, '图表库', 'Echarts', 'components/Echarts', 50, 'chart', 'echarts', 0, 1, 0, '', NULL, NULL,
            '2019-11-21 09:04:32', NULL);
INSERT INTO sys_menu
    VALUES (90, NULL, 5, 1, '运维管理', 'Mnt', '', 20, 'mnt', 'mnt', 0, 0, 0, NULL, NULL, NULL, '2019-11-09 10:31:08',
            NULL);
INSERT INTO sys_menu
    VALUES (92, 90, 3, 1, '服务器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', 0, 0, 0,
            'serverDeploy:list', NULL, NULL, '2019-11-10 10:29:25', NULL);
INSERT INTO sys_menu
    VALUES (93, 90, 3, 1, '应用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', 0, 0, 0, 'app:list', NULL, NULL,
            '2019-11-10 11:05:16', NULL);
INSERT INTO sys_menu
    VALUES (94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', 0, 0, 0, 'deploy:list',
            NULL, NULL, '2019-11-10 15:56:55', NULL);
INSERT INTO sys_menu
    VALUES (97, 90, 1, 1, '部署备份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory', 0, 0,
            0, 'deployHistory:list', NULL, NULL, '2019-11-10 16:49:44', NULL);
INSERT INTO sys_menu
    VALUES (98, 90, 3, 1, '数据库管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', 0, 0, 0,
            'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL);
INSERT INTO sys_menu
    VALUES (102, 97, 0, 2, '删除', NULL, '', 999, '', '', 0, 0, 0, 'deployHistory:del', NULL, NULL, '2019-11-17 09:32:48',
            NULL);
INSERT INTO sys_menu
    VALUES (103, 92, 0, 2, '服务器新增', NULL, '', 999, '', '', 0, 0, 0, 'serverDeploy:add', NULL, NULL,
            '2019-11-17 11:08:33', NULL);
INSERT INTO sys_menu
    VALUES (104, 92, 0, 2, '服务器编辑', NULL, '', 999, '', '', 0, 0, 0, 'serverDeploy:edit', NULL, NULL,
            '2019-11-17 11:08:57', NULL);
INSERT INTO sys_menu
    VALUES (105, 92, 0, 2, '服务器删除', NULL, '', 999, '', '', 0, 0, 0, 'serverDeploy:del', NULL, NULL,
            '2019-11-17 11:09:15', NULL);
INSERT INTO sys_menu
    VALUES (106, 93, 0, 2, '应用新增', NULL, '', 999, '', '', 0, 0, 0, 'app:add', NULL, NULL, '2019-11-17 11:10:03', NULL);
INSERT INTO sys_menu
    VALUES (107, 93, 0, 2, '应用编辑', NULL, '', 999, '', '', 0, 0, 0, 'app:edit', NULL, NULL, '2019-11-17 11:10:28', NULL);
INSERT INTO sys_menu
    VALUES (108, 93, 0, 2, '应用删除', NULL, '', 999, '', '', 0, 0, 0, 'app:del', NULL, NULL, '2019-11-17 11:10:55', NULL);
INSERT INTO sys_menu
    VALUES (109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', 0, 0, 0, 'deploy:add', NULL, NULL, '2019-11-17 11:11:22',
            NULL);
INSERT INTO sys_menu
    VALUES (110, 94, 0, 2, '部署编辑', NULL, '', 999, '', '', 0, 0, 0, 'deploy:edit', NULL, NULL, '2019-11-17 11:11:41',
            NULL);
INSERT INTO sys_menu
    VALUES (111, 94, 0, 2, '部署删除', NULL, '', 999, '', '', 0, 0, 0, 'deploy:del', NULL, NULL, '2019-11-17 11:12:01',
            NULL);
INSERT INTO sys_menu
    VALUES (112, 98, 0, 2, '数据库新增', NULL, '', 999, '', '', 0, 0, 0, 'database:add', NULL, NULL, '2019-11-17 11:12:43',
            NULL);
INSERT INTO sys_menu
    VALUES (113, 98, 0, 2, '数据库编辑', NULL, '', 999, '', '', 0, 0, 0, 'database:edit', NULL, NULL, '2019-11-17 11:12:58',
            NULL);
INSERT INTO sys_menu
    VALUES (114, 98, 0, 2, '数据库删除', NULL, '', 999, '', '', 0, 0, 0, 'database:del', NULL, NULL, '2019-11-17 11:13:14',
            NULL);
INSERT INTO sys_menu
    VALUES (116, 36, 0, 1, '生成预览', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName', 0, 1,
            1, NULL, NULL, NULL, '2019-11-26 14:54:36', NULL);


-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS sys_quartz_job;
CREATE TABLE sys_quartz_job
(
    job_id              BIGINT PRIMARY KEY NOT NULL,
    bean_name           VARCHAR(255) DEFAULT NULL,
    cron_expression     VARCHAR(255) DEFAULT NULL,
    is_pause            BIT          DEFAULT NULL,
    job_name            VARCHAR(255) DEFAULT NULL,
    method_name         VARCHAR(255) DEFAULT NULL,
    params              VARCHAR(255) DEFAULT NULL,
    description         VARCHAR(255) DEFAULT NULL,
    person_in_charge    VARCHAR(100) DEFAULT NULL,
    email               VARCHAR(100) DEFAULT NULL,
    sub_task            VARCHAR(100) DEFAULT NULL,
    pause_after_failure BIT          DEFAULT NULL,
    create_by           VARCHAR(255) DEFAULT NULL,
    update_by           VARCHAR(255) DEFAULT NULL,
    create_time         DATETIME     DEFAULT NULL,
    update_time         DATETIME     DEFAULT NULL,
);

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------

INSERT INTO sys_quartz_job
    VALUES (2, 'testTask', '0/5 * * * * ?', 1, '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL, NULL,
            'admin', '2019-08-22 14:08:29', '2020-05-24 13:58:33');
INSERT INTO sys_quartz_job
    VALUES (3, 'testTask', '0/5 * * * * ?', 1, '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '5,6', 1, NULL, 'admin',
            '2019-09-26 16:44:39', '2020-05-24 14:48:12');
INSERT INTO sys_quartz_job
    VALUES (5, 'Test', '0/5 * * * * ?', 1, '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, 1, 'admin', 'admin',
            '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO sys_quartz_job
    VALUES (6, 'testTask', '0/5 * * * * ?', 1, '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, 1, 'admin',
            'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');


-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS sys_quartz_log;
CREATE TABLE sys_quartz_log
(
    log_id           BIGINT PRIMARY KEY NOT NULL,
    bean_name        VARCHAR(255) DEFAULT NULL,
    create_time      DATETIME     DEFAULT NULL,
    cron_expression  VARCHAR(255) DEFAULT NULL,
    exception_detail VARCHAR(MAX) DEFAULT NULL,
    is_success       BIT          DEFAULT NULL,
    job_name         VARCHAR(255) DEFAULT NULL,
    method_name      VARCHAR(255) DEFAULT NULL,
    params           VARCHAR(255) DEFAULT NULL,
    time             BIGINT       DEFAULT NULL,

);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role
(
    role_id     BIGINT PRIMARY KEY  NOT NULL,
    name        VARCHAR(255) UNIQUE NOT NULL,
    level       INT          DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    data_scope  VARCHAR(255) DEFAULT NULL,
    create_by   VARCHAR(255) DEFAULT NULL,
    update_by   VARCHAR(255) DEFAULT NULL,
    create_time DATETIME     DEFAULT NULL,
    update_time DATETIME     DEFAULT NULL,

);

-- ----------------------------
-- Records of sys_role
-- ----------------------------

INSERT INTO sys_role
    VALUES (1, '超级管理员', 1, '-', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2020-08-06 16:10:24');
INSERT INTO sys_role
    VALUES (2, '普通用户', 2, '-', '本级', NULL, 'admin', '2018-11-23 13:09:06', '2020-09-05 10:45:12');


-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS sys_roles_depts;
CREATE TABLE sys_roles_depts
(
    role_id BIGINT NOT NULL,
    dept_id BIGINT NOT NULL,
    PRIMARY KEY (role_id, dept_id)

);

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS sys_roles_menus;
CREATE TABLE sys_roles_menus
(
    menu_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (menu_id, role_id)
);

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------

INSERT INTO sys_roles_menus
    VALUES (1, 1);
INSERT INTO sys_roles_menus
    VALUES (2, 1);
INSERT INTO sys_roles_menus
    VALUES (3, 1);
INSERT INTO sys_roles_menus
    VALUES (5, 1);
INSERT INTO sys_roles_menus
    VALUES (6, 1);
INSERT INTO sys_roles_menus
    VALUES (7, 1);
INSERT INTO sys_roles_menus
    VALUES (9, 1);
INSERT INTO sys_roles_menus
    VALUES (10, 1);
INSERT INTO sys_roles_menus
    VALUES (11, 1);
INSERT INTO sys_roles_menus
    VALUES (14, 1);
INSERT INTO sys_roles_menus
    VALUES (15, 1);
INSERT INTO sys_roles_menus
    VALUES (18, 1);
INSERT INTO sys_roles_menus
    VALUES (19, 1);
INSERT INTO sys_roles_menus
    VALUES (21, 1);
INSERT INTO sys_roles_menus
    VALUES (22, 1);
INSERT INTO sys_roles_menus
    VALUES (23, 1);
INSERT INTO sys_roles_menus
    VALUES (24, 1);
INSERT INTO sys_roles_menus
    VALUES (27, 1);
INSERT INTO sys_roles_menus
    VALUES (28, 1);
INSERT INTO sys_roles_menus
    VALUES (30, 1);
INSERT INTO sys_roles_menus
    VALUES (32, 1);
INSERT INTO sys_roles_menus
    VALUES (33, 1);
INSERT INTO sys_roles_menus
    VALUES (34, 1);
INSERT INTO sys_roles_menus
    VALUES (35, 1);
INSERT INTO sys_roles_menus
    VALUES (36, 1);
INSERT INTO sys_roles_menus
    VALUES (37, 1);
INSERT INTO sys_roles_menus
    VALUES (38, 1);
INSERT INTO sys_roles_menus
    VALUES (39, 1);
INSERT INTO sys_roles_menus
    VALUES (41, 1);
INSERT INTO sys_roles_menus
    VALUES (44, 1);
INSERT INTO sys_roles_menus
    VALUES (45, 1);
INSERT INTO sys_roles_menus
    VALUES (46, 1);
INSERT INTO sys_roles_menus
    VALUES (48, 1);
INSERT INTO sys_roles_menus
    VALUES (49, 1);
INSERT INTO sys_roles_menus
    VALUES (50, 1);
INSERT INTO sys_roles_menus
    VALUES (52, 1);
INSERT INTO sys_roles_menus
    VALUES (53, 1);
INSERT INTO sys_roles_menus
    VALUES (54, 1);
INSERT INTO sys_roles_menus
    VALUES (56, 1);
INSERT INTO sys_roles_menus
    VALUES (57, 1);
INSERT INTO sys_roles_menus
    VALUES (58, 1);
INSERT INTO sys_roles_menus
    VALUES (60, 1);
INSERT INTO sys_roles_menus
    VALUES (61, 1);
INSERT INTO sys_roles_menus
    VALUES (62, 1);
INSERT INTO sys_roles_menus
    VALUES (64, 1);
INSERT INTO sys_roles_menus
    VALUES (65, 1);
INSERT INTO sys_roles_menus
    VALUES (66, 1);
INSERT INTO sys_roles_menus
    VALUES (73, 1);
INSERT INTO sys_roles_menus
    VALUES (74, 1);
INSERT INTO sys_roles_menus
    VALUES (75, 1);
INSERT INTO sys_roles_menus
    VALUES (77, 1);
INSERT INTO sys_roles_menus
    VALUES (78, 1);
INSERT INTO sys_roles_menus
    VALUES (79, 1);
INSERT INTO sys_roles_menus
    VALUES (80, 1);
INSERT INTO sys_roles_menus
    VALUES (82, 1);
INSERT INTO sys_roles_menus
    VALUES (83, 1);
INSERT INTO sys_roles_menus
    VALUES (90, 1);
INSERT INTO sys_roles_menus
    VALUES (92, 1);
INSERT INTO sys_roles_menus
    VALUES (93, 1);
INSERT INTO sys_roles_menus
    VALUES (94, 1);
INSERT INTO sys_roles_menus
    VALUES (97, 1);
INSERT INTO sys_roles_menus
    VALUES (98, 1);
INSERT INTO sys_roles_menus
    VALUES (102, 1);
INSERT INTO sys_roles_menus
    VALUES (103, 1);
INSERT INTO sys_roles_menus
    VALUES (104, 1);
INSERT INTO sys_roles_menus
    VALUES (105, 1);
INSERT INTO sys_roles_menus
    VALUES (106, 1);
INSERT INTO sys_roles_menus
    VALUES (107, 1);
INSERT INTO sys_roles_menus
    VALUES (108, 1);
INSERT INTO sys_roles_menus
    VALUES (109, 1);
INSERT INTO sys_roles_menus
    VALUES (110, 1);
INSERT INTO sys_roles_menus
    VALUES (111, 1);
INSERT INTO sys_roles_menus
    VALUES (112, 1);
INSERT INTO sys_roles_menus
    VALUES (113, 1);
INSERT INTO sys_roles_menus
    VALUES (114, 1);
INSERT INTO sys_roles_menus
    VALUES (116, 1);
INSERT INTO sys_roles_menus
    VALUES (120, 1);
INSERT INTO sys_roles_menus
    VALUES (1, 2);
INSERT INTO sys_roles_menus
    VALUES (2, 2);
INSERT INTO sys_roles_menus
    VALUES (6, 2);
INSERT INTO sys_roles_menus
    VALUES (7, 2);
INSERT INTO sys_roles_menus
    VALUES (9, 2);
INSERT INTO sys_roles_menus
    VALUES (10, 2);
INSERT INTO sys_roles_menus
    VALUES (11, 2);
INSERT INTO sys_roles_menus
    VALUES (14, 2);
INSERT INTO sys_roles_menus
    VALUES (15, 2);
INSERT INTO sys_roles_menus
    VALUES (19, 2);
INSERT INTO sys_roles_menus
    VALUES (21, 2);
INSERT INTO sys_roles_menus
    VALUES (22, 2);
INSERT INTO sys_roles_menus
    VALUES (23, 2);
INSERT INTO sys_roles_menus
    VALUES (24, 2);
INSERT INTO sys_roles_menus
    VALUES (27, 2);
INSERT INTO sys_roles_menus
    VALUES (30, 2);
INSERT INTO sys_roles_menus
    VALUES (32, 2);
INSERT INTO sys_roles_menus
    VALUES (33, 2);
INSERT INTO sys_roles_menus
    VALUES (34, 2);
INSERT INTO sys_roles_menus
    VALUES (36, 2);
INSERT INTO sys_roles_menus
    VALUES (80, 2);
INSERT INTO sys_roles_menus
    VALUES (82, 2);
INSERT INTO sys_roles_menus
    VALUES (83, 2);
INSERT INTO sys_roles_menus
    VALUES (116, 2);


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user
(
    user_id        BIGINT PRIMARY KEY NOT NULL,
    dept_id        BIGINT              DEFAULT NULL,
    username       VARCHAR(255) UNIQUE DEFAULT NULL,
    nick_name      VARCHAR(255)        DEFAULT NULL,
    gender         VARCHAR(2)          DEFAULT NULL,
    phone          VARCHAR(255)        DEFAULT NULL,
    email          VARCHAR(255) UNIQUE DEFAULT NULL,
    avatar_name    VARCHAR(255)        DEFAULT NULL,
    avatar_path    VARCHAR(255)        DEFAULT NULL,
    password       VARCHAR(255)        DEFAULT NULL,
    is_admin       BIT                 DEFAULT 0,
    enabled        BIGINT              DEFAULT NULL,
    create_by      VARCHAR(255)        DEFAULT NULL,
    update_by      VARCHAR(255)        DEFAULT NULL,
    pwd_reset_time DATETIME            DEFAULT NULL,
    create_time    DATETIME            DEFAULT NULL,
    update_time    DATETIME            DEFAULT NULL,

);

-- ----------------------------
-- Records of sys_user
-- ----------------------------

INSERT INTO sys_user
    VALUES (1, 2, 'admin', '管理员', '男', '18888888888', '201507802@qq.com', 'avatar-20200806032259161.png',
            '/Users/jie/Documents/work/me/admin/eladmin/~/avatar/avatar-20200806032259161.png',
            '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', 1, 1, NULL, 'admin',
            '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-09-05 10:43:31');
INSERT INTO sys_user
    VALUES (2, 2, 'test', '测试', '男', '19999999999', '231@qq.com', NULL, NULL,
            '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', 0, 1, 'admin', 'admin', NULL,
            '2020-05-05 11:15:49', '2020-09-05 10:43:38');


-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS sys_users_jobs;
CREATE TABLE sys_users_jobs
(
    user_id BIGINT NOT NULL,
    job_id  BIGINT NOT NULL,
    PRIMARY KEY (user_id, job_id)
);

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------

INSERT INTO sys_users_jobs
    VALUES (1, 11);
INSERT INTO sys_users_jobs
    VALUES (2, 12);


-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS sys_users_roles;
CREATE TABLE sys_users_roles
(
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, role_id)
);

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------

INSERT INTO sys_users_roles
    VALUES (1, 1);
INSERT INTO sys_users_roles
    VALUES (2, 2);



