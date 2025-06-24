-- Backup de la base de datos creada el 2025-06-23 23:51:50.205053

-- Table django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
  id bigint,
  app character varying,
  name character varying,
  applied timestamp with time zone
);

INSERT INTO django_migrations VALUES (1, 'companies', '0001_initial', 2025-06-22 12:03:38.952275-04:00);
INSERT INTO django_migrations VALUES (2, 'contenttypes', '0001_initial', 2025-06-22 12:03:38.966740-04:00);
INSERT INTO django_migrations VALUES (3, 'contenttypes', '0002_remove_content_type_name', 2025-06-22 12:03:38.973470-04:00);
INSERT INTO django_migrations VALUES (4, 'auth', '0001_initial', 2025-06-22 12:03:39.004256-04:00);
INSERT INTO django_migrations VALUES (5, 'auth', '0002_alter_permission_name_max_length', 2025-06-22 12:03:39.008034-04:00);
INSERT INTO django_migrations VALUES (6, 'auth', '0003_alter_user_email_max_length', 2025-06-22 12:03:39.011363-04:00);
INSERT INTO django_migrations VALUES (7, 'auth', '0004_alter_user_username_opts', 2025-06-22 12:03:39.015357-04:00);
INSERT INTO django_migrations VALUES (8, 'auth', '0005_alter_user_last_login_null', 2025-06-22 12:03:39.019494-04:00);
INSERT INTO django_migrations VALUES (9, 'auth', '0006_require_contenttypes_0002', 2025-06-22 12:03:39.020843-04:00);
INSERT INTO django_migrations VALUES (10, 'auth', '0007_alter_validators_add_error_messages', 2025-06-22 12:03:39.024330-04:00);
INSERT INTO django_migrations VALUES (11, 'auth', '0008_alter_user_username_max_length', 2025-06-22 12:03:39.028096-04:00);
INSERT INTO django_migrations VALUES (12, 'auth', '0009_alter_user_last_name_max_length', 2025-06-22 12:03:39.031454-04:00);
INSERT INTO django_migrations VALUES (13, 'auth', '0010_alter_group_name_max_length', 2025-06-22 12:03:39.037839-04:00);
INSERT INTO django_migrations VALUES (14, 'auth', '0011_update_proxy_permissions', 2025-06-22 12:03:39.042134-04:00);
INSERT INTO django_migrations VALUES (15, 'auth', '0012_alter_user_first_name_max_length', 2025-06-22 12:03:39.045797-04:00);
INSERT INTO django_migrations VALUES (16, 'users', '0001_initial', 2025-06-22 12:03:39.073914-04:00);
INSERT INTO django_migrations VALUES (17, 'admin', '0001_initial', 2025-06-22 12:03:39.089672-04:00);
INSERT INTO django_migrations VALUES (18, 'admin', '0002_logentry_remove_auto_add', 2025-06-22 12:03:39.095424-04:00);
INSERT INTO django_migrations VALUES (19, 'admin', '0003_logentry_add_action_flag_choices', 2025-06-22 12:03:39.101749-04:00);
INSERT INTO django_migrations VALUES (20, 'audit', '0001_initial', 2025-06-22 12:03:39.108805-04:00);
INSERT INTO django_migrations VALUES (21, 'audit', '0002_initial', 2025-06-22 12:03:39.120490-04:00);
INSERT INTO django_migrations VALUES (22, 'auditlog', '0001_initial', 2025-06-22 12:03:39.137196-04:00);
INSERT INTO django_migrations VALUES (23, 'auditlog', '0002_auto_support_long_primary_keys', 2025-06-22 12:03:39.157807-04:00);
INSERT INTO django_migrations VALUES (24, 'auditlog', '0003_logentry_remote_addr', 2025-06-22 12:03:39.169160-04:00);
INSERT INTO django_migrations VALUES (25, 'auditlog', '0004_logentry_detailed_object_repr', 2025-06-22 12:03:39.179686-04:00);
INSERT INTO django_migrations VALUES (26, 'auditlog', '0005_logentry_additional_data_verbose_name', 2025-06-22 12:03:39.186998-04:00);
INSERT INTO django_migrations VALUES (27, 'auditlog', '0006_object_pk_index', 2025-06-22 12:03:39.200528-04:00);
INSERT INTO django_migrations VALUES (28, 'auditlog', '0007_object_pk_type', 2025-06-22 12:03:39.210806-04:00);
INSERT INTO django_migrations VALUES (29, 'auditlog', '0008_action_index', 2025-06-22 12:03:39.219766-04:00);
INSERT INTO django_migrations VALUES (30, 'auditlog', '0009_alter_logentry_additional_data', 2025-06-22 12:03:39.227266-04:00);
INSERT INTO django_migrations VALUES (31, 'auditlog', '0010_alter_logentry_timestamp', 2025-06-22 12:03:39.236738-04:00);
INSERT INTO django_migrations VALUES (32, 'auditlog', '0011_logentry_serialized_data', 2025-06-22 12:03:39.244218-04:00);
INSERT INTO django_migrations VALUES (33, 'auditlog', '0012_add_logentry_action_access', 2025-06-22 12:03:39.251087-04:00);
INSERT INTO django_migrations VALUES (34, 'auditlog', '0013_alter_logentry_timestamp', 2025-06-22 12:03:39.257999-04:00);
INSERT INTO django_migrations VALUES (35, 'auditlog', '0014_logentry_cid', 2025-06-22 12:03:39.267647-04:00);
INSERT INTO django_migrations VALUES (36, 'auditlog', '0015_alter_logentry_changes', 2025-06-22 12:03:39.291925-04:00);
INSERT INTO django_migrations VALUES (37, 'backup', '0001_initial', 2025-06-22 12:03:39.300390-04:00);
INSERT INTO django_migrations VALUES (38, 'services', '0001_initial', 2025-06-22 12:03:39.315554-04:00);
INSERT INTO django_migrations VALUES (39, 'packages', '0001_initial', 2025-06-22 12:03:39.338981-04:00);
INSERT INTO django_migrations VALUES (40, 'locations', '0001_initial', 2025-06-22 12:03:39.357845-04:00);
INSERT INTO django_migrations VALUES (41, 'events', '0001_initial', 2025-06-22 12:03:39.381656-04:00);
INSERT INTO django_migrations VALUES (42, 'events', '0002_initial', 2025-06-22 12:03:39.427997-04:00);
INSERT INTO django_migrations VALUES (43, 'providers', '0001_initial', 2025-06-22 12:03:39.449701-04:00);
INSERT INTO django_migrations VALUES (44, 'sales', '0001_initial', 2025-06-22 12:03:39.482338-04:00);
INSERT INTO django_migrations VALUES (45, 'sales', '0002_initial', 2025-06-22 12:03:39.532332-04:00);
INSERT INTO django_migrations VALUES (46, 'schedules', '0001_initial', 2025-06-22 12:03:39.592308-04:00);
INSERT INTO django_migrations VALUES (47, 'sessions', '0001_initial', 2025-06-22 12:03:39.600021-04:00);
INSERT INTO django_migrations VALUES (48, 'staff', '0001_initial', 2025-06-22 12:03:39.633954-04:00);
INSERT INTO django_migrations VALUES (49, 'subscriptions', '0001_initial', 2025-06-22 12:03:39.656210-04:00);
INSERT INTO django_migrations VALUES (50, 'tasks', '0001_initial', 2025-06-22 12:03:39.690843-04:00);
INSERT INTO django_migrations VALUES (51, 'services', '0002_alter_service_provider', 2025-06-22 17:25:57.021982-04:00);
INSERT INTO django_migrations VALUES (52, 'invitations', '0001_initial', 2025-06-23 22:28:29.740060-04:00);
INSERT INTO django_migrations VALUES (53, 'invitations', '0002_invitation_assigned_seats', 2025-06-23 22:28:29.756138-04:00);

