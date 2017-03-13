--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO "ArtRey";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO "ArtRey";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO "ArtRey";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO "ArtRey";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO "ArtRey";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO "ArtRey";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO "ArtRey";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO "ArtRey";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO "ArtRey";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO "ArtRey";

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO "ArtRey";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO "ArtRey";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO "ArtRey";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO "ArtRey";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO "ArtRey";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO "ArtRey";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO "ArtRey";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO "ArtRey";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_categoria; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_categoria" (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL
);


ALTER TABLE "paginaPrincipal_categoria" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_categoria_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_categoria_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_categoria_id_seq" OWNED BY "paginaPrincipal_categoria".id;


--
-- Name: paginaPrincipal_comentarios; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_comentarios" (
    id integer NOT NULL,
    contenido text NOT NULL,
    "reseña_id" integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE "paginaPrincipal_comentarios" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_comentarios_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_comentarios_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_comentarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_comentarios_id_seq" OWNED BY "paginaPrincipal_comentarios".id;


--
-- Name: paginaPrincipal_likes; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_likes" (
    id integer NOT NULL,
    "reseña_id" integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE "paginaPrincipal_likes" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_likes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_likes_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_likes_id_seq" OWNED BY "paginaPrincipal_likes".id;


--
-- Name: paginaPrincipal_noticia; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_noticia" (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    categoria_id integer NOT NULL,
    usuario_id integer NOT NULL,
    _contenido_rendered text,
    contenido text NOT NULL,
    resumen character varying(140),
    borrado boolean NOT NULL
);


ALTER TABLE "paginaPrincipal_noticia" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_noticia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_noticia_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_noticia_id_seq" OWNED BY "paginaPrincipal_noticia".id;


--
-- Name: paginaPrincipal_reseña; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_reseña" (
    id integer NOT NULL,
    titulo character varying(50) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    referencia character varying(100) NOT NULL,
    "califReview" double precision NOT NULL,
    "califGente" double precision,
    categoria_id integer NOT NULL,
    usuario_id integer NOT NULL,
    _contenido_rendered text,
    contenido text NOT NULL,
    dislike integer,
    "like" integer,
    borrado boolean NOT NULL
);


ALTER TABLE "paginaPrincipal_reseña" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_reseña_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_reseña_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_reseña_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_reseña_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_reseña_id_seq" OWNED BY "paginaPrincipal_reseña".id;


