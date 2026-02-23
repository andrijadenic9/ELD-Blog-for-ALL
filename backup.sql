--
-- PostgreSQL database dump
--

\restrict 7BWy54JYGlCHF4btXES134HEleDJ9XuCnoJDhsskFut2eQts7nl9wK9xrQI7jl2

-- Dumped from database version 16.12
-- Dumped by pg_dump version 16.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: eld_blog_cms_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO eld_blog_cms_user;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: eld_blog_cms_user
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO eld_blog_cms_user;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO eld_blog_cms_user;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO eld_blog_cms_user;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO eld_blog_cms_user;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO eld_blog_cms_user;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    focal_point jsonb,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO eld_blog_cms_user;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO eld_blog_cms_user;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO eld_blog_cms_user;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO eld_blog_cms_user;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    slug character varying(255),
    excerpt character varying(255),
    content jsonb,
    featured boolean,
    meta_title character varying(255),
    meta_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.posts OWNER TO eld_blog_cms_user;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_site_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.posts_site_lnk (
    id integer NOT NULL,
    post_id integer,
    site_id integer,
    post_ord double precision
);


ALTER TABLE public.posts_site_lnk OWNER TO eld_blog_cms_user;

--
-- Name: posts_site_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.posts_site_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_site_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: posts_site_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.posts_site_lnk_id_seq OWNED BY public.posts_site_lnk.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.sites (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    key character varying(255)
);


ALTER TABLE public.sites OWNER TO eld_blog_cms_user;

--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sites_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.sites_id_seq OWNED BY public.sites.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO eld_blog_cms_user;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO eld_blog_cms_user;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO eld_blog_cms_user;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO eld_blog_cms_user;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO eld_blog_cms_user;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO eld_blog_cms_user;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO eld_blog_cms_user;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO eld_blog_cms_user;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO eld_blog_cms_user;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO eld_blog_cms_user;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO eld_blog_cms_user;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.tags OWNER TO eld_blog_cms_user;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: tags_posts_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.tags_posts_lnk (
    id integer NOT NULL,
    tag_id integer,
    post_id integer,
    post_ord double precision,
    tag_ord double precision
);


ALTER TABLE public.tags_posts_lnk OWNER TO eld_blog_cms_user;

--
-- Name: tags_posts_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.tags_posts_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_posts_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: tags_posts_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.tags_posts_lnk_id_seq OWNED BY public.tags_posts_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO eld_blog_cms_user;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO eld_blog_cms_user;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO eld_blog_cms_user;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO eld_blog_cms_user;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO eld_blog_cms_user;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO eld_blog_cms_user;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: eld_blog_cms_user
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO eld_blog_cms_user;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: eld_blog_cms_user
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO eld_blog_cms_user;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eld_blog_cms_user
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_site_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts_site_lnk ALTER COLUMN id SET DEFAULT nextval('public.posts_site_lnk_id_seq'::regclass);