-- Table django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
  id integer,
  app_label character varying,
  model character varying
);

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
INSERT INTO django_content_type VALUES (12, 'companies', 'company');
INSERT INTO django_content_type VALUES (13, 'subscriptions', 'subscription');
INSERT INTO django_content_type VALUES (14, 'backup', 'backup');
INSERT INTO django_content_type VALUES (15, 'packages', 'package');
INSERT INTO django_content_type VALUES (16, 'sales', 'notaventa');
INSERT INTO django_content_type VALUES (17, 'sales', 'detallenotaventa');
INSERT INTO django_content_type VALUES (18, 'schedules', 'schedule');
INSERT INTO django_content_type VALUES (19, 'schedules', 'activity');
INSERT INTO django_content_type VALUES (20, 'staff', 'staff');
INSERT INTO django_content_type VALUES (21, 'tasks', 'task');
INSERT INTO django_content_type VALUES (22, 'providers', 'provider');
INSERT INTO django_content_type VALUES (23, 'invitations', 'invitation');

-- Table auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
  id integer,
  name character varying,
  content_type_id integer,
  codename character varying
);

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
INSERT INTO auth_permission VALUES (45, 'Can add company', 12, 'add_company');
INSERT INTO auth_permission VALUES (46, 'Can change company', 12, 'change_company');
INSERT INTO auth_permission VALUES (47, 'Can delete company', 12, 'delete_company');
INSERT INTO auth_permission VALUES (48, 'Can view company', 12, 'view_company');
INSERT INTO auth_permission VALUES (49, 'Can add subscription', 13, 'add_subscription');
INSERT INTO auth_permission VALUES (50, 'Can change subscription', 13, 'change_subscription');
INSERT INTO auth_permission VALUES (51, 'Can delete subscription', 13, 'delete_subscription');
INSERT INTO auth_permission VALUES (52, 'Can view subscription', 13, 'view_subscription');
INSERT INTO auth_permission VALUES (53, 'Can add backup', 14, 'add_backup');
INSERT INTO auth_permission VALUES (54, 'Can change backup', 14, 'change_backup');
INSERT INTO auth_permission VALUES (55, 'Can delete backup', 14, 'delete_backup');
INSERT INTO auth_permission VALUES (56, 'Can view backup', 14, 'view_backup');
INSERT INTO auth_permission VALUES (57, 'Can add package', 15, 'add_package');
INSERT INTO auth_permission VALUES (58, 'Can change package', 15, 'change_package');
INSERT INTO auth_permission VALUES (59, 'Can delete package', 15, 'delete_package');
INSERT INTO auth_permission VALUES (60, 'Can view package', 15, 'view_package');
INSERT INTO auth_permission VALUES (61, 'Can add nota venta', 16, 'add_notaventa');
INSERT INTO auth_permission VALUES (62, 'Can change nota venta', 16, 'change_notaventa');
INSERT INTO auth_permission VALUES (63, 'Can delete nota venta', 16, 'delete_notaventa');
INSERT INTO auth_permission VALUES (64, 'Can view nota venta', 16, 'view_notaventa');
INSERT INTO auth_permission VALUES (65, 'Can add detalle nota venta', 17, 'add_detallenotaventa');
INSERT INTO auth_permission VALUES (66, 'Can change detalle nota venta', 17, 'change_detallenotaventa');
INSERT INTO auth_permission VALUES (67, 'Can delete detalle nota venta', 17, 'delete_detallenotaventa');
INSERT INTO auth_permission VALUES (68, 'Can view detalle nota venta', 17, 'view_detallenotaventa');
INSERT INTO auth_permission VALUES (69, 'Can add Cronograma', 18, 'add_schedule');
INSERT INTO auth_permission VALUES (70, 'Can change Cronograma', 18, 'change_schedule');
INSERT INTO auth_permission VALUES (71, 'Can delete Cronograma', 18, 'delete_schedule');
INSERT INTO auth_permission VALUES (72, 'Can view Cronograma', 18, 'view_schedule');
INSERT INTO auth_permission VALUES (73, 'Can add Actividad', 19, 'add_activity');
INSERT INTO auth_permission VALUES (74, 'Can change Actividad', 19, 'change_activity');
INSERT INTO auth_permission VALUES (75, 'Can delete Actividad', 19, 'delete_activity');
INSERT INTO auth_permission VALUES (76, 'Can view Actividad', 19, 'view_activity');
INSERT INTO auth_permission VALUES (77, 'Can add Personal', 20, 'add_staff');
INSERT INTO auth_permission VALUES (78, 'Can change Personal', 20, 'change_staff');
INSERT INTO auth_permission VALUES (79, 'Can delete Personal', 20, 'delete_staff');
INSERT INTO auth_permission VALUES (80, 'Can view Personal', 20, 'view_staff');
INSERT INTO auth_permission VALUES (81, 'Can add Tarea', 21, 'add_task');
INSERT INTO auth_permission VALUES (82, 'Can change Tarea', 21, 'change_task');
INSERT INTO auth_permission VALUES (83, 'Can delete Tarea', 21, 'delete_task');
INSERT INTO auth_permission VALUES (84, 'Can view Tarea', 21, 'view_task');
INSERT INTO auth_permission VALUES (85, 'Can add Proveedor', 22, 'add_provider');
INSERT INTO auth_permission VALUES (86, 'Can change Proveedor', 22, 'change_provider');
INSERT INTO auth_permission VALUES (87, 'Can delete Proveedor', 22, 'delete_provider');
INSERT INTO auth_permission VALUES (88, 'Can view Proveedor', 22, 'view_provider');
INSERT INTO auth_permission VALUES (89, 'Can add Invitación', 23, 'add_invitation');
INSERT INTO auth_permission VALUES (90, 'Can change Invitación', 23, 'change_invitation');
INSERT INTO auth_permission VALUES (91, 'Can delete Invitación', 23, 'delete_invitation');
INSERT INTO auth_permission VALUES (92, 'Can view Invitación', 23, 'view_invitation');

-- Table auth_group
CREATE TABLE IF NOT EXISTS auth_group (
  id integer,
  name character varying
);

INSERT INTO auth_group VALUES (1, 'Cliente');
INSERT INTO auth_group VALUES (2, 'Administrador');

-- Table auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
  id bigint,
  group_id integer,
  permission_id integer
);

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

-- Table companies_company
CREATE TABLE IF NOT EXISTS companies_company (
  id bigint,
  name character varying,
  description text,
  website character varying,
  logo_url character varying,
  is_active boolean,
  created_at timestamp with time zone
);

INSERT INTO companies_company VALUES (1, 'SaonaSRL', 'Saona Club House salon de eventos Santa Cruz', '', '', True, 2025-05-04 18:06:57.335020-04:00);
INSERT INTO companies_company VALUES (2, 'ARBOLIANA', 'ARBOLIANA EVENTOS', '', '', True, 2025-05-04 18:11:53.283826-04:00);
INSERT INTO companies_company VALUES (4, 'Prueba', 'pruebas', 'sss', 'sss', True, 2025-05-04 18:36:52.158818-04:00);

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
);

INSERT INTO auth_user VALUES (12, 'pbkdf2_sha256$1000000$ONrhe8ujwcU8WWbMHdxUHy$w/4Vv720WQSPUWOGX0/s7v8U1T3kekUXO+3gvgmFZ3o=', NULL, False, 'admin.saona', '', '', 'saona@admin.com', False, True, 2025-05-04 18:06:57.338223-04:00, 'admin', NULL, NULL, 1);
INSERT INTO auth_user VALUES (13, 'pbkdf2_sha256$1000000$DoShJZx18uxFWALaNpqVRL$vkGFCy/9lR0E6N2fe7ulp5i6zezhsP47cT4D+KfMUNw=', NULL, False, 'admin.arboliana', '', '', 'arboliana@admin.com', False, True, 2025-05-04 18:11:53.287966-04:00, 'admin', NULL, NULL, 2);
INSERT INTO auth_user VALUES (15, 'pbkdf2_sha256$1000000$S076ueHvZ9vZp0WG3hHWQV$LKpm+B2gsf1GKNhnKyMCJD/NPAk0sLN113fBQP/2uyM=', NULL, False, 'admin.prueba', '', '', 'prueba@gmail.com', False, True, 2025-05-04 18:36:52.162890-04:00, 'admin', NULL, NULL, 4);
INSERT INTO auth_user VALUES (16, 'pbkdf2_sha256$1000000$gYXzr5DrPgwm2hGOOGDdsV$Q9lgymS81eDtN5/9fFP3++LRISKCmeN7HQEmWWKquWs=', NULL, False, 'pruebas', 'pruebas', 'pruebass', 'pruebas@gmail.com', False, True, 2025-05-04 18:51:31.960782-04:00, 'staff', '123', '123', 1);
INSERT INTO auth_user VALUES (18, 'pbkdf2_sha256$1000000$ONrhe8ujwcU8WWbMHdxUHy$w/4Vv720WQSPUWOGX0/s7v8U1T3kekUXO+3gvgmFZ3o=', NULL, False, 'felipe.flores', 'Felipe', 'Flores', 'felipe321@gmail.com', False, True, 2025-06-22 16:31:46.251610-04:00, 'customer', '1234567', 'loquesea', 1);
INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$1000000$ONrhe8ujwcU8WWbMHdxUHy$w/4Vv720WQSPUWOGX0/s7v8U1T3kekUXO+3gvgmFZ3o=', 2025-06-22 18:51:00.068939-04:00, True, 'admin', 'ad', 'mn', 'admin@admin.com', True, True, 2025-05-04 18:36:52.162890-04:00, 'superadmin', NULL, NULL, NULL);

