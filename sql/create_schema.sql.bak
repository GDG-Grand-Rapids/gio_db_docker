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
-- Name: conf_admin; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA conf_admin;


ALTER SCHEMA conf_admin OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = conf_admin, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: company; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE company (
    id integer NOT NULL,
    name character varying(100),
    short_desc character varying(100),
    full_desc character varying(100),
    logo_path character varying(100)
);


ALTER TABLE company OWNER TO gdg_admin;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE company_id_seq OWNER TO gdg_admin;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE company_id_seq OWNED BY company.id;


--
-- Name: conference; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE conference (
    id integer NOT NULL,
    name character varying(100),
    short_desc character varying(100),
    full_desc character varying(100),
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    location_id integer,
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone
);


ALTER TABLE conference OWNER TO gdg_admin;

--
-- Name: conference_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE conference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conference_id_seq OWNER TO gdg_admin;

--
-- Name: conference_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE conference_id_seq OWNED BY conference.id;


--
-- Name: conference_session; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE conference_session (
    id integer NOT NULL,
    name character varying(100),
    short_desc character varying(100),
    full_desc character varying(100),
    conference_id integer,
    conference_session_type_id integer,
    room_id integer,
    start_dttm timestamp without time zone,
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone,
    conference_session_presenter_id integer,
    duration integer
);


ALTER TABLE conference_session OWNER TO gdg_admin;

--
-- Name: conference_session_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE conference_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conference_session_id_seq OWNER TO gdg_admin;

--
-- Name: conference_session_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE conference_session_id_seq OWNED BY conference_session.id;


--
-- Name: conference_session_presenter; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE conference_session_presenter (
    id integer NOT NULL,
    conference_session_id integer,
    presenter_id integer
);


ALTER TABLE conference_session_presenter OWNER TO gdg_admin;

--
-- Name: conference_session_presenter_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE conference_session_presenter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conference_session_presenter_id_seq OWNER TO gdg_admin;

--
-- Name: conference_session_presenter_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE conference_session_presenter_id_seq OWNED BY conference_session_presenter.id;


--
-- Name: conference_session_registration; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE conference_session_registration (
    id integer NOT NULL,
    user_id integer,
    conference_session_id integer
);


ALTER TABLE conference_session_registration OWNER TO gdg_admin;

--
-- Name: conference_session_registration_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE conference_session_registration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conference_session_registration_id_seq OWNER TO gdg_admin;

--
-- Name: conference_session_registration_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE conference_session_registration_id_seq OWNED BY conference_session_registration.id;


--
-- Name: conference_session_type; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE conference_session_type (
    id integer NOT NULL,
    name character varying(100),
    "desc" character varying(100)
);


ALTER TABLE conference_session_type OWNER TO gdg_admin;

--
-- Name: conference_session_type_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE conference_session_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conference_session_type_id_seq OWNER TO gdg_admin;

--
-- Name: conference_session_type_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE conference_session_type_id_seq OWNED BY conference_session_type.id;


--
-- Name: location; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE location (
    id integer NOT NULL,
    name character varying(100),
    short_desc character varying(100),
    full_desc character varying(100),
    parking_info character varying(100),
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone
);


ALTER TABLE location OWNER TO gdg_admin;

--
-- Name: location_address; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE location_address (
    id integer NOT NULL,
    location_id integer,
    address_1 character varying(100),
    address_2 character varying(100),
    city character varying(100),
    state character varying(100),
    zip_code character varying(100),
    latitude character varying(100),
    longitude character varying(100),
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone
);


ALTER TABLE location_address OWNER TO gdg_admin;

--
-- Name: location_address_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE location_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE location_address_id_seq OWNER TO gdg_admin;

--
-- Name: location_address_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE location_address_id_seq OWNED BY location_address.id;


--
-- Name: location_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE location_id_seq OWNER TO gdg_admin;

--
-- Name: location_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE location_id_seq OWNED BY location.id;


--
-- Name: presenter; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE presenter (
    id integer NOT NULL,
    user_id integer,
    short_bio character varying(100),
    job_title character varying(100),
    company_affiliation_id integer
);


ALTER TABLE presenter OWNER TO gdg_admin;

