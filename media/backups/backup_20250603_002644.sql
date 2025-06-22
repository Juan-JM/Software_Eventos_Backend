-- Backup de la base de datos creada el 2025-06-03 00:26:44.707433

-- Table django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
  id bigint,
  app character varying,
  name character varying,
  applied timestamp with time zone
) 

INSERT INTO django_migrations VALUES (1, 'contenttypes', '0001_initial', 2025-05-03 19:45:35.419174-04:00);
INSERT INTO django_migrations VALUES (2, 'contenttypes', '0002_remove_content_type_name', 2025-05-03 19:45:35.431827-04:00);
INSERT INTO django_migrations VALUES (3, 'auth', '0001_initial', 2025-05-03 19:45:35.470448-04:00);
INSERT INTO django_migrations VALUES (4, 'auth', '0002_alter_permission_name_max_length', 2025-05-03 19:45:35.474533-04:00);
INSERT INTO django_migrations VALUES (5, 'auth', '0003_alter_user_email_max_length', 2025-05-03 19:45:35.479476-04:00);
INSERT INTO django_migrations VALUES (6, 'auth', '0004_alter_user_username_opts', 2025-05-03 19:45:35.483756-04:00);
INSERT INTO django_migrations VALUES (7, 'auth', '0005_alter_user_last_login_null', 2025-05-03 19:45:35.487679-04:00);
INSERT INTO django_migrations VALUES (8, 'auth', '0006_require_contenttypes_0002', 2025-05-03 19:45:35.488937-04:00);
INSERT INTO django_migrations VALUES (9, 'auth', '0007_alter_validators_add_error_messages', 2025-05-03 19:45:35.493854-04:00);
INSERT INTO django_migrations VALUES (10, 'auth', '0008_alter_user_username_max_length', 2025-05-03 19:45:35.499514-04:00);
INSERT INTO django_migrations VALUES (11, 'auth', '0009_alter_user_last_name_max_length', 2025-05-03 19:45:35.504205-04:00);
INSERT INTO django_migrations VALUES (12, 'auth', '0010_alter_group_name_max_length', 2025-05-03 19:45:35.511818-04:00);
INSERT INTO django_migrations VALUES (13, 'auth', '0011_update_proxy_permissions', 2025-05-03 19:45:35.517011-04:00);
INSERT INTO django_migrations VALUES (14, 'auth', '0012_alter_user_first_name_max_length', 2025-05-03 19:45:35.520882-04:00);
INSERT INTO django_migrations VALUES (15, 'users', '0001_initial', 2025-05-03 19:45:35.556581-04:00);
INSERT INTO django_migrations VALUES (16, 'admin', '0001_initial', 2025-05-03 19:45:35.580605-04:00);
INSERT INTO django_migrations VALUES (17, 'admin', '0002_logentry_remove_auto_add', 2025-05-03 19:45:35.585885-04:00);
INSERT INTO django_migrations VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', 2025-05-03 19:45:35.591317-04:00);
INSERT INTO django_migrations VALUES (19, 'audit', '0001_initial', 2025-05-03 19:45:35.606836-04:00);
INSERT INTO django_migrations VALUES (20, 'audit', '0002_auditlog_content_type_alter_auditlog_object_id', 2025-05-03 19:45:35.636200-04:00);
INSERT INTO django_migrations VALUES (21, 'audit', '0003_remove_auditlog_content_type_and_more', 2025-05-03 19:45:35.663349-04:00);
INSERT INTO django_migrations VALUES (22, 'auditlog', '0001_initial', 2025-05-03 19:45:35.684782-04:00);
INSERT INTO django_migrations VALUES (23, 'auditlog', '0002_auto_support_long_primary_keys', 2025-05-03 19:45:35.704109-04:00);
INSERT INTO django_migrations VALUES (24, 'auditlog', '0003_logentry_remote_addr', 2025-05-03 19:45:35.713653-04:00);
INSERT INTO django_migrations VALUES (25, 'auditlog', '0004_logentry_detailed_object_repr', 2025-05-03 19:45:35.719750-04:00);
INSERT INTO django_migrations VALUES (26, 'auditlog', '0005_logentry_additional_data_verbose_name', 2025-05-03 19:45:35.725719-04:00);
INSERT INTO django_migrations VALUES (27, 'auditlog', '0006_object_pk_index', 2025-05-03 19:45:35.739555-04:00);
INSERT INTO django_migrations VALUES (28, 'auditlog', '0007_object_pk_type', 2025-05-03 19:45:35.749629-04:00);
INSERT INTO django_migrations VALUES (29, 'auditlog', '0008_action_index', 2025-05-03 19:45:35.757023-04:00);
INSERT INTO django_migrations VALUES (30, 'auditlog', '0009_alter_logentry_additional_data', 2025-05-03 19:45:35.764400-04:00);
INSERT INTO django_migrations VALUES (31, 'auditlog', '0010_alter_logentry_timestamp', 2025-05-03 19:45:35.772687-04:00);
INSERT INTO django_migrations VALUES (32, 'auditlog', '0011_logentry_serialized_data', 2025-05-03 19:45:35.781989-04:00);
INSERT INTO django_migrations VALUES (33, 'auditlog', '0012_add_logentry_action_access', 2025-05-03 19:45:35.787661-04:00);
INSERT INTO django_migrations VALUES (34, 'auditlog', '0013_alter_logentry_timestamp', 2025-05-03 19:45:35.793946-04:00);
INSERT INTO django_migrations VALUES (35, 'auditlog', '0014_logentry_cid', 2025-05-03 19:45:35.803434-04:00);
INSERT INTO django_migrations VALUES (36, 'auditlog', '0015_alter_logentry_changes', 2025-05-03 19:45:35.825047-04:00);
INSERT INTO django_migrations VALUES (37, 'services', '0001_initial', 2025-05-03 19:45:35.835170-04:00);
INSERT INTO django_migrations VALUES (38, 'locations', '0001_initial', 2025-05-03 19:45:35.842146-04:00);
INSERT INTO django_migrations VALUES (39, 'events', '0001_initial', 2025-05-03 19:45:35.864898-04:00);
INSERT INTO django_migrations VALUES (40, 'sessions', '0001_initial', 2025-05-03 19:45:35.871980-04:00);
INSERT INTO django_migrations VALUES (41, 'backup', '0001_initial', 2025-05-04 07:55:39.991828-04:00);
INSERT INTO django_migrations VALUES (42, 'companies', '0001_initial', 2025-05-24 23:03:12.921473-04:00);
INSERT INTO django_migrations VALUES (43, 'companies', '0002_alter_company_logo_url_alter_company_website', 2025-05-24 23:03:12.932148-04:00);
INSERT INTO django_migrations VALUES (44, 'events', '0002_event_company', 2025-05-24 23:03:12.961066-04:00);
INSERT INTO django_migrations VALUES (45, 'locations', '0002_location_company', 2025-05-24 23:03:12.973150-04:00);
INSERT INTO django_migrations VALUES (46, 'services', '0002_service_company', 2025-05-24 23:03:12.982914-04:00);
INSERT INTO django_migrations VALUES (47, 'subscriptions', '0001_initial', 2025-05-24 23:03:12.994591-04:00);
INSERT INTO django_migrations VALUES (48, 'subscriptions', '0002_alter_subscription_options_and_more', 2025-05-24 23:03:13.017121-04:00);
INSERT INTO django_migrations VALUES (49, 'users', '0002_user_company_alter_user_user_type', 2025-05-24 23:03:13.040705-04:00);
INSERT INTO django_migrations VALUES (50, 'sales', '0001_initial', 2025-05-30 15:12:01.125287-04:00);
INSERT INTO django_migrations VALUES (51, 'packages', '0001_initial', 2025-06-02 14:24:58.979011-04:00);
INSERT INTO django_migrations VALUES (52, 'packages', '0002_remove_package_created_at_remove_package_updated_at', 2025-06-02 14:24:58.996029-04:00);
INSERT INTO django_migrations VALUES (53, 'events', '0003_event_is_package_event_package_alter_event_services', 2025-06-02 14:24:59.036628-04:00);

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
INSERT INTO django_content_type VALUES (7, 'auditlog', 'logentry');
INSERT INTO django_content_type VALUES (8, 'audit', 'auditlog');
INSERT INTO django_content_type VALUES (9, 'services', 'service');
INSERT INTO django_content_type VALUES (10, 'locations', 'location');
INSERT INTO django_content_type VALUES (11, 'events', 'event');
INSERT INTO django_content_type VALUES (12, 'backup', 'backup');
INSERT INTO django_content_type VALUES (13, 'companies', 'company');
INSERT INTO django_content_type VALUES (14, 'subscriptions', 'subscription');
INSERT INTO django_content_type VALUES (15, 'sales', 'notaventa');
INSERT INTO django_content_type VALUES (16, 'sales', 'detallenotaventa');
INSERT INTO django_content_type VALUES (17, 'packages', 'package');

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
INSERT INTO auth_permission VALUES (25, 'Can add log entry', 7, 'add_logentry');
INSERT INTO auth_permission VALUES (26, 'Can change log entry', 7, 'change_logentry');
INSERT INTO auth_permission VALUES (27, 'Can delete log entry', 7, 'delete_logentry');
INSERT INTO auth_permission VALUES (28, 'Can view log entry', 7, 'view_logentry');
INSERT INTO auth_permission VALUES (29, 'Can add audit log', 8, 'add_auditlog');
INSERT INTO auth_permission VALUES (30, 'Can change audit log', 8, 'change_auditlog');
INSERT INTO auth_permission VALUES (31, 'Can delete audit log', 8, 'delete_auditlog');
INSERT INTO auth_permission VALUES (32, 'Can view audit log', 8, 'view_auditlog');
INSERT INTO auth_permission VALUES (33, 'Can add service', 9, 'add_service');
INSERT INTO auth_permission VALUES (34, 'Can change service', 9, 'change_service');
INSERT INTO auth_permission VALUES (35, 'Can delete service', 9, 'delete_service');
INSERT INTO auth_permission VALUES (36, 'Can view service', 9, 'view_service');
INSERT INTO auth_permission VALUES (37, 'Can add Locación', 10, 'add_location');
INSERT INTO auth_permission VALUES (38, 'Can change Locación', 10, 'change_location');
INSERT INTO auth_permission VALUES (39, 'Can delete Locación', 10, 'delete_location');
INSERT INTO auth_permission VALUES (40, 'Can view Locación', 10, 'view_location');
INSERT INTO auth_permission VALUES (41, 'Can add event', 11, 'add_event');
INSERT INTO auth_permission VALUES (42, 'Can change event', 11, 'change_event');
INSERT INTO auth_permission VALUES (43, 'Can delete event', 11, 'delete_event');
INSERT INTO auth_permission VALUES (44, 'Can view event', 11, 'view_event');
INSERT INTO auth_permission VALUES (45, 'Can add backup', 12, 'add_backup');
INSERT INTO auth_permission VALUES (46, 'Can change backup', 12, 'change_backup');
INSERT INTO auth_permission VALUES (47, 'Can delete backup', 12, 'delete_backup');
INSERT INTO auth_permission VALUES (48, 'Can view backup', 12, 'view_backup');
INSERT INTO auth_permission VALUES (49, 'Can add company', 13, 'add_company');
INSERT INTO auth_permission VALUES (50, 'Can change company', 13, 'change_company');
INSERT INTO auth_permission VALUES (51, 'Can delete company', 13, 'delete_company');
INSERT INTO auth_permission VALUES (52, 'Can view company', 13, 'view_company');
INSERT INTO auth_permission VALUES (53, 'Can add subscription', 14, 'add_subscription');
INSERT INTO auth_permission VALUES (54, 'Can change subscription', 14, 'change_subscription');
INSERT INTO auth_permission VALUES (55, 'Can delete subscription', 14, 'delete_subscription');
INSERT INTO auth_permission VALUES (56, 'Can view subscription', 14, 'view_subscription');
INSERT INTO auth_permission VALUES (57, 'Can add nota venta', 15, 'add_notaventa');
INSERT INTO auth_permission VALUES (58, 'Can change nota venta', 15, 'change_notaventa');
INSERT INTO auth_permission VALUES (59, 'Can delete nota venta', 15, 'delete_notaventa');
INSERT INTO auth_permission VALUES (60, 'Can view nota venta', 15, 'view_notaventa');
INSERT INTO auth_permission VALUES (61, 'Can add detalle nota venta', 16, 'add_detallenotaventa');
INSERT INTO auth_permission VALUES (62, 'Can change detalle nota venta', 16, 'change_detallenotaventa');
INSERT INTO auth_permission VALUES (63, 'Can delete detalle nota venta', 16, 'delete_detallenotaventa');
INSERT INTO auth_permission VALUES (64, 'Can view detalle nota venta', 16, 'view_detallenotaventa');
INSERT INTO auth_permission VALUES (65, 'Can add package', 17, 'add_package');
INSERT INTO auth_permission VALUES (66, 'Can change package', 17, 'change_package');
INSERT INTO auth_permission VALUES (67, 'Can delete package', 17, 'delete_package');
INSERT INTO auth_permission VALUES (68, 'Can view package', 17, 'view_package');