--
-- Name: sites id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.sites ALTER COLUMN id SET DEFAULT nextval('public.sites_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: tags_posts_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags_posts_lnk ALTER COLUMN id SET DEFAULT nextval('public.tags_posts_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	clu51moyvfpzpn1grd417o20	plugin::upload.read	{}	\N	{}	[]	2026-02-20 15:34:19.57	2026-02-20 15:34:19.57	2026-02-20 15:34:19.571	\N	\N	\N
2	ak3trwejkcqqfh3p562vtm88	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-20 15:34:19.578	2026-02-20 15:34:19.578	2026-02-20 15:34:19.578	\N	\N	\N
3	nbajiqs99dz3cgzyexwnxm70	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-20 15:34:19.583	2026-02-20 15:34:19.583	2026-02-20 15:34:19.583	\N	\N	\N
4	mdt0ah8j1bedj10yx6kx00ys	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-20 15:34:19.587	2026-02-20 15:34:19.587	2026-02-20 15:34:19.587	\N	\N	\N
5	wn44uui9dz5re9jief0i9lny	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-20 15:34:19.592	2026-02-20 15:34:19.592	2026-02-20 15:34:19.592	\N	\N	\N
6	fcixiypaaagyojdcmi4sfldy	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-20 15:34:19.597	2026-02-20 15:34:19.597	2026-02-20 15:34:19.597	\N	\N	\N
7	xwchixcffhicldkegrtwyv6r	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-02-20 15:34:19.602	2026-02-20 15:34:19.602	2026-02-20 15:34:19.603	\N	\N	\N
8	zjn09pq88pzwwgt2f0jtxtyt	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-20 15:34:19.623	2026-02-20 15:34:19.623	2026-02-20 15:34:19.623	\N	\N	\N
9	b3n9cor8xjb6l5c1cv3dawu5	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-20 15:34:19.629	2026-02-20 15:34:19.629	2026-02-20 15:34:19.629	\N	\N	\N
10	opa970f0lm17ljm82jbcnejo	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-02-20 15:34:19.635	2026-02-20 15:34:19.635	2026-02-20 15:34:19.636	\N	\N	\N
11	ruxbvhx13nqhw6x2w38rhqqq	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-20 15:34:19.645	2026-02-20 15:34:19.645	2026-02-20 15:34:19.645	\N	\N	\N
12	zmxlafp4zouwphyq6v6tai8r	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-20 15:34:19.651	2026-02-20 15:34:19.651	2026-02-20 15:34:19.651	\N	\N	\N
13	e96owwzmzq8b9zpi5ke3lxwy	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-20 15:34:19.68	2026-02-20 15:34:19.68	2026-02-20 15:34:19.68	\N	\N	\N
14	ycnykbwzhgvuwe1dx74pl4dw	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-20 15:34:19.685	2026-02-20 15:34:19.685	2026-02-20 15:34:19.685	\N	\N	\N
15	j71ahm63p42yoad2nvvrolbh	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-20 15:34:19.69	2026-02-20 15:34:19.69	2026-02-20 15:34:19.69	\N	\N	\N
16	g9meixycqpr1mc61plf30kpq	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-02-20 15:34:19.695	2026-02-20 15:34:19.695	2026-02-20 15:34:19.695	\N	\N	\N
17	y2te4n65nu1eye845cly4vbn	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-02-20 15:34:19.699	2026-02-20 15:34:19.699	2026-02-20 15:34:19.699	\N	\N	\N
18	r5temcygojkrrrl802o0ijy2	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-02-20 15:34:19.704	2026-02-20 15:34:19.704	2026-02-20 15:34:19.704	\N	\N	\N
19	hctr8i1rkaqezcpk78nl9zjd	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-02-20 15:34:19.709	2026-02-20 15:34:19.709	2026-02-20 15:34:19.709	\N	\N	\N
20	qbstohkiewt7be8ldwiuid63	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-02-20 15:34:19.713	2026-02-20 15:34:19.713	2026-02-20 15:34:19.714	\N	\N	\N
21	kfpa8sojqrtokssrm77o5oo8	plugin::content-type-builder.read	{}	\N	{}	[]	2026-02-20 15:34:19.719	2026-02-20 15:34:19.719	2026-02-20 15:34:19.719	\N	\N	\N
22	ujzlayjjn498v3b05b17da6v	plugin::email.settings.read	{}	\N	{}	[]	2026-02-20 15:34:19.725	2026-02-20 15:34:19.725	2026-02-20 15:34:19.725	\N	\N	\N
23	dv4t6p07jfy2l9ehfzepe58r	plugin::upload.read	{}	\N	{}	[]	2026-02-20 15:34:19.731	2026-02-20 15:34:19.731	2026-02-20 15:34:19.731	\N	\N	\N
24	hjnpalf2bon3fg9wqqxcmd7t	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-20 15:34:19.737	2026-02-20 15:34:19.737	2026-02-20 15:34:19.737	\N	\N	\N
25	t3ltk2uqxn673ca7xayh1bx3	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-20 15:34:19.744	2026-02-20 15:34:19.744	2026-02-20 15:34:19.744	\N	\N	\N
26	l571msdq4ie2y6mg93pug9h9	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-20 15:34:19.75	2026-02-20 15:34:19.75	2026-02-20 15:34:19.75	\N	\N	\N
27	h6bkf1gkppflp8czv3v2igw0	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-20 15:34:19.756	2026-02-20 15:34:19.756	2026-02-20 15:34:19.757	\N	\N	\N
28	qv6dq0oc543jp9wi9yxnxt8g	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-20 15:34:19.765	2026-02-20 15:34:19.765	2026-02-20 15:34:19.765	\N	\N	\N
29	v88nlp4exqat2k39dnpnuxqd	plugin::upload.settings.read	{}	\N	{}	[]	2026-02-20 15:34:19.772	2026-02-20 15:34:19.772	2026-02-20 15:34:19.772	\N	\N	\N
30	r8gj5snf6259jbwmkkr0o10s	plugin::i18n.locale.create	{}	\N	{}	[]	2026-02-20 15:34:19.778	2026-02-20 15:34:19.778	2026-02-20 15:34:19.778	\N	\N	\N
31	arepf3rpsn6v7pxw8jnbp5d4	plugin::i18n.locale.read	{}	\N	{}	[]	2026-02-20 15:34:19.785	2026-02-20 15:34:19.785	2026-02-20 15:34:19.785	\N	\N	\N
32	dxakv5hk3bg1cghu6ly997yl	plugin::i18n.locale.update	{}	\N	{}	[]	2026-02-20 15:34:19.79	2026-02-20 15:34:19.79	2026-02-20 15:34:19.79	\N	\N	\N
33	nchk3w4c22m98cekxokdnvgp	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-02-20 15:34:19.796	2026-02-20 15:34:19.796	2026-02-20 15:34:19.796	\N	\N	\N
34	jkb13hkdz5ap45cv2gue4w9u	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-02-20 15:34:19.801	2026-02-20 15:34:19.801	2026-02-20 15:34:19.801	\N	\N	\N
35	rbv3vcz1itl4r2swmovpx45l	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-02-20 15:34:19.806	2026-02-20 15:34:19.806	2026-02-20 15:34:19.806	\N	\N	\N
36	zv2ad4p516ifsqa8ty6niywt	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-02-20 15:34:19.812	2026-02-20 15:34:19.812	2026-02-20 15:34:19.812	\N	\N	\N
37	ej9uzeqj7ldkbdww3rcidqcq	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-02-20 15:34:19.818	2026-02-20 15:34:19.818	2026-02-20 15:34:19.818	\N	\N	\N
38	nnsh7i7srxrq6ymhiavfip4f	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-02-20 15:34:19.823	2026-02-20 15:34:19.823	2026-02-20 15:34:19.824	\N	\N	\N
39	me65v8sanr0zj98t8b06qhu6	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-02-20 15:34:19.829	2026-02-20 15:34:19.829	2026-02-20 15:34:19.829	\N	\N	\N
40	z2sbpeuwe9h264c3322qr6ze	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-02-20 15:34:19.835	2026-02-20 15:34:19.835	2026-02-20 15:34:19.835	\N	\N	\N
41	bn6d6jfl24e2r79d6h70juz8	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-02-20 15:34:19.841	2026-02-20 15:34:19.841	2026-02-20 15:34:19.841	\N	\N	\N
42	nsjrog9pv3yzcb5miwh49b8r	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-02-20 15:34:19.846	2026-02-20 15:34:19.846	2026-02-20 15:34:19.846	\N	\N	\N
43	xdfrp7704okx1ffjf91k6el8	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-02-20 15:34:19.85	2026-02-20 15:34:19.85	2026-02-20 15:34:19.85	\N	\N	\N
44	wo5wfnrr72ppqmzix9j8036a	admin::marketplace.read	{}	\N	{}	[]	2026-02-20 15:34:19.854	2026-02-20 15:34:19.854	2026-02-20 15:34:19.854	\N	\N	\N
45	vysncpftt2tcygell2c7kjts	admin::webhooks.create	{}	\N	{}	[]	2026-02-20 15:34:19.858	2026-02-20 15:34:19.858	2026-02-20 15:34:19.858	\N	\N	\N
46	qinumevvc3upe1xjxymnhd3v	admin::webhooks.read	{}	\N	{}	[]	2026-02-20 15:34:19.863	2026-02-20 15:34:19.863	2026-02-20 15:34:19.863	\N	\N	\N
47	sw09liya1h67m9fayyq55uo1	admin::webhooks.update	{}	\N	{}	[]	2026-02-20 15:34:19.867	2026-02-20 15:34:19.867	2026-02-20 15:34:19.868	\N	\N	\N
48	rlm7vbzx7wzcibup1fbbq30z	admin::webhooks.delete	{}	\N	{}	[]	2026-02-20 15:34:19.874	2026-02-20 15:34:19.874	2026-02-20 15:34:19.874	\N	\N	\N
49	yh9e621aogj4op8ltnxg94tu	admin::users.create	{}	\N	{}	[]	2026-02-20 15:34:19.878	2026-02-20 15:34:19.878	2026-02-20 15:34:19.878	\N	\N	\N
50	kb61wh9v8tbnocwcsbmtlcfw	admin::users.read	{}	\N	{}	[]	2026-02-20 15:34:19.884	2026-02-20 15:34:19.884	2026-02-20 15:34:19.884	\N	\N	\N
51	s0oenizb5ptj3go0p9e40j22	admin::users.update	{}	\N	{}	[]	2026-02-20 15:34:19.888	2026-02-20 15:34:19.888	2026-02-20 15:34:19.888	\N	\N	\N
52	iexvo43b84pm6shl093pgx6e	admin::users.delete	{}	\N	{}	[]	2026-02-20 15:34:19.892	2026-02-20 15:34:19.892	2026-02-20 15:34:19.892	\N	\N	\N
53	nfoviu8d9cbbbq397h1fkd56	admin::roles.create	{}	\N	{}	[]	2026-02-20 15:34:19.897	2026-02-20 15:34:19.897	2026-02-20 15:34:19.897	\N	\N	\N
54	tmjfkkhwme9ydl9xlnxp1cgc	admin::roles.read	{}	\N	{}	[]	2026-02-20 15:34:19.901	2026-02-20 15:34:19.901	2026-02-20 15:34:19.901	\N	\N	\N
55	u72fjq3mssuxwwzjnvs0o6c8	admin::roles.update	{}	\N	{}	[]	2026-02-20 15:34:19.905	2026-02-20 15:34:19.905	2026-02-20 15:34:19.905	\N	\N	\N
56	vjbdv9mw4hv4lhxrr4g5m477	admin::roles.delete	{}	\N	{}	[]	2026-02-20 15:34:19.909	2026-02-20 15:34:19.909	2026-02-20 15:34:19.91	\N	\N	\N
57	wcufgfajrpjtcmeaxnn2mhbe	admin::api-tokens.access	{}	\N	{}	[]	2026-02-20 15:34:19.914	2026-02-20 15:34:19.914	2026-02-20 15:34:19.914	\N	\N	\N
58	bcaccqamhmdxlg6r7o98eev1	admin::api-tokens.create	{}	\N	{}	[]	2026-02-20 15:34:19.918	2026-02-20 15:34:19.918	2026-02-20 15:34:19.918	\N	\N	\N
59	eybtnfu1eai7jo3ro9lvo8xq	admin::api-tokens.read	{}	\N	{}	[]	2026-02-20 15:34:19.922	2026-02-20 15:34:19.922	2026-02-20 15:34:19.922	\N	\N	\N
60	puqqlnpnbtr0bp6hritinvrq	admin::api-tokens.update	{}	\N	{}	[]	2026-02-20 15:34:19.926	2026-02-20 15:34:19.926	2026-02-20 15:34:19.926	\N	\N	\N
61	pi8tqlmz5uyral6i2079wkr1	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-02-20 15:34:19.93	2026-02-20 15:34:19.93	2026-02-20 15:34:19.93	\N	\N	\N
62	m3chnqupvfwh7rcz7um3k0qm	admin::api-tokens.delete	{}	\N	{}	[]	2026-02-20 15:34:19.935	2026-02-20 15:34:19.935	2026-02-20 15:34:19.935	\N	\N	\N
63	vbzcurwsvncewl6ng0htf4so	admin::project-settings.update	{}	\N	{}	[]	2026-02-20 15:34:19.939	2026-02-20 15:34:19.939	2026-02-20 15:34:19.939	\N	\N	\N
64	cyvbxuzpojlv2uwf6m0yg2st	admin::project-settings.read	{}	\N	{}	[]	2026-02-20 15:34:19.943	2026-02-20 15:34:19.943	2026-02-20 15:34:19.943	\N	\N	\N
65	f6qkv707zhr8xm9jtm4srv9h	admin::transfer.tokens.access	{}	\N	{}	[]	2026-02-20 15:34:19.948	2026-02-20 15:34:19.948	2026-02-20 15:34:19.948	\N	\N	\N
66	j81wbe6zvsow0xoewls9zflz	admin::transfer.tokens.create	{}	\N	{}	[]	2026-02-20 15:34:19.952	2026-02-20 15:34:19.952	2026-02-20 15:34:19.952	\N	\N	\N
67	xydb2rp8spg2zugiwp4kzq1n	admin::transfer.tokens.read	{}	\N	{}	[]	2026-02-20 15:34:19.957	2026-02-20 15:34:19.957	2026-02-20 15:34:19.957	\N	\N	\N
68	hflmfdf03hqeru52uauwdrlo	admin::transfer.tokens.update	{}	\N	{}	[]	2026-02-20 15:34:19.962	2026-02-20 15:34:19.962	2026-02-20 15:34:19.963	\N	\N	\N
69	tppvgpptrz9kleptqj04eh0w	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-02-20 15:34:19.967	2026-02-20 15:34:19.967	2026-02-20 15:34:19.967	\N	\N	\N
70	pxjcus6b4qch2t3mqkucdf31	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-02-20 15:34:19.971	2026-02-20 15:34:19.971	2026-02-20 15:34:19.971	\N	\N	\N
74	ul6axi1a0r00qnd1yzn16e4u	plugin::content-manager.explorer.delete	{}	api::site.site	{}	[]	2026-02-22 13:18:35.955	2026-02-22 13:18:35.955	2026-02-22 13:18:35.955	\N	\N	\N
75	homvmr3cw6rk45wkyfra16mq	plugin::content-manager.explorer.publish	{}	api::site.site	{}	[]	2026-02-22 13:18:35.962	2026-02-22 13:18:35.962	2026-02-22 13:18:35.962	\N	\N	\N
79	etwhn5ao9bigqeunelz4804h	plugin::content-manager.explorer.create	{}	api::post.post	{"fields": ["title", "slug", "excerpt", "content", "coverImage", "tags", "featured", "metaTitle", "metaDescription", "site"]}	[]	2026-02-22 14:05:02.498	2026-02-22 14:05:02.498	2026-02-22 14:05:02.499	\N	\N	\N
80	n6w8mnia95k9906v7jyoi7we	plugin::content-manager.explorer.create	{}	api::site.site	{"fields": ["name", "key", "posts"]}	[]	2026-02-22 14:05:02.507	2026-02-22 14:05:02.507	2026-02-22 14:05:02.508	\N	\N	\N
81	d451248hw5dog9f3puqf4xwi	plugin::content-manager.explorer.create	{}	api::tag.tag	{"fields": ["name", "slug", "posts"]}	[]	2026-02-22 14:05:02.513	2026-02-22 14:05:02.513	2026-02-22 14:05:02.513	\N	\N	\N
82	k7l1179tnxm9ne6hxgcocqcg	plugin::content-manager.explorer.read	{}	api::post.post	{"fields": ["title", "slug", "excerpt", "content", "coverImage", "tags", "featured", "metaTitle", "metaDescription", "site"]}	[]	2026-02-22 14:05:02.519	2026-02-22 14:05:02.519	2026-02-22 14:05:02.519	\N	\N	\N
83	fp3u4cbtkyezeegn3l8ubhk1	plugin::content-manager.explorer.read	{}	api::site.site	{"fields": ["name", "key", "posts"]}	[]	2026-02-22 14:05:02.524	2026-02-22 14:05:02.524	2026-02-22 14:05:02.524	\N	\N	\N
84	u23y2edcokqn95z74opd2f2y	plugin::content-manager.explorer.read	{}	api::tag.tag	{"fields": ["name", "slug", "posts"]}	[]	2026-02-22 14:05:02.529	2026-02-22 14:05:02.529	2026-02-22 14:05:02.529	\N	\N	\N
85	srokoooo7ejiyez9s207gloh	plugin::content-manager.explorer.update	{}	api::post.post	{"fields": ["title", "slug", "excerpt", "content", "coverImage", "tags", "featured", "metaTitle", "metaDescription", "site"]}	[]	2026-02-22 14:05:02.535	2026-02-22 14:05:02.535	2026-02-22 14:05:02.535	\N	\N	\N
86	lq1hijdxkp9p3iz1b9kg6mzr	plugin::content-manager.explorer.update	{}	api::site.site	{"fields": ["name", "key", "posts"]}	[]	2026-02-22 14:05:02.54	2026-02-22 14:05:02.54	2026-02-22 14:05:02.54	\N	\N	\N
87	b2t1n3q8u3pk82dzkqus1b2y	plugin::content-manager.explorer.update	{}	api::tag.tag	{"fields": ["name", "slug", "posts"]}	[]	2026-02-22 14:05:02.546	2026-02-22 14:05:02.546	2026-02-22 14:05:02.546	\N	\N	\N
88	u9yv7u5x9op8gc0d97mw05vr	plugin::content-manager.explorer.delete	{}	api::post.post	{}	[]	2026-02-22 14:05:02.551	2026-02-22 14:05:02.551	2026-02-22 14:05:02.551	\N	\N	\N
89	s8hkp59croq7hvl8kkimamvj	plugin::content-manager.explorer.delete	{}	api::tag.tag	{}	[]	2026-02-22 14:05:02.556	2026-02-22 14:05:02.556	2026-02-22 14:05:02.557	\N	\N	\N
90	zj8pxz8subko4kb6ac519ub7	plugin::content-manager.explorer.publish	{}	api::post.post	{}	[]	2026-02-22 14:05:02.578	2026-02-22 14:05:02.578	2026-02-22 14:05:02.579	\N	\N	\N
91	nsh746scq2je112x2cb6ewcs	plugin::content-manager.explorer.publish	{}	api::tag.tag	{}	[]	2026-02-22 14:05:02.584	2026-02-22 14:05:02.584	2026-02-22 14:05:02.584	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
13	13	1	1
14	14	1	2
15	15	1	3
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
70	70	1	58
74	74	1	62
75	75	1	63
79	79	1	64
80	80	1	65
81	81	1	66
82	82	1	67
83	83	1	68
84	84	1	69
85	85	1	70
86	86	1	71
87	87	1	72
88	88	1	73
89	89	1	74
90	90	1	75
91	91	1	76
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ar3zssb7d4czssxmn4cw0g5t	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-02-20 15:34:19.552	2026-02-20 15:34:19.552	2026-02-20 15:34:19.553	\N	\N	\N
2	a6nhga758tm4iuzy8xjyu3ur	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-02-20 15:34:19.562	2026-02-20 15:34:19.562	2026-02-20 15:34:19.562	\N	\N	\N
3	h9ccw92ye76ibqqy7578qqjq	Author	strapi-author	Authors can manage the content they have created.	2026-02-20 15:34:19.566	2026-02-20 15:34:19.566	2026-02-20 15:34:19.566	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	nnfh8skfy25e7j3chgce5e7y	Andrija	Denic	\N	andrijadenic9@gmail.com	$2a$10$qqLMm0RtRp3mBbk2wDpTdO6zXKnQ1eDuOMRg.5lAm9D/qpyz8xxYy	\N	\N	t	f	\N	2026-02-22 13:07:38.549	2026-02-22 13:07:38.549	2026-02-22 13:07:38.551	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.files (id, document_id, name, alternative_text, caption, focal_point, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	e9bsty9xlf3j8kjfnaribcg6	Meni.jpg	\N	\N	\N	1526	2160	{"large": {"ext": ".jpg", "url": "/uploads/large_Meni_41fc5b0288.jpg", "hash": "large_Meni_41fc5b0288", "mime": "image/jpeg", "name": "large_Meni.jpg", "path": null, "size": 66.31, "width": 706, "height": 1000, "sizeInBytes": 66305}, "small": {"ext": ".jpg", "url": "/uploads/small_Meni_41fc5b0288.jpg", "hash": "small_Meni_41fc5b0288", "mime": "image/jpeg", "name": "small_Meni.jpg", "path": null, "size": 25.06, "width": 353, "height": 500, "sizeInBytes": 25055}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Meni_41fc5b0288.jpg", "hash": "medium_Meni_41fc5b0288", "mime": "image/jpeg", "name": "medium_Meni.jpg", "path": null, "size": 45.56, "width": 530, "height": 750, "sizeInBytes": 45556}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Meni_41fc5b0288.jpg", "hash": "thumbnail_Meni_41fc5b0288", "mime": "image/jpeg", "name": "thumbnail_Meni.jpg", "path": null, "size": 3.63, "width": 110, "height": 156, "sizeInBytes": 3634}}	Meni_41fc5b0288	.jpg	image/jpeg	195.37	/uploads/Meni_41fc5b0288.jpg	\N	local	\N	/	2026-02-22 17:16:47.036	2026-02-22 17:16:47.036	2026-02-22 17:16:47.036	1	1	\N
4	mwe8j178b7dww9ujs56iwqst	Screenshot 2026-02-23 122951.png	\N	\N	\N	1916	1029	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_2026_02_23_122951_8d1987bd95.png", "hash": "large_Screenshot_2026_02_23_122951_8d1987bd95", "mime": "image/png", "name": "large_Screenshot 2026-02-23 122951.png", "path": null, "size": 66, "width": 1000, "height": 537, "sizeInBytes": 66002}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_2026_02_23_122951_8d1987bd95.png", "hash": "small_Screenshot_2026_02_23_122951_8d1987bd95", "mime": "image/png", "name": "small_Screenshot 2026-02-23 122951.png", "path": null, "size": 25.19, "width": 500, "height": 269, "sizeInBytes": 25192}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_2026_02_23_122951_8d1987bd95.png", "hash": "medium_Screenshot_2026_02_23_122951_8d1987bd95", "mime": "image/png", "name": "medium_Screenshot 2026-02-23 122951.png", "path": null, "size": 44.28, "width": 750, "height": 403, "sizeInBytes": 44281}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_2026_02_23_122951_8d1987bd95.png", "hash": "thumbnail_Screenshot_2026_02_23_122951_8d1987bd95", "mime": "image/png", "name": "thumbnail_Screenshot 2026-02-23 122951.png", "path": null, "size": 8.94, "width": 245, "height": 132, "sizeInBytes": 8939}}	Screenshot_2026_02_23_122951_8d1987bd95	.png	image/png	34.55	/uploads/Screenshot_2026_02_23_122951_8d1987bd95.png	\N	local	\N	/	2026-02-23 11:56:14.267	2026-02-23 11:56:14.267	2026-02-23 11:56:14.267	1	1	\N
5	iq49l4n809i0kh5zsi9paw0a	Screenshot 2026-02-23 124858.png	\N	\N	\N	1904	970	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_2026_02_23_124858_366156574f.png", "hash": "large_Screenshot_2026_02_23_124858_366156574f", "mime": "image/png", "name": "large_Screenshot 2026-02-23 124858.png", "path": null, "size": 160.12, "width": 1000, "height": 509, "sizeInBytes": 160118}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_2026_02_23_124858_366156574f.png", "hash": "small_Screenshot_2026_02_23_124858_366156574f", "mime": "image/png", "name": "small_Screenshot 2026-02-23 124858.png", "path": null, "size": 56.82, "width": 500, "height": 255, "sizeInBytes": 56822}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_2026_02_23_124858_366156574f.png", "hash": "medium_Screenshot_2026_02_23_124858_366156574f", "mime": "image/png", "name": "medium_Screenshot 2026-02-23 124858.png", "path": null, "size": 104.89, "width": 750, "height": 382, "sizeInBytes": 104886}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_2026_02_23_124858_366156574f.png", "hash": "thumbnail_Screenshot_2026_02_23_124858_366156574f", "mime": "image/png", "name": "thumbnail_Screenshot 2026-02-23 124858.png", "path": null, "size": 18.66, "width": 245, "height": 125, "sizeInBytes": 18664}}	Screenshot_2026_02_23_124858_366156574f	.png	image/png	58.81	/uploads/Screenshot_2026_02_23_124858_366156574f.png	\N	local	\N	/	2026-02-23 11:56:37.07	2026-02-23 11:56:37.07	2026-02-23 11:56:37.071	1	1	\N
7	t3hdy3qnnnwfb9fmob72io4y	pexels-sohi-807598.jpg	\N	\N	\N	1920	1440	{"large": {"ext": ".jpg", "url": "/uploads/large_pexels_sohi_807598_a8d1948763.jpg", "hash": "large_pexels_sohi_807598_a8d1948763", "mime": "image/jpeg", "name": "large_pexels-sohi-807598.jpg", "path": null, "size": 173.39, "width": 1000, "height": 750, "sizeInBytes": 173390}, "small": {"ext": ".jpg", "url": "/uploads/small_pexels_sohi_807598_a8d1948763.jpg", "hash": "small_pexels_sohi_807598_a8d1948763", "mime": "image/jpeg", "name": "small_pexels-sohi-807598.jpg", "path": null, "size": 50.17, "width": 500, "height": 375, "sizeInBytes": 50169}, "medium": {"ext": ".jpg", "url": "/uploads/medium_pexels_sohi_807598_a8d1948763.jpg", "hash": "medium_pexels_sohi_807598_a8d1948763", "mime": "image/jpeg", "name": "medium_pexels-sohi-807598.jpg", "path": null, "size": 104.86, "width": 750, "height": 563, "sizeInBytes": 104857}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_pexels_sohi_807598_a8d1948763.jpg", "hash": "thumbnail_pexels_sohi_807598_a8d1948763", "mime": "image/jpeg", "name": "thumbnail_pexels-sohi-807598.jpg", "path": null, "size": 10.23, "width": 208, "height": 156, "sizeInBytes": 10234}}	pexels_sohi_807598_a8d1948763	.jpg	image/jpeg	490.67	/uploads/pexels_sohi_807598_a8d1948763.jpg	\N	local	\N	/	2026-02-23 12:11:50.228	2026-02-23 12:11:50.228	2026-02-23 12:11:50.228	1	1	\N
8	ccnajlphfwbj1nwbuu7g096a	20250520_214641.jpg	\N	\N	\N	773	1031	{"large": {"ext": ".jpg", "url": "/uploads/large_20250520_214641_1a491f63c7.jpg", "hash": "large_20250520_214641_1a491f63c7", "mime": "image/jpeg", "name": "large_20250520_214641.jpg", "path": null, "size": 236.24, "width": 750, "height": 1000, "sizeInBytes": 236242}, "small": {"ext": ".jpg", "url": "/uploads/small_20250520_214641_1a491f63c7.jpg", "hash": "small_20250520_214641_1a491f63c7", "mime": "image/jpeg", "name": "small_20250520_214641.jpg", "path": null, "size": 60.98, "width": 375, "height": 500, "sizeInBytes": 60977}, "medium": {"ext": ".jpg", "url": "/uploads/medium_20250520_214641_1a491f63c7.jpg", "hash": "medium_20250520_214641_1a491f63c7", "mime": "image/jpeg", "name": "medium_20250520_214641.jpg", "path": null, "size": 137.9, "width": 562, "height": 750, "sizeInBytes": 137897}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_20250520_214641_1a491f63c7.jpg", "hash": "thumbnail_20250520_214641_1a491f63c7", "mime": "image/jpeg", "name": "thumbnail_20250520_214641.jpg", "path": null, "size": 5.65, "width": 117, "height": 156, "sizeInBytes": 5645}}	20250520_214641_1a491f63c7	.jpg	image/jpeg	255.15	/uploads/20250520_214641_1a491f63c7.jpg	\N	local	\N	/	2026-02-23 12:25:15.127	2026-02-23 12:25:15.127	2026-02-23 12:25:15.127	1	1	\N
9	xhg6ok00zjdpl44oc4ionh47	best-free-travel-images-main-image-hd-op.webp	\N	\N	\N	2000	1333	{"large": {"ext": ".webp", "url": "/uploads/large_best_free_travel_images_main_image_hd_op_59befc0e4b.webp", "hash": "large_best_free_travel_images_main_image_hd_op_59befc0e4b", "mime": "image/webp", "name": "large_best-free-travel-images-main-image-hd-op.webp", "path": null, "size": 64.16, "width": 1000, "height": 666, "sizeInBytes": 64162}, "small": {"ext": ".webp", "url": "/uploads/small_best_free_travel_images_main_image_hd_op_59befc0e4b.webp", "hash": "small_best_free_travel_images_main_image_hd_op_59befc0e4b", "mime": "image/webp", "name": "small_best-free-travel-images-main-image-hd-op.webp", "path": null, "size": 22.61, "width": 500, "height": 333, "sizeInBytes": 22606}, "medium": {"ext": ".webp", "url": "/uploads/medium_best_free_travel_images_main_image_hd_op_59befc0e4b.webp", "hash": "medium_best_free_travel_images_main_image_hd_op_59befc0e4b", "mime": "image/webp", "name": "medium_best-free-travel-images-main-image-hd-op.webp", "path": null, "size": 41.9, "width": 750, "height": 500, "sizeInBytes": 41904}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_best_free_travel_images_main_image_hd_op_59befc0e4b.webp", "hash": "thumbnail_best_free_travel_images_main_image_hd_op_59befc0e4b", "mime": "image/webp", "name": "thumbnail_best-free-travel-images-main-image-hd-op.webp", "path": null, "size": 6.42, "width": 234, "height": 156, "sizeInBytes": 6420}}	best_free_travel_images_main_image_hd_op_59befc0e4b	.webp	image/webp	192.77	/uploads/best_free_travel_images_main_image_hd_op_59befc0e4b.webp	\N	local	\N	/	2026-02-23 13:30:08.248	2026-02-23 13:30:08.248	2026-02-23 13:30:08.248	1	1	\N
10	g8xdibxon4drb7r7ynng8k1l	beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp	\N	\N	\N	800	534	{"small": {"ext": ".webp", "url": "/uploads/small_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d.webp", "hash": "small_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d", "mime": "image/webp", "name": "small_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 54.79, "width": 500, "height": 334, "sizeInBytes": 54788}, "medium": {"ext": ".webp", "url": "/uploads/medium_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d.webp", "hash": "medium_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d", "mime": "image/webp", "name": "medium_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 107.44, "width": 750, "height": 501, "sizeInBytes": 107442}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d.webp", "hash": "thumbnail_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d", "mime": "image/webp", "name": "thumbnail_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 13.66, "width": 234, "height": 156, "sizeInBytes": 13658}}	beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d	.webp	image/webp	148.37	/uploads/beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_603c8f1e1d.webp	\N	local	\N	/	2026-02-23 14:00:39.446	2026-02-23 14:00:39.446	2026-02-23 14:00:39.446	1	1	\N
11	br2mbvg2l84a2vcd5zxcu1no	closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.avif	\N	\N	\N	\N	\N	\N	closeup_scarlet_macaw_from_side_view_scarlet_macaw_closeup_head_488145_3540_df6a75b1fb	.avif	image/avif	89.31	/uploads/closeup_scarlet_macaw_from_side_view_scarlet_macaw_closeup_head_488145_3540_df6a75b1fb.avif	\N	local	\N	/	2026-02-23 14:01:48.202	2026-02-23 14:01:48.202	2026-02-23 14:01:48.202	1	1	\N
12	pew8s2dcm1sdxlwsk6nc6qn4	download.jpg	\N	\N	\N	183	275	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_download_b20c276b53.jpg", "hash": "thumbnail_download_b20c276b53", "mime": "image/jpeg", "name": "thumbnail_download.jpg", "path": null, "size": 3.29, "width": 104, "height": 156, "sizeInBytes": 3290}}	download_b20c276b53	.jpg	image/jpeg	6.38	/uploads/download_b20c276b53.jpg	\N	local	\N	/	2026-02-23 14:02:47.509	2026-02-23 14:02:47.509	2026-02-23 14:02:47.51	1	1	\N
13	g915mmuszloyimonrbxcfxyo	WIN_20241209_15_50_04_Pro.jpg	\N	\N	\N	1280	720	{"large": {"ext": ".jpg", "url": "/uploads/large_WIN_20241209_15_50_04_Pro_f6cf980f2e.jpg", "hash": "large_WIN_20241209_15_50_04_Pro_f6cf980f2e", "mime": "image/jpeg", "name": "large_WIN_20241209_15_50_04_Pro.jpg", "path": null, "size": 44.07, "width": 1000, "height": 563, "sizeInBytes": 44065}, "small": {"ext": ".jpg", "url": "/uploads/small_WIN_20241209_15_50_04_Pro_f6cf980f2e.jpg", "hash": "small_WIN_20241209_15_50_04_Pro_f6cf980f2e", "mime": "image/jpeg", "name": "small_WIN_20241209_15_50_04_Pro.jpg", "path": null, "size": 16.59, "width": 500, "height": 281, "sizeInBytes": 16594}, "medium": {"ext": ".jpg", "url": "/uploads/medium_WIN_20241209_15_50_04_Pro_f6cf980f2e.jpg", "hash": "medium_WIN_20241209_15_50_04_Pro_f6cf980f2e", "mime": "image/jpeg", "name": "medium_WIN_20241209_15_50_04_Pro.jpg", "path": null, "size": 29.08, "width": 750, "height": 422, "sizeInBytes": 29081}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_WIN_20241209_15_50_04_Pro_f6cf980f2e.jpg", "hash": "thumbnail_WIN_20241209_15_50_04_Pro_f6cf980f2e", "mime": "image/jpeg", "name": "thumbnail_WIN_20241209_15_50_04_Pro.jpg", "path": null, "size": 6.15, "width": 245, "height": 138, "sizeInBytes": 6146}}	WIN_20241209_15_50_04_Pro_f6cf980f2e	.jpg	image/jpeg	32.39	/uploads/WIN_20241209_15_50_04_Pro_f6cf980f2e.jpg	\N	local	\N	/	2026-02-23 14:03:44.352	2026-02-23 14:03:44.352	2026-02-23 14:03:44.352	1	1	\N
14	h79bd3atyn1x2fqkq7gdatbh	beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp	\N	\N	\N	800	534	{"small": {"ext": ".webp", "url": "/uploads/small_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e.webp", "hash": "small_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e", "mime": "image/webp", "name": "small_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 54.79, "width": 500, "height": 334, "sizeInBytes": 54788}, "medium": {"ext": ".webp", "url": "/uploads/medium_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e.webp", "hash": "medium_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e", "mime": "image/webp", "name": "medium_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 107.44, "width": 750, "height": 501, "sizeInBytes": 107442}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e.webp", "hash": "thumbnail_beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e", "mime": "image/webp", "name": "thumbnail_beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.webp", "path": null, "size": 13.66, "width": 234, "height": 156, "sizeInBytes": 13658}}	beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e	.webp	image/webp	148.37	/uploads/beautiful_rain_forest_ang_ka_nature_trail_doi_inthanon_national_park_thailand_36703721_855646318e.webp	\N	local	\N	/	2026-02-23 14:04:50.277	2026-02-23 14:04:50.277	2026-02-23 14:04:50.277	1	1	\N
15	txdaihpbadfy59czxvwu8pwm	MainBefore.jpg	\N	\N	\N	1280	720	{"large": {"ext": ".jpg", "url": "/uploads/large_Main_Before_c6f76abe90.jpg", "hash": "large_Main_Before_c6f76abe90", "mime": "image/jpeg", "name": "large_MainBefore.jpg", "path": null, "size": 45.28, "width": 1000, "height": 563, "sizeInBytes": 45276}, "small": {"ext": ".jpg", "url": "/uploads/small_Main_Before_c6f76abe90.jpg", "hash": "small_Main_Before_c6f76abe90", "mime": "image/jpeg", "name": "small_MainBefore.jpg", "path": null, "size": 15.95, "width": 500, "height": 281, "sizeInBytes": 15952}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Main_Before_c6f76abe90.jpg", "hash": "medium_Main_Before_c6f76abe90", "mime": "image/jpeg", "name": "medium_MainBefore.jpg", "path": null, "size": 28.74, "width": 750, "height": 422, "sizeInBytes": 28739}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Main_Before_c6f76abe90.jpg", "hash": "thumbnail_Main_Before_c6f76abe90", "mime": "image/jpeg", "name": "thumbnail_MainBefore.jpg", "path": null, "size": 5.84, "width": 245, "height": 138, "sizeInBytes": 5842}}	Main_Before_c6f76abe90	.jpg	image/jpeg	46.26	/uploads/Main_Before_c6f76abe90.jpg	\N	local	\N	/	2026-02-23 14:06:22.98	2026-02-23 14:06:22.98	2026-02-23 14:06:22.981	1	1	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
15	4	1	api::post.post	coverImage	1
16	4	10	api::post.post	coverImage	1
17	5	3	api::post.post	coverImage	1
18	5	11	api::post.post	coverImage	1
21	7	5	api::post.post	coverImage	1
22	7	13	api::post.post	coverImage	1
26	8	14	api::post.post	coverImage	1
27	8	16	api::post.post	coverImage	1
32	9	17	api::post.post	coverImage	1
33	9	19	api::post.post	coverImage	1
36	10	20	api::post.post	coverImage	1
37	10	21	api::post.post	coverImage	1
40	11	22	api::post.post	coverImage	1
41	11	23	api::post.post	coverImage	1
44	12	24	api::post.post	coverImage	1
45	12	25	api::post.post	coverImage	1
48	13	26	api::post.post	coverImage	1
49	13	27	api::post.post	coverImage	1
52	14	28	api::post.post	coverImage	1
53	14	29	api::post.post	coverImage	1
56	15	30	api::post.post	coverImage	1
57	15	31	api::post.post	coverImage	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zymix1t1r8xs366khhr71lrj	English (en)	en	2026-02-20 15:34:19.437	2026-02-20 15:34:19.437	2026-02-20 15:34:19.438	\N	\N	\N
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.posts (id, document_id, title, slug, excerpt, content, featured, meta_title, meta_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	howhivf0ib5q10k1ca0v7v2y	Naslov posta 3	naslov-posta-3	Ovo je mali naslov posta 3	[{"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 3	meta description za post 3. meta description za post 3. meta description za post 3. meta description za post 3. meta description za post 3. 	2026-02-22 17:21:27.166	2026-02-23 12:11:53.823	\N	1	1	\N
3	j4mh2admzcb4i0lop3948yyb	Naslov posta 2	naslov-posta-2	Ovo je mali naslov posta 2	[{"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda. Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}]	f	meta title za post 2	meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. 	2026-02-22 17:17:38.461	2026-02-23 12:03:10.352	\N	1	1	\N
1	epcp9rgwurh7esxrejfogwuh	Naslov posta 1	naslov-posta-1	Ovo je mali naslov posta 1	[{"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	t	meta title za post 1	meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. 	2026-02-22 14:27:44.342	2026-02-23 12:03:00.711	\N	1	1	\N
10	epcp9rgwurh7esxrejfogwuh	Naslov posta 1	naslov-posta-1	Ovo je mali naslov posta 1	[{"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	t	meta title za post 1	meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. meta description za post 1. 	2026-02-22 14:27:44.342	2026-02-23 12:03:00.711	2026-02-23 12:03:00.744	1	1	\N
11	j4mh2admzcb4i0lop3948yyb	Naslov posta 2	naslov-posta-2	Ovo je mali naslov posta 2	[{"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda. Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.Content posta 2 je ovde da vidimo kako to izgleda.", "type": "text"}]}]	f	meta title za post 2	meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. meta description za post 2. 	2026-02-22 17:17:38.461	2026-02-23 12:03:10.352	2026-02-23 12:03:10.375	1	1	\N
13	howhivf0ib5q10k1ca0v7v2y	Naslov posta 3	naslov-posta-3	Ovo je mali naslov posta 3	[{"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 3 je ovde da vidimo kako to izgleda. Content posta 3 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 3	meta description za post 3. meta description za post 3. meta description za post 3. meta description za post 3. meta description za post 3. 	2026-02-22 17:21:27.166	2026-02-23 12:11:53.823	2026-02-23 12:11:53.852	1	1	\N
29	x34ok0mh3amtzyyvlsddoky2	Naslov posta 10	naslov-posta-10	Ovo je mali naslov posta 10	[{"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 10	Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. 	2026-02-23 14:05:10.529	2026-02-23 14:05:24.545	2026-02-23 14:05:24.579	1	1	\N
30	ffqmb2vcjqbhifprcc5xpp2w	Naslov posta 11	naslov-posta-11	Ovo je mali naslov posta 11	[{"type": "paragraph", "children": [{"text": "Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 11	Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. 	2026-02-23 14:06:39.026	2026-02-23 14:06:46.969	\N	1	1	\N
14	qmuiiu5k8iq0vxamgnae376d	Naslov posta 4	naslov-posta-4	Ovo je mali naslov posta 4	[{"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 4	meta description za post 4. meta description za post 4. meta description za post 4. meta description za post 4. 	2026-02-23 12:25:33.45	2026-02-23 12:25:55.966	\N	1	1	\N
16	qmuiiu5k8iq0vxamgnae376d	Naslov posta 4	naslov-posta-4	Ovo je mali naslov posta 4	[{"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 4	meta description za post 4. meta description za post 4. meta description za post 4. meta description za post 4. 	2026-02-23 12:25:33.45	2026-02-23 12:25:55.966	2026-02-23 12:25:55.991	1	1	\N
31	ffqmb2vcjqbhifprcc5xpp2w	Naslov posta 11	naslov-posta-11	Ovo je mali naslov posta 11	[{"type": "paragraph", "children": [{"text": "Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 11	Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. Content posta 11 je ovde da vidimo kako to izgleda. 	2026-02-23 14:06:39.026	2026-02-23 14:06:46.969	2026-02-23 14:06:46.993	1	1	\N
17	oagthtvdtfiknwhh8z6xs70r	Naslov posta 5	naslov-posta-5	Ovo je mali naslov posta 5	[{"type": "paragraph", "children": [{"text": "Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 5	meta description za post 5. meta description za post 5. meta description za post 5. meta description za post 5. 	2026-02-23 13:30:29.618	2026-02-23 13:31:06.294	\N	1	1	\N
19	oagthtvdtfiknwhh8z6xs70r	Naslov posta 5	naslov-posta-5	Ovo je mali naslov posta 5	[{"type": "paragraph", "children": [{"text": "Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. Content posta 5 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. Content posta 1 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 5	meta description za post 5. meta description za post 5. meta description za post 5. meta description za post 5. 	2026-02-23 13:30:29.618	2026-02-23 13:31:06.294	2026-02-23 13:31:06.315	1	1	\N
20	kgqf7d5bbtdipou1z0qjequ3	Naslov posta 6	naslov-posta-6	Ovo je mali naslov posta 6	[{"type": "paragraph", "children": [{"text": "Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 6	Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. 	2026-02-23 14:00:55.76	2026-02-23 14:01:07.39	\N	1	1	\N
21	kgqf7d5bbtdipou1z0qjequ3	Naslov posta 6	naslov-posta-6	Ovo je mali naslov posta 6	[{"type": "paragraph", "children": [{"text": "Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 6	Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. Content posta 6 je ovde da vidimo kako to izgleda. 	2026-02-23 14:00:55.76	2026-02-23 14:01:07.39	2026-02-23 14:01:07.407	1	1	\N
26	upgoybl0pob63ypny70mhq5l	Naslov posta 9	naslov-posta-9	Ovo je mali naslov posta 9	[{"type": "paragraph", "children": [{"text": "Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 9	Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. 	2026-02-23 14:04:11.814	2026-02-23 14:04:20.328	\N	1	1	\N
22	j2e9o8t2thsgyixebdrs168i	Naslov posta 7	naslov-posta-7	Ovo je mali naslov posta 7	[{"type": "paragraph", "children": [{"text": "Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 7	Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. 	2026-02-23 14:02:09.968	2026-02-23 14:02:18.345	\N	1	1	\N
23	j2e9o8t2thsgyixebdrs168i	Naslov posta 7	naslov-posta-7	Ovo je mali naslov posta 7	[{"type": "paragraph", "children": [{"text": "Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 7	Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. Content posta 7 je ovde da vidimo kako to izgleda. 	2026-02-23 14:02:09.968	2026-02-23 14:02:18.345	2026-02-23 14:02:18.37	1	1	\N
24	gm5md40b4n0abv2ttasj68da	Naslov posta 8	naslov-posta-8	Ovo je mali naslov posta 8	[{"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 8	Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. 	2026-02-23 14:03:03.344	2026-02-23 14:03:10.253	\N	1	1	\N
25	gm5md40b4n0abv2ttasj68da	Naslov posta 8	naslov-posta-8	Ovo je mali naslov posta 8	[{"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 8	Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. 	2026-02-23 14:03:03.344	2026-02-23 14:03:10.253	2026-02-23 14:03:10.28	1	1	\N
27	upgoybl0pob63ypny70mhq5l	Naslov posta 9	naslov-posta-9	Ovo je mali naslov posta 9	[{"type": "paragraph", "children": [{"text": "Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. Content posta 8 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. Content posta 4 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 9	Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. Content posta 9 je ovde da vidimo kako to izgleda. 	2026-02-23 14:04:11.814	2026-02-23 14:04:20.328	2026-02-23 14:04:20.351	1	1	\N
28	x34ok0mh3amtzyyvlsddoky2	Naslov posta 10	naslov-posta-10	Ovo je mali naslov posta 10	[{"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. ", "type": "text"}]}]	f	meta title za post 10	Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. Content posta 10 je ovde da vidimo kako to izgleda. 	2026-02-23 14:05:10.529	2026-02-23 14:05:24.545	\N	1	1	\N
\.


--
-- Data for Name: posts_site_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.posts_site_lnk (id, post_id, site_id, post_ord) FROM stdin;
1	1	3	1
3	3	3	3
5	5	3	5
10	10	3	2
11	11	3	4
13	13	3	6
14	14	3	7
16	16	3	8
19	17	1	1
20	19	1	2
21	20	3	9
22	21	3	10
23	22	3	11
24	23	3	12
25	24	3	13
26	25	3	14
27	26	3	15
28	27	3	16
29	28	3	17
30	29	3	18
31	30	3	19
32	31	3	20
\.


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.sites (id, document_id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, key) FROM stdin;
1	h7nd7jo048idcva3m7gqxaut	Prologs	2026-02-22 14:07:10.158	2026-02-22 14:07:10.158	2026-02-22 14:07:10.149	1	1	\N	prologs
2	v421yflvhpu7y1m2v9lppdh3	Aield	2026-02-22 14:07:27.444	2026-02-22 14:07:27.444	2026-02-22 14:07:27.44	1	1	\N	aield
3	gw6hmfzz9zf0q8dkhf34q0fk	Synergy	2026-02-22 14:07:38.922	2026-02-22 14:07:38.922	2026-02-22 14:07:38.918	1	1	\N	synergy
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	rnc143qz4j8hsp82lz14see5	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	e1bc111bf535923069ba5b12dec010f280d4570d55d65fe8ec5feab34dbc61c94cbb5b8aceb1dd11d59e7a274e454520ce9b761bd216f5110f338d0ba7062f32	v1:da13eba432ceb3e9fbed524266f0a3a4:709c727d4026667f78103315b56f9d0d9b52e57ef3ffa6dda511d2ec13c3435ab30e3b25ba630c81597005ff3a5a3fefa078d89cee7584ef0c0a79581a7fcfcf77ffd8239d33d0eb06239b00b70b5b9aa05276e822bb88b40fd81d28cd05c4dd662d0018f9dae1d2991e05843237a62c304124066bb51a56b37f3b608bf473f6c3474e90b140ec06f27194fef598cfaa784ca94de9e8a32363a4a53b88137904520cbde647d948a1e79dd454d2c2ed7d6aadf7b8e4d8304cfad6bcf1ab84aed95cfd58da96e6d1eb05a51193c4fdfb5a6490607a376b1fe53c14f9cd1c403baf3ea478d6ba01633995f50e13c90a216c7fa45f0a020aa329c7b706956b2acb28:2c256e7bd72294756b06e19e20363f60	\N	\N	\N	2026-02-20 15:34:20.01	2026-02-20 15:34:20.01	2026-02-20 15:34:20.01	\N	\N	\N
2	b8knl3c8ed8v2tjir9jdmf1e	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	74eb501992b25efd7f4a361d8e74a51e586ee487a6af683f1d91bbf1da651b73dfa8c598687f45c24159176c94f0a5a3a57ed4c074b6c757b5a2ae7b70008e99	v1:7ae7756128bf50bdfc6ce0615fa6eb37:fd5f93d3a233d55c4cceaad4398351488090957b38d81774245a2a92f79ba548d9b5b4c345cd3acf3299cff9b89e23710fb8e0e682ae894c3e5309dbdc945968e9c0c5748e0db96eac1d97bb7a8bfbcfb1c3788945efdc8e1496607eac02735826b866c57fdb7f55833ba655e841564aecee0e94972aa4704ac71e80b84ab79f0a9133d79208301994d6ae7d1d9fc35dab76beeac691b40ee73a35bf57d058b4cf068d319f1c2af5d163a7c81c369610092ee1527a00ecc3801d52b40379ab2d87525aa22a34ca6bff40faabc8f85312c24c909c5537c582cc58337e7b97bb86dc5880e58482294711b5db53dc97538bc64d0d7bdd109d01a0a6bae7a4f1e501:a6bbb74850d651ee448a275b53be6d28	\N	\N	\N	2026-02-20 15:34:20.019	2026-02-20 15:34:20.019	2026-02-20 15:34:20.019	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
3	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6}],[{"name":"focalPoint","size":12}],[{"name":"width","size":4},{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::post.post":{"kind":"collectionType","collectionName":"posts","info":{"singularName":"post","pluralName":"posts","displayName":"Post"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"excerpt":{"type":"string"},"content":{"type":"blocks","required":true},"coverImage":{"type":"media","multiple":false,"allowedTypes":["files","images"]},"tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","mappedBy":"posts"},"featured":{"type":"boolean"},"metaTitle":{"type":"string"},"metaDescription":{"type":"text"},"site":{"type":"relation","relation":"manyToOne","target":"api::site.site","inversedBy":"posts"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::post.post","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"posts"}}},"apiName":"post","globalId":"Post","uid":"api::post.post","modelType":"contentType","__schema__":{"collectionName":"posts","info":{"singularName":"post","pluralName":"posts","displayName":"Post"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"slug":{"type":"uid","targetField":"title","required":true},"excerpt":{"type":"string"},"content":{"type":"blocks","required":true},"coverImage":{"type":"media","multiple":false,"allowedTypes":["files","images"]},"tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","mappedBy":"posts"},"featured":{"type":"boolean"},"metaTitle":{"type":"string"},"metaDescription":{"type":"text"},"site":{"type":"relation","relation":"manyToOne","target":"api::site.site","inversedBy":"posts"}},"kind":"collectionType"},"modelName":"post","actions":{},"lifecycles":{}},"api::site.site":{"kind":"collectionType","collectionName":"sites","info":{"singularName":"site","pluralName":"sites","displayName":"Site"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"oneToMany","target":"api::post.post","mappedBy":"site"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::site.site","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"sites"}}},"apiName":"site","globalId":"Site","uid":"api::site.site","modelType":"contentType","__schema__":{"collectionName":"sites","info":{"singularName":"site","pluralName":"sites","displayName":"Site"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"oneToMany","target":"api::post.post","mappedBy":"site"}},"kind":"collectionType"},"modelName":"site","actions":{},"lifecycles":{}},"api::tag.tag":{"kind":"collectionType","collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tag"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"manyToMany","target":"api::post.post","inversedBy":"tags"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::tag.tag","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"tags"}}},"apiName":"tag","globalId":"Tag","uid":"api::tag.tag","modelType":"contentType","__schema__":{"collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tag"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name","required":true},"posts":{"type":"relation","relation":"manyToMany","target":"api::post.post","inversedBy":"tags"}},"kind":"collectionType"},"modelName":"tag","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
28	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
21	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
22	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
24	plugin_i18n_default_locale	"en"	string	\N	\N
25	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
26	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
27	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
23	plugin_upload_metrics	{"weeklySchedule":"34 34 15 * * 5","lastWeeklyUpdate":1771601688818}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::post.post	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"excerpt":{"edit":{"label":"excerpt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"excerpt","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"tags":{"edit":{"label":"tags","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"tags","searchable":false,"sortable":false}},"featured":{"edit":{"label":"featured","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featured","searchable":true,"sortable":true}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"site":{"edit":{"label":"site","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"site","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","excerpt"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"excerpt","size":6}],[{"name":"content","size":12}],[{"name":"coverImage","size":6},{"name":"tags","size":6}],[{"name":"featured","size":4},{"name":"metaTitle","size":6}],[{"name":"metaDescription","size":6},{"name":"site","size":6}]]},"uid":"api::post.post"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::tag.tag	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"posts":{"edit":{"label":"posts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"posts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","posts"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"posts","size":6}]]},"uid":"api::tag.tag"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::site.site	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"key":{"edit":{"label":"key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key","searchable":true,"sortable":true}},"posts":{"edit":{"label":"posts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"posts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"edit":[[{"name":"name","size":6},{"name":"key","size":6}],[{"name":"posts","size":6}]]},"uid":"api::site.site"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
4	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"posts","indexes":[{"name":"posts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"posts_created_by_id_fk","columns":["created_by_id"]},{"name":"posts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"posts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"posts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"excerpt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"featured","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sites","indexes":[{"name":"sites_documents_idx","columns":["document_id","locale","published_at"]},{"name":"sites_created_by_id_fk","columns":["created_by_id"]},{"name":"sites_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sites_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sites_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"tags","indexes":[{"name":"tags_documents_idx","columns":["document_id","locale","published_at"]},{"name":"tags_created_by_id_fk","columns":["created_by_id"]},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tags_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"posts_site_lnk","indexes":[{"name":"posts_site_lnk_fk","columns":["post_id"]},{"name":"posts_site_lnk_ifk","columns":["site_id"]},{"name":"posts_site_lnk_uq","columns":["post_id","site_id"],"type":"unique"},{"name":"posts_site_lnk_oifk","columns":["post_ord"]}],"foreignKeys":[{"name":"posts_site_lnk_fk","columns":["post_id"],"referencedColumns":["id"],"referencedTable":"posts","onDelete":"CASCADE"},{"name":"posts_site_lnk_ifk","columns":["site_id"],"referencedColumns":["id"],"referencedTable":"sites","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"post_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"site_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"post_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tags_posts_lnk","indexes":[{"name":"tags_posts_lnk_fk","columns":["tag_id"]},{"name":"tags_posts_lnk_ifk","columns":["post_id"]},{"name":"tags_posts_lnk_uq","columns":["tag_id","post_id"],"type":"unique"},{"name":"tags_posts_lnk_ofk","columns":["post_ord"]},{"name":"tags_posts_lnk_oifk","columns":["tag_ord"]}],"foreignKeys":[{"name":"tags_posts_lnk_fk","columns":["tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"},{"name":"tags_posts_lnk_ifk","columns":["post_id"],"referencedColumns":["id"],"referencedTable":"posts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"post_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"post_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-02-22 14:05:01.737	90d9be1a42b92ff02ae2bc6468a2afa295633cb0efa56eae801a676a8187152e
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-02-20 15:34:17.581
2	5.0.0-02-created-document-id	2026-02-20 15:34:17.62
3	5.0.0-03-created-locale	2026-02-20 15:34:17.658
4	5.0.0-04-created-published-at	2026-02-20 15:34:17.696
5	5.0.0-05-drop-slug-fields-index	2026-02-20 15:34:17.738
6	5.0.0-06-add-document-id-indexes	2026-02-20 15:34:17.775
7	core::5.0.0-discard-drafts	2026-02-20 15:34:17.813
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	buym63shln8xv2zfligkeatd	1	263e03f7e5208a18761a1dd03776e5fd	\N	a0e31951-17e0-4591-9e51-60463f6270bc	admin	2026-02-22 16:03:20.568	2026-03-24 13:07:38.584	active	session	2026-02-22 14:03:20.569	2026-02-22 14:03:20.569	2026-02-22 14:03:20.57	\N	\N	\N
1	ayoj58y381gtr60xafgqahxh	1	9796dab6427c1fcdecca7aeb8b7797cb	263e03f7e5208a18761a1dd03776e5fd	a0e31951-17e0-4591-9e51-60463f6270bc	admin	2026-02-22 15:07:38.584	2026-03-24 13:07:38.584	rotated	session	2026-02-22 13:07:38.584	2026-02-22 14:03:20.577	2026-02-22 13:07:38.584	\N	\N	\N
4	mk5mw0uihcu019zzlvfoaidj	1	9068ae7c695bd2d340d6f433c6de9694	\N	a0e31951-17e0-4591-9e51-60463f6270bc	admin	2026-02-22 20:02:50.966	2026-03-24 17:15:32.867	active	session	2026-02-22 18:02:50.969	2026-02-22 18:02:50.969	2026-02-22 18:02:50.976	\N	\N	\N
3	ohgtjdi9qkn4a6hh6dfiau34	1	b014f9dd7577d4a41eaa2d6346e8e04f	9068ae7c695bd2d340d6f433c6de9694	a0e31951-17e0-4591-9e51-60463f6270bc	admin	2026-02-22 19:15:32.867	2026-03-24 17:15:32.867	rotated	session	2026-02-22 17:15:32.867	2026-02-22 18:02:51.012	2026-02-22 17:15:32.868	\N	\N	\N
5	xleaqjrwok9fxo72y6w13fsi	1	db374c50c482433d3b3906a68f06c843	6fdc6603422f4e259acc4cff1d62a617	4578a1f8-cdee-4626-a4da-1e759b709297	admin	2026-03-09 10:58:16.612	2026-03-25 10:58:16.612	rotated	refresh	2026-02-23 10:58:16.612	2026-02-23 11:31:33.579	2026-02-23 10:58:16.613	\N	\N	\N
6	cekfrgk1xbm8xxb4wm4xj760	1	6fdc6603422f4e259acc4cff1d62a617	af9c6d826d898091f799bb48db84cf5c	4578a1f8-cdee-4626-a4da-1e759b709297	admin	2026-03-09 11:31:33.557	2026-03-25 10:58:16.612	rotated	refresh	2026-02-23 11:31:33.557	2026-02-23 12:02:40.761	2026-02-23 11:31:33.56	\N	\N	\N
7	nzjb0ohhggo9no8d08y4uf8k	1	af9c6d826d898091f799bb48db84cf5c	ccac0d7147a7237da7620b895cc0dccb	4578a1f8-cdee-4626-a4da-1e759b709297	admin	2026-03-09 12:02:40.747	2026-03-25 10:58:16.612	rotated	refresh	2026-02-23 12:02:40.747	2026-02-23 13:28:58.472	2026-02-23 12:02:40.748	\N	\N	\N
9	zl92ywi8s1puuowjdvj71ukd	1	ba9cb6e30e5c32110078feaac32db7e0	\N	4578a1f8-cdee-4626-a4da-1e759b709297	admin	2026-03-09 14:00:11.873	2026-03-25 10:58:16.612	active	refresh	2026-02-23 14:00:11.873	2026-02-23 14:00:11.873	2026-02-23 14:00:11.874	\N	\N	\N
8	qjthi39a3dpv3s07bflkfrg3	1	ccac0d7147a7237da7620b895cc0dccb	ba9cb6e30e5c32110078feaac32db7e0	4578a1f8-cdee-4626-a4da-1e759b709297	admin	2026-03-09 13:28:58.446	2026-03-25 10:58:16.612	rotated	refresh	2026-02-23 13:28:58.448	2026-02-23 14:00:11.889	2026-02-23 13:28:58.452	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.tags (id, document_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zcuxdej2o7zb6du1pcsvju8t	Trucking	trucking	2026-02-22 14:14:51.743	2026-02-22 14:14:51.743	\N	1	1	\N
2	zcuxdej2o7zb6du1pcsvju8t	Trucking	trucking	2026-02-22 14:14:51.743	2026-02-22 14:14:51.743	2026-02-22 14:14:51.756	1	1	\N
3	k14kw84ghplv705nxnt1d4ha	News	news	2026-02-22 14:15:12.27	2026-02-22 14:15:12.27	\N	1	1	\N
4	k14kw84ghplv705nxnt1d4ha	News	news	2026-02-22 14:15:12.27	2026-02-22 14:15:12.27	2026-02-22 14:15:12.284	1	1	\N
5	f09xxwcvqjkzcy4c2szyxqko	Logistics	logistics	2026-02-22 14:15:27.796	2026-02-22 14:15:27.796	\N	1	1	\N
6	f09xxwcvqjkzcy4c2szyxqko	Logistics	logistics	2026-02-22 14:15:27.796	2026-02-22 14:15:27.796	2026-02-22 14:15:27.805	1	1	\N
7	nmz3kh3b9l2epi0bcigil6q9	Transportation	transportation	2026-02-22 14:15:42.716	2026-02-22 14:15:42.716	\N	1	1	\N
8	nmz3kh3b9l2epi0bcigil6q9	Transportation	transportation	2026-02-22 14:15:42.716	2026-02-22 14:15:42.716	2026-02-22 14:15:42.726	1	1	\N
9	lrljfo7n26yufqt1dwf8wtfs	Truckdriver 	truckdriver	2026-02-22 14:15:54.717	2026-02-22 14:15:54.717	\N	1	1	\N
10	lrljfo7n26yufqt1dwf8wtfs	Truckdriver 	truckdriver	2026-02-22 14:15:54.717	2026-02-22 14:15:54.717	2026-02-22 14:15:54.727	1	1	\N
11	fmbk05di5mqdg6zo9qkdluru	FMCSA	fmcsa	2026-02-22 14:16:12.662	2026-02-22 14:16:12.662	\N	1	1	\N
12	fmbk05di5mqdg6zo9qkdluru	FMCSA	fmcsa	2026-02-22 14:16:12.662	2026-02-22 14:16:12.662	2026-02-22 14:16:12.671	1	1	\N
13	ywa3bog4d4aj6o1vc8nkecyh	Logbook	logbook	2026-02-22 14:16:31.111	2026-02-22 14:16:31.111	\N	1	1	\N
14	ywa3bog4d4aj6o1vc8nkecyh	Logbook	logbook	2026-02-22 14:16:31.111	2026-02-22 14:16:31.111	2026-02-22 14:16:31.12	1	1	\N
15	o810me1f9ggytzed4j9zsqtd	ELD	eld	2026-02-22 14:16:40.423	2026-02-22 14:16:40.423	\N	1	1	\N
16	o810me1f9ggytzed4j9zsqtd	ELD	eld	2026-02-22 14:16:40.423	2026-02-22 14:16:40.423	2026-02-22 14:16:40.433	1	1	\N
17	ppyags1hso56wwxzha8yp4u7	FleetManagement	fleet-management	2026-02-22 14:16:55.741	2026-02-22 14:16:55.741	\N	1	1	\N
18	ppyags1hso56wwxzha8yp4u7	FleetManagement	fleet-management	2026-02-22 14:16:55.741	2026-02-22 14:16:55.741	2026-02-22 14:16:55.753	1	1	\N
\.


--
-- Data for Name: tags_posts_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.tags_posts_lnk (id, tag_id, post_id, post_ord, tag_ord) FROM stdin;
45	10	21	2	1
44	9	20	2	1
1	9	1	1	1
48	4	23	3	1
20	3	1	1	3
28	3	14	2	2
47	3	22	3	1
52	2	25	1	1
22	16	10	1	2
23	4	10	1	3
21	10	10	1	1
10	13	5	1	1
25	14	13	3	1
58	16	27	3	1
59	18	27	1	2
32	16	16	2	1
33	4	16	2	2
40	11	17	1	1
41	12	19	1	1
70	2	29	2	1
71	16	29	4	2
72	18	29	2	3
73	8	29	1	4
50	1	24	1	1
19	15	1	1	2
27	15	14	2	1
54	15	26	3	1
55	17	26	1	2
62	1	28	2	1
67	15	28	4	2
68	17	28	2	3
65	7	28	1	4
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lqhaft2ij5ryigt41ijqo9ka	plugin::users-permissions.auth.logout	2026-02-20 15:34:19.491	2026-02-20 15:34:19.491	2026-02-20 15:34:19.491	\N	\N	\N
2	ma8t4yg098mqg3yxk9m266c0	plugin::users-permissions.user.me	2026-02-20 15:34:19.491	2026-02-20 15:34:19.491	2026-02-20 15:34:19.492	\N	\N	\N
3	ekcunxt9ctn5opjy5a0uohdw	plugin::users-permissions.auth.changePassword	2026-02-20 15:34:19.491	2026-02-20 15:34:19.491	2026-02-20 15:34:19.492	\N	\N	\N
4	v4hdgosq6ibnwuarm6sgxksw	plugin::users-permissions.auth.callback	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	\N	\N	\N
5	izftgy0iadz6y2izmnc0a4tu	plugin::users-permissions.auth.connect	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	\N	\N	\N
6	lsofm9sv3afs59pefgj2cmvr	plugin::users-permissions.auth.forgotPassword	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
7	hi79fk41stt4zaj0yndpxr7d	plugin::users-permissions.auth.resetPassword	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
8	kt0dauxptm7pue74cu1oej0a	plugin::users-permissions.auth.register	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
9	l5k4dhk4gb5442ft2p6427wr	plugin::users-permissions.auth.emailConfirmation	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
10	nji8r3gcth11kjm6bo66ghdm	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
11	a3a5ut9rbmi8savwv6efkhj6	plugin::users-permissions.auth.refresh	2026-02-20 15:34:19.502	2026-02-20 15:34:19.502	2026-02-20 15:34:19.503	\N	\N	\N
12	nsma4w4lrkdmjuvex4itnz2v	api::post.post.find	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	\N	\N	\N
13	paignriyodjz4virioiao3li	api::post.post.findOne	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	\N	\N	\N
14	rr00f84fxfm2rwwtwngufc87	api::site.site.find	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	\N	\N	\N
15	zh89urn64ey3xm4c2schw6lo	api::site.site.findOne	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.917	\N	\N	\N
16	i3kzepiojf3l0xq4lqvwl890	api::tag.tag.find	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.917	\N	\N	\N
17	qb6puqpofql1az5gm7fhvvqb	api::tag.tag.findOne	2026-02-22 18:07:31.916	2026-02-22 18:07:31.916	2026-02-22 18:07:31.917	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	3	1	1
3	2	1	1
4	4	2	1
5	5	2	1
6	7	2	1
7	8	2	1
8	6	2	1
9	9	2	1
10	10	2	2
11	11	2	2
12	12	2	3
13	13	2	3
14	14	2	3
15	16	2	3
16	15	2	3
17	17	2	4
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lhkeump5uviyxm8k7bmzxznl	Authenticated	Default role given to authenticated user.	authenticated	2026-02-20 15:34:19.478	2026-02-20 15:34:19.478	2026-02-20 15:34:19.479	\N	\N	\N
2	wz6ug2b6v32lvc4wzdaothly	Public	Default role given to unauthenticated user.	public	2026-02-20 15:34:19.483	2026-02-22 18:07:31.909	2026-02-20 15:34:19.484	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: eld_blog_cms_user
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 91, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 91, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.files_id_seq', 15, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 57, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.posts_id_seq', 31, true);


--
-- Name: posts_site_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.posts_site_lnk_id_seq', 32, true);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.sites_id_seq', 3, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 31, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 4, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 9, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.tags_id_seq', 18, true);


--
-- Name: tags_posts_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.tags_posts_lnk_id_seq', 77, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 17, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 17, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eld_blog_cms_user
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_site_lnk posts_site_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts_site_lnk
    ADD CONSTRAINT posts_site_lnk_pkey PRIMARY KEY (id);


--
-- Name: posts_site_lnk posts_site_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts_site_lnk
    ADD CONSTRAINT posts_site_lnk_uq UNIQUE (post_id, site_id);


--
-- Name: sites sites_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: tags_posts_lnk tags_posts_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags_posts_lnk
    ADD CONSTRAINT tags_posts_lnk_pkey PRIMARY KEY (id);


--
-- Name: tags_posts_lnk tags_posts_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags_posts_lnk
    ADD CONSTRAINT tags_posts_lnk_uq UNIQUE (tag_id, post_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: posts_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_created_by_id_fk ON public.posts USING btree (created_by_id);


--
-- Name: posts_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_documents_idx ON public.posts USING btree (document_id, locale, published_at);


--
-- Name: posts_site_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_site_lnk_fk ON public.posts_site_lnk USING btree (post_id);


--
-- Name: posts_site_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_site_lnk_ifk ON public.posts_site_lnk USING btree (site_id);


--
-- Name: posts_site_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_site_lnk_oifk ON public.posts_site_lnk USING btree (post_ord);


--
-- Name: posts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX posts_updated_by_id_fk ON public.posts USING btree (updated_by_id);


--
-- Name: sites_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX sites_created_by_id_fk ON public.sites USING btree (created_by_id);


--
-- Name: sites_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX sites_documents_idx ON public.sites USING btree (document_id, locale, published_at);


--
-- Name: sites_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX sites_updated_by_id_fk ON public.sites USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: tags_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_created_by_id_fk ON public.tags USING btree (created_by_id);


--
-- Name: tags_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_documents_idx ON public.tags USING btree (document_id, locale, published_at);


--
-- Name: tags_posts_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_posts_lnk_fk ON public.tags_posts_lnk USING btree (tag_id);


--
-- Name: tags_posts_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_posts_lnk_ifk ON public.tags_posts_lnk USING btree (post_id);


--
-- Name: tags_posts_lnk_ofk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_posts_lnk_ofk ON public.tags_posts_lnk USING btree (post_ord);


--
-- Name: tags_posts_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_posts_lnk_oifk ON public.tags_posts_lnk USING btree (tag_ord);


--
-- Name: tags_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX tags_updated_by_id_fk ON public.tags USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: eld_blog_cms_user
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: posts posts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: posts_site_lnk posts_site_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts_site_lnk
    ADD CONSTRAINT posts_site_lnk_fk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_site_lnk posts_site_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts_site_lnk
    ADD CONSTRAINT posts_site_lnk_ifk FOREIGN KEY (site_id) REFERENCES public.sites(id) ON DELETE CASCADE;


--
-- Name: posts posts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sites sites_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sites sites_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags tags_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags_posts_lnk tags_posts_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags_posts_lnk
    ADD CONSTRAINT tags_posts_lnk_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: tags_posts_lnk tags_posts_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags_posts_lnk
    ADD CONSTRAINT tags_posts_lnk_ifk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: tags tags_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: eld_blog_cms_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: eld_blog_cms_user
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict 7BWy54JYGlCHF4btXES134HEleDJ9XuCnoJDhsskFut2eQts7nl9wK9xrQI7jl2