--
-- Name: presenter_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE presenter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE presenter_id_seq OWNER TO gdg_admin;

--
-- Name: presenter_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE presenter_id_seq OWNED BY presenter.id;


--
-- Name: role; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE role (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(100)
);


ALTER TABLE role OWNER TO gdg_admin;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_id_seq OWNER TO gdg_admin;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE role_id_seq OWNED BY role.id;


--
-- Name: room; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE room (
    id integer NOT NULL,
    short_desc character varying(100),
    full_desc character varying(100),
    conference_id integer
);


ALTER TABLE room OWNER TO gdg_admin;

--
-- Name: room_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE room_id_seq OWNER TO gdg_admin;

--
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE room_id_seq OWNED BY room.id;


--
-- Name: sponsor; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE sponsor (
    id integer NOT NULL,
    name character varying(100),
    logo_path character varying(100),
    home_page_url character varying(100),
    sponsor_level integer
);


ALTER TABLE sponsor OWNER TO gdg_admin;

--
-- Name: sponsor_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE sponsor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sponsor_id_seq OWNER TO gdg_admin;

--
-- Name: sponsor_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE sponsor_id_seq OWNED BY sponsor.id;


--
-- Name: sponsor_level; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE sponsor_level (
    id integer NOT NULL,
    conference_id integer,
    full_desc character varying(100)
);


ALTER TABLE sponsor_level OWNER TO gdg_admin;

--
-- Name: sponsor_level_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE sponsor_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sponsor_level_id_seq OWNER TO gdg_admin;

--
-- Name: sponsor_level_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE sponsor_level_id_seq OWNED BY sponsor_level.id;


--
-- Name: user; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE "user" (
    id integer NOT NULL,
    login_id character varying(100),
    first_name character varying(100),
    last_name character varying(100),
    email_address character varying(100),
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone
);


ALTER TABLE "user" OWNER TO gdg_admin;

--
-- Name: user_cred; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE user_cred (
    id integer NOT NULL,
    user_id integer,
    password character varying(100),
    active_ind character varying(100),
    create_dttm timestamp without time zone,
    last_update_dttm timestamp without time zone
);


ALTER TABLE user_cred OWNER TO gdg_admin;

--
-- Name: user_cred_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE user_cred_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_cred_id_seq OWNER TO gdg_admin;

--
-- Name: user_cred_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE user_cred_id_seq OWNED BY user_cred.id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO gdg_admin;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- Name: user_role; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE user_role (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE user_role OWNER TO gdg_admin;

--
-- Name: user_role_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_role_id_seq OWNER TO gdg_admin;

--
-- Name: user_role_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE user_role_id_seq OWNED BY user_role.id;


--
-- Name: user_xyz; Type: TABLE; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE user_xyz (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    user_name character varying(100),
    password character varying(100)
);


ALTER TABLE user_xyz OWNER TO gdg_admin;

--
-- Name: user_xyz_id_seq; Type: SEQUENCE; Schema: conf_admin; Owner: gdg_admin
--

CREATE SEQUENCE user_xyz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_xyz_id_seq OWNER TO gdg_admin;

--
-- Name: user_xyz_id_seq; Type: SEQUENCE OWNED BY; Schema: conf_admin; Owner: gdg_admin
--

ALTER SEQUENCE user_xyz_id_seq OWNED BY user_xyz.id;


SET search_path = public, pg_catalog;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20)
);


ALTER TABLE databasechangelog OWNER TO gdg_admin;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: gdg_admin; Tablespace: 
--

CREATE TABLE databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE databasechangeloglock OWNER TO gdg_admin;

SET search_path = conf_admin, pg_catalog;

