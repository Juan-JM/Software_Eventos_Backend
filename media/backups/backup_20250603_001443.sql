-- Backup de la base de datos creada el 2025-06-03 00:14:43.183740

-- Table django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
  id bigint,
  app character varying,
  name character varying,
  applied timestamp with time zone
) 

INSERT INTO django_migrations VALUES (1, 'contenttypes', '0001_initial', 2025-04-16 23:17:52.080286-04:00);
INSERT INTO django_migrations VALUES (2, 'contenttypes', '0002_remove_content_type_name', 2025-04-16 23:17:52.091472-04:00);
INSERT INTO django_migrations VALUES (3, 'auth', '0001_initial', 2025-04-16 23:17:52.133910-04:00);
INSERT INTO django_migrations VALUES (4, 'auth', '0002_alter_permission_name_max_length', 2025-04-16 23:17:52.143643-04:00);
INSERT INTO django_migrations VALUES (5, 'auth', '0003_alter_user_email_max_length', 2025-04-16 23:17:52.147231-04:00);
INSERT INTO django_migrations VALUES (6, 'auth', '0004_alter_user_username_opts', 2025-04-16 23:17:52.151208-04:00);
INSERT INTO django_migrations VALUES (7, 'auth', '0005_alter_user_last_login_null', 2025-04-16 23:17:52.155017-04:00);
INSERT INTO django_migrations VALUES (8, 'auth', '0006_require_contenttypes_0002', 2025-04-16 23:17:52.156105-04:00);
INSERT INTO django_migrations VALUES (9, 'auth', '0007_alter_validators_add_error_messages', 2025-04-16 23:17:52.162931-04:00);
INSERT INTO django_migrations VALUES (10, 'auth', '0008_alter_user_username_max_length', 2025-04-16 23:17:52.170715-04:00);
INSERT INTO django_migrations VALUES (11, 'auth', '0009_alter_user_last_name_max_length', 2025-04-16 23:17:52.176745-04:00);
INSERT INTO django_migrations VALUES (12, 'auth', '0010_alter_group_name_max_length', 2025-04-16 23:17:52.185544-04:00);
INSERT INTO django_migrations VALUES (13, 'auth', '0011_update_proxy_permissions', 2025-04-16 23:17:52.191840-04:00);
INSERT INTO django_migrations VALUES (14, 'auth', '0012_alter_user_first_name_max_length', 2025-04-16 23:17:52.196191-04:00);
INSERT INTO django_migrations VALUES (15, 'users', '0001_initial', 2025-04-16 23:17:52.224815-04:00);
INSERT INTO django_migrations VALUES (16, 'admin', '0001_initial', 2025-04-16 23:17:52.242916-04:00);
INSERT INTO django_migrations VALUES (17, 'admin', '0002_logentry_remove_auto_add', 2025-04-16 23:17:52.248533-04:00);
INSERT INTO django_migrations VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', 2025-04-16 23:17:52.254772-04:00);
INSERT INTO django_migrations VALUES (19, 'auditlog', '0001_initial', 2025-04-16 23:17:52.270878-04:00);
INSERT INTO django_migrations VALUES (20, 'auditlog', '0002_auto_support_long_primary_keys', 2025-04-16 23:17:52.293651-04:00);
INSERT INTO django_migrations VALUES (21, 'auditlog', '0003_logentry_remote_addr', 2025-04-16 23:17:52.304513-04:00);
INSERT INTO django_migrations VALUES (22, 'auditlog', '0004_logentry_detailed_object_repr', 2025-04-16 23:17:52.311333-04:00);
INSERT INTO django_migrations VALUES (23, 'auditlog', '0005_logentry_additional_data_verbose_name', 2025-04-16 23:17:52.318230-04:00);
INSERT INTO django_migrations VALUES (24, 'auditlog', '0006_object_pk_index', 2025-04-16 23:17:52.333312-04:00);
INSERT INTO django_migrations VALUES (25, 'auditlog', '0007_object_pk_type', 2025-04-16 23:17:52.344214-04:00);
INSERT INTO django_migrations VALUES (26, 'auditlog', '0008_action_index', 2025-04-16 23:17:52.356236-04:00);
INSERT INTO django_migrations VALUES (27, 'auditlog', '0009_alter_logentry_additional_data', 2025-04-16 23:17:52.363332-04:00);
INSERT INTO django_migrations VALUES (28, 'auditlog', '0010_alter_logentry_timestamp', 2025-04-16 23:17:52.372447-04:00);
INSERT INTO django_migrations VALUES (29, 'auditlog', '0011_logentry_serialized_data', 2025-04-16 23:17:52.379596-04:00);
INSERT INTO django_migrations VALUES (30, 'auditlog', '0012_add_logentry_action_access', 2025-04-16 23:17:52.387787-04:00);
INSERT INTO django_migrations VALUES (31, 'auditlog', '0013_alter_logentry_timestamp', 2025-04-16 23:17:52.395254-04:00);
INSERT INTO django_migrations VALUES (32, 'auditlog', '0014_logentry_cid', 2025-04-16 23:17:52.404553-04:00);
INSERT INTO django_migrations VALUES (33, 'auditlog', '0015_alter_logentry_changes', 2025-04-16 23:17:52.429103-04:00);
INSERT INTO django_migrations VALUES (34, 'products', '0001_initial', 2025-04-16 23:17:52.457102-04:00);
INSERT INTO django_migrations VALUES (35, 'cart', '0001_initial', 2025-04-16 23:17:52.487437-04:00);
INSERT INTO django_migrations VALUES (36, 'products', '0002_alter_product_image_url', 2025-04-16 23:17:52.493054-04:00);
INSERT INTO django_migrations VALUES (37, 'sessions', '0001_initial', 2025-04-16 23:17:52.500397-04:00);
INSERT INTO django_migrations VALUES (38, 'audit', '0001_initial', 2025-04-17 00:11:00.878538-04:00);
INSERT INTO django_migrations VALUES (39, 'audit', '0002_auditlog_content_type_alter_auditlog_object_id', 2025-04-17 01:06:06.112151-04:00);
INSERT INTO django_migrations VALUES (40, 'audit', '0003_remove_auditlog_content_type_and_more', 2025-04-17 01:10:59.766490-04:00);
INSERT INTO django_migrations VALUES (41, 'admin', '0004_alter_logentry_options', 2025-04-27 18:01:02.595181-04:00);
INSERT INTO django_migrations VALUES (42, 'services', '0001_initial', 2025-04-27 18:01:02.618864-04:00);
INSERT INTO django_migrations VALUES (43, 'locations', '0001_initial', 2025-04-27 19:20:54.015940-04:00);
INSERT INTO django_migrations VALUES (44, 'events', '0001_initial', 2025-04-28 23:26:21.622648-04:00);
INSERT INTO django_migrations VALUES (45, 'companies', '0001_initial', 2025-05-04 17:01:09.427250-04:00);
INSERT INTO django_migrations VALUES (46, 'companies', '0002_alter_company_logo_url_alter_company_website', 2025-05-04 17:01:09.434874-04:00);
INSERT INTO django_migrations VALUES (47, 'events', '0002_event_company', 2025-05-04 17:07:45.222940-04:00);
INSERT INTO django_migrations VALUES (48, 'locations', '0002_location_company', 2025-05-04 17:12:10.726563-04:00);
INSERT INTO django_migrations VALUES (49, 'services', '0002_service_company', 2025-05-04 17:12:10.738131-04:00);
INSERT INTO django_migrations VALUES (50, 'users', '0002_user_company_alter_user_user_type', 2025-05-04 17:12:10.761901-04:00);
INSERT INTO django_migrations VALUES (51, 'subscriptions', '0001_initial', 2025-05-04 21:30:27.095211-04:00);
INSERT INTO django_migrations VALUES (52, 'backup', '0001_initial', 2025-05-06 03:43:25.238775-04:00);
INSERT INTO django_migrations VALUES (53, 'subscriptions', '0002_alter_subscription_options_and_more', 2025-05-06 03:43:25.273359-04:00);
INSERT INTO django_migrations VALUES (54, 'packages', '0001_initial', 2025-05-19 13:34:22.579541-04:00);
INSERT INTO django_migrations VALUES (55, 'packages', '0002_remove_package_created_at_remove_package_updated_at', 2025-05-19 13:37:25.919776-04:00);
INSERT INTO django_migrations VALUES (56, 'events', '0003_event_is_package_event_package_alter_event_services', 2025-05-20 02:56:23.621770-04:00);
INSERT INTO django_migrations VALUES (57, 'sales', '0001_initial', 2025-06-02 20:12:13.576607-04:00);
INSERT INTO django_migrations VALUES (58, 'staff', '0001_initial', 2025-06-02 20:12:13.602306-04:00);
INSERT INTO django_migrations VALUES (59, 'tasks', '0001_initial', 2025-06-02 20:12:13.638328-04:00);
INSERT INTO django_migrations VALUES (60, 'schedules', '0001_initial', 2025-06-02 23:58:19.320248-04:00);