-- Table auth_group
CREATE TABLE IF NOT EXISTS auth_group (
  id integer,
  name character varying
) 


-- Table auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
  id bigint,
  group_id integer,
  permission_id integer
) 


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

INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$1000000$yJOzTcTvNuXj5uqrMKUWZZ$Ig2zoSAiNnNM14gDnWM5adfWDAW5bwq3cGHvtSek0dY=', NULL, False, 'admin1', 'Rodrigo', 'Admin', 'admin1@example.com', False, True, 2025-05-04 07:42:54.759520-04:00, 'admin', '71234567', 'Santa Cruz', NULL);
INSERT INTO auth_user VALUES (3, 'rodrigo123', 2025-05-26 15:14:00-04:00, False, 'adminrodri', 'Rod', 'Ri', 'rod@example.com', True, True, 2025-05-26 15:11:40-04:00, 'admin', '80000000', 'La paz', NULL);
INSERT INTO auth_user VALUES (5, 'pbkdf2_sha256$1000000$cesMXzvifsiCJ1vTiVBGTb$crhM1DMWPFObk28hFoeaEqZPHSNpymuZGZr0z1tGvDk=', 2025-05-26 23:28:33-04:00, False, 'super', 'Su', 'Per', 'su@gmail.com', True, True, 2025-05-26 23:28:25-04:00, 'superadmin', '20000000', 'Hoy', NULL);
INSERT INTO auth_user VALUES (2, 'pbkdf2_sha256$1000000$5FrhY4XdWPtnPQi9rMAxQE$a3TPmw130rUopxk+GkAK/xsAFkyp3FuyRxaNbr2D6+Y=', 2025-05-27 00:11:35.372864-04:00, True, 'admr', '', '', 'admr@gmail.com', True, True, 2025-05-26 15:08:12.405925-04:00, 'customer', NULL, NULL, NULL);
INSERT INTO auth_user VALUES (4, 'pbkdf2_sha256$1000000$cesMXzvifsiCJ1vTiVBGTb$crhM1DMWPFObk28hFoeaEqZPHSNpymuZGZr0z1tGvDk=', 2025-05-27 00:06:50.271794-04:00, False, 'prueba', 'P', 'pb', 'p@gmail.com', True, True, 2025-05-26 15:18:57-04:00, 'admin', '12345', 'La pas', 1);
INSERT INTO auth_user VALUES (6, 'pbkdf2_sha256$1000000$cesMXzvifsiCJ1vTiVBGTb$crhM1DMWPFObk28hFoeaEqZPHSNpymuZGZr0z1tGvDk=', 2025-05-30 12:10:24-04:00, False, 'cliente', 'Cli', 'Ente', 'cliente@gamil.com', True, True, 2025-05-30 12:10:07-04:00, 'customer', '44400044', 'Todo', NULL);

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