-- Table auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
  id bigint,
  user_id bigint,
  group_id integer
);


-- Table auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
  id bigint,
  user_id bigint,
  permission_id integer
);


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
);


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
);

INSERT INTO audit_auditlog VALUES (1, 2025-04-17 00:11:47.033072-04:00, 'CREATE', 'User', '8', 'Usuario ''cliente1111'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (2, 2025-04-17 00:30:58.685073-04:00, 'CREATE', 'User', '9', 'Usuario ''cliente231'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (4, 2025-04-17 01:13:40.833426-04:00, 'UPDATE', 'User', '3', 'Usuario ''clientzzzzz'' actualizado. Cambios: username: cliente2 → clientzzzzz', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (5, 2025-04-17 03:20:57.793948-04:00, 'CREATE', 'User', '11', 'Usuario ''Cliente_nuevo'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (8, 2025-04-17 03:21:33.556562-04:00, 'DELETE', 'User', '5', 'Usuario ''cliente4'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (10, 2025-04-17 03:21:45.263629-04:00, 'DELETE', 'User', '6', 'Usuario ''cliente6'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (12, 2025-04-17 03:22:56.416376-04:00, 'UPDATE', 'User', '11', 'Usuario ''Cliente_nuevo'' actualizado. Cambios: tipo: customer → staff', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (13, 2025-04-26 22:16:49.234098-04:00, 'UPDATE', 'User', '3', 'Usuario ''clientechad'' actualizado. Cambios: username: clientzzzzz → clientechad, email: pla@ma.com → plass@ma.com', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (14, 2025-04-27 16:37:33.107729-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (15, 2025-04-27 16:38:55.242036-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (16, 2025-04-27 16:42:04.006467-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (17, 2025-04-27 16:46:56.409552-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (18, 2025-04-27 16:52:53.280783-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (19, 2025-04-27 16:52:56.905007-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (20, 2025-04-27 16:52:56.908288-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (21, 2025-04-27 16:53:06.226919-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (22, 2025-04-27 17:11:46.439492-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (23, 2025-04-27 17:11:46.441240-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (24, 2025-04-27 17:12:51.190628-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (25, 2025-04-27 17:14:29.291457-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (26, 2025-04-27 17:14:38.680424-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (27, 2025-04-27 17:14:38.683930-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (28, 2025-04-27 17:16:31.310269-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (29, 2025-04-27 17:21:14.859281-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (30, 2025-04-27 17:21:14.860629-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (37, 2025-04-27 17:23:03.296345-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (38, 2025-04-27 17:23:03.301140-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (39, 2025-04-27 17:23:07.812812-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (40, 2025-04-27 17:23:18.962307-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (41, 2025-04-27 17:23:18.962908-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (42, 2025-04-27 17:23:24.685854-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (46, 2025-04-27 17:42:25.088737-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (47, 2025-04-27 17:42:37.393280-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario admin', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (50, 2025-04-27 19:33:09.880258-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (51, 2025-04-27 19:33:14.584387-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (52, 2025-04-27 19:45:44.995632-04:00, 'CREATE', 'Service', '3', 'Service ''123'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (53, 2025-04-27 19:47:35.098733-04:00, 'DELETE', 'Service', '2', 'Service ''asd'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (54, 2025-04-27 19:47:54.159994-04:00, 'UPDATE', 'Service', '3', 'Service ''qwe'' actualizado. Cambios: name: 123 → qwe, description: 123 → csd, base_price: 123.00 → 321.00, standard_duration: 123 → 12', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (55, 2025-04-27 19:50:53.716153-04:00, 'DELETE', 'Location', '1', 'Location ''asd'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (56, 2025-04-28 23:59:48.141142-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (57, 2025-04-29 00:00:47.236325-04:00, 'CREATE', 'Location', '2', 'Location ''asd'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (58, 2025-04-29 00:01:38.030087-04:00, 'CREATE', 'Event', '1', 'Event ''asd'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (59, 2025-04-29 08:55:44.161269-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (60, 2025-04-29 20:11:06.275619-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (61, 2025-04-29 20:12:37.131752-04:00, 'CREATE', 'Event', '2', 'Event ''asd'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (62, 2025-04-29 20:12:44.954892-04:00, 'UPDATE', 'Event', '1', 'Event ''asd'' actualizado. Cambios: ', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (63, 2025-05-04 18:03:35.982995-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (64, 2025-05-04 18:03:46.019977-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (65, 2025-05-04 18:10:53.860781-04:00, 'UPDATE', 'Company', '1', 'Company ''SaonaSRL'' actualizado. Cambios: name: Saona → SaonaSRL', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (66, 2025-05-04 18:36:52.647531-04:00, 'CREATE', 'User', '15', 'Usuario ''admin.prueba'' creado como administrador de compañía ''Prueba''', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (67, 2025-05-04 18:36:52.649185-04:00, 'CREATE', 'Company', '4', 'Company ''Prueba'' creado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (68, 2025-05-04 18:38:59.979451-04:00, 'DELETE', 'User', '10', 'Usuario ''cliente1233'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (69, 2025-05-04 18:39:04.896347-04:00, 'DELETE', 'User', '7', 'Usuario ''cliente11'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (70, 2025-05-04 18:39:07.461934-04:00, 'DELETE', 'User', '11', 'Usuario ''Cliente_nuevo'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (71, 2025-05-04 18:39:09.828809-04:00, 'DELETE', 'User', '1', 'Usuario ''admin'' eliminado', '127.0.0.1', NULL);
INSERT INTO audit_auditlog VALUES (72, 2025-05-04 18:42:03.539493-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (73, 2025-05-04 18:42:16.748427-04:00, 'DELETE', 'User', '3', 'Usuario ''clientechad'' eliminado', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (75, 2025-05-04 18:44:16.005558-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (77, 2025-05-04 18:51:32.526310-04:00, 'CREATE', 'User', '16', 'Usuario ''pruebas'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (79, 2025-05-05 14:47:59.282822-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (81, 2025-05-05 17:44:23.462779-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (83, 2025-05-06 00:07:53.990052-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (85, 2025-05-06 00:08:13.681636-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (87, 2025-05-06 00:54:00.780436-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (89, 2025-05-06 01:08:00.941178-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (91, 2025-05-06 03:41:01.916602-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (93, 2025-05-06 03:42:10.285455-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (95, 2025-05-06 04:07:43.735826-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (97, 2025-05-06 05:55:53.769943-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (99, 2025-05-06 05:58:21.539994-04:00, 'CREATE', 'Location', '3', 'Location ''qwe'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (101, 2025-05-06 05:59:18.470068-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (141, 2025-06-03 07:44:50.790191-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
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
INSERT INTO audit_auditlog VALUES (105, 2025-05-19 14:29:36.247971-04:00, 'UPDATE', 'Service', '7', 'Service ''Servicio de Catering'' actualizado. Cambios: provider: Pollo Kikys → Kikys', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (106, 2025-05-19 19:17:43.458367-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (107, 2025-05-19 19:28:24.510123-04:00, 'DELETE', 'Service', '6', 'Service ''qwe'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (108, 2025-05-19 20:17:25.563406-04:00, 'UPDATE', 'Event', '3', 'Event ''qwe'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (109, 2025-05-19 20:18:02.009778-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (110, 2025-05-19 20:35:48.427924-04:00, 'UPDATE', 'Package', '1', 'Package ''Paquete Quinceaños2'' actualizado. Cambios: name: Paquete Quinceaños → Paquete Quinceaños2', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (111, 2025-05-19 21:00:38.858821-04:00, 'DELETE', 'Package', '3', 'Package ''asd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (112, 2025-05-20 01:18:37.792104-04:00, 'DELETE', 'Package', '4', 'Package ''asd'' eliminado', '192.168.100.146', 12);
INSERT INTO audit_auditlog VALUES (113, 2025-05-20 01:38:21.378948-04:00, 'DELETE', 'Service', '13', 'Service ''asd'' eliminado', '192.168.100.146', 12);
INSERT INTO audit_auditlog VALUES (114, 2025-05-20 01:43:46.821192-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (115, 2025-05-20 01:57:00.553971-04:00, 'UPDATE', 'Package', '5', 'Package ''prueba'' actualizado. Cambios: ', '192.168.100.146', 12);
INSERT INTO audit_auditlog VALUES (116, 2025-05-20 02:58:38.070881-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (117, 2025-05-20 03:00:13.573680-04:00, 'UPDATE', 'Event', '3', 'Event ''Boda'' actualizado. Cambios: name: qwe → Boda, is_package: False → True, package: None → Paquete Boda', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (118, 2025-05-20 03:01:18.743475-04:00, 'UPDATE', 'Event', '3', 'Event ''Boda'' actualizado. Cambios: description: qwe → asd', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (119, 2025-05-20 03:04:25.025947-04:00, 'DELETE', 'Location', '3', 'Location ''qwe'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (120, 2025-05-20 03:49:28.914383-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (121, 2025-05-20 03:49:36.267348-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (122, 2025-06-02 20:12:53.960094-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (123, 2025-06-02 20:13:02.551087-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (124, 2025-06-02 20:13:08.925714-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (125, 2025-06-02 21:16:00.354455-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (126, 2025-06-02 23:57:08.443061-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (127, 2025-06-03 01:31:50.905400-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (128, 2025-06-03 02:36:14.626947-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (129, 2025-06-03 02:37:01.050570-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (130, 2025-06-03 06:17:57.628975-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (131, 2025-06-03 07:26:46.027788-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (132, 2025-06-03 07:27:07.492857-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (133, 2025-06-03 07:31:38.863203-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (134, 2025-06-03 07:32:15.302597-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (135, 2025-06-03 07:35:26.020727-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (136, 2025-06-03 07:35:31.094882-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (137, 2025-06-03 07:37:13.344339-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (138, 2025-06-03 07:42:06.482840-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (139, 2025-06-03 07:42:09.609478-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (140, 2025-06-03 07:42:14.962901-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (3, 2025-06-22 12:31:21.367625-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (6, 2025-06-22 12:36:59.946273-04:00, 'DELETE', 'Schedule', '1', 'Schedule ''ID: 1'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (7, 2025-06-22 12:37:33.985434-04:00, 'DELETE', 'Schedule', '2', 'Schedule ''ID: 2'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (9, 2025-06-22 12:38:22.898173-04:00, 'DELETE', 'Schedule', '3', 'Schedule ''ID: 3'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (11, 2025-06-22 12:39:01.661196-04:00, 'UPDATE', 'Schedule', '4', 'Schedule ''ID: 4'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (142, 2025-06-22 13:58:31.946900-04:00, 'UPDATE', 'Schedule', '4', 'Schedule ''ID: 4'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (143, 2025-06-22 13:58:40.496949-04:00, 'UPDATE', 'Schedule', '4', 'Schedule ''ID: 4'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (144, 2025-06-22 13:58:44.394498-04:00, 'UPDATE', 'Schedule', '4', 'Schedule ''ID: 4'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (145, 2025-06-22 13:58:47.135834-04:00, 'DELETE', 'Schedule', '4', 'Schedule ''ID: 4'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (146, 2025-06-22 14:14:34.498185-04:00, 'DELETE', 'Schedule', '5', 'Schedule ''ID: 5'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (147, 2025-06-22 15:19:12.437437-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (148, 2025-06-22 16:22:50.537733-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (149, 2025-06-22 16:23:00.446538-04:00, 'DELETE', 'Event', '7', 'Event ''asd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (150, 2025-06-22 16:23:02.290522-04:00, 'DELETE', 'Event', '8', 'Event ''qwwe'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (151, 2025-06-22 16:23:06.130321-04:00, 'DELETE', 'Event', '9', 'Event ''pwd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (152, 2025-06-22 16:23:08.681869-04:00, 'DELETE', 'Event', '10', 'Event ''qwe'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (153, 2025-06-22 16:26:01.395413-04:00, 'DELETE', 'Event', '11', 'Event ''asd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (154, 2025-06-22 16:30:51.718181-04:00, 'DELETE', 'Event', '12', 'Event ''asd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (155, 2025-06-22 16:35:17.179380-04:00, 'CREATE', 'Provider', '1', 'Proveedor ''Globos'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (156, 2025-06-22 16:37:32.979297-04:00, 'CREATE', 'Provider', '2', 'Proveedor ''mobiliario martinez'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (157, 2025-06-22 17:37:03.280532-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (158, 2025-06-22 17:38:27.004722-04:00, 'UPDATE', 'Service', '13', 'Service ''Sillas Modernas'' actualizado. Cambios: provider: mobiliario martinez - Felipe Flores → Globos - Felipe Flores', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (159, 2025-06-22 20:13:56.381183-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (160, 2025-06-22 20:14:16.083378-04:00, 'CREATE', 'Provider', '3', 'Proveedor ''mobiliario martinez2'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (161, 2025-06-22 20:14:38.845055-04:00, 'CREATE', 'Provider', '4', 'Proveedor ''mobiliario martinez22'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (162, 2025-06-22 20:15:07.774810-04:00, 'CREATE', 'Provider', '5', 'Proveedor ''mobiliario martinez232'' creado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (163, 2025-06-22 20:30:27.420435-04:00, 'DELETE', 'Service', '15', 'Service ''pals'' eliminado', '192.168.100.2', 12);
INSERT INTO audit_auditlog VALUES (164, 2025-06-22 20:30:29.593138-04:00, 'DELETE', 'Service', '14', 'Service ''pe'' eliminado', '192.168.100.2', 12);
INSERT INTO audit_auditlog VALUES (165, 2025-06-22 20:35:56.966092-04:00, 'DELETE', 'Service', '16', 'Service ''sd'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (166, 2025-06-22 21:14:31.476922-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (167, 2025-06-22 21:21:45.713865-04:00, 'DELETE', 'Activity', '1', 'Activity ''ID: 1'' eliminado', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (168, 2025-06-22 22:37:15.545151-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (169, 2025-06-23 00:00:46.803153-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (170, 2025-06-23 00:02:40.606449-04:00, 'UPDATE', 'Event', '5', 'Event ''Quinceaños'' actualizado. Cambios: description: CUmpleaños → Cumpleaños', '192.168.100.2', 12);
INSERT INTO audit_auditlog VALUES (171, 2025-06-23 00:21:49.071430-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (172, 2025-06-23 00:21:53.997834-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.arboliana"', '127.0.0.1', 13);
INSERT INTO audit_auditlog VALUES (173, 2025-06-23 22:28:54.358346-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (174, 2025-06-23 22:31:46.443651-04:00, 'UPDATE', 'Event', '6', 'Event ''Matrimonio'' actualizado. Cambios: ', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (175, 2025-06-23 22:33:03.754809-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (176, 2025-06-23 22:34:19.220159-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "felipe.flores"', '127.0.0.1', 18);
INSERT INTO audit_auditlog VALUES (177, 2025-06-23 22:40:57.022681-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "felipe.flores"', '127.0.0.1', 18);
INSERT INTO audit_auditlog VALUES (178, 2025-06-23 22:41:06.732395-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);
INSERT INTO audit_auditlog VALUES (179, 2025-06-23 23:48:51.365821-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (180, 2025-06-23 23:50:47.295391-04:00, 'LOGOUT', 'Auth', NULL, 'Cierre de sesión del usuario "admin"', '127.0.0.1', 1);
INSERT INTO audit_auditlog VALUES (181, 2025-06-23 23:50:56.922508-04:00, 'LOGIN', 'Auth', NULL, 'Inicio de sesión del usuario "admin.saona"', '127.0.0.1', 12);

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
);

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
INSERT INTO auditlog_logentry VALUES (55, '17', 17, 'felipe.flores', 0, {'id': ['None', '17'], 'email': ['None', 'felipe321@gmail.com'], 'phone': ['None', '1234567'], 'address': ['None', 'loquesea'], 'company': ['None', '1'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$cCBaY66eIpyW6O72KDVKK4$zx++vDDmcdsYDSYUK1VPoL54iVtOrXMQkXxNBsnh59s='], 'username': ['None', 'felipe.flores'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Flores'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'Felipe'], 'date_joined': ['None', '2025-06-22 20:26:23.886503'], 'notas_venta': ['None', 'sales.NotaVenta.None'], 'is_superuser': ['None', 'False'], 'owned_events': ['None', 'events.Event.None']}, 2025-06-22 16:26:24.524026-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (56, '18', 18, 'felipe.flores', 0, {'id': ['None', '18'], 'email': ['None', 'felipe321@gmail.com'], 'phone': ['None', '1234567'], 'address': ['None', 'loquesea'], 'company': ['None', '1'], 'is_staff': ['None', 'False'], 'password': ['None', 'pbkdf2_sha256$1000000$7oolAmt8zSYacgGf2jLyKg$bgNSGHfDDfyO474sY+2d8S285WoiciAPynCA1Sim9HM='], 'username': ['None', 'felipe.flores'], 'is_active': ['None', 'True'], 'last_name': ['None', 'Flores'], 'user_type': ['None', 'customer'], 'first_name': ['None', 'Felipe'], 'date_joined': ['None', '2025-06-22 20:31:46.251610'], 'notas_venta': ['None', 'sales.NotaVenta.None'], 'is_superuser': ['None', 'False'], 'owned_events': ['None', 'events.Event.None']}, 2025-06-22 16:31:47.388381-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (57, '1', 1, 'Globos - Felipe Flores', 0, {'id': ['None', '1'], 'email': ['None', 'felipe321@gmail.com'], 'address': ['None', 'av montero'], 'company': ['None', '1'], 'is_active': ['None', 'True'], 'created_at': ['None', '2025-06-22 20:35:17.172853'], 'updated_at': ['None', '2025-06-22 20:35:17.172870'], 'contact_name': ['None', 'Felipe Flores'], 'contact_phone': ['None', '1234567'], 'commercial_name': ['None', 'Globos']}, 2025-06-22 16:35:17.177335-04:00, NULL, 22, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (58, '2', 2, 'mobiliario martinez - Felipe Flores', 0, {'id': ['None', '2'], 'email': ['None', '321felipe@gmail.com'], 'notes': ['None', 'vende cosas turbias'], 'address': ['None', 'av brasil'], 'company': ['None', '1'], 'website': ['None', 'https://softwareeventosfrontend-production.up.railway.app/companies/new'], 'is_active': ['None', 'True'], 'created_at': ['None', '2025-06-22 20:37:32.972357'], 'updated_at': ['None', '2025-06-22 20:37:32.972368'], 'contact_name': ['None', 'Felipe Flores'], 'contact_phone': ['None', '1234567'], 'commercial_name': ['None', 'mobiliario martinez']}, 2025-06-22 16:37:32.976411-04:00, NULL, 22, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (59, '13', 13, 'Sillas Modernas', 0, {'id': ['None', '13'], 'name': ['None', 'Sillas Modernas'], 'company': ['None', '1'], 'provider': ['None', '2'], 'base_price': ['None', '10.00'], 'created_at': ['None', '2025-06-22 21:38:12.872962'], 'updated_at': ['None', '2025-06-22 21:38:12.872994'], 'description': ['None', 'Sillas para boda elegantes'], 'unit_measure': ['None', 'unit']}, 2025-06-22 17:38:12.880508-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (60, '13', 13, 'Sillas Modernas', 1, {'provider': ['2', '1']}, 2025-06-22 17:38:26.994828-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (61, '1', 1, 'admin', 1, {'last_login': ['2025-05-20 04:00:53.819464', '2025-06-22 22:51:00.068939']}, 2025-06-22 18:51:00.075535-04:00, NULL, 6, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (62, '14', 14, 'pe', 0, {'id': ['None', '14'], 'name': ['None', 'pe'], 'company': ['None', '1'], 'provider': ['None', '2'], 'base_price': ['None', '0.00'], 'created_at': ['None', '2025-06-23 00:11:30.558994'], 'updated_at': ['None', '2025-06-23 00:11:30.559016'], 'description': ['None', 'pe'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '0']}, 2025-06-22 20:11:30.585224-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (63, '3', 3, 'mobiliario martinez2 - Felipe Flores', 0, {'id': ['None', '3'], 'email': ['None', 'felipe321s@gmail.com'], 'company': ['None', '1'], 'website': ['None', 'https://softwareeventosfrontend-production.up.railway.app/companies/new'], 'services': ['None', 'services.Service.None'], 'is_active': ['None', 'True'], 'created_at': ['None', '2025-06-23 00:14:16.069357'], 'updated_at': ['None', '2025-06-23 00:14:16.069373'], 'contact_name': ['None', 'Felipe Flores'], 'contact_phone': ['None', '1234567'], 'commercial_name': ['None', 'mobiliario martinez2']}, 2025-06-22 20:14:16.079092-04:00, NULL, 22, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (64, '4', 4, 'mobiliario martinez22 - Felipe Flores', 0, {'id': ['None', '4'], 'email': ['None', 'felispe321s@gmail.com'], 'company': ['None', '1'], 'website': ['None', 'https://softwareeventosfrontend-production.up.railway.app/companies/new'], 'services': ['None', 'services.Service.None'], 'is_active': ['None', 'True'], 'created_at': ['None', '2025-06-23 00:14:38.829566'], 'updated_at': ['None', '2025-06-23 00:14:38.829579'], 'contact_name': ['None', 'Felipe Flores'], 'contact_phone': ['None', '1234567'], 'commercial_name': ['None', 'mobiliario martinez22']}, 2025-06-22 20:14:38.838321-04:00, NULL, 22, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (65, '5', 5, 'mobiliario martinez232 - Felipe Flores', 0, {'id': ['None', '5'], 'email': ['None', 'felispe321s1@gmail.com'], 'company': ['None', '1'], 'website': ['None', 'https://softwareeventosfrontend-production.up.railway.app/companies/new'], 'services': ['None', 'services.Service.None'], 'is_active': ['None', 'True'], 'created_at': ['None', '2025-06-23 00:15:07.768860'], 'updated_at': ['None', '2025-06-23 00:15:07.768874'], 'contact_name': ['None', 'Felipe Flores'], 'contact_phone': ['None', '1234567'], 'commercial_name': ['None', 'mobiliario martinez232']}, 2025-06-22 20:15:07.770759-04:00, NULL, 22, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (66, '15', 15, 'pals', 0, {'id': ['None', '15'], 'name': ['None', 'pals'], 'company': ['None', '1'], 'provider': ['None', '4'], 'base_price': ['None', '0.00'], 'created_at': ['None', '2025-06-23 00:21:59.760744'], 'updated_at': ['None', '2025-06-23 00:21:59.760761'], 'description': ['None', 'sde'], 'unit_measure': ['None', 'person'], 'standard_duration': ['None', '100']}, 2025-06-22 20:21:59.766400-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (67, '15', 15, 'pals', 2, {'id': ['15', 'None'], 'name': ['pals', 'None'], 'company': ['1', 'None'], 'provider': ['4', 'None'], 'base_price': ['0.00', 'None'], 'created_at': ['2025-06-23 00:21:59.760744', 'None'], 'updated_at': ['2025-06-23 00:21:59.760761', 'None'], 'description': ['sde', 'None'], 'unit_measure': ['person', 'None'], 'standard_duration': ['100', 'None']}, 2025-06-22 20:30:27.444905-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (68, '14', 14, 'pe', 2, {'id': ['14', 'None'], 'name': ['pe', 'None'], 'company': ['1', 'None'], 'provider': ['2', 'None'], 'base_price': ['0.00', 'None'], 'created_at': ['2025-06-23 00:11:30.558994', 'None'], 'updated_at': ['2025-06-23 00:11:30.559016', 'None'], 'description': ['pe', 'None'], 'unit_measure': ['hour', 'None'], 'standard_duration': ['0', 'None']}, 2025-06-22 20:30:29.609850-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (69, '16', 16, 'sd', 0, {'id': ['None', '16'], 'name': ['None', 'sd'], 'company': ['None', '1'], 'provider': ['None', '4'], 'base_price': ['None', '4.00'], 'created_at': ['None', '2025-06-23 00:35:32.074034'], 'updated_at': ['None', '2025-06-23 00:35:32.074063'], 'description': ['None', 'sd'], 'unit_measure': ['None', 'hour'], 'standard_duration': ['None', '74']}, 2025-06-22 20:35:32.077697-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');
INSERT INTO auditlog_logentry VALUES (70, '16', 16, 'sd', 2, {'id': ['16', 'None'], 'name': ['sd', 'None'], 'company': ['1', 'None'], 'provider': ['4', 'None'], 'base_price': ['4.00', 'None'], 'created_at': ['2025-06-23 00:35:32.074034', 'None'], 'updated_at': ['2025-06-23 00:35:32.074063', 'None'], 'description': ['sd', 'None'], 'unit_measure': ['hour', 'None'], 'standard_duration': ['74', 'None']}, 2025-06-22 20:35:56.985679-04:00, NULL, 9, NULL, NULL, NULL, NULL, '');

-- Table backup_backup
CREATE TABLE IF NOT EXISTS backup_backup (
  id bigint,
  file_name character varying,
  backup_type character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone
);

INSERT INTO backup_backup VALUES (1, 'backup_20250519_204259.sql', 'manual', 2025-05-19 20:43:00.672992-04:00, 2025-05-19 20:43:00.673008-04:00);
INSERT INTO backup_backup VALUES (2, 'backup_20250603_002645.sql', 'manual', 2025-06-03 00:26:45.456616-04:00, 2025-06-03 00:26:45.456635-04:00);
INSERT INTO backup_backup VALUES (3, 'backup_20250603_003325.sql', 'manual', 2025-06-03 00:33:25.877570-04:00, 2025-06-03 00:33:25.877582-04:00);
INSERT INTO backup_backup VALUES (4, 'backup_20250622_141225.sql', 'manual', 2025-06-22 14:12:25.750947-04:00, 2025-06-22 14:12:25.750958-04:00);
INSERT INTO backup_backup VALUES (5, 'backup_20250623_235109.sql', 'manual', 2025-06-23 23:51:09.232166-04:00, 2025-06-23 23:51:09.232176-04:00);

-- Table packages_package
CREATE TABLE IF NOT EXISTS packages_package (
  id bigint,
  name character varying,
  description text,
  image character varying,
  company_id bigint
);

INSERT INTO packages_package VALUES (1, 'Paquete Quinceaños2', 'Servicios esenciales para una fiesta de quinceaños', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmF3Biaii2qOJ7jWK6TjPDfnBWYw8dveupew&s', 1);
INSERT INTO packages_package VALUES (2, 'Paquete Boda', 'Servicios para una boda', '', 1);
INSERT INTO packages_package VALUES (5, 'prueba', 'prueba', '', 1);
INSERT INTO packages_package VALUES (6, 'paquete 2', 'paquet', '', 1);

-- Table packages_package_services
CREATE TABLE IF NOT EXISTS packages_package_services (
  id bigint,
  package_id bigint,
  service_id bigint
);

INSERT INTO packages_package_services VALUES (1, 1, 8);
INSERT INTO packages_package_services VALUES (2, 1, 12);
INSERT INTO packages_package_services VALUES (3, 1, 7);
INSERT INTO packages_package_services VALUES (4, 2, 9);
INSERT INTO packages_package_services VALUES (5, 2, 11);
INSERT INTO packages_package_services VALUES (6, 2, 12);
INSERT INTO packages_package_services VALUES (7, 2, 7);
INSERT INTO packages_package_services VALUES (13, 5, 7);
INSERT INTO packages_package_services VALUES (16, 5, 11);
INSERT INTO packages_package_services VALUES (17, 5, 12);
INSERT INTO packages_package_services VALUES (18, 6, 8);
INSERT INTO packages_package_services VALUES (19, 6, 9);
INSERT INTO packages_package_services VALUES (20, 6, 10);
INSERT INTO packages_package_services VALUES (21, 6, 7);

-- Table services_service
CREATE TABLE IF NOT EXISTS services_service (
  id bigint,
  name character varying,
  description text,
  base_price numeric,
  unit_measure character varying,
  standard_duration integer,
  provider_id bigint,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
);

INSERT INTO services_service VALUES (7, 'Servicio de Catering', 'Servicios de Comida', 30.00, 'person', NULL, 1, 2025-05-19 14:29:24.205914-04:00, 2025-05-19 14:29:36.240051-04:00, 1);
INSERT INTO services_service VALUES (8, 'Servicio de Musica Quinceaños', 'Musica en vivo para una fiesta de quinceaños', 200.00, 'hour', NULL, 1, 2025-05-19 19:19:35.136899-04:00, 2025-05-19 19:19:35.136917-04:00, 1);
INSERT INTO services_service VALUES (9, 'Planificación y coordinación de eventos', 'Servicio integral que abarca la organización del evento de principio a fin, incluyendo cronograma, logística, coordinación de proveedores y supervisión el día del evento.', 100.00, 'event', NULL, 1, 2025-05-19 19:24:18.435626-04:00, 2025-05-19 19:24:18.435638-04:00, 1);
INSERT INTO services_service VALUES (10, 'Animación y entretenimiento', 'Contratación de animadores, presentadores, DJs, bandas musicales, artistas, bailarines, shows temáticos, comediantes, etc.', 150.00, 'event', NULL, 1, 2025-05-19 19:27:13.389128-04:00, 2025-05-19 19:27:13.389148-04:00, 1);
INSERT INTO services_service VALUES (11, 'Decoración y ambientación', 'Diseño y montaje de decoraciones temáticas o personalizadas: centros de mesa, backdrops, flores, globos, iluminación ambiental, etc.', 100.00, 'event', NULL, 1, 2025-05-19 19:27:38.605745-04:00, 2025-05-19 19:27:38.605764-04:00, 1);
INSERT INTO services_service VALUES (12, 'Fotografía y video', 'Cobertura visual profesional del evento con cámaras, drones, edición y entrega digital o impresa.', 50.00, 'unit', NULL, 1, 2025-05-19 19:28:20.027969-04:00, 2025-05-19 19:28:20.027991-04:00, 1);
INSERT INTO services_service VALUES (13, 'Sillas Modernas', 'Sillas para boda elegantes', 10.00, 'unit', NULL, 1, 2025-06-22 17:38:12.872962-04:00, 2025-06-22 17:38:27.002493-04:00, 1);

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
);

INSERT INTO locations_location VALUES (4, 'Sucursal Sur', 'ideal para bodas, cumpleaños y aniversarios', 'av santos dumont', 150, 'salon', 1000.00, 'event', 200, 50, 'cerrado', 100.00, 'Proveedor XYZ', 2025-05-20 03:04:05.359930-04:00, 2025-05-20 03:04:05.359958-04:00, 1);
INSERT INTO locations_location VALUES (5, 'Sucursal Norte', 'Ideal para Graduaciones y Promociones', 'Las Brisas', 200, 'salon', 1500.00, 'event', 300, 100, 'cerrado', 50.00, 'Proveedor XYZ', 2025-05-20 03:05:49.241159-04:00, 2025-05-20 03:05:49.241171-04:00, 1);

-- Table events_event
CREATE TABLE IF NOT EXISTS events_event (
  id bigint,
  name character varying,
  description text,
  start_date timestamp with time zone,
  end_date timestamp with time zone,
  is_package boolean,
  status character varying,
  image character varying,
  attendee_count integer,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint,
  location_id bigint,
  owner_id bigint,
  package_id bigint
);

INSERT INTO events_event VALUES (4, 'Boda', 'Boda Cristiana', 2025-05-31 08:00:00-04:00, 2025-05-31 20:00:00-04:00, True, 'scheduled', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fes.pinterest.com%2Fpin%2F453245150002120105%2F&psig=AOvVaw0gyEFvE--AUyo8uTFAsMEQ&ust=1748999917003000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCJCDr8eK1I0DFQAAAAAdAAAAABAE', 50, 2025-05-20 03:07:01.028104-04:00, 2025-05-20 03:07:01.028114-04:00, 1, 4, NULL, 2);
INSERT INTO events_event VALUES (13, 'asd', 'asd', 2025-06-22 00:00:00-04:00, 2025-06-22 05:00:00-04:00, True, 'in_progress', '', 123, 2025-06-22 16:31:47.392472-04:00, 2025-06-22 16:31:47.392486-04:00, 1, 5, 18, 2);
INSERT INTO events_event VALUES (5, 'Quinceaños', 'Cumpleaños', 2025-06-11 04:20:00-04:00, 2025-06-12 00:00:00-04:00, True, 'scheduled', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fes.pinterest.com%2Fpin%2F453245150002120105%2F&psig=AOvVaw0gyEFvE--AUyo8uTFAsMEQ&ust=1748999917003000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCJCDr8eK1I0DFQAAAAAdAAAAABAE', 50, 2025-06-02 21:18:50.295170-04:00, 2025-06-23 00:02:40.578250-04:00, 1, 5, NULL, 1);
INSERT INTO events_event VALUES (6, 'Matrimonio', 'Boda de x persona', 2025-06-30 00:00:00-04:00, 2025-07-01 00:00:00-04:00, True, 'scheduled', 'https://cdn0.bodas.com.mx/article-vendor/8463/original/960/jpg/opengo-00401_5_68463-167166419540430.webp', 100, 2025-06-22 15:23:33.414538-04:00, 2025-06-23 22:31:46.429629-04:00, 1, 5, NULL, 2);

-- Table events_event_services
CREATE TABLE IF NOT EXISTS events_event_services (
  id bigint,
  event_id bigint,
  service_id bigint
);


-- Table schedules_schedule
CREATE TABLE IF NOT EXISTS schedules_schedule (
  id bigint,
  start_time time without time zone,
  end_time time without time zone,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint,
  event_id bigint
);

INSERT INTO schedules_schedule VALUES (6, 12:00:00, 23:00:00, 2025-06-22 14:15:09.900443-04:00, 2025-06-22 14:15:09.900458-04:00, 1, 4);

-- Table providers
CREATE TABLE IF NOT EXISTS providers (
  id bigint,
  commercial_name character varying,
  contact_name character varying,
  contact_phone character varying,
  email character varying,
  website character varying,
  address text,
  is_active boolean,
  notes text,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
);

INSERT INTO providers VALUES (1, 'Globos', 'Felipe Flores', '1234567', 'felipe321@gmail.com', NULL, 'av montero', True, NULL, 2025-06-22 16:35:17.172853-04:00, 2025-06-22 16:35:17.172870-04:00, 1);
INSERT INTO providers VALUES (2, 'mobiliario martinez', 'Felipe Flores', '1234567', '321felipe@gmail.com', 'https://softwareeventosfrontend-production.up.railway.app/companies/new', 'av brasil', True, 'vende cosas turbias', 2025-06-22 16:37:32.972357-04:00, 2025-06-22 16:37:32.972368-04:00, 1);
INSERT INTO providers VALUES (3, 'mobiliario martinez2', 'Felipe Flores', '1234567', 'felipe321s@gmail.com', 'https://softwareeventosfrontend-production.up.railway.app/companies/new', NULL, True, NULL, 2025-06-22 20:14:16.069357-04:00, 2025-06-22 20:14:16.069373-04:00, 1);
INSERT INTO providers VALUES (4, 'mobiliario martinez22', 'Felipe Flores', '1234567', 'felispe321s@gmail.com', 'https://softwareeventosfrontend-production.up.railway.app/companies/new', NULL, True, NULL, 2025-06-22 20:14:38.829566-04:00, 2025-06-22 20:14:38.829579-04:00, 1);
INSERT INTO providers VALUES (5, 'mobiliario martinez232', 'Felipe Flores', '1234567', 'felispe321s1@gmail.com', 'https://softwareeventosfrontend-production.up.railway.app/companies/new', NULL, True, NULL, 2025-06-22 20:15:07.768860-04:00, 2025-06-22 20:15:07.768874-04:00, 1);

-- Table schedules_activity
CREATE TABLE IF NOT EXISTS schedules_activity (
  id bigint,
  title character varying,
  description text,
  start_time time without time zone,
  end_time time without time zone,
  status character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  schedule_id bigint
);

INSERT INTO schedules_activity VALUES (2, 'Musicos', 'wa', 12:00:00, 13:00:00, 'planificada', 2025-06-22 21:22:09.469174-04:00, 2025-06-22 21:22:09.469191-04:00, 6);
INSERT INTO schedules_activity VALUES (3, 'Cena', 'asd', 17:00:00, 18:00:00, 'planificada', 2025-06-22 21:22:26.498351-04:00, 2025-06-22 21:22:26.498369-04:00, 6);

-- Table sales_notaventa
CREATE TABLE IF NOT EXISTS sales_notaventa (
  id bigint,
  cliente_nombre character varying,
  correo_cliente character varying,
  fecha timestamp with time zone,
  total numeric,
  administrador_id bigint
);

INSERT INTO sales_notaventa VALUES (1, 'FElipe', NULL, 2025-06-02 21:32:46.739552-04:00, 280.00, 12);
INSERT INTO sales_notaventa VALUES (2, 'rodrigo', NULL, 2025-06-03 07:52:51.892315-04:00, 250.00, 12);
INSERT INTO sales_notaventa VALUES (3, 'Fuan', '21germang@gmail.com', 2025-06-22 16:53:53.783784-04:00, 350.00, 12);

-- Table sales_detallenotaventa
CREATE TABLE IF NOT EXISTS sales_detallenotaventa (
  id bigint,
  cantidad integer,
  precio_unitario numeric,
  subtotal numeric,
  servicio_id bigint,
  nota_venta_id bigint
);

INSERT INTO sales_detallenotaventa VALUES (1, 1, 30.00, 30.00, 7, 1);
INSERT INTO sales_detallenotaventa VALUES (2, 1, 100.00, 100.00, 9, 1);
INSERT INTO sales_detallenotaventa VALUES (3, 1, 150.00, 150.00, 10, 1);
INSERT INTO sales_detallenotaventa VALUES (4, 1, 200.00, 200.00, 8, 2);
INSERT INTO sales_detallenotaventa VALUES (5, 1, 50.00, 50.00, 12, 2);
INSERT INTO sales_detallenotaventa VALUES (6, 1, 200.00, 200.00, 8, 3);
INSERT INTO sales_detallenotaventa VALUES (7, 1, 100.00, 100.00, 9, 3);
INSERT INTO sales_detallenotaventa VALUES (8, 1, 50.00, 50.00, 12, 3);

-- Table django_session
CREATE TABLE IF NOT EXISTS django_session (
  session_key character varying,
  session_data text,
  expire_date timestamp with time zone
);

INSERT INTO django_session VALUES ('y8ejmznoobopousxfn3tcyrjopq5mhvn', '.eJxVjDsOwjAQBe_iGlnr764o6TmD5c8GB5AjxUkVcXcSKQW0b2beJkJclxrWznMYi7gKJS6_W4r5xe0A5RnbY5J5ass8Jnko8qRd3qfC79vp_h3U2OteQzTWJjLak_cKgGwxg0M1IKJLJQIwJ9ZIyiAaYmZFDjDvYs5We_H5ArBtNrQ:1u5Fod:aGcby8lU3tpYU30zR-iZryNgm4jbOcEaJMx7fCQGw24', 2025-04-30 23:21:27.242477-04:00);
INSERT INTO django_session VALUES ('e341m07wzfjdrb38uq35hw871qtwm19m', '.eJxVjDsOwjAQBe_iGlnr764o6TmD5c8GB5AjxUkVcXcSKQW0b2beJkJclxrWznMYi7gKJS6_W4r5xe0A5RnbY5J5ass8Jnko8qRd3qfC79vp_h3U2OteQzTWJjLak_cKgGwxg0M1IKJLJQIwJ9ZIyiAaYmZFDjDvYs5We_H5ArBtNrQ:1u5NZv:FuiFj-NphsjC33yTs7JggZMh4pBdGmjDsYZjrRaT4v0', 2025-05-01 07:38:47.774840-04:00);
INSERT INTO django_session VALUES ('c0tg7h2l3nsdehaf9d39r9y6oyfeblrw', '.eJxVjMsOwiAUBf-FtSFQuQVcuvcbyH2AVE2blHZl_HfbpAvdnpk5b5VwXWpaW57TIOqirDr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVZEkcSAAyvZdIJRv0PZKJZ9dRCRBQ2FF0njtgYgveBoayWd4AZPX5Avl2OC8:1uC9Lb:TdTUcfgnNdzGkHxHLW2u5OHRKaU07EfKFqtayV_8Ip8', 2025-05-19 23:51:59.004858-04:00);
INSERT INTO django_session VALUES ('din5m92ihsh8g8mbuossh8dv0od5d7p9', '.eJxVjMsOwiAUBf-FtSFQuQVcuvcbyH2AVE2blHZl_HfbpAvdnpk5b5VwXWpaW57TIOqirDr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVZEkcSAAyvZdIJRv0PZKJZ9dRCRBQ2FF0njtgYgveBoayWd4AZPX5Avl2OC8:1uHE9t:4r7oB58XfUyCRkULuMd8VKvt8Cq6ph_TAuq5_7qDpwc', 2025-06-03 00:00:53.851538-04:00);
INSERT INTO django_session VALUES ('43tudlq5m7hvtr38igcml5x9czwjjrzr', '.eJxVjMsOwiAUBf-FtSFQuQVcuvcbyH2AVE2blHZl_HfbpAvdnpk5b5VwXWpaW57TIOqirDr9boT8zOMO5IHjfdI8jcs8kN4VfdCmb5Pk1_Vw_w4qtrrVZEkcSAAyvZdIJRv0PZKJZ9dRCRBQ2FF0njtgYgveBoayWd4AZPX5Avl2OC8:1uTTWe:RKhdqAzklEQkI6ymvI16P9L6XwgiPLv9zZO2CL2ns2U', 2025-07-06 18:51:00.089827-04:00);

-- Table staff
CREATE TABLE IF NOT EXISTS staff (
  id bigint,
  full_name character varying,
  identity_document character varying,
  email character varying,
  phone character varying,
  address text,
  birth_date date,
  position character varying,
  photo character varying,
  hire_date date,
  is_active boolean,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
);

INSERT INTO staff VALUES (1, 'asd', '123', 'mel@gibson.com', '1234567', 'loquesea', 2005-02-02, 'catering', '', 2000-01-01, True, 2025-06-02 21:58:40.088074-04:00, 2025-06-02 22:01:41.215856-04:00, 1);
INSERT INTO staff VALUES (2, 'asd', 'asd', 'feldipase321@gmail.com', '1234567', 'loquesea', 2004-06-10, 'seguridad', '', 2025-06-02, True, 2025-06-22 20:47:59.841530-04:00, 2025-06-22 20:47:59.841543-04:00, 1);

-- Table subscriptions_subscription
CREATE TABLE IF NOT EXISTS subscriptions_subscription (
  id bigint,
  plan_type character varying,
  status character varying,
  start_date timestamp with time zone,
  end_date timestamp with time zone,
  stripe_customer_id character varying,
  stripe_subscription_id character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint
);

INSERT INTO subscriptions_subscription VALUES (2, 'monthly', 'active', 2025-05-06 00:48:42.514285-04:00, 2025-06-05 00:48:42.514285-04:00, 'cus_SG9kef1kMhjo0p', 'sub_1RLdQrA3VhVRZlE95XK3IhWx', 2025-05-06 00:48:42.514619-04:00, 2025-05-06 00:48:42.514623-04:00, 1);
INSERT INTO subscriptions_subscription VALUES (3, 'monthly', 'active', 2025-05-06 01:08:33.331660-04:00, 2025-06-05 01:08:33.331660-04:00, 'cus_SG96WttRADChL0', 'sub_1RLcogA3VhVRZlE9YBHTFDNE', 2025-05-06 01:08:33.332063-04:00, 2025-05-06 01:08:33.332070-04:00, 1);
INSERT INTO subscriptions_subscription VALUES (4, 'biannual', 'active', 2025-05-06 01:39:11.241019-04:00, 2025-11-02 01:39:11.241019-04:00, 'cus_SG96WttRADChL0', 'sub_1RLeDhA3VhVRZlE9KcfcpRdf', 2025-05-06 01:39:11.241293-04:00, 2025-05-06 01:39:11.241297-04:00, 1);
INSERT INTO subscriptions_subscription VALUES (5, 'biannual', 'active', 2025-05-06 01:39:11.241019-04:00, 2025-11-02 01:39:11.241019-04:00, 'cus_SG96WttRADChL0', 'sub_1RLeDhA3VhVRZlE9KcfcpRdf', 2025-05-06 01:39:11.241293-04:00, 2025-05-06 01:39:11.241297-04:00, 2);

-- Table tasks
CREATE TABLE IF NOT EXISTS tasks (
  id bigint,
  title character varying,
  description text,
  start_datetime timestamp with time zone,
  end_datetime timestamp with time zone,
  status character varying,
  notes text,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  company_id bigint,
  event_id bigint
);

INSERT INTO tasks VALUES (2, 'esd', 'sd', 2025-06-22 18:12:00-04:00, 2025-06-23 18:13:00-04:00, 'en_progreso', '', 2025-06-22 22:13:15.539003-04:00, 2025-06-22 22:13:15.539015-04:00, 1, 6);
INSERT INTO tasks VALUES (1, 'Acomodar las sillas', 'acomodar las sillas para la boda de manera diagonal', 2025-06-22 05:51:00-04:00, 2025-06-22 10:51:00-04:00, 'en_progreso', '', 2025-06-22 17:51:31.880339-04:00, 2025-06-22 22:37:36.944155-04:00, 1, 4);

-- Table tasks_assigned_staff
CREATE TABLE IF NOT EXISTS tasks_assigned_staff (
  id bigint,
  task_id bigint,
  staff_id bigint
);

INSERT INTO tasks_assigned_staff VALUES (2, 2, 1);
INSERT INTO tasks_assigned_staff VALUES (3, 2, 2);
INSERT INTO tasks_assigned_staff VALUES (4, 1, 2);

-- Table invitations_invitation
CREATE TABLE IF NOT EXISTS invitations_invitation (
  id bigint,
  guest_name character varying,
  guest_email character varying,
  guest_phone character varying,
  invitation_type character varying,
  custom_message text,
  status character varying,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  sent_at timestamp with time zone,
  confirmed_at timestamp with time zone,
  confirmation_token character varying,
  created_by_id bigint,
  event_id bigint,
  assigned_seats character varying
);

INSERT INTO invitations_invitation VALUES (1, 'Pepe', '21germang@gmail.com', '1234', 'familia', 'chupaloo', 'enviada', 2025-06-23 22:37:03.498240-04:00, 2025-06-23 22:37:07.424267-04:00, 2025-06-23 22:37:07.423887-04:00, NULL, 'DzX1RBiiLMMa5WgTg_AswFMKNXG-s5hD64GgsCafBXY', 18, 13, 'A-97,A-98,A-99,A-100,A-101,A-82,A-83,A-84,A-86,A-85,A-1,A-2,A-3,A-4,A-7,A-6,A-5,A-8,A-9,A-10,A-11,A-12,A-14,A-15,A-13');