-- Table django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
  id integer,
  app_label character varying,
  model character varying
) 

INSERT INTO django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type VALUES (3, 'auth', 'group');
INSERT INTO django_content_type VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES (5, 'sessions', 'session');
INSERT INTO django_content_type VALUES (6, 'users', 'user');
INSERT INTO django_content_type VALUES (7, 'products', 'category');
INSERT INTO django_content_type VALUES (8, 'products', 'product');
INSERT INTO django_content_type VALUES (9, 'cart', 'cart');
INSERT INTO django_content_type VALUES (10, 'cart', 'cartitem');
INSERT INTO django_content_type VALUES (11, 'auditlog', 'logentry');
INSERT INTO django_content_type VALUES (12, 'audit', 'auditlog');
INSERT INTO django_content_type VALUES (13, 'services', 'service');
INSERT INTO django_content_type VALUES (14, 'locations', 'location');
INSERT INTO django_content_type VALUES (15, 'events', 'event');
INSERT INTO django_content_type VALUES (16, 'companies', 'company');
INSERT INTO django_content_type VALUES (17, 'subscriptions', 'subscription');
INSERT INTO django_content_type VALUES (18, 'backup', 'backup');
INSERT INTO django_content_type VALUES (19, 'packages', 'package');
INSERT INTO django_content_type VALUES (20, 'sales', 'detallenotaventa');
INSERT INTO django_content_type VALUES (21, 'sales', 'notaventa');
INSERT INTO django_content_type VALUES (22, 'staff', 'staff');
INSERT INTO django_content_type VALUES (23, 'tasks', 'task');
INSERT INTO django_content_type VALUES (24, 'schedules', 'schedule');
INSERT INTO django_content_type VALUES (25, 'schedules', 'activity');

-- Table auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
  id integer,
  name character varying,
  content_type_id integer,
  codename character varying
) 