--
-- Name: paginaPrincipal_usuario; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE "paginaPrincipal_usuario" (
    id integer NOT NULL,
    "fechaDeNacimiento" timestamp with time zone NOT NULL,
    categoria_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "paginaPrincipal_usuario" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE "paginaPrincipal_usuario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "paginaPrincipal_usuario_id_seq" OWNER TO "ArtRey";

--
-- Name: paginaPrincipal_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE "paginaPrincipal_usuario_id_seq" OWNED BY "paginaPrincipal_usuario".id;


--
-- Name: precise_bbcode_bbcodetag; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE precise_bbcode_bbcodetag (
    id integer NOT NULL,
    tag_name character varying(20) NOT NULL,
    tag_definition text NOT NULL,
    html_replacement text NOT NULL,
    newline_closes boolean NOT NULL,
    same_tag_closes boolean NOT NULL,
    end_tag_closes boolean NOT NULL,
    standalone boolean NOT NULL,
    transform_newlines boolean NOT NULL,
    render_embedded boolean NOT NULL,
    escape_html boolean NOT NULL,
    replace_links boolean NOT NULL,
    strip boolean NOT NULL,
    swallow_trailing_newline boolean NOT NULL,
    helpline character varying(120),
    display_on_editor boolean NOT NULL
);


ALTER TABLE precise_bbcode_bbcodetag OWNER TO "ArtRey";

--
-- Name: precise_bbcode_bbcodetag_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE precise_bbcode_bbcodetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE precise_bbcode_bbcodetag_id_seq OWNER TO "ArtRey";

--
-- Name: precise_bbcode_bbcodetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE precise_bbcode_bbcodetag_id_seq OWNED BY precise_bbcode_bbcodetag.id;


--
-- Name: precise_bbcode_smileytag; Type: TABLE; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE TABLE precise_bbcode_smileytag (
    id integer NOT NULL,
    code character varying(60) NOT NULL,
    image character varying(100) NOT NULL,
    image_width integer,
    image_height integer,
    emotion character varying(100),
    display_on_editor boolean NOT NULL,
    CONSTRAINT precise_bbcode_smileytag_image_height_check CHECK ((image_height >= 0)),
    CONSTRAINT precise_bbcode_smileytag_image_width_check CHECK ((image_width >= 0))
);


ALTER TABLE precise_bbcode_smileytag OWNER TO "ArtRey";

--
-- Name: precise_bbcode_smileytag_id_seq; Type: SEQUENCE; Schema: public; Owner: ArtRey
--

CREATE SEQUENCE precise_bbcode_smileytag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE precise_bbcode_smileytag_id_seq OWNER TO "ArtRey";

--
-- Name: precise_bbcode_smileytag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ArtRey
--

ALTER SEQUENCE precise_bbcode_smileytag_id_seq OWNED BY precise_bbcode_smileytag.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_categoria" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_categoria_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_comentarios" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_comentarios_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_likes" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_likes_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_noticia" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_noticia_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_reseña" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_reseña_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_usuario" ALTER COLUMN id SET DEFAULT nextval('"paginaPrincipal_usuario_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY precise_bbcode_bbcodetag ALTER COLUMN id SET DEFAULT nextval('precise_bbcode_bbcodetag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY precise_bbcode_smileytag ALTER COLUMN id SET DEFAULT nextval('precise_bbcode_smileytag_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add categoria	7	add_categoria
20	Can change categoria	7	change_categoria
21	Can delete categoria	7	delete_categoria
22	Can add usuario	8	add_usuario
23	Can change usuario	8	change_usuario
24	Can delete usuario	8	delete_usuario
25	Can add reseña	9	add_reseña
26	Can change reseña	9	change_reseña
27	Can delete reseña	9	delete_reseña
28	Can add noticia	10	add_noticia
29	Can change noticia	10	change_noticia
30	Can delete noticia	10	delete_noticia
31	Can add BBCode tag	11	add_bbcodetag
32	Can change BBCode tag	11	change_bbcodetag
33	Can delete BBCode tag	11	delete_bbcodetag
34	Can add Smiley	12	add_smileytag
35	Can change Smiley	12	change_smileytag
36	Can delete Smiley	12	delete_smileytag
37	Can add likes	13	add_likes
38	Can change likes	13	change_likes
39	Can delete likes	13	delete_likes
40	Can add comentarios	14	add_comentarios
41	Can change comentarios	14	change_comentarios
42	Can delete comentarios	14	delete_comentarios
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$20000$e5QpJgQT78IK$cCDu6icSN0jK0W9Tr1mJ6GsIV8vlENCuukJIfPQcBqQ=	2015-10-29 17:16:23.626495-06	f	joserra			joserra@joserra.com	f	t	2015-10-29 17:16:11.188224-06
1	pbkdf2_sha256$20000$RGHNup9vptWT$amWG0hjUiKzuYcI+yxzuGWc92x9EriA7YvduyndGybs=	2015-11-26 00:06:28.852951-06	t	ali	Ali	Ghahraei	aligf94@gmail.com	t	t	2015-10-23 07:10:27-05
2	pbkdf2_sha256$20000$9fh9KoiODKbn$dPQ5+PyilV5ReNIDR/18qag69rjLASh1lyK0HsXlfNo=	2015-11-26 00:29:03.360346-06	f	Prueba	Prueba	Prueba	prueba@prueba.com	f	t	2015-10-23 07:11:29-05
4	pbkdf2_sha256$20000$BzVgUmz9wbMK$42IOkSqVfDikJCn0kvE7KbID1wmEGbD3vRXF/uDAWtw=	2015-11-29 20:12:35.451043-06	t	admin	Admin	Admin	admin@admin.com	t	t	2015-10-27 13:58:36-06
5	pbkdf2_sha256$20000$M5srcecEqKuT$DmOrNxLAI5H81yQdFJZk2G3yVVfoAlJrOPJhV8G7fGg=	2015-12-01 18:35:22.507904-06	f	alexandro			alex.cebrianm@gmail.com	f	t	2015-10-28 18:09:25.332106-06
7	pbkdf2_sha256$20000$5dTDTfla3LdC$WxhrHCpWy4BrTbqZ6FtT8DrivXOkMPkrqlg1ewsttnU=	2015-12-01 18:46:28.208214-06	f	hola			asdasd@d.com	f	t	2015-12-01 18:46:20.779117-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_user_id_seq', 7, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-10-23 07:11:29.926193-05	2	Prueba	1		4	1
2	2015-10-23 07:12:06.302086-05	2	Prueba	2	Changed first_name, last_name and email.	4	1
3	2015-10-23 07:12:22.132451-05	1	ali	2	Changed first_name and last_name.	4	1
4	2015-10-27 13:20:16.924172-06	1	Categoria object	1		7	1
5	2015-10-27 13:20:31.58841-06	1	Categoria object	3		7	1
6	2015-10-27 13:20:42.390401-06	2	Categoria object	1		7	1
7	2015-10-27 13:21:16.949654-06	1	Usuario object	1		8	1
8	2015-10-27 13:28:56.545894-06	2	Categoria object	3		7	1
9	2015-10-27 13:29:15.303353-06	3	Categoria object	1		7	1
10	2015-10-27 13:29:27.743795-06	3	Categoria object	3		7	1
11	2015-10-27 13:36:01.180077-06	4	Categoria object	1		7	1
12	2015-10-27 13:51:08.438895-06	1	ali	2	Added usuario "ali".	4	1
13	2015-10-27 13:51:47.348329-06	2	Prueba	2	Added usuario "Prueba".	4	1
14	2015-10-27 13:56:18.415135-06	3	admin	1		4	1
15	2015-10-27 13:58:00.851659-06	3	admin	3		4	1
16	2015-10-27 13:59:30.038988-06	4	admin	2	Changed last_login, first_name and last_name. Added usuario "admin".	4	1
17	2015-11-25 23:03:47.205311-06	15	Need for Speed	2	Changed contenido, like and dislike.	9	1
18	2015-11-25 23:04:02.6002-06	14	TLOZ OOT 3D	2	Changed contenido, like and dislike.	9	1
19	2015-11-25 23:04:12.15889-06	13	The Legend of Zelda Ocarina of Time 3D	2	Changed contenido, like and dislike.	9	1
20	2015-11-25 23:04:21.46149-06	12	ytfguhjn	2	Changed contenido, like and dislike.	9	1
21	2015-11-25 23:04:36.369663-06	11	Abelardo	2	Changed contenido, like and dislike.	9	1
22	2015-11-25 23:37:05.974511-06	1	Likes object	3		13	1
23	2015-11-25 23:37:51.415975-06	13	The Legend of Zelda Ocarina of Time 3D	2	Changed contenido and like.	9	1
24	2015-11-26 00:18:11.102823-06	5	Likes object	3		13	1
25	2015-11-26 00:18:14.3402-06	3	Likes object	3		13	1
26	2015-11-26 00:20:28.381154-06	13	The Legend of Zelda Ocarina of Time 3D	2	Changed contenido and like.	9	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 26, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	paginaPrincipal	categoria
8	paginaPrincipal	usuario
9	paginaPrincipal	reseña
10	paginaPrincipal	noticia
11	precise_bbcode	bbcodetag
12	precise_bbcode	smileytag
13	paginaPrincipal	likes
14	paginaPrincipal	comentarios
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-10-21 11:05:22.503875-05
2	auth	0001_initial	2015-10-21 11:05:23.767243-05
3	admin	0001_initial	2015-10-21 11:05:24.021247-05
4	contenttypes	0002_remove_content_type_name	2015-10-21 11:05:24.131768-05
5	auth	0002_alter_permission_name_max_length	2015-10-21 11:05:24.186427-05
6	auth	0003_alter_user_email_max_length	2015-10-21 11:05:24.242798-05
7	auth	0004_alter_user_username_opts	2015-10-21 11:05:24.285959-05
8	auth	0005_alter_user_last_login_null	2015-10-21 11:05:24.342256-05
9	auth	0006_require_contenttypes_0002	2015-10-21 11:05:24.353961-05
10	sessions	0001_initial	2015-10-21 11:05:24.609838-05
11	paginaPrincipal	0001_initial	2015-10-21 13:01:40.511404-05
12	paginaPrincipal	0002_auto_20151023_1005	2015-10-23 10:06:11.656123-05
13	paginaPrincipal	0003_auto_20151027_1224	2015-10-27 12:24:29.022627-06
14	precise_bbcode	0001_initial	2015-10-28 18:55:09.009644-06
15	paginaPrincipal	0004_auto_20151029_0144	2015-10-29 01:45:53.712813-06
16	precise_bbcode	0002_auto_20151029_0144	2015-10-29 01:45:53.720664-06
17	paginaPrincipal	0005_auto_20151029_0225	2015-10-29 02:25:09.778973-06
18	paginaPrincipal	0006_auto_20151029_1414	2015-11-25 09:55:44.111103-06
19	paginaPrincipal	0007_auto_20151029_1414	2015-11-25 09:55:44.246829-06
20	paginaPrincipal	0008_auto_20151111_1927	2015-11-25 09:55:44.402171-06
21	paginaPrincipal	0009_auto_20151125_0955	2015-11-25 09:55:44.479542-06
22	precise_bbcode	0002_auto_20151125_0955	2015-11-25 09:55:44.500611-06
23	paginaPrincipal	0010_auto_20151125_1005	2015-11-25 10:31:36.530329-06
24	paginaPrincipal	0011_auto_20151125_1837	2015-11-25 20:05:56.661604-06
25	paginaPrincipal	0012_auto_20151125_2045	2015-11-25 22:53:15.729258-06
26	paginaPrincipal	0013_auto_20151125_2059	2015-11-25 22:53:15.978583-06
27	paginaPrincipal	0014_auto_20151125_2126	2015-11-25 22:53:16.489228-06
28	paginaPrincipal	0015_auto_20151125_2300	2015-11-25 23:00:42.545271-06
29	paginaPrincipal	0016_auto_20151125_2338	2015-11-25 23:38:13.187077-06
30	paginaPrincipal	0017_auto_20151126_1438	2015-11-26 14:38:51.592544-06
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('django_migrations_id_seq', 30, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
p5br8tw9c0ou0wq0a057cjxcdkf7i90h	NmEzYWExNWE4YTgxNzgzMTUwYzc0OTNmNTMyZTExNmRhMTFjNjZkZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwMTJjM2I1MzA4ZDExZmI0Y2ZiMzdlMDE2NWU0ZDc2NDk5N2Q0NDA3In0=	2015-11-06 06:10:54.563832-06
49kpcptnahmqwx9ogi6p293ipv3ba2n2	ZmE4Yjg5MmNlNmRiMTQ3NTA3YjI2NGEwYmNlMDkwZTEzZmI1YTY1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmODE3YTU4ZjE2NjcxMTkxMWJlZTBjMjhkMDkyYjQzOGIyZDY2OTUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-11-06 06:15:02.461691-06
5268l6y7vigleb62sgc9pw83fx6w4ww2	ZmE4Yjg5MmNlNmRiMTQ3NTA3YjI2NGEwYmNlMDkwZTEzZmI1YTY1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmODE3YTU4ZjE2NjcxMTkxMWJlZTBjMjhkMDkyYjQzOGIyZDY2OTUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-11-06 07:29:05.025804-06
zz9cl1xctb2boctx9szyswu8bcxjgxcq	ZTAxNzQyN2RmMWZkNWZhNzZkMDQwNjc5ZTRlOWMyMGI2Y2I0NWMzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTJjM2I1MzA4ZDExZmI0Y2ZiMzdlMDE2NWU0ZDc2NDk5N2Q0NDA3In0=	2015-11-10 13:57:11.871661-06
bdcyk2mjh0stlmu6zyqd5h6amim8fdif	ODNhNmJmMTIyZmMxMmNiZGU0NmMzYTk4YTViOGI1NGNkNTYwMDY5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhNjk4YjBhNTk4MGMwNGZhNjE2NTZhZDRmZGE2OTFjNDA1MGI0NTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2015-11-12 17:24:55.413136-06
y2gbh5ije5fzrwvwcudqkakctttroo7h	MmNkNzMyMGRmMTg5YjQ0YzZjYjhiNzEzZWE1ZTVjNDA3ODc3ZjgyNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGY4MTdhNThmMTY2NzExOTExYmVlMGMyOGQwOTJiNDM4YjJkNjY5NSIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2015-12-10 00:29:03.371568-06
0665u9bhyc1k9qzli962fbrqnrtrqdew	ZDc0MjJhNWE4ZjdlZWU5MzE3OWJjYzBlMWMxMzQzNDNmOGFiZjYwMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNjNjBlNTBhYmY2YTFkYWU2YTQ5Njg2NjczNGU2Y2RhYWYxODViMGIiLCJfYXV0aF91c2VyX2lkIjoiNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-12-15 18:46:28.211065-06
\.


--
-- Data for Name: paginaPrincipal_categoria; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_categoria" (id, nombre) FROM stdin;
4	Xbox
\.


--
-- Name: paginaPrincipal_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_categoria_id_seq"', 4, true);


--
-- Data for Name: paginaPrincipal_comentarios; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_comentarios" (id, contenido, "reseña_id", usuario_id) FROM stdin;
2	no quiero	13	5
3	la neta no rifa	13	5
4	esta bien cool	13	7
5	mas o menos	13	7
\.


--
-- Name: paginaPrincipal_comentarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_comentarios_id_seq"', 5, true);


--
-- Data for Name: paginaPrincipal_likes; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_likes" (id, "reseña_id", usuario_id) FROM stdin;
8	13	1
10	13	2
12	15	5
13	13	5
14	13	4
15	13	7
\.


--
-- Name: paginaPrincipal_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_likes_id_seq"', 15, true);


--
-- Data for Name: paginaPrincipal_noticia; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_noticia" (id, titulo, fecha, categoria_id, usuario_id, _contenido_rendered, contenido, resumen, borrado) FROM stdin;
1	Nose	2015-11-26 14:38:58.39844-06	4	5	Blabiddy blabiddy bla blak bluretin	Blabiddy blabiddy bla blak bluretin	La vida es bella cuando no sabes nada.	t
2	Abelardo	2015-11-26 15:00:26.003671-06	4	5	asoidhqnolwkneoiasjlndqwe	asoidhqnolwkneoiasjlndqwe	Abelardo no sabe que pedo con su vida	f
\.


--
-- Name: paginaPrincipal_noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_noticia_id_seq"', 2, true);


--
-- Data for Name: paginaPrincipal_reseña; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_reseña" (id, titulo, fecha, referencia, "califReview", "califGente", categoria_id, usuario_id, _contenido_rendered, contenido, dislike, "like", borrado) FROM stdin;
14	TLOZ OOT 3D	2015-10-29 16:13:14-06	test17	10	\N	4	5	[justify][size=3][font=Times New Roman]The Legend of Zelda Ocarina of Time 3D (OOT) es un remake de un juego que salió para Nintendo 64 hace ya 17 años, usualmente es difícil hacer remakes de juegos que sean de agrado para todas las[/font][/size][font=Times New Roman][size=3] personas,[/size][/font][size=3][font=Times New Roman] pero con este se logró contentar a todos los fans del juego así como incluir a todas las personas que aún no estaban familiares con el título.[/font][/size][/justify]<br /><br /><br /><br />[justify][font=Times New Roman][size=6]Trama[/size][/font][/justify]<br /><br />[justify][size=3][font=Times New Roman]El juego comienza cuando Navi despierta a Link de una pesadilla: en ella, Link observa durante una noche tormentosa cómo un hombre montado en un caballo (Ganondorf), persigue a la Princesa Zelda junto con su niñera Impa, quien cabalga también en un caballo. Navi le avisa a Link que debe ir con el guardián de su aldea, el Venerable Árbol Deku, pues este se encuentra moribundo, más tarde, el propio Link deshace la maldición, pero no es capaz de evitar que el árbol muera. Antes de fallecer, el Árbol Deku le informa que un perverso hombre del desierto fue quien lo maldijo, y que además planea conquistar toda la tierra de Hyrule, por lo que el muchacho debe detener sus planes. Asimismo, le entrega la Esmeralda Kokiri considerada como la Piedra del Bosque y lo envía al castillo de Hyrule para que pueda hablar con la princesa del destino: Zelda. Una vez en el castillo, Link conoce a Zelda, quien ha tenido múltiples sueños en los que vislumbraba el futuro de la tierra de Hyrule, así como la llegada de Link. Ella cree que Ganondorf, el Rey de las ladronas Gerudo, está buscando la Trifuerza, una reliquia que se encuentra en el Reino Sagrado y la cual es capaz de otorgar grandes poderes a quien la posea. La descripción que Zelda le da a Link sobre Ganondorf encaja con la apariencia del hombre que mató al Venerable Árbol Deku. Zelda le pide al muchacho que recupere las tres Piedras una de las cuales el joven ya posee, para poder ingresar al Reino Sagrado y así reclamar la Trifuerza antes de que Ganondorf pueda encontrarla. Link se va a la ciudad de los Goron, donde conoce a Darunia, el líder de la raza de los Goron. Después de que Link asesina a King Dodongo, el jefe de la cueva de los Dodongo, Darunia le hace entrega del Rubí Goron, la Piedra del Fuego, que simboliza la hermandad. Poco después, Link obtiene el Zafiro de los Zora, la Piedra del Agua, por parte de Ruto, la princesa de los Zora, después de que el valiente joven la rescata de la barriga de Lord Jabu Jabu, una criatura semejante a una ballena que es un ser venerable para los Zoras; cabe añadirse que el hecho de recibir el Zafiro de los Zora simboliza un matrimonio entre Link y Ruto. Link regresa al castillo y observa cómo Ganondorf persigue a Zelda montado en un caballo, tal y como lo veía en sus pesadillas al inicio del juego. Cuando ve a Link, Zelda le arroja la Ocarina del Tiempo, pero ésta cae a un foso. Debido a ello, la princesa le enseña telepáticamente al muchacho la Canción del Tiempo. Link intenta detener a Ganondorf, sin embargo un relámpago lo azota contra el suelo. Ganondorf admira la valentía del joven, pero le advierte que no intervenga con sus planes. Una vez que el malvado hombre se marcha, Link utiliza la Ocarina del Tiempo junto con las Piedras para así abrir una entrada e ingresar al Reino Sagrado. Detrás de dicha puerta, Link encuentra la Espada Maestra, un arma que fue forjada para derrotar al mal.[/font][/size][/justify]<br /><br />[justify][size=3][font=Times New Roman]Al momento de sacar la espada de su pedestal, Ganondorf aparece en escena, ya que este siguió a Link hasta el Reino Sagrado para poder reclamar la Trifuerza como suya. Siete años después, un Link más maduro despierta en una sala conocida como la Cámara de los Sabios donde conoce a Rauru, el antiguo Sabio de la Luz y uno de los siete sabios que protegen la ubicación de la Trifuerza. Rauru le informa a Link que fue sellado durante siete años hasta que se hiciera lo suficientemente mayor como para poder esgrimir la Espada Maestra y derrotar a Ganondorf. También es revelado que los siete sabios son los únicos capaces de encarcelar a Ganondorf en el Reino Sagrado; no obstante, cinco de los siete sabios no son conscientes de su identidad desde que Ganondorf transformó Hyrule en una tierra de tinieblas. Link regresa a Hyrule y conoce a una misteriosa mujer llamada Sheik, quien guía a Link a cinco templos repletos de los secuaces de Ganondorf, a los cuales el joven tiene que derrotar para así liberar el poder de los templos que habrá de despertar a los sabios y detener a Ganondorf.[/font][/size][/justify]<br /><br /><br />[size=6]Evaluacion[/size]<br /><br />[size=5]Pros[/size]<br /><br />[size=3][font=Times New Roman]Este juego tiene muchas cosas a favor, pero he decidido hacer énfasis en las primeras cuatro cosas que se me hacen mas interesantes:[/font][/size]<br />[ul]<br />[li][font=Times New Roman][size=3]Templos:[/size][/font][/li]<br />[ul]<br />[li]Los templos(niveles) son excelentes, en cada momento están retando tu intelecto para ver si eres capaz de resolverlos, es una sensacion increible el poder completar uno, ya que cada uno tiene su chiste y su manera de ser resuelto, es como un rompecabezas muy bien hecho que al final tiene un Boss, un enemigo mas fuerte que siempre es divertido de derrotar.[/li]<br />[/ul]<br />[/ul]<br /><br /><br />[left][ul]<br />[li]Historia:[/li]<br />[ul]<br />[li]La historia es muy padre y entretenida, aunque sea un juego, logran crear una historia en que deseas poder ayudar a cada uno de los personajes del juego.[/li]<br />[/ul]<br />[/ul]<br />[/left]<br /><br />[ul]<br />[li]Personajes del Juego:[/li]<br />[ul]<br />[li]Vaya, cada personaje tiene su razón de ser, su misión secreta o principal, cada personaje está por un motivo y de las mejores cosas de zelda es descubrir ese motivo.[/li]<br />[/ul]<br />[/ul]<br />[ul]<br />[li]Items:[/li]<br />[ul]<br />[li]La [size=3][font=Times New Roman]creatividad que tuvieron al crear los items u objetos en este juego es maravillosa, usar cada uno de los items en los templos para poder resolverlos es algo único.[/font][/size][/li]<br />[/ul]<br />[/ul]<br /><br />[size=5]Neutral[/size]<br /><br />[justify][size=3][font=Times New Roman]La mayoría de las cosas que ponemos a continuación como neutrales es porque los juegos han cambiado mucho y muchas personas podrían esperar cosas mejores, aquí ponemos las razones por las que creemos que las siguientes categorías son neutrales:[/font][/size][/justify]<br /><br />[justify][ul]<br />[li][font=Times New Roman][size=3]G[/size][/font][size=3][font=Times New Roman]ráficos:[/font][/size][/li]<br />[ul]<br />[li][font=Times New Roman][size=3]P[/size][/font]ara un juego del 3DS los gráficos son buenos, pero últimamente los juegos nos han acostumbrado a unos gráficos impresionantes, ese es el motivo por el que lo ponemos como neutral.[/li]<br />[/ul]<br />[/ul]<br /><br /><br /><br />[left][ul]<br />[li]T[size=3][font=Times New Roman]amaño del mapa:[/font][/size][/li]<br />[ul]<br />[li][size=3][font=Times New Roman]C[/font][/size][size=3][font=Times New Roman]on juegos como Skyrim, GTA V, y otros, tenemos que ser honestos, el mapa no es tan grande como esos, pero aun asi es muy divertido y padre, tenemos que tomar en cuenta, que este juego es un remake y por lo tanto el mapa tiene las mismas dimensiones que el original, y en esa época crear un mapa más grande era bastante difícil.[/font][/size][/li]<br />[/ul]<br />[/ul]<br /><br />[size=5]Contras[/size]<br /><br />En realidad, no le encuentro una contra a este juego, vaya simplemente es mi favorito, como ya lo he mencionado la emoción de pasar los templos, la emoción de conseguir todos los items, todos los corazones es increíble, jugar un templo con tus amigos es una experiencia muy padre, y tomando en cuenta que es un remake, la única contra que le vemos es:<br /><br />[ul]<br />[li]Es [size=3][font=Times New Roman]un remake:[/font][/size][/li]<br />[ul]<br />[li][size=3][font=Times New Roman]Y [/font][/size][size=3][font=Times New Roman]como tal muchos ya sabemos la historia y maneras de pasar los templos, pero esto no le quitará votos, es un simple comentario.[/font][/size][/li]<br />[/ul]<br />[/ul]<br /><br />[/left]<br />[/justify]<br />	[justify][size=3][font=Times New Roman]The Legend of Zelda Ocarina of Time 3D (OOT) es un remake de un juego que salió para Nintendo 64 hace ya 17 años, usualmente es difícil hacer remakes de juegos que sean de agrado para todas las[/font][/size][font=Times New Roman][size=3] personas,[/size][/font][size=3][font=Times New Roman] pero con este se logró contentar a todos los fans del juego así como incluir a todas las personas que aún no estaban familiares con el título.[/font][/size][/justify]\r\n\r\n\r\n\r\n[justify][font=Times New Roman][size=6]Trama[/size][/font][/justify]\r\n\r\n[justify][size=3][font=Times New Roman]El juego comienza cuando Navi despierta a Link de una pesadilla: en ella, Link observa durante una noche tormentosa cómo un hombre montado en un caballo (Ganondorf), persigue a la Princesa Zelda junto con su niñera Impa, quien cabalga también en un caballo. Navi le avisa a Link que debe ir con el guardián de su aldea, el Venerable Árbol Deku, pues este se encuentra moribundo, más tarde, el propio Link deshace la maldición, pero no es capaz de evitar que el árbol muera. Antes de fallecer, el Árbol Deku le informa que un perverso hombre del desierto fue quien lo maldijo, y que además planea conquistar toda la tierra de Hyrule, por lo que el muchacho debe detener sus planes. Asimismo, le entrega la Esmeralda Kokiri considerada como la Piedra del Bosque y lo envía al castillo de Hyrule para que pueda hablar con la princesa del destino: Zelda. Una vez en el castillo, Link conoce a Zelda, quien ha tenido múltiples sueños en los que vislumbraba el futuro de la tierra de Hyrule, así como la llegada de Link. Ella cree que Ganondorf, el Rey de las ladronas Gerudo, está buscando la Trifuerza, una reliquia que se encuentra en el Reino Sagrado y la cual es capaz de otorgar grandes poderes a quien la posea. La descripción que Zelda le da a Link sobre Ganondorf encaja con la apariencia del hombre que mató al Venerable Árbol Deku. Zelda le pide al muchacho que recupere las tres Piedras una de las cuales el joven ya posee, para poder ingresar al Reino Sagrado y así reclamar la Trifuerza antes de que Ganondorf pueda encontrarla. Link se va a la ciudad de los Goron, donde conoce a Darunia, el líder de la raza de los Goron. Después de que Link asesina a King Dodongo, el jefe de la cueva de los Dodongo, Darunia le hace entrega del Rubí Goron, la Piedra del Fuego, que simboliza la hermandad. Poco después, Link obtiene el Zafiro de los Zora, la Piedra del Agua, por parte de Ruto, la princesa de los Zora, después de que el valiente joven la rescata de la barriga de Lord Jabu Jabu, una criatura semejante a una ballena que es un ser venerable para los Zoras; cabe añadirse que el hecho de recibir el Zafiro de los Zora simboliza un matrimonio entre Link y Ruto. Link regresa al castillo y observa cómo Ganondorf persigue a Zelda montado en un caballo, tal y como lo veía en sus pesadillas al inicio del juego. Cuando ve a Link, Zelda le arroja la Ocarina del Tiempo, pero ésta cae a un foso. Debido a ello, la princesa le enseña telepáticamente al muchacho la Canción del Tiempo. Link intenta detener a Ganondorf, sin embargo un relámpago lo azota contra el suelo. Ganondorf admira la valentía del joven, pero le advierte que no intervenga con sus planes. Una vez que el malvado hombre se marcha, Link utiliza la Ocarina del Tiempo junto con las Piedras para así abrir una entrada e ingresar al Reino Sagrado. Detrás de dicha puerta, Link encuentra la Espada Maestra, un arma que fue forjada para derrotar al mal.[/font][/size][/justify]\r\n\r\n[justify][size=3][font=Times New Roman]Al momento de sacar la espada de su pedestal, Ganondorf aparece en escena, ya que este siguió a Link hasta el Reino Sagrado para poder reclamar la Trifuerza como suya. Siete años después, un Link más maduro despierta en una sala conocida como la Cámara de los Sabios donde conoce a Rauru, el antiguo Sabio de la Luz y uno de los siete sabios que protegen la ubicación de la Trifuerza. Rauru le informa a Link que fue sellado durante siete años hasta que se hiciera lo suficientemente mayor como para poder esgrimir la Espada Maestra y derrotar a Ganondorf. También es revelado que los siete sabios son los únicos capaces de encarcelar a Ganondorf en el Reino Sagrado; no obstante, cinco de los siete sabios no son conscientes de su identidad desde que Ganondorf transformó Hyrule en una tierra de tinieblas. Link regresa a Hyrule y conoce a una misteriosa mujer llamada Sheik, quien guía a Link a cinco templos repletos de los secuaces de Ganondorf, a los cuales el joven tiene que derrotar para así liberar el poder de los templos que habrá de despertar a los sabios y detener a Ganondorf.[/font][/size][/justify]\r\n\r\n\r\n[size=6]Evaluacion[/size]\r\n\r\n[size=5]Pros[/size]\r\n\r\n[size=3][font=Times New Roman]Este juego tiene muchas cosas a favor, pero he decidido hacer énfasis en las primeras cuatro cosas que se me hacen mas interesantes:[/font][/size]\r\n[ul]\r\n[li][font=Times New Roman][size=3]Templos:[/size][/font][/li]\r\n[ul]\r\n[li]Los templos(niveles) son excelentes, en cada momento están retando tu intelecto para ver si eres capaz de resolverlos, es una sensacion increible el poder completar uno, ya que cada uno tiene su chiste y su manera de ser resuelto, es como un rompecabezas muy bien hecho que al final tiene un Boss, un enemigo mas fuerte que siempre es divertido de derrotar.[/li]\r\n[/ul]\r\n[/ul]\r\n\r\n\r\n[left][ul]\r\n[li]Historia:[/li]\r\n[ul]\r\n[li]La historia es muy padre y entretenida, aunque sea un juego, logran crear una historia en que deseas poder ayudar a cada uno de los personajes del juego.[/li]\r\n[/ul]\r\n[/ul]\r\n[/left]\r\n\r\n[ul]\r\n[li]Personajes del Juego:[/li]\r\n[ul]\r\n[li]Vaya, cada personaje tiene su razón de ser, su misión secreta o principal, cada personaje está por un motivo y de las mejores cosas de zelda es descubrir ese motivo.[/li]\r\n[/ul]\r\n[/ul]\r\n[ul]\r\n[li]Items:[/li]\r\n[ul]\r\n[li]La [size=3][font=Times New Roman]creatividad que tuvieron al crear los items u objetos en este juego es maravillosa, usar cada uno de los items en los templos para poder resolverlos es algo único.[/font][/size][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[size=5]Neutral[/size]\r\n\r\n[justify][size=3][font=Times New Roman]La mayoría de las cosas que ponemos a continuación como neutrales es porque los juegos han cambiado mucho y muchas personas podrían esperar cosas mejores, aquí ponemos las razones por las que creemos que las siguientes categorías son neutrales:[/font][/size][/justify]\r\n\r\n[justify][ul]\r\n[li][font=Times New Roman][size=3]G[/size][/font][size=3][font=Times New Roman]ráficos:[/font][/size][/li]\r\n[ul]\r\n[li][font=Times New Roman][size=3]P[/size][/font]ara un juego del 3DS los gráficos son buenos, pero últimamente los juegos nos han acostumbrado a unos gráficos impresionantes, ese es el motivo por el que lo ponemos como neutral.[/li]\r\n[/ul]\r\n[/ul]\r\n\r\n\r\n\r\n[left][ul]\r\n[li]T[size=3][font=Times New Roman]amaño del mapa:[/font][/size][/li]\r\n[ul]\r\n[li][size=3][font=Times New Roman]C[/font][/size][size=3][font=Times New Roman]on juegos como Skyrim, GTA V, y otros, tenemos que ser honestos, el mapa no es tan grande como esos, pero aun asi es muy divertido y padre, tenemos que tomar en cuenta, que este juego es un remake y por lo tanto el mapa tiene las mismas dimensiones que el original, y en esa época crear un mapa más grande era bastante difícil.[/font][/size][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[size=5]Contras[/size]\r\n\r\nEn realidad, no le encuentro una contra a este juego, vaya simplemente es mi favorito, como ya lo he mencionado la emoción de pasar los templos, la emoción de conseguir todos los items, todos los corazones es increíble, jugar un templo con tus amigos es una experiencia muy padre, y tomando en cuenta que es un remake, la única contra que le vemos es:\r\n\r\n[ul]\r\n[li]Es [size=3][font=Times New Roman]un remake:[/font][/size][/li]\r\n[ul]\r\n[li][size=3][font=Times New Roman]Y [/font][/size][size=3][font=Times New Roman]como tal muchos ya sabemos la historia y maneras de pasar los templos, pero esto no le quitará votos, es un simple comentario.[/font][/size][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[/left]\r\n[/justify]\r\n	0	0	f
12	ytfguhjn	2015-10-29 13:37:57-06	test5678	4	\N	4	5	[justify]uhjbjhkbj jhbjhbhjhb[/justify]<br /><div style="text-align:center;">jhbjhkbhjk</div><br />[right]jhbjhbjhb[/right]<br /><div style="text-align:center;"><strike>hgjvhgjvb</strike></div><br />	[justify]uhjbjhkbj jhbjhbhjhb[/justify]\r\n[center]jhbjhkbhjk[/center]\r\n[right]jhbjhbjhb[/right]\r\n[center][s]hgjvhgjvb[/s][/center]\r\n	0	0	t
11	Abelardo	2015-10-29 02:42:25-06	test9000	9	\N	4	5	<div style="text-align:center;">Abelardo</div><br /><br />[justify]Aaksdnqwe[/justify]<br /><br />[justify]<strike>asdqw</strike>[/justify]<br />[justify]<strike>aweqw<u>weqwe</u></strike>[/justify]<br />[justify]<strike><u><em>weqweq<strong>weqweqwe</strong></em></u></strike>[/justify]<br />	[center]Abelardo[/center]\r\n\r\n[justify]Aaksdnqwe[/justify]\r\n\r\n[justify][s]asdqw[/s][/justify]\r\n[justify][s]aweqw[u]weqwe[/u][/s][/justify]\r\n[justify][s][u][i]weqweq[b]weqweqwe[/b][/i][/u][/s][/justify]\r\n	0	0	t
15	Need for Speed	2015-10-29 16:27:13-06	test81	2	\N	4	5	Need for sped most wanted es el juego mas blablabla<br />[ul]<br />[li]most wanted 2[/li]<br />[li]most wanted 3[/li]<br />[/ul]<br />	Need for sped most wanted es el juego mas blablabla\r\n[ul]\r\n[li]most wanted 2[/li]\r\n[li]most wanted 3[/li]\r\n[/ul]\r\n	0	1	f
13	The Legend of Zelda Ocarina of Time 3D	2015-10-29 13:37:57-06	Experiencia	10	\N	4	5	[justify]<span style="color:#000000;">[size=3][font=Times New Roman]The Legend of Zelda Ocarina of Time 3D (OOT) es un remake de un juego que salió para Nintendo 64 hace ya 17 años, usualmente es difícil hacer remakes de juegos que sean de agrado para todas las[/font][/size]</span><span style="color:#000000;">[font=Times New Roman][size=3] personas,[/size][/font]</span><span style="color:#000000;">[size=3][font=Times New Roman] pero con este se logró contentar a todos los fans del juego así como incluir a todas las personas que aún no estaban familiares con el título.[/font][/size]</span>[/justify]<br /><br />[justify]<span style="color:#000000;">[size=3][font=Times New Roman]<img src="http://vignette3.wikia.nocookie.net/nintendo3ds/images/6/6c/Legend_of_Zelda_Ocarina_of_Time_3D_website_image.png/revision/latest?cb=20110413234058" alt="" />[/font][/size]</span>[/justify]<br /><br />[justify][font=Times New Roman]<span style="color:#ffcc33;">[size=6]Trama[/size]</span>[/font][/justify]<br /><br />[justify]<span style="color:#000000;">[size=3][font=Times New Roman]El juego comienza cuando Navi despierta a Link de una pesadilla: en ella, Link observa durante una noche tormentosa cómo un hombre montado en un caballo (Ganondorf), persigue a la Princesa Zelda junto con su niñera Impa, quien cabalga también en un caballo. Navi le avisa a Link que debe ir con el guardián de su aldea, el Venerable Árbol Deku, pues este se encuentra moribundo, más tarde, el propio Link deshace la maldición, pero no es capaz de evitar que el árbol muera. Antes de fallecer, el Árbol Deku le informa que un perverso hombre del desierto fue quien lo maldijo, y que además planea conquistar toda la tierra de Hyrule, por lo que el muchacho debe detener sus planes. Asimismo, le entrega la Esmeralda Kokiri considerada como la Piedra del Bosque y lo envía al castillo de Hyrule para que pueda hablar con la princesa del destino: Zelda. Una vez en el castillo, Link conoce a Zelda, quien ha tenido múltiples sueños en los que vislumbraba el futuro de la tierra de Hyrule, así como la llegada de Link. Ella cree que Ganondorf, el Rey de las ladronas Gerudo, está buscando la Trifuerza, una reliquia que se encuentra en el Reino Sagrado y la cual es capaz de otorgar grandes poderes a quien la posea. La descripción que Zelda le da a Link sobre Ganondorf encaja con la apariencia del hombre que mató al Venerable Árbol Deku. Zelda le pide al muchacho que recupere las tres Piedras una de las cuales el joven ya posee, para poder ingresar al Reino Sagrado y así reclamar la Trifuerza antes de que Ganondorf pueda encontrarla. Link se va a la ciudad de los Goron, donde conoce a Darunia, el líder de la raza de los Goron. Después de que Link asesina a King Dodongo, el jefe de la cueva de los Dodongo, Darunia le hace entrega del Rubí Goron, la Piedra del Fuego, que simboliza la hermandad. Poco después, Link obtiene el Zafiro de los Zora, la Piedra del Agua, por parte de Ruto, la princesa de los Zora, después de que el valiente joven la rescata de la barriga de Lord Jabu Jabu, una criatura semejante a una ballena que es un ser venerable para los Zoras; cabe añadirse que el hecho de recibir el Zafiro de los Zora simboliza un matrimonio entre Link y Ruto. Link regresa al castillo y observa cómo Ganondorf persigue a Zelda montado en un caballo, tal y como lo veía en sus pesadillas al inicio del juego. Cuando ve a Link, Zelda le arroja la Ocarina del Tiempo, pero ésta cae a un foso. Debido a ello, la princesa le enseña telepáticamente al muchacho la Canción del Tiempo. Link intenta detener a Ganondorf, sin embargo un relámpago lo azota contra el suelo. Ganondorf admira la valentía del joven, pero le advierte que no intervenga con sus planes. Una vez que el malvado hombre se marcha, Link utiliza la Ocarina del Tiempo junto con las Piedras para así abrir una entrada e ingresar al Reino Sagrado. Detrás de dicha puerta, Link encuentra la Espada Maestra, un arma que fue forjada para derrotar al mal.[/font][/size]</span>[/justify]<br /><br />[justify]<span style="color:#000000;">[size=3][font=Times New Roman]<img src="http://www.guiasnintendo.com/0a_NINTENDO_3DS/zelda_ocarina_3d/zelda_ocarina_3d_sp/imagenes/fotos/zoot_0558.jpg" alt="" /> [/font][/size]</span><span style="color:#000000;">[size=3][font=Times New Roman]Al momento de sacar la espada de su pedestal, Ganondorf aparece en escena, ya que este siguió a Link hasta el Reino Sagrado para poder reclamar la Trifuerza como suya. Siete años después, un Link más maduro despierta en una sala conocida como la Cámara de los Sabios donde conoce a Rauru, el antiguo Sabio de la Luz y uno de los siete sabios que protegen la ubicación de la Trifuerza. Rauru le informa a Link que fue sellado durante siete años hasta que se hiciera lo suficientemente mayor como para poder esgrimir la Espada Maestra y derrotar a Ganondorf. También es revelado que los siete sabios son los únicos capaces de encarcelar a Ganondorf en el Reino Sagrado; no obstante, cinco de los siete sabios no son conscientes de su identidad desde que Ganondorf transformó Hyrule en una tierra de tinieblas. Link regresa a Hyrule y conoce a una misteriosa mujer llamada Sheik, quien guía a Link a cinco templos repletos de los secuaces de Ganondorf, a los cuales el joven tiene que derrotar para así liberar el poder de los templos que habrá de despertar a los sabios y detener a Ganondorf.[/font][/size]</span>[/justify]<br /><br /><br /><span style="color:#ffcc33;">[size=6]Evaluacion[/size]</span><br /><br /><span style="color:#ff6633;">[size=5]Pros[/size]</span><br /><br /><span style="color:#000000;">[size=3][font=Times New Roman]Este juego tiene muchas cosas a favor, pero he decidido hacer énfasis en las primeras cuatro cosas que se me hacen mas interesantes:[/font][/size]</span><br />[ul]<br />[li]<span style="color:#000000;">[font=Times New Roman][size=3]Templos:[/size][/font]</span>[/li]<br />[ul]<br />[li]Los templos(niveles) son excelentes, en cada momento están retando tu intelecto para ver si eres capaz de resolverlos, es una sensacion increible el poder completar uno, ya que cada uno tiene su chiste y su manera de ser resuelto, es como un rompecabezas muy bien hecho que al final tiene un Boss, un enemigo mas fuerte que siempre es divertido de derrotar.[/li]<br />[/ul]<br />[/ul]<br />[center]<img src"http://media.melty.es/article-2628199-ajust_930-f1441719651/link-hace-frente-a-uno-de-los-jefes-de-mazmorra.jpg" alt"" />[/center]<br /><br />[left][ul]<br />[li]Historia:[/li]<br />[ul]<br />[li]La historia es muy padre y entretenida, aunque sea un juego, logran crear una historia en que deseas poder ayudar a cada uno de los personajes del juego.[/li]<br />[/ul]<br />[/ul]<br />[/left]<br /><br />[ul]<br />[li]Personajes del Juego:[/li]<br />[ul]<br />[li]Vaya, cada personaje tiene su razón de ser, su misión secreta o principal, cada personaje está por un motivo y de las mejores cosas de zelda es descubrir ese motivo.[/li]<br />[/ul]<br />[/ul]<br />[ul]<br />[li]Items:[/li]<br />[ul]<br />[li]La <span style="color:#000000;">[size=3][font=Times New Roman]creatividad que tuvieron al crear los items u objetos en este juego es maravillosa, usar cada uno de los items en los templos para poder resolverlos es algo único.[/font][/size]</span>[/li]<br />[/ul]<br />[/ul]<br /><br /><span style="color:#ff6633;">[size=5]Neutral[/size]</span><br /><br />[justify]<span style="color:#000000;">[size=3][font=Times New Roman]La mayoría de las cosas que ponemos a continuación como neutrales es porque los juegos han cambiado mucho y muchas personas podrían esperar cosas mejores, aquí ponemos las razones por las que creemos que las siguientes categorías son neutrales:[/font][/size]</span>[/justify]<br /><br />[justify][ul]<br />[li]<span style="color:#000000;">[font=Times New Roman][size=3]G[/size][/font]</span><span style="color:#000000;">[size=3][font=Times New Roman]ráficos:[/font][/size]</span>[/li]<br />[ul]<br />[li]<span style="color:#000000;">[font=Times New Roman][size=3]P[/size][/font]</span>ara un juego del 3DS los gráficos son buenos, pero últimamente los juegos nos han acostumbrado a unos gráficos impresionantes, ese es el motivo por el que lo ponemos como neutral.[/li]<br />[/ul]<br />[/ul]<br /><br />[center]<img src"http://zelda.com/ocarina3d/_ui/img/worldmap/screenshots/market-1.jpg" alt"" />[/center]<br /><br />[left][ul]<br />[li]T<span style="color:#000000;">[size=3][font=Times New Roman]amaño del mapa:[/font][/size]</span>[/li]<br />[ul]<br />[li]<span style="color:#000000;">[size=3][font=Times New Roman]C[/font][/size]</span><span style="color:#000000;">[size=3][font=Times New Roman]on juegos como Skyrim, GTA V, y otros, tenemos que ser honestos, el mapa no es tan grande como esos, pero aun asi es muy divertido y padre, tenemos que tomar en cuenta, que este juego es un remake y por lo tanto el mapa tiene las mismas dimensiones que el original, y en esa época crear un mapa más grande era bastante difícil.[/font][/size]</span>[/li]<br />[/ul]<br />[/ul]<br /><br /><span style="color:#ff6633;">[size=5]Contras[/size]</span><br /><br />En realidad, no le encuentro una contra a este juego, vaya simplemente es mi favorito, como ya lo he mencionado la emoción de pasar los templos, la emoción de conseguir todos los items, todos los corazones es increíble, jugar un templo con tus amigos es una experiencia muy padre, y tomando en cuenta que es un remake, la única contra que le vemos es:<br /><br />[ul]<br />[li]Es <span style="color:#000000;">[size=3][font=Times New Roman]un remake:[/font][/size]</span>[/li]<br />[ul]<br />[li]<span style="color:#000000;">[size=3][font=Times New Roman]Y [/font][/size]</span><span style="color:#000000;">[size=3][font=Times New Roman]como tal muchos ya sabemos la historia y maneras de pasar los templos, pero esto no le quitará votos, es un simple comentario.[/font][/size]</span>[/li]<br />[/ul]<br />[/ul]<br /><br />[/left]<br />[/justify]<br />	[justify][color=#000000][size=3][font=Times New Roman]The Legend of Zelda Ocarina of Time 3D (OOT) es un remake de un juego que salió para Nintendo 64 hace ya 17 años, usualmente es difícil hacer remakes de juegos que sean de agrado para todas las[/font][/size][/color][color=#000000][font=Times New Roman][size=3] personas,[/size][/font][/color][color=#000000][size=3][font=Times New Roman] pero con este se logró contentar a todos los fans del juego así como incluir a todas las personas que aún no estaban familiares con el título.[/font][/size][/color][/justify]\r\n\r\n[justify][color=#000000][size=3][font=Times New Roman][img=1110x624]http://vignette3.wikia.nocookie.net/nintendo3ds/images/6/6c/Legend_of_Zelda_Ocarina_of_Time_3D_website_image.png/revision/latest?cb=20110413234058[/img][/font][/size][/color][/justify]\r\n\r\n[justify][font=Times New Roman][color=#ffcc33][size=6]Trama[/size][/color][/font][/justify]\r\n\r\n[justify][color=#000000][size=3][font=Times New Roman]El juego comienza cuando Navi despierta a Link de una pesadilla: en ella, Link observa durante una noche tormentosa cómo un hombre montado en un caballo (Ganondorf), persigue a la Princesa Zelda junto con su niñera Impa, quien cabalga también en un caballo. Navi le avisa a Link que debe ir con el guardián de su aldea, el Venerable Árbol Deku, pues este se encuentra moribundo, más tarde, el propio Link deshace la maldición, pero no es capaz de evitar que el árbol muera. Antes de fallecer, el Árbol Deku le informa que un perverso hombre del desierto fue quien lo maldijo, y que además planea conquistar toda la tierra de Hyrule, por lo que el muchacho debe detener sus planes. Asimismo, le entrega la Esmeralda Kokiri considerada como la Piedra del Bosque y lo envía al castillo de Hyrule para que pueda hablar con la princesa del destino: Zelda. Una vez en el castillo, Link conoce a Zelda, quien ha tenido múltiples sueños en los que vislumbraba el futuro de la tierra de Hyrule, así como la llegada de Link. Ella cree que Ganondorf, el Rey de las ladronas Gerudo, está buscando la Trifuerza, una reliquia que se encuentra en el Reino Sagrado y la cual es capaz de otorgar grandes poderes a quien la posea. La descripción que Zelda le da a Link sobre Ganondorf encaja con la apariencia del hombre que mató al Venerable Árbol Deku. Zelda le pide al muchacho que recupere las tres Piedras una de las cuales el joven ya posee, para poder ingresar al Reino Sagrado y así reclamar la Trifuerza antes de que Ganondorf pueda encontrarla. Link se va a la ciudad de los Goron, donde conoce a Darunia, el líder de la raza de los Goron. Después de que Link asesina a King Dodongo, el jefe de la cueva de los Dodongo, Darunia le hace entrega del Rubí Goron, la Piedra del Fuego, que simboliza la hermandad. Poco después, Link obtiene el Zafiro de los Zora, la Piedra del Agua, por parte de Ruto, la princesa de los Zora, después de que el valiente joven la rescata de la barriga de Lord Jabu Jabu, una criatura semejante a una ballena que es un ser venerable para los Zoras; cabe añadirse que el hecho de recibir el Zafiro de los Zora simboliza un matrimonio entre Link y Ruto. Link regresa al castillo y observa cómo Ganondorf persigue a Zelda montado en un caballo, tal y como lo veía en sus pesadillas al inicio del juego. Cuando ve a Link, Zelda le arroja la Ocarina del Tiempo, pero ésta cae a un foso. Debido a ello, la princesa le enseña telepáticamente al muchacho la Canción del Tiempo. Link intenta detener a Ganondorf, sin embargo un relámpago lo azota contra el suelo. Ganondorf admira la valentía del joven, pero le advierte que no intervenga con sus planes. Una vez que el malvado hombre se marcha, Link utiliza la Ocarina del Tiempo junto con las Piedras para así abrir una entrada e ingresar al Reino Sagrado. Detrás de dicha puerta, Link encuentra la Espada Maestra, un arma que fue forjada para derrotar al mal.[/font][/size][/color][/justify]\r\n\r\n[justify][color=#000000][size=3][font=Times New Roman][img]http://www.guiasnintendo.com/0a_NINTENDO_3DS/zelda_ocarina_3d/zelda_ocarina_3d_sp/imagenes/fotos/zoot_0558.jpg[/img] [/font][/size][/color][color=#000000][size=3][font=Times New Roman]Al momento de sacar la espada de su pedestal, Ganondorf aparece en escena, ya que este siguió a Link hasta el Reino Sagrado para poder reclamar la Trifuerza como suya. Siete años después, un Link más maduro despierta en una sala conocida como la Cámara de los Sabios donde conoce a Rauru, el antiguo Sabio de la Luz y uno de los siete sabios que protegen la ubicación de la Trifuerza. Rauru le informa a Link que fue sellado durante siete años hasta que se hiciera lo suficientemente mayor como para poder esgrimir la Espada Maestra y derrotar a Ganondorf. También es revelado que los siete sabios son los únicos capaces de encarcelar a Ganondorf en el Reino Sagrado; no obstante, cinco de los siete sabios no son conscientes de su identidad desde que Ganondorf transformó Hyrule en una tierra de tinieblas. Link regresa a Hyrule y conoce a una misteriosa mujer llamada Sheik, quien guía a Link a cinco templos repletos de los secuaces de Ganondorf, a los cuales el joven tiene que derrotar para así liberar el poder de los templos que habrá de despertar a los sabios y detener a Ganondorf.[/font][/size][/color][/justify]\r\n\r\n\r\n[color=#ffcc33][size=6]Evaluacion[/size][/color]\r\n\r\n[color=#ff6633][size=5]Pros[/size][/color]\r\n\r\n[color=#000000][size=3][font=Times New Roman]Este juego tiene muchas cosas a favor, pero he decidido hacer énfasis en las primeras cuatro cosas que se me hacen mas interesantes:[/font][/size][/color]\r\n[ul]\r\n[li][color=#000000][font=Times New Roman][size=3]Templos:[/size][/font][/color][/li]\r\n[ul]\r\n[li]Los templos(niveles) son excelentes, en cada momento están retando tu intelecto para ver si eres capaz de resolverlos, es una sensacion increible el poder completar uno, ya que cada uno tiene su chiste y su manera de ser resuelto, es como un rompecabezas muy bien hecho que al final tiene un Boss, un enemigo mas fuerte que siempre es divertido de derrotar.[/li]\r\n[/ul]\r\n[/ul]\r\n[center][img]http://media.melty.es/article-2628199-ajust_930-f1441719651/link-hace-frente-a-uno-de-los-jefes-de-mazmorra.jpg[/img][/center]\r\n\r\n[left][ul]\r\n[li]Historia:[/li]\r\n[ul]\r\n[li]La historia es muy padre y entretenida, aunque sea un juego, logran crear una historia en que deseas poder ayudar a cada uno de los personajes del juego.[/li]\r\n[/ul]\r\n[/ul]\r\n[/left]\r\n\r\n[ul]\r\n[li]Personajes del Juego:[/li]\r\n[ul]\r\n[li]Vaya, cada personaje tiene su razón de ser, su misión secreta o principal, cada personaje está por un motivo y de las mejores cosas de zelda es descubrir ese motivo.[/li]\r\n[/ul]\r\n[/ul]\r\n[ul]\r\n[li]Items:[/li]\r\n[ul]\r\n[li]La [color=#000000][size=3][font=Times New Roman]creatividad que tuvieron al crear los items u objetos en este juego es maravillosa, usar cada uno de los items en los templos para poder resolverlos es algo único.[/font][/size][/color][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[color=#ff6633][size=5]Neutral[/size][/color]\r\n\r\n[justify][color=#000000][size=3][font=Times New Roman]La mayoría de las cosas que ponemos a continuación como neutrales es porque los juegos han cambiado mucho y muchas personas podrían esperar cosas mejores, aquí ponemos las razones por las que creemos que las siguientes categorías son neutrales:[/font][/size][/color][/justify]\r\n\r\n[justify][ul]\r\n[li][color=#000000][font=Times New Roman][size=3]G[/size][/font][/color][color=#000000][size=3][font=Times New Roman]ráficos:[/font][/size][/color][/li]\r\n[ul]\r\n[li][color=#000000][font=Times New Roman][size=3]P[/size][/font][/color]ara un juego del 3DS los gráficos son buenos, pero últimamente los juegos nos han acostumbrado a unos gráficos impresionantes, ese es el motivo por el que lo ponemos como neutral.[/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[center][img]http://zelda.com/ocarina3d/_ui/img/worldmap/screenshots/market-1.jpg[/img][/center]\r\n\r\n[left][ul]\r\n[li]T[color=#000000][size=3][font=Times New Roman]amaño del mapa:[/font][/size][/color][/li]\r\n[ul]\r\n[li][color=#000000][size=3][font=Times New Roman]C[/font][/size][/color][color=#000000][size=3][font=Times New Roman]on juegos como Skyrim, GTA V, y otros, tenemos que ser honestos, el mapa no es tan grande como esos, pero aun asi es muy divertido y padre, tenemos que tomar en cuenta, que este juego es un remake y por lo tanto el mapa tiene las mismas dimensiones que el original, y en esa época crear un mapa más grande era bastante difícil.[/font][/size][/color][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[color=#ff6633][size=5]Contras[/size][/color]\r\n\r\nEn realidad, no le encuentro una contra a este juego, vaya simplemente es mi favorito, como ya lo he mencionado la emoción de pasar los templos, la emoción de conseguir todos los items, todos los corazones es increíble, jugar un templo con tus amigos es una experiencia muy padre, y tomando en cuenta que es un remake, la única contra que le vemos es:\r\n\r\n[ul]\r\n[li]Es [color=#000000][size=3][font=Times New Roman]un remake:[/font][/size][/color][/li]\r\n[ul]\r\n[li][color=#000000][size=3][font=Times New Roman]Y [/font][/size][/color][color=#000000][size=3][font=Times New Roman]como tal muchos ya sabemos la historia y maneras de pasar los templos, pero esto no le quitará votos, es un simple comentario.[/font][/size][/color][/li]\r\n[/ul]\r\n[/ul]\r\n\r\n[/left]\r\n[/justify]\r\n	0	5	f
\.


--
-- Name: paginaPrincipal_reseña_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_reseña_id_seq"', 15, true);


--
-- Data for Name: paginaPrincipal_usuario; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY "paginaPrincipal_usuario" (id, "fechaDeNacimiento", categoria_id, user_id) FROM stdin;
2	2015-08-11 12:00:00-05	4	1
3	2015-10-27 13:51:41-06	4	2
5	2015-10-27 13:59:26-06	4	4
6	1994-02-19 00:00:00-06	4	5
7	2015-10-07 00:00:00-05	4	6
8	1995-01-31 00:00:00-06	4	7
\.


--
-- Name: paginaPrincipal_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('"paginaPrincipal_usuario_id_seq"', 8, true);


--
-- Data for Name: precise_bbcode_bbcodetag; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY precise_bbcode_bbcodetag (id, tag_name, tag_definition, html_replacement, newline_closes, same_tag_closes, end_tag_closes, standalone, transform_newlines, render_embedded, escape_html, replace_links, strip, swallow_trailing_newline, helpline, display_on_editor) FROM stdin;
\.


--
-- Name: precise_bbcode_bbcodetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('precise_bbcode_bbcodetag_id_seq', 1, false);


--
-- Data for Name: precise_bbcode_smileytag; Type: TABLE DATA; Schema: public; Owner: ArtRey
--

COPY precise_bbcode_smileytag (id, code, image, image_width, image_height, emotion, display_on_editor) FROM stdin;
\.


--
-- Name: precise_bbcode_smileytag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ArtRey
--

SELECT pg_catalog.setval('precise_bbcode_smileytag_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_1e0bedcbf7a5a697_uniq; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_1e0bedcbf7a5a697_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: paginaPrincipal_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_categoria"
    ADD CONSTRAINT "paginaPrincipal_categoria_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_comentarios_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_comentarios"
    ADD CONSTRAINT "paginaPrincipal_comentarios_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_likes"
    ADD CONSTRAINT "paginaPrincipal_likes_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_noticia"
    ADD CONSTRAINT "paginaPrincipal_noticia_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_reseña_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_reseña"
    ADD CONSTRAINT "paginaPrincipal_reseña_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_usuario"
    ADD CONSTRAINT "paginaPrincipal_usuario_pkey" PRIMARY KEY (id);


--
-- Name: paginaPrincipal_usuario_user_id_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY "paginaPrincipal_usuario"
    ADD CONSTRAINT "paginaPrincipal_usuario_user_id_key" UNIQUE (user_id);


--
-- Name: precise_bbcode_bbcodetag_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY precise_bbcode_bbcodetag
    ADD CONSTRAINT precise_bbcode_bbcodetag_pkey PRIMARY KEY (id);


--
-- Name: precise_bbcode_bbcodetag_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY precise_bbcode_bbcodetag
    ADD CONSTRAINT precise_bbcode_bbcodetag_tag_name_key UNIQUE (tag_name);


--
-- Name: precise_bbcode_smileytag_code_key; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY precise_bbcode_smileytag
    ADD CONSTRAINT precise_bbcode_smileytag_code_key UNIQUE (code);


--
-- Name: precise_bbcode_smileytag_pkey; Type: CONSTRAINT; Schema: public; Owner: ArtRey; Tablespace: 
--

ALTER TABLE ONLY precise_bbcode_smileytag
    ADD CONSTRAINT precise_bbcode_smileytag_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_4d4f1c65ee54cadc_like; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_group_name_4d4f1c65ee54cadc_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_1a48fa4467018ca9_like; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX auth_user_username_1a48fa4467018ca9_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_388c6b31bf4eddad_like; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX django_session_session_key_388c6b31bf4eddad_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: paginaPrincipal_comentarios_817cedc3; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_comentarios_817cedc3" ON "paginaPrincipal_comentarios" USING btree ("reseña_id");


--
-- Name: paginaPrincipal_comentarios_abfe0f96; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_comentarios_abfe0f96" ON "paginaPrincipal_comentarios" USING btree (usuario_id);


--
-- Name: paginaPrincipal_likes_817cedc3; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_likes_817cedc3" ON "paginaPrincipal_likes" USING btree ("reseña_id");


--
-- Name: paginaPrincipal_likes_abfe0f96; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_likes_abfe0f96" ON "paginaPrincipal_likes" USING btree (usuario_id);


--
-- Name: paginaPrincipal_noticia_abfe0f96; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_noticia_abfe0f96" ON "paginaPrincipal_noticia" USING btree (usuario_id);


--
-- Name: paginaPrincipal_noticia_daf3833b; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_noticia_daf3833b" ON "paginaPrincipal_noticia" USING btree (categoria_id);


--
-- Name: paginaPrincipal_reseña_abfe0f96; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_reseña_abfe0f96" ON "paginaPrincipal_reseña" USING btree (usuario_id);


--
-- Name: paginaPrincipal_reseña_daf3833b; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_reseña_daf3833b" ON "paginaPrincipal_reseña" USING btree (categoria_id);


--
-- Name: paginaPrincipal_usuario_daf3833b; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX "paginaPrincipal_usuario_daf3833b" ON "paginaPrincipal_usuario" USING btree (categoria_id);


--
-- Name: precise_bbcode_bbcodetag_tag_name_69be13a75afdbf81_like; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX precise_bbcode_bbcodetag_tag_name_69be13a75afdbf81_like ON precise_bbcode_bbcodetag USING btree (tag_name varchar_pattern_ops);


--
-- Name: precise_bbcode_smileytag_code_4e12a43818ad5f7f_like; Type: INDEX; Schema: public; Owner: ArtRey; Tablespace: 
--

CREATE INDEX precise_bbcode_smileytag_code_4e12a43818ad5f7f_like ON precise_bbcode_smileytag USING btree (code varchar_pattern_ops);


--
-- Name: auth_content_type_id_5d437a4f2362084e_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_5d437a4f2362084e_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group__permission_id_b80462bfd6cb528_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group__permission_id_b80462bfd6cb528_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_26753ecb1d73f1de_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_26753ecb1d73f1de_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_59c490bce3003737_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_59c490bce3003737_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_5094dd2a207b3e40_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_5094dd2a207b3e40_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_u_permission_id_7cc68d09571a365_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_u_permission_id_7cc68d09571a365_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissi_user_id_843f42bfbbe04dc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissi_user_id_843f42bfbbe04dc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_4c796f961f9e2e8b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_4c796f961f9e2e8b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_390f16a29b955893_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_390f16a29b955893_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: p_categoria_id_1ecfd1dd56d275ae_fk_paginaPrincipal_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_reseña"
    ADD CONSTRAINT "p_categoria_id_1ecfd1dd56d275ae_fk_paginaPrincipal_categoria_id" FOREIGN KEY (categoria_id) REFERENCES "paginaPrincipal_categoria"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: p_categoria_id_3531ffc008c36c3e_fk_paginaPrincipal_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_noticia"
    ADD CONSTRAINT "p_categoria_id_3531ffc008c36c3e_fk_paginaPrincipal_categoria_id" FOREIGN KEY (categoria_id) REFERENCES "paginaPrincipal_categoria"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pa_categoria_id_c0a8e37ed1ee28c_fk_paginaPrincipal_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_usuario"
    ADD CONSTRAINT "pa_categoria_id_c0a8e37ed1ee28c_fk_paginaPrincipal_categoria_id" FOREIGN KEY (categoria_id) REFERENCES "paginaPrincipal_categoria"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pagin_usuario_id_3564bd91dcd60d92_fk_paginaPrincipal_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_reseña"
    ADD CONSTRAINT "pagin_usuario_id_3564bd91dcd60d92_fk_paginaPrincipal_usuario_id" FOREIGN KEY (usuario_id) REFERENCES "paginaPrincipal_usuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pagin_usuario_id_3893386d1b3f3eb2_fk_paginaPrincipal_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_comentarios"
    ADD CONSTRAINT "pagin_usuario_id_3893386d1b3f3eb2_fk_paginaPrincipal_usuario_id" FOREIGN KEY (usuario_id) REFERENCES "paginaPrincipal_usuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pagin_usuario_id_6f785262fec4a422_fk_paginaPrincipal_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_noticia"
    ADD CONSTRAINT "pagin_usuario_id_6f785262fec4a422_fk_paginaPrincipal_usuario_id" FOREIGN KEY (usuario_id) REFERENCES "paginaPrincipal_usuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: paginaP_reseña_id_5b7eaa8d81d8698d_fk_paginaPrincipal_reseña_; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_comentarios"
    ADD CONSTRAINT "paginaP_reseña_id_5b7eaa8d81d8698d_fk_paginaPrincipal_reseña_" FOREIGN KEY ("reseña_id") REFERENCES "paginaPrincipal_reseña"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: paginaP_reseña_id_6818aaa5df950e7c_fk_paginaPrincipal_reseña_; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_likes"
    ADD CONSTRAINT "paginaP_reseña_id_6818aaa5df950e7c_fk_paginaPrincipal_reseña_" FOREIGN KEY ("reseña_id") REFERENCES "paginaPrincipal_reseña"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: paginaPrincipal_like_usuario_id_ad6fb417690c01b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_likes"
    ADD CONSTRAINT "paginaPrincipal_like_usuario_id_ad6fb417690c01b_fk_auth_user_id" FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: paginaPrincipal_usuari_user_id_5e8412d3e814c73c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ArtRey
--

ALTER TABLE ONLY "paginaPrincipal_usuario"
    ADD CONSTRAINT "paginaPrincipal_usuari_user_id_5e8412d3e814c73c_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