INSERT INTO auth_user_user_permissions VALUES (1, 3, 1);

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

INSERT INTO django_admin_log VALUES (1, 2025-05-26 15:16:53.769168-04:00, '3', 'adminrodri', 1, '[{"added": {}}]', 6, 2);
INSERT INTO django_admin_log VALUES (2, 2025-05-26 15:20:27.286809-04:00, '4', 'prueba', 1, '[{"added": {}}]', 6, 2);
INSERT INTO django_admin_log VALUES (3, 2025-05-26 23:29:30.556663-04:00, '5', 'super', 1, '[{"added": {}}]', 6, 2);
INSERT INTO django_admin_log VALUES (4, 2025-05-27 00:12:54.267378-04:00, '1', 'rodsa', 1, '[{"added": {}}]', 13, 2);
INSERT INTO django_admin_log VALUES (5, 2025-05-30 12:12:00.068822-04:00, '6', 'cliente', 1, '[{"added": {}}]', 6, 2);

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

INSERT INTO audit_auditlog VALUES (1, 2025-05-04 07:42:55.292419-04:00, 'CREATE', 'User', '1', 'Usuario ''admin1'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (2, 2025-05-26 15:10:37.236185-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (3, 2025-05-26 15:17:12.304728-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (4, 2025-05-26 15:36:52.764447-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (5, 2025-05-26 23:25:10.093294-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (6, 2025-05-26 23:27:27.133987-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (7, 2025-05-26 23:27:51.565858-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (8, 2025-05-26 23:33:38.598197-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (9, 2025-05-26 23:33:46.165421-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "super"', '127.0.0.1', 5);
INSERT INTO audit_auditlog VALUES (10, 2025-05-26 23:36:46.839769-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "super"', '127.0.0.1', 5);
INSERT INTO audit_auditlog VALUES (11, 2025-05-26 23:36:59.582689-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (12, 2025-05-26 23:42:55.546568-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (13, 2025-05-26 23:43:04.572494-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (14, 2025-05-27 00:17:40.906640-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (15, 2025-05-27 00:17:50.324363-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (16, 2025-05-27 00:31:55.149979-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (17, 2025-05-27 00:32:07.929224-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "super"', '127.0.0.1', 5);
INSERT INTO audit_auditlog VALUES (18, 2025-05-27 00:32:16.529767-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "super"', '127.0.0.1', 5);
INSERT INTO audit_auditlog VALUES (19, 2025-05-27 00:32:23.219772-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (20, 2025-05-27 00:40:42.020639-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (21, 2025-05-27 00:40:49.917280-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (22, 2025-05-30 12:07:08.275019-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (23, 2025-05-30 12:07:12.579441-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admr"', '127.0.0.1', 2);
INSERT INTO audit_auditlog VALUES (24, 2025-05-30 12:08:24.531228-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (25, 2025-05-30 12:13:45.261783-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (26, 2025-05-30 12:13:54.880800-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "cliente"', '127.0.0.1', 6);
INSERT INTO audit_auditlog VALUES (27, 2025-05-30 12:13:58.653987-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "cliente"', '127.0.0.1', 6);
INSERT INTO audit_auditlog VALUES (28, 2025-05-30 12:14:11.186224-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (29, 2025-05-30 22:41:16.607931-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (30, 2025-06-02 15:06:09.089246-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (31, 2025-06-02 20:45:12.495329-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (32, 2025-06-02 22:45:47.502021-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);
INSERT INTO audit_auditlog VALUES (33, 2025-06-03 00:26:33.111534-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "prueba"', '127.0.0.1', 4);

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

INSERT INTO auditlog_logentry VALUES (1, '1', 1, 'admin1', 0, {'id': ['None', '1'], 'email': ['None', 'admin1@example.com'], 'phone': ['None', '71234567'], 'address': ['None', 'Santa Cruz'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$yJOzTcTvNuXj5uqrMKUWZZ$Ig2zoSAiNnNM14gDnWM5adfWDAW5bwq3cGHvtSek0dY='], 'username': ['None', 'admin1'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Admin'], 'user_type': ['None', 'admin'], 'first_name': ['None', 'Rodrigo'], 'date_joined': ['None', '2025-05-04 11:42:54.759520'], 'is_superuser': ['None', 'False']}, 2025-05-04 07:42:55.267143-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (2, '2', 2, 'admr', 0, {'id': ['None', '2'], 'email': ['None', 'admr@gmail.com'], 'is_staff': ['None', 'True'], 'password': ['None', 'pbkdf2_sha256$1000000$5FrhY4XdWPtnPQi9rMAxQE$a3TPmw130rUopxk+GkAK/xsAFkyp3FuyRxaNbr2D6+Y='], 'username': ['None', 'admr'], 'is_active': ['None', 'True'], 'last_name': ['None', ''], 'user_type': ['None', 'customer'], 'first_name': ['None', ''], 'date_joined': ['None', '2025-05-26 19:08:12.405925'], 'is_superuser': ['None', 'True']}, 2025-05-26 15:08:13.122485-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (3, '2', 2, 'admr', 1, {'last_login': ['None', '2025-05-26 19:11:34.585738']}, 2025-05-26 15:11:34.592919-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (4, '3', 3, 'adminrodri', 0, {'id': ['None', '3'], 'email': ['None', 'rod@example.com'], 'phone': ['None', '80000000'], 'address': ['None', 'La paz'], 'is_staff': ['None', 'True'], 'password': ['None', 'rodrigo123'], 'username': ['None', 'adminrodri'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Ri'], 'user_type': ['None', 'admin'], 'first_name': ['None', 'Rod'], 'last_login': ['None', '2025-05-26 19:14:00'], 'date_joined': ['None', '2025-05-26 19:11:40'], 'is_superuser': ['None', 'False']}, 2025-05-26 15:16:53.748854-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (5, '4', 4, 'prueba', 0, {'id': ['None', '4'], 'email': ['None', 'p@gmail.com'], 'phone': ['None', '12345'], 'address': ['None', 'La pas'], 'is_staff': ['None', 'True'], 'password': ['None', '12345678'], 'username': ['None', 'prueba'], 'is_active': ['None', 'True'], 'last_name': ['None', 'pb'], 'user_type': ['None', 'admin'], 'first_name': ['None', 'P'], 'last_login': ['None', '2025-05-26 19:19:07'], 'date_joined': ['None', '2025-05-26 19:18:57'], 'is_superuser': ['None', 'False']}, 2025-05-26 15:20:27.273480-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (6, '5', 5, 'super', 0, {'id': ['None', '5'], 'email': ['None', 'su@gmail.com'], 'phone': ['None', '20000000'], 'address': ['None', 'Hoy'], 'is_staff': ['None', 'True'], 'password': ['None', '12345678'], 'username': ['None', 'super'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Per'], 'user_type': ['None', 'superadmin'], 'first_name': ['None', 'Su'], 'last_login': ['None', '2025-05-27 03:28:33'], 'date_joined': ['None', '2025-05-27 03:28:25'], 'is_superuser': ['None', 'False']}, 2025-05-26 23:29:30.538790-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (7, '4', 4, 'prueba', 1, {'last_login': ['2025-05-26 19:19:07', '2025-05-27 03:42:36.412572']}, 2025-05-26 23:42:36.417676-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (8, '4', 4, 'prueba', 1, {'last_login': ['2025-05-27 03:42:36.412572', '2025-05-27 04:06:50.271794']}, 2025-05-27 00:06:50.276393-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (9, '2', 2, 'admr', 1, {'last_login': ['2025-05-26 19:11:34.585738', '2025-05-27 04:11:35.372864']}, 2025-05-27 00:11:35.374346-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (10, '6', 6, 'cliente', 0, {'id': ['None', '6'], 'email': ['None', 'cliente@gamil.com'], 'phone': ['None', '44400044'], 'address': ['None', 'Todo'], 'is_staff': ['None', 'True'], 'password': ['None', '12345678'], 'username': ['None', 'cliente'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Ente'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'Cli'], 'last_login': ['None', '2025-05-30 16:10:24'], 'date_joined': ['None', '2025-05-30 16:10:07'], 'is_superuser': ['None', 'False']}, 2025-05-30 12:12:00.049324-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (11, '1', 1, 'Servicio de comida', 0, {'id': ['None', '1'], 'name': ['None', 'Servicio de comida'], 'company': ['None', '1'], 'provider': ['None', 'Rodrigo'], 'base_price': ['None', '120.00'], 'created_at': ['None', '2025-05-31 02:54:30.284222'], 'updated_at': ['None', '2025-05-31 02:54:30.284233'], 'description': ['None', 'Nada'], 'unit_measure': ['None', 'event'], 'standard_duration': ['None', '60']}, 2025-05-30 22:54:30.304089-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (12, '2', 2, 'Servicio de música', 0, {'id': ['None', '2'], 'name': ['None', 'Servicio de música'], 'company': ['None', '1'], 'provider': ['None', 'Daniel'], 'base_price': ['None', '150.00'], 'created_at': ['None', '2025-05-31 03:01:15.206418'], 'updated_at': ['None', '2025-05-31 03:01:15.206429'], 'description': ['None', 'Música'], 'unit_measure': ['None', 'event'], 'standard_duration': ['None', '120']}, 2025-05-30 23:01:15.209977-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');

-- Table locations_location
CREATE TABLE IF NOT EXISTS locations_location (
  id bigint,
  name character varying,
  description text,
  address text,
  capacity integer,
  location_type character varying,
  rental_price numeric,
  price_unit character varying,
  area_sqm integer,
  parking_spaces integer,
  environment_type character varying,
  extra_hour_cost numeric,
  provider character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
) 


-- Table services_service
CREATE TABLE IF NOT EXISTS services_service (
  id bigint,
  name character varying,
  description text,
  base_price numeric,
  unit_measure character varying,
  standard_duration integer,
  provider character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
) 

INSERT INTO services_service VALUES (1, 'Servicio de comida', 'Nada', 120.00, 'event', 60, 'Rodrigo', 2025-05-30 22:54:30.284222-04:00, 2025-05-30 22:54:30.284233-04:00, 1);
INSERT INTO services_service VALUES (2, 'Servicio de música', 'Música', 150.00, 'event', 120, 'Daniel', 2025-05-30 23:01:15.206418-04:00, 2025-05-30 23:01:15.206429-04:00, 1);

-- Table events_event
CREATE TABLE IF NOT EXISTS events_event (
  id bigint,
  name character varying,
  description text,
  start_date timestamp with time zone,
  end_date timestamp with time zone,
  status character varying,
  image character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  location_id bigint,
  company_id bigint,
  is_package boolean,
  package_id bigint
) 


-- Table events_event_services
CREATE TABLE IF NOT EXISTS events_event_services (
  id bigint,
  event_id bigint,
  service_id bigint
) 


-- Table django_session
CREATE TABLE IF NOT EXISTS django_session (
  session_key character varying,
  session_data text,
  expire_date timestamp with time zone
) 

INSERT INTO django_session VALUES ('dy6i2c46f2cw3s44akq2d4atjgzol53g', '.eJxVjDsOwjAQBe_iGln-xl5Kes5grXcdHECOFCcV4u4QKQW0b2beSyTc1pq2XpY0sTgLI06_W0Z6lLYDvmO7zZLmti5TlrsiD9rldebyvBzu30HFXr91hAjaWdLoGJVSHv0QCH3wQwE0Jpo48BjIWYiOx6wMkMeACKDJchHvD8FqN38:1uJlf5:MLsDJJZku_1Et7OXeC5OEuxtRuZrErR61X9BfnUGmr8', 2025-06-10 00:11:35.379326-04:00);

-- Table backup_backup
CREATE TABLE IF NOT EXISTS backup_backup (
  id bigint,
  file_name character varying,
  backup_type character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone
) 

INSERT INTO backup_backup VALUES (1, 'backup_20250504_172220.sql', 'manual', 2025-05-04 17:22:20.529449-04:00, 2025-05-04 17:22:20.529479-04:00);
INSERT INTO backup_backup VALUES (2, 'backup_20250504_172332.sql', 'manual', 2025-05-04 17:23:32.660318-04:00, 2025-05-04 17:23:32.660343-04:00);
INSERT INTO backup_backup VALUES (3, 'backup_20250504_173143.sql', 'manual', 2025-05-04 17:31:43.888817-04:00, 2025-05-04 17:31:43.888841-04:00);
INSERT INTO backup_backup VALUES (4, 'backup_20250504_173629.sql', 'manual', 2025-05-04 17:36:29.266795-04:00, 2025-05-04 17:36:29.266815-04:00);
INSERT INTO backup_backup VALUES (5, 'backup_20250505_001124.sql', 'manual', 2025-05-05 00:11:24.648383-04:00, 2025-05-05 00:11:24.648405-04:00);
INSERT INTO backup_backup VALUES (6, 'backup_20250505_104709.sql', 'manual', 2025-05-05 10:47:09.430076-04:00, 2025-05-05 10:47:09.430098-04:00);
INSERT INTO backup_backup VALUES (7, 'backup_20250505_141347.sql', 'manual', 2025-05-05 14:13:48.160662-04:00, 2025-05-05 14:13:48.160677-04:00);
INSERT INTO backup_backup VALUES (8, 'backup_20250527_005520.sql', 'manual', 2025-05-27 00:55:21.033833-04:00, 2025-05-27 00:55:21.033853-04:00);
INSERT INTO backup_backup VALUES (9, 'backup_20250602_151108.sql', 'manual', 2025-06-02 15:11:08.882217-04:00, 2025-06-02 15:11:08.882231-04:00);
INSERT INTO backup_backup VALUES (10, 'backup_20250602_204517.sql', 'manual', 2025-06-02 20:45:18.146421-04:00, 2025-06-02 20:45:18.146432-04:00);
INSERT INTO backup_backup VALUES (11, 'backup_20250602_210624.sql', 'manual', 2025-06-02 21:06:24.843914-04:00, 2025-06-02 21:06:24.843935-04:00);
INSERT INTO backup_backup VALUES (12, 'backup_20250602_211127.sql', 'manual', 2025-06-02 21:11:27.355669-04:00, 2025-06-02 21:11:27.355680-04:00);

-- Table companies_company
CREATE TABLE IF NOT EXISTS companies_company (
  id bigint,
  name character varying,
  description text,
  website character varying,
  logo_url character varying,
  is_active boolean,
  created_at timestamp with time zone
) 

INSERT INTO companies_company VALUES (1, 'rodsa', 'todo', 'rodri.com', NULL, True, 2025-05-27 00:12:54.264265-04:00);

-- Table subscriptions_subscription
CREATE TABLE IF NOT EXISTS subscriptions_subscription (
  id bigint,
  plan_type character varying,
  status character varying,
  stripe_customer_id character varying,
  stripe_subscription_id character varying,
  start_date timestamp with time zone,
  end_date timestamp with time zone,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
) 


-- Table sales_notaventa
CREATE TABLE IF NOT EXISTS sales_notaventa (
  id bigint,
  cliente_nombre character varying,
  fecha timestamp with time zone,
  total numeric,
  administrador_id bigint
) 

INSERT INTO sales_notaventa VALUES (1, 'Rodrigo', 2025-06-02 15:06:33.799946-04:00, 270.00, 4);
INSERT INTO sales_notaventa VALUES (2, 'Rodrigo', 2025-06-02 22:46:06.316172-04:00, 120.00, 4);
INSERT INTO sales_notaventa VALUES (3, 'Ezequiel', 2025-06-02 23:06:19.624507-04:00, 120.00, 4);

-- Table sales_detallenotaventa
CREATE TABLE IF NOT EXISTS sales_detallenotaventa (
  id bigint,
  cantidad integer,
  precio_unitario numeric,
  subtotal numeric,
  servicio_id bigint,
  nota_venta_id bigint
) 

INSERT INTO sales_detallenotaventa VALUES (1, 1, 120.00, 120.00, 1, 1);
INSERT INTO sales_detallenotaventa VALUES (2, 1, 150.00, 150.00, 2, 1);
INSERT INTO sales_detallenotaventa VALUES (3, 1, 120.00, 120.00, 1, 2);
INSERT INTO sales_detallenotaventa VALUES (4, 1, 120.00, 120.00, 1, 3);

-- Table packages_package
CREATE TABLE IF NOT EXISTS packages_package (
  id bigint,
  name character varying,
  description text,
  image character varying,
  company_id bigint
) 


-- Table packages_package_services
CREATE TABLE IF NOT EXISTS packages_package_services (
  id bigint,
  package_id bigint,
  service_id bigint
) 