--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY company ALTER COLUMN id SET DEFAULT nextval('company_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference ALTER COLUMN id SET DEFAULT nextval('conference_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session ALTER COLUMN id SET DEFAULT nextval('conference_session_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_presenter ALTER COLUMN id SET DEFAULT nextval('conference_session_presenter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_registration ALTER COLUMN id SET DEFAULT nextval('conference_session_registration_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_type ALTER COLUMN id SET DEFAULT nextval('conference_session_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY location ALTER COLUMN id SET DEFAULT nextval('location_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY location_address ALTER COLUMN id SET DEFAULT nextval('location_address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY presenter ALTER COLUMN id SET DEFAULT nextval('presenter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY role ALTER COLUMN id SET DEFAULT nextval('role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY room ALTER COLUMN id SET DEFAULT nextval('room_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY sponsor ALTER COLUMN id SET DEFAULT nextval('sponsor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY sponsor_level ALTER COLUMN id SET DEFAULT nextval('sponsor_level_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_cred ALTER COLUMN id SET DEFAULT nextval('user_cred_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_role ALTER COLUMN id SET DEFAULT nextval('user_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_xyz ALTER COLUMN id SET DEFAULT nextval('user_xyz_id_seq'::regclass);


--
-- Data for Name: company; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY company (id, name, short_desc, full_desc, logo_path) FROM stdin;
-100	UNKNOWN	UNKNOWN	UNKNOWN	\N
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('company_id_seq', 1, false);


--
-- Data for Name: conference; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY conference (id, name, short_desc, full_desc, start_date, end_date, location_id, create_dttm, last_update_dttm) FROM stdin;
\.


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('conference_id_seq', 1, false);


--
-- Data for Name: conference_session; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY conference_session (id, name, short_desc, full_desc, conference_id, conference_session_type_id, room_id, start_dttm, create_dttm, last_update_dttm, conference_session_presenter_id, duration) FROM stdin;
\.


--
-- Name: conference_session_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('conference_session_id_seq', 1, false);


--
-- Data for Name: conference_session_presenter; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY conference_session_presenter (id, conference_session_id, presenter_id) FROM stdin;
\.


--
-- Name: conference_session_presenter_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('conference_session_presenter_id_seq', 1, false);


--
-- Data for Name: conference_session_registration; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY conference_session_registration (id, user_id, conference_session_id) FROM stdin;
\.


--
-- Name: conference_session_registration_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('conference_session_registration_id_seq', 1, false);


--
-- Data for Name: conference_session_type; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY conference_session_type (id, name, "desc") FROM stdin;
-100	UNKNOWN	UNKNOWN
1	CodeLab	CodeLab desc
2	Streaming	Streaming desc
3	OnSite	OnSite desc
\.


--
-- Name: conference_session_type_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('conference_session_type_id_seq', 3, true);


--
-- Data for Name: location; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY location (id, name, short_desc, full_desc, parking_info, create_dttm, last_update_dttm) FROM stdin;
-100	UNKNOWN	UNKNOWN	UNKNOWN	\N	\N	\N
\.


--
-- Data for Name: location_address; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY location_address (id, location_id, address_1, address_2, city, state, zip_code, latitude, longitude, create_dttm, last_update_dttm) FROM stdin;
-100	-100	UNKNOWN	UNKNOWN	UNKNOWN	UNKNOWN	UNKNOWN	UNKNOWN	UNKNOWN	2015-11-27 20:10:08.088448	2015-11-27 20:10:08.088448
\.


--
-- Name: location_address_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('location_address_id_seq', 1, false);


--
-- Name: location_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('location_id_seq', 1, false);


--
-- Data for Name: presenter; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY presenter (id, user_id, short_bio, job_title, company_affiliation_id) FROM stdin;
-100	\N	UNKNOWN	UNKNOWN	-100
\.


--
-- Name: presenter_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('presenter_id_seq', 1, false);


--
-- Data for Name: role; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY role (id, name, description) FROM stdin;
1	USER	Role for users
2	ADMIN	Role for admins
\.


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('role_id_seq', 2, true);


--
-- Data for Name: room; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY room (id, short_desc, full_desc, conference_id) FROM stdin;
-100	UNKNOWN	UNKNOWN	\N
\.


--
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('room_id_seq', 1, false);


--
-- Data for Name: sponsor; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY sponsor (id, name, logo_path, home_page_url, sponsor_level) FROM stdin;
\.


--
-- Name: sponsor_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('sponsor_id_seq', 1, false);


--
-- Data for Name: sponsor_level; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY sponsor_level (id, conference_id, full_desc) FROM stdin;
-100	\N	UNKNOWN
\.


--
-- Name: sponsor_level_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('sponsor_level_id_seq', 1, false);


--
-- Data for Name: user; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY "user" (id, login_id, first_name, last_name, email_address, create_dttm, last_update_dttm) FROM stdin;
\.


--
-- Data for Name: user_cred; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY user_cred (id, user_id, password, active_ind, create_dttm, last_update_dttm) FROM stdin;
\.


--
-- Name: user_cred_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('user_cred_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('user_id_seq', 1, false);


--
-- Data for Name: user_role; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY user_role (id, user_id, role_id) FROM stdin;
\.


--
-- Name: user_role_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('user_role_id_seq', 1, false);


--
-- Data for Name: user_xyz; Type: TABLE DATA; Schema: conf_admin; Owner: gdg_admin
--

COPY user_xyz (id, first_name, last_name, user_name, password) FROM stdin;
1	Carlus	Henry	chenry	1111
2	Dan	Mikita	dmikita	2222
3	Eric	Fox	foxefj	3333
\.


--
-- Name: user_xyz_id_seq; Type: SEQUENCE SET; Schema: conf_admin; Owner: gdg_admin
--

SELECT pg_catalog.setval('user_xyz_id_seq', 3, true);


SET search_path = public, pg_catalog;

--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: gdg_admin
--

COPY databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) FROM stdin;
001_create_schema	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.001.data_stage.xml	2015-11-27 20:10:07.462214	1	EXECUTED	7:ecf9a6d0455e633f3142da03458d9308	sql	Create schema conf_admin	\N	3.3.2
001_create_user_xyz_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.001.data_stage.xml	2015-11-27 20:10:07.48114	2	EXECUTED	7:0f418e4fd9576089b0bf478d0c5777df	createTable	Create user_xyz table	\N	3.3.2
001_load_user_data_1	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.001.data_stage.xml	2015-11-27 20:10:07.493496	3	EXECUTED	7:301bd2b9b51b273b2e4c97a4cf296a33	sql (x3)	Load user data	\N	3.3.2
002_create_user_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.510609	4	EXECUTED	7:a8851b3eb46bc01dd85575d5f187bd0b	createTable	Create user table	\N	3.3.2
002_user_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.522152	5	EXECUTED	7:fe0d996a01cd98534dc86c613ccc5b51	addPrimaryKey	Create user pk	\N	3.3.2
002_create_user_cred	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.533682	6	EXECUTED	7:65f2090e0a720fdf0a9c1be0addf3593	createTable	Create user_cred table	\N	3.3.2
002_user_cred_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.546039	7	EXECUTED	7:893a464ca344d440ed1534329ae19878	addPrimaryKey	Create user pk	\N	3.3.2
002_fk_user_cred_user	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.556187	8	EXECUTED	7:3775ad8859dbdcf2396edba641c70505	addForeignKeyConstraint		\N	3.3.2
002_create_location_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.568216	9	EXECUTED	7:f46a0cd56dce8676b7219d9045f571ab	createTable	Create location table	\N	3.3.2
002_location_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.580129	10	EXECUTED	7:a4cbb13d9eb3e778ff0e4e821a146d8d	addPrimaryKey	Create location pk	\N	3.3.2
002_create_conference	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.593936	11	EXECUTED	7:39528c28eb64a1c9134991d29f7340b2	createTable	Create user_cred table	\N	3.3.2
002_conference_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.605441	12	EXECUTED	7:843eca7d2c0f67134c64aeb7b632c531	addPrimaryKey	Create conference pk	\N	3.3.2
002_fk_conference_location	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.6137	13	EXECUTED	7:931bf2259aadccddd37674d47ac3c004	addForeignKeyConstraint		\N	3.3.2
002_create_location_address	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.633623	14	EXECUTED	7:555193670f3a5079e31065447876a548	createTable	Create location_address table	\N	3.3.2
002_location_address_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.645418	15	EXECUTED	7:2e799e5f59007628a372016fb464e303	addPrimaryKey	Create conference pk	\N	3.3.2
002_fk_location_address_location	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.652354	16	EXECUTED	7:98501bd897a0c4d2a98ab1bdbe7dfe01	addForeignKeyConstraint		\N	3.3.2
002_create_conference_session_type	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.664659	17	EXECUTED	7:53e86e30cb55be2d98526a88055f6b41	createTable	Create conference_session table	\N	3.3.2
002_conference_session_type_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.672206	18	EXECUTED	7:0fcc8a4c944d9860d78000f24c3d0354	addPrimaryKey	Create conference_session_type pk	\N	3.3.2
002_create_conference_session	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.681775	19	EXECUTED	7:bf506de20ce1ca3336adbb0b75649189	createTable	Create conference_session table	\N	3.3.2
002_conference_session_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.690887	20	EXECUTED	7:71e7f6ac64eab80015ded511bc438f17	addPrimaryKey	Create conference_session pk	\N	3.3.2
002_fk_conference_session	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.697291	21	EXECUTED	7:304c6d22b366b58e22b30cf107b7d073	addForeignKeyConstraint		\N	3.3.2
002_fk_conference_session_type	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.704237	22	EXECUTED	7:169a11ff3507a6d1380a99e13b91a947	addForeignKeyConstraint		\N	3.3.2
002_create_company	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.712212	23	EXECUTED	7:ebb6b81315c8da6474b7d589e3a7be75	createTable	Create company table	\N	3.3.2
002_company_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.719438	24	EXECUTED	7:6d122a16fbaeddf4e98e8167caf4fbb4	addPrimaryKey	Create company pk	\N	3.3.2
002_room_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.727013	25	EXECUTED	7:745c2975086b4d09951a3e14439f54e5	createTable	Create room table	\N	3.3.2
002_room_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.733435	26	EXECUTED	7:1bc19349fcaa279844ea2e1f80768bed	addPrimaryKey	Create room pk	\N	3.3.2
002_fk_room_conf	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.739563	27	EXECUTED	7:340ad1784b0ea54a93dc906f23d013df	addForeignKeyConstraint		\N	3.3.2
002_sponsor_level_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.746616	28	EXECUTED	7:67a78b6890bbdd1790db36460b390a5f	createTable	Create sponsor_level table	\N	3.3.2
002_sponsor_level_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.752947	29	EXECUTED	7:66833a8ff77b4f64ba91ea055871a8e2	addPrimaryKey	Create sponsor_level pk	\N	3.3.2
002_fk_sponsor_level	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.75876	30	EXECUTED	7:4075104ddebf15b6e43eea50447d435a	addForeignKeyConstraint		\N	3.3.2
002_sponsor_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.765911	31	EXECUTED	7:ee4c87fe37cc34e1177bc04533391436	createTable	Create sponsor table	\N	3.3.2
002_sponsor_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.772487	32	EXECUTED	7:ce4f3edb047232ddf2a793b77ca05640	addPrimaryKey	Create sponsor pk	\N	3.3.2
002_fk_sponsor	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.778123	33	EXECUTED	7:973ab887199a81247a570fd093ed5124	addForeignKeyConstraint		\N	3.3.2
002_conf_session_registration_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.786963	34	EXECUTED	7:9d5025c8da86e3e903c6f18110b31291	createTable	Create conference_session_registration table	\N	3.3.2
002_conf_session_registration_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.7939	35	EXECUTED	7:6b0fc428c84f1c53d0dc85f72cd3d833	addPrimaryKey	Create 002_conf_session_registration_table pk	\N	3.3.2
002_conf_session_registration_user_fk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.800085	36	EXECUTED	7:9213098f4267f0aed37767eb2e909e0c	addForeignKeyConstraint		\N	3.3.2
002_conf_session_registration_conf_session_fk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.806021	37	EXECUTED	7:13f136dcba92d7b89f1138f19381bf9b	addForeignKeyConstraint		\N	3.3.2
002_presenter_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.812727	38	EXECUTED	7:08964e287c05bcd6ba53453a02bb6785	createTable	Create presenter table	\N	3.3.2
002_presenter_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.819372	39	EXECUTED	7:e0f71d75c6d04d461a7aff5799bd68e4	addPrimaryKey	Create 002_presenter_table pk	\N	3.3.2
002_presenter_company_fk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.82581	40	EXECUTED	7:c07210f9e1d521fa557afead4019329e	addForeignKeyConstraint		\N	3.3.2
002_conference_session_presenter_table	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.832795	41	EXECUTED	7:01ecdc44b03baa4e6fb6fec7e1b5cd2b	createTable	Create conference_session_presenter table	\N	3.3.2
002_conference_session_presenter_pk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.83914	42	EXECUTED	7:5b18b4b7cd3623af148b2711f7286b72	addPrimaryKey	Create conference_session_presenter pk	\N	3.3.2
002_conference_session_presenter_session_fk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.845343	43	EXECUTED	7:291458d3b10dede60597b685631f156f	addForeignKeyConstraint		\N	3.3.2
002_conference_session_presenter_presenter_fk	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.851907	44	EXECUTED	7:dc87191e57daa10f4c09c4f6bf4c80d4	addForeignKeyConstraint		\N	3.3.2
002_fk_conference_session_room	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.858321	45	EXECUTED	7:9c3b76b1115d25dcf7e1db879102bbc5	addForeignKeyConstraint		\N	3.3.2
002_fk_conference_session_presenter	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.865165	46	EXECUTED	7:9ed9386c5814a9a73fb08118d1387420	addForeignKeyConstraint		\N	3.3.2
002_conf_session_drop_conference_session_presenter	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.871112	47	EXECUTED	7:1895cc9351ee67b21435d29eddf66989	dropColumn		\N	3.3.2
002_conf_session_add_conference_session_presenter_id	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.877122	48	EXECUTED	7:446c387c8e8bad119e8e1c6f6cfe6183	addColumn		\N	3.3.2
002_fk_conference_session_presenter_id	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.883826	49	EXECUTED	7:9f4d245f847b88bc780f587e92618dd6	addForeignKeyConstraint		version_1.0	3.3.2
002_tagging_database	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.88892	50	EXECUTED	7:a504af1cb7a0e60832dcd49a80cbb710	tagDatabase		version_1.0	3.3.2
002_create_role_table	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.896535	51	EXECUTED	7:84aa3e653a4dd30336e90f27a5d3b5e0	createTable	Create role table	\N	3.3.2
002_create_default_roles	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.90353	52	EXECUTED	7:a749c3b7eb7a404c9fb3633f6aa004f6	sql (x2)		\N	3.3.2
002_create_user_role_table	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.912259	53	EXECUTED	7:1c456a0c15d04be22969ae6479a8d24b	createTable	Create user_role table	\N	3.3.2
002_fk_user_role_user	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.918848	54	EXECUTED	7:6016c8fc12f979cb5950689e159ec130	addForeignKeyConstraint		\N	3.3.2
002_fk_user_role_role	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.002.conf_model.xml	2015-11-27 20:10:07.924649	55	EXECUTED	7:15aaa3ccc3af75836d66dfe763f5ca76	addForeignKeyConstraint		\N	3.3.2
003_add_user_xyz_pk	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.930527	56	EXECUTED	7:6857d350318e527506e2f5b056ae674c	addPrimaryKey	Add primary key to user xyz table	\N	3.3.2
003_alter_conference_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.939743	57	EXECUTED	7:fc98e3e1e66f78c4cdd4ccf89d3f5218	modifyDataType	Alter conference table	\N	3.3.2
003_alter_conference_session_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.95945	58	EXECUTED	7:fb9dc6fdce54d7d519ea951fa2ec6b7f	modifyDataType (x3)	Alter conference session table	\N	3.3.2
003_alter_conference_session__presenter_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.973656	59	EXECUTED	7:15a561cb38a42b02e97b7821ea35d22b	modifyDataType (x2)	Alter conference session presenter table	\N	3.3.2
003_alter_conference_session_registration_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.986849	60	EXECUTED	7:49a26d2bb4e5d4b550f0f16598788ba4	modifyDataType (x2)	Alter conference session registration table	\N	3.3.2
003_alter_location_address_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:07.998351	61	EXECUTED	7:01668375cf1c0a9afe4b878985d17fba	modifyDataType	Alter location address table	\N	3.3.2
003_alter_presenter_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:08.010047	62	EXECUTED	7:d8080e2099960618349ce9dc647bab62	modifyDataType (x2)	Alter presenter table	\N	3.3.2
003_alter_room_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:08.018569	63	EXECUTED	7:29a1232bad13e3f816501e84321d70b1	modifyDataType	Alter room table	\N	3.3.2
003_alter_sponsor_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:08.027066	64	EXECUTED	7:e33c742a7caadcb4db6484d9838d8c10	modifyDataType	Alter sponsor table	\N	3.3.2
003_alter_sponsor_level_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:08.035606	65	EXECUTED	7:ed6d08cf27408429933c176120dee0b7	modifyDataType	Alter sponsor level table	\N	3.3.2
003_alter_user_cred_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.003.alter_id_types.xml	2015-11-27 20:10:08.044487	66	EXECUTED	7:d5132b63ef494df75201af16bdeb6eff	modifyDataType	Alter user cred table	\N	3.3.2
004_alter_conference_session_table	Adam	src/main/resources/liquibase/db/changelogs/db-changelog.004.alter_duration.xml	2015-11-27 20:10:08.051698	67	EXECUTED	7:695d54879bf8bdca581d1a792ff77b87	dropColumn, addColumn	Alter user cred table	\N	3.3.2
003_alter_conference_session_table	Jonas	src/main/resources/liquibase/db/changelogs/db-changelog.005.alter_conference_session_.xml	2015-11-27 20:10:08.062	68	EXECUTED	7:44e18ac8301c1bf209983c6cb0929399	modifyDataType	Alter conference session table	\N	3.3.2
006_default_data_location	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.067853	69	EXECUTED	7:0ad81372b8b59b4e91981ac24b2fa0a0	sql	Load default location	\N	3.3.2
006_default_data_company	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.077189	70	EXECUTED	7:9ceb8f1223f1ca0dd5b9c62097c7e616	sql	Load default company	\N	3.3.2
006_default_data_conference_session_type	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.085224	71	EXECUTED	7:1cca84265160666e70f33a9ec4f5de46	sql (x4)	Load default conference session type	\N	3.3.2
006_default_data_location_address	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.091444	72	EXECUTED	7:6b4474bef929a94a5115b9103a4c2f56	sql	Load default location address	\N	3.3.2
006_default_data_presenter	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.096879	73	EXECUTED	7:494d238deb1a29fb120a775b80e43414	sql	Load default presenter	\N	3.3.2
006_default_data_room	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.10165	74	EXECUTED	7:edb5b7552ac83c255dae960034939aff	sql	Load default room	\N	3.3.2
006_default_data_sponsor_level	Scott	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.106311	75	EXECUTED	7:31207f725cb1559e7d0f42527c28f625	sql	Load default sponsor level	version_1.1	3.3.2
006_tagging_database	Carlus	src/main/resources/liquibase/db/changelogs/db-changelog.006.default_data.xml	2015-11-27 20:10:08.110742	76	EXECUTED	7:99cd9e167fa68de89f908641ebd353da	tagDatabase		version_1.1	3.3.2
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: gdg_admin
--

COPY databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


SET search_path = conf_admin, pg_catalog;

--
-- Name: company_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: conference_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY conference
    ADD CONSTRAINT conference_pkey PRIMARY KEY (id);


--
-- Name: conference_session_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY conference_session
    ADD CONSTRAINT conference_session_pkey PRIMARY KEY (id);


--
-- Name: conference_session_presenter_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY conference_session_presenter
    ADD CONSTRAINT conference_session_presenter_pkey PRIMARY KEY (id);


--
-- Name: conference_session_registration_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY conference_session_registration
    ADD CONSTRAINT conference_session_registration_pkey PRIMARY KEY (id);


--
-- Name: conference_session_type_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY conference_session_type
    ADD CONSTRAINT conference_session_type_pkey PRIMARY KEY (id);


--
-- Name: location_address_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY location_address
    ADD CONSTRAINT location_address_pkey PRIMARY KEY (id);


--
-- Name: location_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);


--
-- Name: pk_role; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY role
    ADD CONSTRAINT pk_role PRIMARY KEY (id);


--
-- Name: pk_user_role; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT pk_user_role PRIMARY KEY (id);


--
-- Name: presenter_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY presenter
    ADD CONSTRAINT presenter_pkey PRIMARY KEY (id);


--
-- Name: room_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- Name: sponsor_level_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY sponsor_level
    ADD CONSTRAINT sponsor_level_pkey PRIMARY KEY (id);


--
-- Name: sponsor_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY sponsor
    ADD CONSTRAINT sponsor_pkey PRIMARY KEY (id);


--
-- Name: user_cred_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY user_cred
    ADD CONSTRAINT user_cred_pkey PRIMARY KEY (id);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_xyz_pkey; Type: CONSTRAINT; Schema: conf_admin; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY user_xyz
    ADD CONSTRAINT user_xyz_pkey PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- Name: pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: gdg_admin; Tablespace: 
--

ALTER TABLE ONLY databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


SET search_path = conf_admin, pg_catalog;

--
-- Name: fk_conf_location; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference
    ADD CONSTRAINT fk_conf_location FOREIGN KEY (location_id) REFERENCES location(id);


--
-- Name: fk_conf_location; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY location_address
    ADD CONSTRAINT fk_conf_location FOREIGN KEY (location_id) REFERENCES location(id);


--
-- Name: fk_conf_sess_conf; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session
    ADD CONSTRAINT fk_conf_sess_conf FOREIGN KEY (conference_id) REFERENCES conference(id);


--
-- Name: fk_conf_sess_presenter; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session
    ADD CONSTRAINT fk_conf_sess_presenter FOREIGN KEY (conference_session_presenter_id) REFERENCES conference_session_presenter(id);


--
-- Name: fk_conf_sess_room; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session
    ADD CONSTRAINT fk_conf_sess_room FOREIGN KEY (room_id) REFERENCES room(id);


--
-- Name: fk_conf_sess_type; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session
    ADD CONSTRAINT fk_conf_sess_type FOREIGN KEY (conference_session_type_id) REFERENCES conference_session_type(id);


--
-- Name: fk_conf_session_presenter_presenter; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_presenter
    ADD CONSTRAINT fk_conf_session_presenter_presenter FOREIGN KEY (presenter_id) REFERENCES presenter(id);


--
-- Name: fk_conf_session_presenter_session; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_presenter
    ADD CONSTRAINT fk_conf_session_presenter_session FOREIGN KEY (conference_session_id) REFERENCES conference_session(id);


--
-- Name: fk_conf_session_reg_session; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_registration
    ADD CONSTRAINT fk_conf_session_reg_session FOREIGN KEY (conference_session_id) REFERENCES conference_session(id);


--
-- Name: fk_conf_session_reg_user; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY conference_session_registration
    ADD CONSTRAINT fk_conf_session_reg_user FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk_presenter_company; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY presenter
    ADD CONSTRAINT fk_presenter_company FOREIGN KEY (company_affiliation_id) REFERENCES company(id);


--
-- Name: fk_room_conf; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY room
    ADD CONSTRAINT fk_room_conf FOREIGN KEY (conference_id) REFERENCES conference(id);


--
-- Name: fk_sponsor_conf; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY sponsor_level
    ADD CONSTRAINT fk_sponsor_conf FOREIGN KEY (conference_id) REFERENCES conference(id);


--
-- Name: fk_sponsor_sponsor_level; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY sponsor
    ADD CONSTRAINT fk_sponsor_sponsor_level FOREIGN KEY (sponsor_level) REFERENCES sponsor_level(id);


--
-- Name: fk_user_cred_user; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_cred
    ADD CONSTRAINT fk_user_cred_user FOREIGN KEY (user_id) REFERENCES "user"(id);


--
-- Name: fk_user_role_role; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk_user_role_role FOREIGN KEY (role_id) REFERENCES role(id);


--
-- Name: fk_user_role_user; Type: FK CONSTRAINT; Schema: conf_admin; Owner: gdg_admin
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) REFERENCES "user"(id);


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