INSERT INTO auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO auth_permission VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO auth_permission VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO auth_permission VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO auth_permission VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO auth_permission VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO auth_permission VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO auth_permission VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO auth_permission VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO auth_permission VALUES (21, 'Can add user', 6, 'add_user');
INSERT INTO auth_permission VALUES (22, 'Can change user', 6, 'change_user');
INSERT INTO auth_permission VALUES (23, 'Can delete user', 6, 'delete_user');
INSERT INTO auth_permission VALUES (24, 'Can view user', 6, 'view_user');
INSERT INTO auth_permission VALUES (25, 'Can add category', 7, 'add_category');
INSERT INTO auth_permission VALUES (26, 'Can change category', 7, 'change_category');
INSERT INTO auth_permission VALUES (27, 'Can delete category', 7, 'delete_category');
INSERT INTO auth_permission VALUES (28, 'Can view category', 7, 'view_category');
INSERT INTO auth_permission VALUES (29, 'Can add product', 8, 'add_product');
INSERT INTO auth_permission VALUES (30, 'Can change product', 8, 'change_product');
INSERT INTO auth_permission VALUES (31, 'Can delete product', 8, 'delete_product');
INSERT INTO auth_permission VALUES (32, 'Can view product', 8, 'view_product');
INSERT INTO auth_permission VALUES (33, 'Can add cart', 9, 'add_cart');
INSERT INTO auth_permission VALUES (34, 'Can change cart', 9, 'change_cart');
INSERT INTO auth_permission VALUES (35, 'Can delete cart', 9, 'delete_cart');
INSERT INTO auth_permission VALUES (36, 'Can view cart', 9, 'view_cart');
INSERT INTO auth_permission VALUES (37, 'Can add cart item', 10, 'add_cartitem');
INSERT INTO auth_permission VALUES (38, 'Can change cart item', 10, 'change_cartitem');
INSERT INTO auth_permission VALUES (39, 'Can delete cart item', 10, 'delete_cartitem');
INSERT INTO auth_permission VALUES (40, 'Can view cart item', 10, 'view_cartitem');
INSERT INTO auth_permission VALUES (41, 'Can add log entry', 11, 'add_logentry');
INSERT INTO auth_permission VALUES (42, 'Can change log entry', 11, 'change_logentry');
INSERT INTO auth_permission VALUES (43, 'Can delete log entry', 11, 'delete_logentry');
INSERT INTO auth_permission VALUES (44, 'Can view log entry', 11, 'view_logentry');
INSERT INTO auth_permission VALUES (45, 'Can add audit log', 12, 'add_auditlog');
INSERT INTO auth_permission VALUES (46, 'Can change audit log', 12, 'change_auditlog');
INSERT INTO auth_permission VALUES (47, 'Can delete audit log', 12, 'delete_auditlog');
INSERT INTO auth_permission VALUES (48, 'Can view audit log', 12, 'view_auditlog');
INSERT INTO auth_permission VALUES (49, 'Can add service', 13, 'add_service');
INSERT INTO auth_permission VALUES (50, 'Can change service', 13, 'change_service');
INSERT INTO auth_permission VALUES (51, 'Can delete service', 13, 'delete_service');
INSERT INTO auth_permission VALUES (52, 'Can view service', 13, 'view_service');
INSERT INTO auth_permission VALUES (53, 'Can add Locación', 14, 'add_location');
INSERT INTO auth_permission VALUES (54, 'Can change Locación', 14, 'change_location');
INSERT INTO auth_permission VALUES (55, 'Can delete Locación', 14, 'delete_location');
INSERT INTO auth_permission VALUES (56, 'Can view Locación', 14, 'view_location');
INSERT INTO auth_permission VALUES (57, 'Can add event', 15, 'add_event');
INSERT INTO auth_permission VALUES (58, 'Can change event', 15, 'change_event');
INSERT INTO auth_permission VALUES (59, 'Can delete event', 15, 'delete_event');
INSERT INTO auth_permission VALUES (60, 'Can view event', 15, 'view_event');
INSERT INTO auth_permission VALUES (61, 'Can add company', 16, 'add_company');
INSERT INTO auth_permission VALUES (62, 'Can change company', 16, 'change_company');
INSERT INTO auth_permission VALUES (63, 'Can delete company', 16, 'delete_company');
INSERT INTO auth_permission VALUES (64, 'Can view company', 16, 'view_company');
INSERT INTO auth_permission VALUES (65, 'Can add subscription', 17, 'add_subscription');
INSERT INTO auth_permission VALUES (66, 'Can change subscription', 17, 'change_subscription');
INSERT INTO auth_permission VALUES (67, 'Can delete subscription', 17, 'delete_subscription');
INSERT INTO auth_permission VALUES (68, 'Can view subscription', 17, 'view_subscription');
INSERT INTO auth_permission VALUES (69, 'Can add backup', 18, 'add_backup');
INSERT INTO auth_permission VALUES (70, 'Can change backup', 18, 'change_backup');
INSERT INTO auth_permission VALUES (71, 'Can delete backup', 18, 'delete_backup');
INSERT INTO auth_permission VALUES (72, 'Can view backup', 18, 'view_backup');
INSERT INTO auth_permission VALUES (73, 'Can add package', 19, 'add_package');
INSERT INTO auth_permission VALUES (74, 'Can change package', 19, 'change_package');
INSERT INTO auth_permission VALUES (75, 'Can delete package', 19, 'delete_package');
INSERT INTO auth_permission VALUES (76, 'Can view package', 19, 'view_package');
INSERT INTO auth_permission VALUES (77, 'Can add detalle nota venta', 20, 'add_detallenotaventa');
INSERT INTO auth_permission VALUES (78, 'Can change detalle nota venta', 20, 'change_detallenotaventa');
INSERT INTO auth_permission VALUES (79, 'Can delete detalle nota venta', 20, 'delete_detallenotaventa');
INSERT INTO auth_permission VALUES (80, 'Can view detalle nota venta', 20, 'view_detallenotaventa');
INSERT INTO auth_permission VALUES (81, 'Can add nota venta', 21, 'add_notaventa');
INSERT INTO auth_permission VALUES (82, 'Can change nota venta', 21, 'change_notaventa');
INSERT INTO auth_permission VALUES (83, 'Can delete nota venta', 21, 'delete_notaventa');
INSERT INTO auth_permission VALUES (84, 'Can view nota venta', 21, 'view_notaventa');
INSERT INTO auth_permission VALUES (85, 'Can add Personal', 22, 'add_staff');
INSERT INTO auth_permission VALUES (86, 'Can change Personal', 22, 'change_staff');
INSERT INTO auth_permission VALUES (87, 'Can delete Personal', 22, 'delete_staff');
INSERT INTO auth_permission VALUES (88, 'Can view Personal', 22, 'view_staff');
INSERT INTO auth_permission VALUES (89, 'Can add Tarea', 23, 'add_task');
INSERT INTO auth_permission VALUES (90, 'Can change Tarea', 23, 'change_task');
INSERT INTO auth_permission VALUES (91, 'Can delete Tarea', 23, 'delete_task');
INSERT INTO auth_permission VALUES (92, 'Can view Tarea', 23, 'view_task');
INSERT INTO auth_permission VALUES (93, 'Can add Cronograma', 24, 'add_schedule');
INSERT INTO auth_permission VALUES (94, 'Can change Cronograma', 24, 'change_schedule');
INSERT INTO auth_permission VALUES (95, 'Can delete Cronograma', 24, 'delete_schedule');
INSERT INTO auth_permission VALUES (96, 'Can view Cronograma', 24, 'view_schedule');
INSERT INTO auth_permission VALUES (97, 'Can add Actividad', 25, 'add_activity');
INSERT INTO auth_permission VALUES (98, 'Can change Actividad', 25, 'change_activity');
INSERT INTO auth_permission VALUES (99, 'Can delete Actividad', 25, 'delete_activity');
INSERT INTO auth_permission VALUES (100, 'Can view Actividad', 25, 'view_activity');

-- Table auth_group
CREATE TABLE IF NOT EXISTS auth_group (
  id integer,
  name character varying
) 

INSERT INTO auth_group VALUES (1, 'Cliente');
INSERT INTO auth_group VALUES (2, 'Administrador');

-- Table auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
  id bigint,
  group_id integer,
  permission_id integer
) 

INSERT INTO auth_group_permissions VALUES (1, 2, 1);
INSERT INTO auth_group_permissions VALUES (2, 2, 2);
INSERT INTO auth_group_permissions VALUES (3, 2, 3);
INSERT INTO auth_group_permissions VALUES (4, 2, 4);
INSERT INTO auth_group_permissions VALUES (5, 2, 5);
INSERT INTO auth_group_permissions VALUES (6, 2, 6);
INSERT INTO auth_group_permissions VALUES (7, 2, 7);
INSERT INTO auth_group_permissions VALUES (8, 2, 8);
INSERT INTO auth_group_permissions VALUES (9, 2, 9);
INSERT INTO auth_group_permissions VALUES (10, 2, 10);
INSERT INTO auth_group_permissions VALUES (11, 2, 11);
INSERT INTO auth_group_permissions VALUES (12, 2, 12);
INSERT INTO auth_group_permissions VALUES (13, 2, 13);
INSERT INTO auth_group_permissions VALUES (14, 2, 14);
INSERT INTO auth_group_permissions VALUES (15, 2, 15);
INSERT INTO auth_group_permissions VALUES (16, 2, 16);
INSERT INTO auth_group_permissions VALUES (17, 2, 17);
INSERT INTO auth_group_permissions VALUES (18, 2, 18);
INSERT INTO auth_group_permissions VALUES (19, 2, 19);
INSERT INTO auth_group_permissions VALUES (20, 2, 20);
INSERT INTO auth_group_permissions VALUES (21, 2, 21);
INSERT INTO auth_group_permissions VALUES (22, 2, 22);
INSERT INTO auth_group_permissions VALUES (23, 2, 23);
INSERT INTO auth_group_permissions VALUES (24, 2, 24);
INSERT INTO auth_group_permissions VALUES (25, 2, 25);
INSERT INTO auth_group_permissions VALUES (26, 2, 26);
INSERT INTO auth_group_permissions VALUES (27, 2, 27);
INSERT INTO auth_group_permissions VALUES (28, 2, 28);
INSERT INTO auth_group_permissions VALUES (29, 2, 29);
INSERT INTO auth_group_permissions VALUES (30, 2, 30);
INSERT INTO auth_group_permissions VALUES (31, 2, 31);
INSERT INTO auth_group_permissions VALUES (32, 2, 32);
INSERT INTO auth_group_permissions VALUES (33, 2, 33);
INSERT INTO auth_group_permissions VALUES (34, 2, 34);
INSERT INTO auth_group_permissions VALUES (35, 2, 35);
INSERT INTO auth_group_permissions VALUES (36, 2, 36);
INSERT INTO auth_group_permissions VALUES (37, 2, 37);
INSERT INTO auth_group_permissions VALUES (38, 2, 38);
INSERT INTO auth_group_permissions VALUES (39, 2, 39);
INSERT INTO auth_group_permissions VALUES (40, 2, 40);
INSERT INTO auth_group_permissions VALUES (41, 2, 41);
INSERT INTO auth_group_permissions VALUES (42, 2, 42);
INSERT INTO auth_group_permissions VALUES (43, 2, 43);
INSERT INTO auth_group_permissions VALUES (44, 2, 44);
INSERT INTO auth_group_permissions VALUES (45, 2, 45);
INSERT INTO auth_group_permissions VALUES (46, 2, 46);
INSERT INTO auth_group_permissions VALUES (47, 2, 47);
INSERT INTO auth_group_permissions VALUES (48, 2, 48);

-- Table auth_user
CREATE TABLE IF NOT EXISTS auth_user (
  id bigint,
  password character varying,
  last_login timestamp with time zone,
  is_superuser boolean,
  username character varying,
  first_name character varying,
  last_name character varying,
  email character varying,
  is_staff boolean,
  is_active boolean,
  date_joined timestamp with time zone,
  user_type character varying,
  phone character varying,
  address text,
  company_id bigint
) 

INSERT INTO auth_user VALUES (12, 'pbkdf2_sha256$1000000$ONrhe8ujwcU8WWbMHdxUHy$w/4Vv720WQSPUWOGX0/s7v8U1T3kekUXO+3gvgmFZ3o=', NULL, False, 'admin.saona', '', '', 'saona@admin.com', False, True, 2025-05-04 18:06:57.338223-04:00, 'admin', NULL, NULL, 1);
INSERT INTO auth_user VALUES (13, 'pbkdf2_sha256$1000000$DoShJZx18uxFWALaNpqVRL$vkGFCy/9lR0E6N2fe7ulp5i6zezhsP47cT4D+KfMUNw=', NULL, False, 'admin.arboliana', '', '', 'arboliana@admin.com', False, True, 2025-05-04 18:11:53.287966-04:00, 'admin', NULL, NULL, 2);
INSERT INTO auth_user VALUES (15, 'pbkdf2_sha256$1000000$S076ueHvZ9vZp0WG3hHWQV$LKpm+B2gsf1GKNhnKyMCJD/NPAk0sLN113fBQP/2uyM=', NULL, False, 'admin.prueba', '', '', 'prueba@gmail.com', False, True, 2025-05-04 18:36:52.162890-04:00, 'admin', NULL, NULL, 4);
INSERT INTO auth_user VALUES (16, 'pbkdf2_sha256$1000000$gYXzr5DrPgwm2hGOOGDdsV$Q9lgymS81eDtN5/9fFP3++LRISKCmeN7HQEmWWKquWs=', NULL, False, 'pruebas', 'pruebas', 'pruebass', 'pruebas@gmail.com', False, True, 2025-05-04 18:51:31.960782-04:00, 'staff', '123', '123', 1);
INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$1000000$S076ueHvZ9vZp0WG3hHWQV$LKpm+B2gsf1GKNhnKyMCJD/NPAk0sLN113fBQP/2uyM=', 2025-05-20 00:00:53.819464-04:00, True, 'admin', 'ad', 'mn', 'admin@admin.com', True, True, 2025-05-04 18:36:52.162890-04:00, 'superadmin', NULL, NULL, NULL);

-- Table auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
  id bigint,
  user_id bigint,
  group_id integer
) 


-- Table auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
  id bigint,
  user_id bigint,
  permission_id integer
) 


-- Table django_admin_log
CREATE TABLE IF NOT EXISTS django_admin_log (
  id integer,
  action_time timestamp with time zone,
  object_id text,
  object_repr character varying,
  action_flag smallint,
  change_message text,
  content_type_id integer,
  user_id bigint
) 


-- Table auditlog_logentry
CREATE TABLE IF NOT EXISTS auditlog_logentry (
  id integer,
  object_pk character varying,
  object_id bigint,
  object_repr text,
  action smallint,
  changes jsonb,
  timestamp timestamp with time zone,
  actor_id bigint,
  content_type_id integer,
  remote_addr inet,
  additional_data jsonb,
  serialized_data jsonb,
  cid character varying,
  changes_text text
) 

INSERT INTO auditlog_logentry VALUES (1, '1', 1, 'admin', 0, {'id': ['None', '1'], 'email': ['None', 'admin@admin.com'], 'is_staff': ['None', 'True'], 'password': ['None', 'pbkdf2_sha256$1000000$L4Bpf8MI5V5pXhFqHPvKkw$IzguVLy4D5REq6td46dE8TZKAk5hjFs/nJY4OwC4wA0='], 'username': ['None', 'admin'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'customer'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-04-17 03:18:44.836801'], 'is_superuser': ['None', 'True']}, 2025-04-16 23:18:45.306995-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (2, '1', 1, 'admin', 1, {'last_login': ['None', '2025-04-17 03:21:27.229360']}, 2025-04-16 23:21:27.237199-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (3, '1', 1, 'admin', 1, {'address': ['None', ''], 'user_type': ['customer', 'admin'], 'last_login': ['2025-04-17 03:21:27.229360', '2025-04-17 03:21:27'], 'date_joined': ['2025-04-17 03:18:44.836801', '2025-04-17 03:18:44']}, 2025-04-16 23:21:40.882112-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (4, '2', 2, 'pla', 0, {'id': ['None', '2'], 'email': ['None', 'pla@ma.com'], 'phone': ['None', '123456'], 'address': ['None', 'la villa'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$V0cj3BQIVdC549wWSGAKB5$0GImBpLAnpJ4rJFiRV9Id3LWCQFPRbZqUy81Y0bn2v4='], 'username': ['None', 'pla'], 'is_active': ['None', 'True'], 'last_name': ['None', 'apellido'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'nombre'], 'date_joined': ['None', '2025-04-17 03:24:00.085953'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:24:01.018896-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (5, '3', 3, 'cliente2', 0, {'id': ['None', '3'], 'email': ['None', 'pla@ma.com'], 'phone': ['None', '123456'], 'address': ['None', 'la villa'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$QYgVAR23fjEMT04R306daV$Cyfw4lV2kj762apEy2Zk1odh/owR8RcUVSC7fAHJwsU='], 'username': ['None', 'cliente2'], 'is_active': ['None', 'True'], 'last_name': ['None', 'apellido'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'nombre'], 'date_joined': ['None', '2025-04-17 03:25:20.325485'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:25:21.206714-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (6, '4', 4, 'cliente3', 0, {'id': ['None', '4'], 'email': ['None', 'pla@ma.com'], 'phone': ['None', '123'], 'address': ['None', 'la villa'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$y9AqcubWBuUcVi4Rhp4XNe$rTPHbWOvMt4DBkju+JIBD/MFXEpI+GbOnQJBQ26rFsA='], 'username': ['None', 'cliente3'], 'is_active': ['None', 'True'], 'last_name': ['None', 'apellido'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'nombre'], 'date_joined': ['None', '2025-04-17 03:25:45.611112'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:25:46.466717-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (7, '5', 5, 'cliente4', 0, {'id': ['None', '5'], 'email': ['None', 's@s.com'], 'phone': ['None', '1234'], 'address': ['None', 'el palmar'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$btvpvvGEIzuyepEPbL01Gy$cuYpldAtYLJIP3QNI/5FthXvpBQPGvXnSUIyO3CzC9E='], 'username': ['None', 'cliente4'], 'is_active': ['None', 'True'], 'last_name': ['None', 'cliente4'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'cliente4'], 'date_joined': ['None', '2025-04-17 03:36:09.197349'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:36:10.092724-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (8, '6', 6, 'cliente6', 0, {'id': ['None', '6'], 'email': ['None', 'cli@cli.com'], 'phone': ['None', '1234'], 'address': ['None', 'lala'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$LwwUlTk7siB4HsfMvKdblc$CUBnxWlqcODxgvGTAEq7nI9cNAhYGiDOLIr9bMa/zWk='], 'username': ['None', 'cliente6'], 'is_active': ['None', 'True'], 'last_name': ['None', 'cliente6'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'cliente6'], 'date_joined': ['None', '2025-04-17 03:44:29.030131'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:44:29.940217-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (9, '7', 7, 'cliente11', 0, {'id': ['None', '7'], 'email': ['None', 'cli@cli.com'], 'phone': ['None', '123'], 'address': ['None', '123'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$GK0sD3h0XELB2hHJKZ8vfz$iafVQM4e3NuGR9GYtfJuwqCYOwyLPYpTqD8U3/ZFFVI='], 'username': ['None', 'cliente11'], 'is_active': ['None', 'True'], 'last_name': ['None', 'cli'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'cli'], 'date_joined': ['None', '2025-04-17 03:53:28.523932'], 'is_superuser': ['None', 'False']}, 2025-04-16 23:53:29.490753-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (10, '8', 8, 'cliente1111', 0, {'id': ['None', '8'], 'email': ['None', 'cli@s.com'], 'phone': ['None', '1234'], 'address': ['None', 'asd'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$mJLk0m9PxafyWIYS5VwKV9$juguFb+on6sxT6J9LocKf9Zrf0+9YYCIWWNGsEaLFFE='], 'username': ['None', 'cliente1111'], 'is_active': ['None', 'True'], 'last_name': ['None', 'cli'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'cli'], 'date_joined': ['None', '2025-04-17 04:11:46.499722'], 'is_superuser': ['None', 'False']}, 2025-04-17 00:11:47.030989-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (11, '9', 9, 'cliente231', 0, {'id': ['None', '9'], 'email': ['None', 'cli@cli.com'], 'phone': ['None', 'q'], 'address': ['None', 'q'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$UOrn74k671QTjhIj0NM6ek$u+qpDl4N1ZZCVTDJdakB7w4P1SJ8rvkMlmiA1IIw8k0='], 'username': ['None', 'cliente231'], 'is_active': ['None', 'True'], 'last_name': ['None', 'c'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'c'], 'date_joined': ['None', '2025-04-17 04:30:57.616817'], 'is_superuser': ['None', 'False']}, 2025-04-17 00:30:58.680342-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (12, '10', 10, 'cliente1233', 0, {'id': ['None', '10'], 'email': ['None', 'u2@u.com'], 'phone': ['None', '1'], 'address': ['None', '123'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$CGllD8Ypde2hJK48zvcge9$cSOX8lxBdPvShjyvj4OGHgwfG5bUAI4POqpg6tUT3kA='], 'username': ['None', 'cliente1233'], 'is_active': ['None', 'True'], 'last_name': ['None', '2'], 'user_type': ['None', 'customer'], 'first_name': ['None', '2'], 'date_joined': ['None', '2025-04-17 05:08:56.171818'], 'is_superuser': ['None', 'False']}, 2025-04-17 01:08:57.223434-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (13, '3', 3, 'clientzzzzz', 1, {'username': ['cliente2', 'clientzzzzz']}, 2025-04-17 01:13:40.825244-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (43, '6', 6, 'qwe', 0, {'id': ['None', '6'], 'name': ['None', 'qwe'], 'company': ['None', '1'], 'provider': ['None', 'qwe1'], 'base_price': ['None', '123.00'], 'created_at': ['None', '2025-05-06 09:57:03.029199'], 'updated_at': ['None', '2025-05-06 09:57:03.029213'], 'description': ['None', 'qwe'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '123']}, 2025-05-06 05:57:03.039450-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (14, '11', 11, 'Cliente_nuevo', 0, {'id': ['None', '11'], 'email': ['None', 'new_cliente@gmail.com'], 'phone': ['None', '777777'], 'address': ['None', 'La Lujan'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$0wP6CnqvGzvke3VvjXACu1$CWADrrXG4LSNY8JBAsxwo/1AcGaIM3Z3Dcs2jxeP8II='], 'username': ['None', 'Cliente_nuevo'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Nuevo'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'Cliente'], 'date_joined': ['None', '2025-04-17 07:20:57.349326'], 'is_superuser': ['None', 'False']}, 2025-04-17 03:20:57.790646-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (15, '2', 2, 'pla', 2, {'id': ['2', 'None'], 'email': ['pla@ma.com', 'None'], 'phone': ['123456', 'None'], 'address': ['la villa', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$V0cj3BQIVdC549wWSGAKB5$0GImBpLAnpJ4rJFiRV9Id3LWCQFPRbZqUy81Y0bn2v4=', 'None'], 'username': ['pla', 'None'], 'is_active': ['True', 'None'], 'last_name': ['apellido', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['nombre', 'None'], 'date_joined': ['2025-04-17 03:24:00.085953', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:28.501455-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (16, '4', 4, 'cliente3', 2, {'id': ['4', 'None'], 'email': ['pla@ma.com', 'None'], 'phone': ['123', 'None'], 'address': ['la villa', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$y9AqcubWBuUcVi4Rhp4XNe$rTPHbWOvMt4DBkju+JIBD/MFXEpI+GbOnQJBQ26rFsA=', 'None'], 'username': ['cliente3', 'None'], 'is_active': ['True', 'None'], 'last_name': ['apellido', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['nombre', 'None'], 'date_joined': ['2025-04-17 03:25:45.611112', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:30.513417-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (17, '5', 5, 'cliente4', 2, {'id': ['5', 'None'], 'email': ['s@s.com', 'None'], 'phone': ['1234', 'None'], 'address': ['el palmar', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$btvpvvGEIzuyepEPbL01Gy$cuYpldAtYLJIP3QNI/5FthXvpBQPGvXnSUIyO3CzC9E=', 'None'], 'username': ['cliente4', 'None'], 'is_active': ['True', 'None'], 'last_name': ['cliente4', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['cliente4', 'None'], 'date_joined': ['2025-04-17 03:36:09.197349', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:33.573705-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (18, '8', 8, 'cliente1111', 2, {'id': ['8', 'None'], 'email': ['cli@s.com', 'None'], 'phone': ['1234', 'None'], 'address': ['asd', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$mJLk0m9PxafyWIYS5VwKV9$juguFb+on6sxT6J9LocKf9Zrf0+9YYCIWWNGsEaLFFE=', 'None'], 'username': ['cliente1111', 'None'], 'is_active': ['True', 'None'], 'last_name': ['cli', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['cli', 'None'], 'date_joined': ['2025-04-17 04:11:46.499722', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:38.731703-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (19, '6', 6, 'cliente6', 2, {'id': ['6', 'None'], 'email': ['cli@cli.com', 'None'], 'phone': ['1234', 'None'], 'address': ['lala', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$LwwUlTk7siB4HsfMvKdblc$CUBnxWlqcODxgvGTAEq7nI9cNAhYGiDOLIr9bMa/zWk=', 'None'], 'username': ['cliente6', 'None'], 'is_active': ['True', 'None'], 'last_name': ['cliente6', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['cliente6', 'None'], 'date_joined': ['2025-04-17 03:44:29.030131', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:45.308776-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (20, '9', 9, 'cliente231', 2, {'id': ['9', 'None'], 'email': ['cli@cli.com', 'None'], 'phone': ['q', 'None'], 'address': ['q', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$UOrn74k671QTjhIj0NM6ek$u+qpDl4N1ZZCVTDJdakB7w4P1SJ8rvkMlmiA1IIw8k0=', 'None'], 'username': ['cliente231', 'None'], 'is_active': ['True', 'None'], 'last_name': ['c', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['c', 'None'], 'date_joined': ['2025-04-17 04:30:57.616817', 'None'], 'is_superuser': ['False', 'None']}, 2025-04-17 03:21:47.197524-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (21, '11', 11, 'Cliente_nuevo', 1, {'user_type': ['customer', 'staff']}, 2025-04-17 03:22:56.408311-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (22, '1', 1, 'admin', 1, {'last_login': ['2025-04-17 03:21:27', '2025-04-17 11:38:47.753411']}, 2025-04-17 07:38:47.760552-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (23, '3', 3, 'clientechad', 1, {'email': ['pla@ma.com', 'plass@ma.com'], 'phone': ['123456', '1234567'], 'username': ['clientzzzzz', 'clientechad'], 'last_name': ['apellido', 'apellidos'], 'first_name': ['nombre', 'nombres']}, 2025-04-26 22:16:49.184747-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (24, '1', 1, 'admin', 1, {'last_login': ['2025-04-17 11:38:47.753411', '2025-04-27 04:47:39.529615']}, 2025-04-27 00:47:39.533605-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (25, '1', 1, '123', 0, {'id': ['None', '1'], 'name': ['None', '123'], 'provider': ['None', '123'], 'base_price': ['None', '123.00'], 'created_at': ['None', '2025-04-27 23:31:50.136562'], 'updated_at': ['None', '2025-04-27 23:31:50.136588'], 'description': ['None', '123'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '123']}, 2025-04-27 19:31:50.148392-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (26, '2', 2, 'asd', 0, {'id': ['None', '2'], 'name': ['None', 'asd'], 'provider': ['None', 'asd'], 'base_price': ['None', '123.00'], 'created_at': ['None', '2025-04-27 23:33:25.554310'], 'updated_at': ['None', '2025-04-27 23:33:25.554334'], 'description': ['None', 'asd'], 'unit_measure': ['None', 'event'], 'standard_duration': ['None', '123']}, 2025-04-27 19:33:25.561533-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (27, '3', 3, '123', 0, {'id': ['None', '3'], 'name': ['None', '123'], 'provider': ['None', '123'], 'base_price': ['None', '123.00'], 'created_at': ['None', '2025-04-27 23:45:44.985048'], 'updated_at': ['None', '2025-04-27 23:45:44.985062'], 'description': ['None', '123'], 'unit_measure': ['None', 'event'], 'standard_duration': ['None', '123']}, 2025-04-27 19:45:44.992915-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (28, '2', 2, 'asd', 2, {'id': ['2', 'None'], 'name': ['asd', 'None'], 'provider': ['asd', 'None'], 'base_price': ['123.00', 'None'], 'created_at': ['2025-04-27 23:33:25.554310', 'None'], 'updated_at': ['2025-04-27 23:33:25.554334', 'None'], 'description': ['asd', 'None'], 'unit_measure': ['event', 'None'], 'standard_duration': ['123', 'None']}, 2025-04-27 19:47:35.103001-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (29, '3', 3, 'qwe', 1, {'name': ['123', 'qwe'], 'base_price': ['123.00', '321.00'], 'description': ['123', 'csd'], 'standard_duration': ['123', '12']}, 2025-04-27 19:47:54.151968-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (30, '12', 12, 'admin.saona', 0, {'id': ['None', '12'], 'email': ['None', 'saona@admin.com'], 'company': ['None', '1'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$ONrhe8ujwcU8WWbMHdxUHy$w/4Vv720WQSPUWOGX0/s7v8U1T3kekUXO+3gvgmFZ3o='], 'username': ['None', 'admin.saona'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'admin'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-05-04 22:06:57.338223'], 'is_superuser': ['None', 'False']}, 2025-05-04 18:06:57.854655-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (31, '13', 13, 'admin.arboliana', 0, {'id': ['None', '13'], 'email': ['None', 'arboliana@admin.com'], 'company': ['None', '2'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$DoShJZx18uxFWALaNpqVRL$vkGFCy/9lR0E6N2fe7ulp5i6zezhsP47cT4D+KfMUNw='], 'username': ['None', 'admin.arboliana'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'admin'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-05-04 22:11:53.287966'], 'is_superuser': ['None', 'False']}, 2025-05-04 18:11:53.810673-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (32, '14', 14, 'admin.prueba', 0, {'id': ['None', '14'], 'email': ['None', 'prueba@gmail.com'], 'company': ['None', '3'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$rLhHTGyooa7ZMg6FD0itcL$L8E4NR6xQTQUwVvnay3u2L05d1IDZUvXksC6ElFEPKQ='], 'username': ['None', 'admin.prueba'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'admin'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-05-04 22:16:25.658656'], 'is_superuser': ['None', 'False']}, 2025-05-04 18:16:26.177990-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (33, '15', 15, 'admin.prueba', 0, {'id': ['None', '15'], 'email': ['None', 'prueba@gmail.com'], 'company': ['None', '4'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$S076ueHvZ9vZp0WG3hHWQV$LKpm+B2gsf1GKNhnKyMCJD/NPAk0sLN113fBQP/2uyM='], 'username': ['None', 'admin.prueba'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'admin'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-05-04 22:36:52.162890'], 'is_superuser': ['None', 'False']}, 2025-05-04 18:36:52.645010-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (34, '10', 10, 'cliente1233', 2, {'id': ['10', 'None'], 'email': ['u2@u.com', 'None'], 'phone': ['1', 'None'], 'address': ['123', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$CGllD8Ypde2hJK48zvcge9$cSOX8lxBdPvShjyvj4OGHgwfG5bUAI4POqpg6tUT3kA=', 'None'], 'username': ['cliente1233', 'None'], 'is_active': ['True', 'None'], 'last_name': ['2', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['2', 'None'], 'date_joined': ['2025-04-17 05:08:56.171818', 'None'], 'is_superuser': ['False', 'None']}, 2025-05-04 18:39:00.000796-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (35, '7', 7, 'cliente11', 2, {'id': ['7', 'None'], 'email': ['cli@cli.com', 'None'], 'phone': ['123', 'None'], 'address': ['123', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$GK0sD3h0XELB2hHJKZ8vfz$iafVQM4e3NuGR9GYtfJuwqCYOwyLPYpTqD8U3/ZFFVI=', 'None'], 'username': ['cliente11', 'None'], 'is_active': ['True', 'None'], 'last_name': ['cli', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['cli', 'None'], 'date_joined': ['2025-04-17 03:53:28.523932', 'None'], 'is_superuser': ['False', 'None']}, 2025-05-04 18:39:04.914342-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (36, '11', 11, 'Cliente_nuevo', 2, {'id': ['11', 'None'], 'email': ['new_cliente@gmail.com', 'None'], 'phone': ['777777', 'None'], 'address': ['La Lujan', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$0wP6CnqvGzvke3VvjXACu1$CWADrrXG4LSNY8JBAsxwo/1AcGaIM3Z3Dcs2jxeP8II=', 'None'], 'username': ['Cliente_nuevo', 'None'], 'is_active': ['True', 'None'], 'last_name': ['Nuevo', 'None'], 'user_type': ['staff', 'None'], 'first_name': ['Cliente', 'None'], 'date_joined': ['2025-04-17 07:20:57.349326', 'None'], 'is_superuser': ['False', 'None']}, 2025-05-04 18:39:07.473531-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (37, '1', 1, 'admin', 2, {'id': ['1', 'None'], 'email': ['admin@admin.com', 'None'], 'address': ['', 'None'], 'is_staff': ['True', 'None'], 'password': ['pbkdf2_sha256$1000000$L4Bpf8MI5V5pXhFqHPvKkw$IzguVLy4D5REq6td46dE8TZKAk5hjFs/nJY4OwC4wA0=', 'None'], 'username': ['admin', 'None'], 'is_active': ['True', 'None'], 'last_name': ['', 'None'], 'user_type': ['superadmin', 'None'], 'first_name': ['', 'None'], 'last_login': ['2025-04-27 04:47:39.529615', 'None'], 'date_joined': ['2025-04-17 03:18:44', 'None'], 'is_superuser': ['True', 'None']}, 2025-05-04 18:39:09.848207-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (38, '3', 3, 'clientechad', 2, {'id': ['3', 'None'], 'email': ['plass@ma.com', 'None'], 'phone': ['1234567', 'None'], 'address': ['la villa', 'None'], 'is_staff': ['False', 'None'], 'password': ['pbkdf2_sha256$1000000$L4Bpf8MI5V5pXhFqHPvKkw$IzguVLy4D5REq6td46dE8TZKAk5hjFs/nJY4OwC4wA0=', 'None'], 'username': ['clientechad', 'None'], 'is_active': ['True', 'None'], 'last_name': ['apellidos', 'None'], 'user_type': ['customer', 'None'], 'first_name': ['nombres', 'None'], 'date_joined': ['2025-04-17 03:25:20.325485', 'None'], 'is_superuser': ['False', 'None']}, 2025-05-04 18:42:16.764045-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (39, '4', 4, 'asd', 0, {'id': ['None', '4'], 'name': ['None', 'asd'], 'company': ['None', '1'], 'provider': ['None', '123'], 'base_price': ['None', '123.00'], 'created_at': ['None', '2025-05-04 22:47:29.357949'], 'updated_at': ['None', '2025-05-04 22:47:29.357964'], 'description': ['None', 'asd'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '120']}, 2025-05-04 18:47:29.364780-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (40, '4', 4, 'asd', 2, {'id': ['4', 'None'], 'name': ['asd', 'None'], 'company': ['1', 'None'], 'provider': ['123', 'None'], 'base_price': ['123.00', 'None'], 'created_at': ['2025-05-04 22:47:29.357949', 'None'], 'updated_at': ['2025-05-04 22:47:29.357964', 'None'], 'description': ['asd', 'None'], 'unit_measure': ['hour', 'None'], 'standard_duration': ['120', 'None']}, 2025-05-04 18:49:06.794455-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (41, '16', 16, 'pruebas', 0, {'id': ['None', '16'], 'email': ['None', 'pruebas@gmail.com'], 'phone': ['None', '123'], 'address': ['None', '123'], 'company': ['None', '1'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$gYXzr5DrPgwm2hGOOGDdsV$Q9lgymS81eDtN5/9fFP3++LRISKCmeN7HQEmWWKquWs='], 'username': ['None', 'pruebas'], 'is_active': ['None', 'True'], 'last_name': ['None', 'pruebass'], 'user_type': ['None', 'staff'], 'first_name': ['None', 'pruebas'], 'date_joined': ['None', '2025-05-04 22:51:31.960782'], 'is_superuser': ['None', 'False']}, 2025-05-04 18:51:32.523857-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (42, '1', 1, 'admin', 1, {'last_login': ['None', '2025-05-06 03:51:58.972146']}, 2025-05-05 23:51:58.982821-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (44, '7', 7, 'Servicio de Catering', 0, {'id': ['None', '7'], 'name': ['None', 'Servicio de Catering'], 'company': ['None', '1'], 'provider': ['None', 'Pollo Kikys'], 'base_price': ['None', '30.00'], 'created_at': ['None', '2025-05-19 18:29:24.205914'], 'updated_at': ['None', '2025-05-19 18:29:24.205943'], 'description': ['None', 'Servicios de Comida'], 'unit_measure': ['None', 'person']}, 2025-05-19 14:29:24.221511-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (45, '7', 7, 'Servicio de Catering', 1, {'provider': ['Pollo Kikys', 'Kikys']}, 2025-05-19 14:29:36.233538-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (46, '8', 8, 'Servicio de Musica Quinceaños', 0, {'id': ['None', '8'], 'name': ['None', 'Servicio de Musica Quinceaños'], 'company': ['None', '1'], 'provider': ['None', 'Mariachis'], 'base_price': ['None', '200.00'], 'created_at': ['None', '2025-05-19 23:19:35.136899'], 'updated_at': ['None', '2025-05-19 23:19:35.136917'], 'description': ['None', 'Musica en vivo para una fiesta de quinceaños'], 'unit_measure': ['None', 'hour']}, 2025-05-19 19:19:35.141049-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (47, '9', 9, 'Planificación y coordinación de eventos', 0, {'id': ['None', '9'], 'name': ['None', 'Planificación y coordinación de eventos'], 'company': ['None', '1'], 'provider': ['None', 'Dueño'], 'base_price': ['None', '100.00'], 'created_at': ['None', '2025-05-19 23:24:18.435626'], 'updated_at': ['None', '2025-05-19 23:24:18.435638'], 'description': ['None', 'Servicio integral que abarca la organización del evento de principio a fin, incluyendo cronograma, logística, coordinación de proveedores y supervisión el día del evento.'], 'unit_measure': ['None', 'event']}, 2025-05-19 19:24:18.439930-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (48, '10', 10, 'Animación y entretenimiento', 0, {'id': ['None', '10'], 'name': ['None', 'Animación y entretenimiento'], 'company': ['None', '1'], 'provider': ['None', 'Proveedorx'], 'base_price': ['None', '150.00'], 'created_at': ['None', '2025-05-19 23:27:13.389128'], 'updated_at': ['None', '2025-05-19 23:27:13.389148'], 'description': ['None', 'Contratación de animadores, presentadores, DJs, bandas musicales, artistas, bailarines, shows temáticos, comediantes, etc.'], 'unit_measure': ['None', 'event']}, 2025-05-19 19:27:13.395116-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (49, '11', 11, 'Decoración y ambientación', 0, {'id': ['None', '11'], 'name': ['None', 'Decoración y ambientación'], 'company': ['None', '1'], 'provider': ['None', 'Proveedor X'], 'base_price': ['None', '100.00'], 'created_at': ['None', '2025-05-19 23:27:38.605745'], 'updated_at': ['None', '2025-05-19 23:27:38.605764'], 'description': ['None', 'Diseño y montaje de decoraciones temáticas o personalizadas: centros de mesa, backdrops, flores, globos, iluminación ambiental, etc.'], 'unit_measure': ['None', 'event']}, 2025-05-19 19:27:38.610106-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (50, '12', 12, 'Fotografía y video', 0, {'id': ['None', '12'], 'name': ['None', 'Fotografía y video'], 'company': ['None', '1'], 'provider': ['None', 'Proveedor X'], 'base_price': ['None', '50.00'], 'created_at': ['None', '2025-05-19 23:28:20.027969'], 'updated_at': ['None', '2025-05-19 23:28:20.027991'], 'description': ['None', 'Cobertura visual profesional del evento con cámaras, drones, edición y entrega digital o impresa.'], 'unit_measure': ['None', 'unit']}, 2025-05-19 19:28:20.030395-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (51, '6', 6, 'qwe', 2, {'id': ['6', 'None'], 'name': ['qwe', 'None'], 'company': ['1', 'None'], 'provider': ['qwe1', 'None'], 'base_price': ['123.00', 'None'], 'created_at': ['2025-05-06 09:57:03.029199', 'None'], 'updated_at': ['2025-05-06 09:57:03.029213', 'None'], 'description': ['qwe', 'None'], 'unit_measure': ['hour', 'None'], 'standard_duration': ['123', 'None']}, 2025-05-19 19:28:24.522467-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (52, '1', 1, 'admin', 1, {'last_login': ['2025-05-06 03:51:58.972146', '2025-05-20 04:00:53.819464']}, 2025-05-20 00:00:53.830794-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (53, '13', 13, 'asd', 0, {'id': ['None', '13'], 'name': ['None', 'asd'], 'company': ['None', '1'], 'provider': ['None', 'x'], 'base_price': ['None', '12.00'], 'created_at': ['None', '2025-05-20 04:12:13.127390'], 'updated_at': ['None', '2025-05-20 04:12:13.127414'], 'description': ['None', 'asd'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '123']}, 2025-05-20 00:12:13.155471-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (54, '13', 13, 'asd', 2, {'id': ['13', 'None'], 'name': ['asd', 'None'], 'company': ['1', 'None'], 'provider': ['x', 'None'], 'base_price': ['12.00', 'None'], 'created_at': ['2025-05-20 04:12:13.127390', 'None'], 'updated_at': ['2025-05-20 04:12:13.127414', 'None'], 'description': ['asd', 'None'], 'unit_measure': ['hour', 'None'], 'standard_duration': ['123', 'None']}, 2025-05-20 01:38:21.392841-04:00, NULL, 13, NULL, NULL, NULL, NULL, '');

-- Table django_session
CREATE TABLE IF NOT EXISTS django_session (
  session_key character varying,
  session_data text,
  expire_date timestamp with time zone
) 

INSERT INTO django_session VALUES ('y8ejmznoobopousxfn3tcyrjopq5mhvn', '.eJxVjDsOwjAQBe_iGlnr764o6TmD5c8GB5AjxUkVcXcSKQW0b2beJkJclxrWznMYi7gKJS6_W4r5xe0A5RnbY5J5ass8Jnko8qRd3qfC79vp_h3U2OteQzTWJjLak_cKgGwxg0M1IKJLJQIwJ9ZIyiAaYmZFDjDvYs5We_H5ArBtNrQ:1u5Fod:aGcby8lU3tpYU30zR-iZryNgm4jbOcEaJMx7fCQGw24', 2025-04-30 23:21:27.242477-04:00);
INSERT INTO django_session VALUES ('e341m07wzfjdrb38uq35hw871qtwm19m', '.eJxVjDsOwjAQBe_iGlnr764o6TmD5c8GB5AjxUkVcXcSKQW0b2beJkJclxrWznMYi7gKJS6_W4r5xe0A5RnbY5J5ass8Jnko8qRd3qfC79vp_h3U2OteQzTWJjLak_cKgGwxg0M1IKJLJQIwJ9ZIyiAaYmZFDjDvYs5We_H5ArBtNrQ:1u5NZv:FuiFj-NphsjC33yTs7JggZMh4pBdGmjDsYZjrRaT4v0', 2025-05-01 07:38:47.774840-04:00);
INSERT INTO django_session VALUES ('c0tg7h2l3nsdehaf9d39r9y6oyfeblrw', '.eJxVjMsOwiAUBf-FtSFQuQVcuvcbyH2AVE2blHZl_HfbpAvdnpk5b5VwXWpaW57TIOqirDr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVZEkcSAAyvZdIJRv0PZKJZ9dRCRBQ2FF0njtgYgveBoayWd4AZPX5Avl2OC8:1uC9Lb:TdTUcfgnNdzGkHxHLW2u5OHRKaU07EfKFqtayV_8Ip8', 2025-05-19 23:51:59.004858-04:00);
INSERT INTO django_session VALUES ('din5m92ihsh8g8mbuossh8dv0od5d7p9', '.eJxVjMsOwiAUBf-FtSFQuQVcuvcbyH2AVE2blHZl_HfbpAvdnpk5b5VwXWpaW57TIOqirDr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVZEkcSAAyvZdIJRv0PZKJZ9dRCRBQ2FF0njtgYgveBoayWd4AZPX5Avl2OC8:1uHE9t:4r7oB58XfUyCRkULuMd8VKvt8Cq6ph_TAuq5_7qDpwc', 2025-06-03 00:00:53.851538-04:00);

-- Table events_event_services
CREATE TABLE IF NOT EXISTS events_event_services (
  id bigint,
  event_id bigint,
  service_id bigint
) 


-- Table audit_auditlog
CREATE TABLE IF NOT EXISTS audit_auditlog (
  id bigint,
  timestamp timestamp with time zone,
  action character varying,
  model character varying,
  object_id character varying,
  detail text,
  ip_address inet,
  user_id bigint
) 

INSERT INTO audit_auditlog VALUES (72, 2025-05-04 18:42:03.539493-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (31, 2025-04-27 17:21:24.372272-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (32, 2025-04-27 17:21:28.525337-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (33, 2025-04-27 17:21:28.526312-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (34, 2025-04-27 17:22:45.986351-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (35, 2025-04-27 17:22:54.732493-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (36, 2025-04-27 17:22:54.736510-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (43, 2025-04-27 17:28:02.347236-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (44, 2025-04-27 17:28:10.306874-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (45, 2025-04-27 17:28:10.307832-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (48, 2025-04-27 17:42:48.950918-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (49, 2025-04-27 17:42:55.389792-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario clientechad', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (74, 2025-05-04 18:43:53.097995-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (76, 2025-05-04 18:49:06.781925-04:00, 'DELETE', 'Service', '4', 'Service ''asd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (78, 2025-05-05 14:47:57.122526-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (80, 2025-05-05 14:48:06.259968-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (82, 2025-05-05 18:46:05.496406-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (84, 2025-05-06 00:08:00.976752-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (86, 2025-05-06 00:53:55.424231-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (88, 2025-05-06 01:06:16.071919-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (90, 2025-05-06 01:08:08.876296-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (92, 2025-05-06 03:42:04.155412-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (94, 2025-05-06 04:07:31.632473-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (96, 2025-05-06 05:21:31.381950-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (98, 2025-05-06 05:56:40.829109-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (100, 2025-05-06 05:59:10.572783-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (102, 2025-05-19 14:02:45.781313-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (103, 2025-05-19 14:03:02.470898-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (104, 2025-05-19 14:03:09.078225-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
