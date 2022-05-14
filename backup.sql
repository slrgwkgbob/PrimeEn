--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.crm_language_translate DROP CONSTRAINT language_translate_ibfk_2;
ALTER TABLE ONLY public.crm_language_translate DROP CONSTRAINT language_translate_ibfk_1;
ALTER TABLE ONLY public.crm_change_log DROP CONSTRAINT "fkUserId";
ALTER TABLE ONLY public.crm_object_skz_send_data DROP CONSTRAINT "fkObjectFileId";
ALTER TABLE ONLY public.crm_object_skz_log_discrete DROP CONSTRAINT "fkObjectFileId";
ALTER TABLE ONLY public.crm_object_skz_log_analog DROP CONSTRAINT "fkObjectFileId";
ALTER TABLE ONLY public.crm_object_skz_file DROP CONSTRAINT "fkObjectFileId";
ALTER TABLE ONLY public.crm_object_skz DROP CONSTRAINT "fkManufacturerId";
ALTER TABLE ONLY public.crm_object_skz DROP CONSTRAINT "fkLocationId";
ALTER TABLE ONLY public.crm_address DROP CONSTRAINT "fkCityId";
ALTER TABLE ONLY public.crm_token DROP CONSTRAINT crm_fk_user_token;
ALTER TABLE ONLY public.crm_profile DROP CONSTRAINT crm_fk_user_profile;
ALTER TABLE ONLY public.crm_social_account DROP CONSTRAINT crm_fk_user_account;
ALTER TABLE ONLY public.crm_auth_item DROP CONSTRAINT crm_auth_item_rule_name_fkey;
ALTER TABLE ONLY public.crm_auth_item_child DROP CONSTRAINT crm_auth_item_child_parent_fkey;
ALTER TABLE ONLY public.crm_auth_item_child DROP CONSTRAINT crm_auth_item_child_child_fkey;
ALTER TABLE ONLY public.crm_auth_assignment DROP CONSTRAINT crm_auth_assignment_item_name_fkey;
DROP INDEX public.language_translate_idx_language;
DROP INDEX public.crm_user_unique_username;
DROP INDEX public.crm_user_unique_email;
DROP INDEX public.crm_token_unique;
DROP INDEX public."crm_idx-auth_item-type";
DROP INDEX public."crm_idx-auth_assignment-user_id";
DROP INDEX public.crm_account_unique_code;
DROP INDEX public.crm_account_unique;
ALTER TABLE ONLY public.crm_user DROP CONSTRAINT crm_user_pkey;
ALTER TABLE ONLY public.crm_setting DROP CONSTRAINT crm_setting_pkey;
ALTER TABLE ONLY public.crm_setting DROP CONSTRAINT crm_setting_code_key;
ALTER TABLE ONLY public.crm_profile DROP CONSTRAINT crm_profile_pkey;
ALTER TABLE ONLY public.crm_object_skz_send_data DROP CONSTRAINT crm_object_skz_send_data_pkey;
ALTER TABLE ONLY public.crm_object_skz DROP CONSTRAINT crm_object_skz_pkey;
ALTER TABLE ONLY public.crm_object_skz DROP CONSTRAINT crm_object_skz_object_ip_key;
ALTER TABLE ONLY public.crm_object_skz_log_discrete DROP CONSTRAINT crm_object_skz_log_discrete_pkey;
ALTER TABLE ONLY public.crm_object_skz_log_discrete_archive DROP CONSTRAINT crm_object_skz_log_discrete_archive_pkey;
ALTER TABLE ONLY public.crm_object_skz_log_analog DROP CONSTRAINT crm_object_skz_log_analog_pkey;
ALTER TABLE ONLY public.crm_object_skz_log_analog_archive DROP CONSTRAINT crm_object_skz_log_analog_archive_pkey;
ALTER TABLE ONLY public.crm_object_skz_file DROP CONSTRAINT crm_object_skz_file_pkey;
ALTER TABLE ONLY public.crm_migration DROP CONSTRAINT crm_migration_pkey;
ALTER TABLE ONLY public.crm_manufacturer DROP CONSTRAINT crm_manufacturer_pkey;
ALTER TABLE ONLY public.crm_language_translate DROP CONSTRAINT crm_language_translate_pkey;
ALTER TABLE ONLY public.crm_language_source DROP CONSTRAINT crm_language_source_pkey;
ALTER TABLE ONLY public.crm_language DROP CONSTRAINT crm_language_pkey;
ALTER TABLE ONLY public.crm_file DROP CONSTRAINT crm_file_pkey;
ALTER TABLE ONLY public.crm_city DROP CONSTRAINT crm_city_pkey;
ALTER TABLE ONLY public.crm_change_log DROP CONSTRAINT crm_change_log_pkey;
ALTER TABLE ONLY public.crm_change_log_archive DROP CONSTRAINT crm_change_log_archive_pkey;
ALTER TABLE ONLY public.crm_auth_rule DROP CONSTRAINT crm_auth_rule_pkey;
ALTER TABLE ONLY public.crm_auth_item DROP CONSTRAINT crm_auth_item_pkey;
ALTER TABLE ONLY public.crm_auth_item_child DROP CONSTRAINT crm_auth_item_child_pkey;
ALTER TABLE ONLY public.crm_auth_assignment DROP CONSTRAINT crm_auth_assignment_pkey;
ALTER TABLE ONLY public.crm_address DROP CONSTRAINT crm_address_pkey;
ALTER TABLE ONLY public.crm_social_account DROP CONSTRAINT crm_account_pkey;
ALTER TABLE public.crm_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_social_account ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_setting ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_send_data ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_log_discrete_archive ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_log_discrete ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_log_analog_archive ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_log_analog ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_object_skz ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_manufacturer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_language_source ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_city ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_change_log_archive ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_change_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.crm_address ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.crm_user_id_seq;
DROP TABLE public.crm_user;
DROP TABLE public.crm_token;
DROP SEQUENCE public.crm_setting_id_seq;
DROP TABLE public.crm_setting;
DROP TABLE public.crm_profile;
DROP SEQUENCE public.crm_object_skz_send_data_id_seq;
DROP TABLE public.crm_object_skz_send_data;
DROP SEQUENCE public.crm_object_skz_log_discrete_id_seq;
DROP SEQUENCE public.crm_object_skz_log_discrete_archive_id_seq;
DROP TABLE public.crm_object_skz_log_discrete_archive;
DROP TABLE public.crm_object_skz_log_discrete;
DROP SEQUENCE public.crm_object_skz_log_analog_id_seq;
DROP SEQUENCE public.crm_object_skz_log_analog_archive_id_seq;
DROP TABLE public.crm_object_skz_log_analog_archive;
DROP TABLE public.crm_object_skz_log_analog;
DROP SEQUENCE public.crm_object_skz_id_seq;
DROP SEQUENCE public.crm_object_skz_file_id_seq;
DROP TABLE public.crm_object_skz_file;
DROP TABLE public.crm_object_skz;
DROP TABLE public.crm_migration;
DROP SEQUENCE public.crm_manufacturer_id_seq;
DROP TABLE public.crm_manufacturer;
DROP TABLE public.crm_language_translate;
DROP SEQUENCE public.crm_language_source_id_seq;
DROP TABLE public.crm_language_source;
DROP TABLE public.crm_language;
DROP SEQUENCE public.crm_file_id_seq;
DROP TABLE public.crm_file;
DROP SEQUENCE public.crm_city_id_seq;
DROP TABLE public.crm_city;
DROP SEQUENCE public.crm_change_log_id_seq;
DROP SEQUENCE public.crm_change_log_archive_id_seq;
DROP TABLE public.crm_change_log_archive;
DROP TABLE public.crm_change_log;
DROP TABLE public.crm_auth_rule;
DROP TABLE public.crm_auth_item_child;
DROP TABLE public.crm_auth_item;
DROP TABLE public.crm_auth_assignment;
DROP SEQUENCE public.crm_address_id_seq;
DROP TABLE public.crm_address;
DROP SEQUENCE public.crm_account_id_seq;
DROP TABLE public.crm_social_account;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crm_social_account; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_social_account (
    id integer NOT NULL,
    user_id integer,
    provider character varying(255) NOT NULL,
    client_id character varying(255) NOT NULL,
    data text,
    code character varying(32) DEFAULT NULL::character varying,
    created_at integer,
    email character varying(255) DEFAULT NULL::character varying,
    username character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.crm_social_account OWNER TO ide;

--
-- Name: crm_account_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_account_id_seq OWNER TO ide;

--
-- Name: crm_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_account_id_seq OWNED BY public.crm_social_account.id;


--
-- Name: crm_address; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_address (
    id integer NOT NULL,
    city_id integer NOT NULL,
    label character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_address OWNER TO ide;

--
-- Name: crm_address_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_address_id_seq OWNER TO ide;

--
-- Name: crm_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_address_id_seq OWNED BY public.crm_address.id;


--
-- Name: crm_auth_assignment; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_auth_assignment (
    item_name character varying(64) NOT NULL,
    user_id character varying(64) NOT NULL,
    created_at integer
);


ALTER TABLE public.crm_auth_assignment OWNER TO ide;

--
-- Name: crm_auth_item; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_auth_item (
    name character varying(64) NOT NULL,
    type smallint NOT NULL,
    description text,
    rule_name character varying(64),
    data bytea,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.crm_auth_item OWNER TO ide;

--
-- Name: crm_auth_item_child; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_auth_item_child (
    parent character varying(64) NOT NULL,
    child character varying(64) NOT NULL
);


ALTER TABLE public.crm_auth_item_child OWNER TO ide;

--
-- Name: crm_auth_rule; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_auth_rule (
    name character varying(64) NOT NULL,
    data bytea,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.crm_auth_rule OWNER TO ide;

--
-- Name: crm_change_log; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_change_log (
    id integer NOT NULL,
    user_id integer NOT NULL,
    ip character varying(45) DEFAULT NULL::character varying,
    event character varying(50) NOT NULL,
    class character varying(155) NOT NULL,
    before text,
    after text,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_change_log OWNER TO ide;

--
-- Name: crm_change_log_archive; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_change_log_archive (
    id integer NOT NULL,
    user_id integer NOT NULL,
    ip character varying(45) DEFAULT NULL::character varying,
    event character varying(50) NOT NULL,
    class character varying(155) NOT NULL,
    before text,
    after text,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_change_log_archive OWNER TO ide;

--
-- Name: crm_change_log_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_change_log_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_change_log_archive_id_seq OWNER TO ide;

--
-- Name: crm_change_log_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_change_log_archive_id_seq OWNED BY public.crm_change_log_archive.id;


--
-- Name: crm_change_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_change_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_change_log_id_seq OWNER TO ide;

--
-- Name: crm_change_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_change_log_id_seq OWNED BY public.crm_change_log.id;


--
-- Name: crm_city; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_city (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_city OWNER TO ide;

--
-- Name: crm_city_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_city_id_seq OWNER TO ide;

--
-- Name: crm_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_city_id_seq OWNED BY public.crm_city.id;


--
-- Name: crm_file; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_file (
    id integer NOT NULL,
    model character varying(155) NOT NULL,
    model_id integer NOT NULL,
    file_type character varying(155) NOT NULL,
    file character varying(255) NOT NULL
);


ALTER TABLE public.crm_file OWNER TO ide;

--
-- Name: crm_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_file_id_seq OWNER TO ide;

--
-- Name: crm_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_file_id_seq OWNED BY public.crm_file.id;


--
-- Name: crm_language; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_language (
    language_id character varying(5) NOT NULL,
    language character varying(3) NOT NULL,
    country character varying(3) NOT NULL,
    name character varying(32) NOT NULL,
    name_ascii character varying(32) NOT NULL,
    status smallint NOT NULL
);


ALTER TABLE public.crm_language OWNER TO ide;

--
-- Name: crm_language_source; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_language_source (
    id integer NOT NULL,
    category character varying(32) DEFAULT NULL::character varying,
    message text
);


ALTER TABLE public.crm_language_source OWNER TO ide;

--
-- Name: crm_language_source_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_language_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_language_source_id_seq OWNER TO ide;

--
-- Name: crm_language_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_language_source_id_seq OWNED BY public.crm_language_source.id;


--
-- Name: crm_language_translate; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_language_translate (
    id integer NOT NULL,
    language character varying(5) NOT NULL,
    translation text
);


ALTER TABLE public.crm_language_translate OWNER TO ide;

--
-- Name: crm_manufacturer; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_manufacturer (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_manufacturer OWNER TO ide;

--
-- Name: crm_manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_manufacturer_id_seq OWNER TO ide;

--
-- Name: crm_manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_manufacturer_id_seq OWNED BY public.crm_manufacturer.id;


--
-- Name: crm_migration; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_migration (
    version character varying(180) NOT NULL,
    apply_time integer
);


ALTER TABLE public.crm_migration OWNER TO ide;

--
-- Name: crm_object_skz; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    label_identification character varying(255) NOT NULL,
    text text NOT NULL,
    address_id integer NOT NULL,
    manufacturer_id integer NOT NULL,
    working_status smallint DEFAULT 0 NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    object_ip character varying(15) NOT NULL,
    object_port smallint NOT NULL,
    slave_id smallint NOT NULL,
    door_control smallint DEFAULT 0 NOT NULL,
    load_current smallint DEFAULT 0 NOT NULL,
    going_beyond smallint DEFAULT 0 NOT NULL,
    adjustment smallint DEFAULT 0 NOT NULL,
    disconnection smallint DEFAULT 0 NOT NULL,
    entrance smallint DEFAULT 0 NOT NULL,
    active_type character varying(50) DEFAULT 'mses'::character varying NOT NULL,
    mses_current numeric(5,2) DEFAULT 0 NOT NULL,
    mses_setting numeric(5,2) DEFAULT 0 NOT NULL,
    mses_high numeric(5,2) DEFAULT 0 NOT NULL,
    mses_low numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    mains_voltage numeric(5,2) DEFAULT 0 NOT NULL,
    temperature numeric(5,2) DEFAULT 0 NOT NULL,
    kvt_h_in integer DEFAULT 0 NOT NULL,
    kvt_h_out integer DEFAULT 0 NOT NULL,
    time_working integer DEFAULT 0 NOT NULL,
    time_protection integer DEFAULT 0 NOT NULL,
    query_interval integer DEFAULT 1 NOT NULL,
    stabilization smallint DEFAULT 0 NOT NULL,
    discrete_input_1 smallint DEFAULT 0 NOT NULL,
    discrete_input_2 smallint DEFAULT 0 NOT NULL,
    discrete_input_3 smallint DEFAULT 0 NOT NULL,
    api_update_at timestamp(0) without time zone NOT NULL,
    google_maps_lat numeric(11,8) DEFAULT NULL::numeric,
    google_maps_lng numeric(11,8) DEFAULT NULL::numeric,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz OWNER TO ide;

--
-- Name: crm_object_skz_file; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_file (
    id integer NOT NULL,
    object_id integer NOT NULL,
    label character varying(255) NOT NULL,
    file_type character varying(50) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz_file OWNER TO ide;

--
-- Name: crm_object_skz_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_file_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_file_id_seq OWNED BY public.crm_object_skz_file.id;


--
-- Name: crm_object_skz_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_id_seq OWNED BY public.crm_object_skz.id;


--
-- Name: crm_object_skz_log_analog; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_log_analog (
    id integer NOT NULL,
    object_id integer NOT NULL,
    active_type character varying(50) NOT NULL,
    mses_current numeric(5,2) DEFAULT 0 NOT NULL,
    mses_setting numeric(5,2) DEFAULT 0 NOT NULL,
    mses_high numeric(5,2) DEFAULT 0 NOT NULL,
    mses_low numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    mains_voltage numeric(5,2) DEFAULT 0 NOT NULL,
    temperature numeric(5,2) DEFAULT 0 NOT NULL,
    kvt_h_in integer NOT NULL,
    kvt_h_out integer NOT NULL,
    time_working integer NOT NULL,
    time_protection integer NOT NULL,
    query_interval integer NOT NULL,
    stabilization smallint NOT NULL,
    discrete_input_1 smallint DEFAULT 0 NOT NULL,
    discrete_input_2 smallint DEFAULT 0 NOT NULL,
    discrete_input_3 smallint DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz_log_analog OWNER TO ide;

--
-- Name: crm_object_skz_log_analog_archive; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_log_analog_archive (
    id integer NOT NULL,
    object_id integer NOT NULL,
    active_type character varying(50) NOT NULL,
    mses_current numeric(5,2) DEFAULT 0 NOT NULL,
    mses_setting numeric(5,2) DEFAULT 0 NOT NULL,
    mses_high numeric(5,2) DEFAULT 0 NOT NULL,
    mses_low numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    u_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_current numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_setting numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_high numeric(5,2) DEFAULT 0 NOT NULL,
    i_skz_low numeric(5,2) DEFAULT 0 NOT NULL,
    mains_voltage numeric(5,2) DEFAULT 0 NOT NULL,
    temperature numeric(5,2) DEFAULT 0 NOT NULL,
    kvt_h_in integer NOT NULL,
    kvt_h_out integer NOT NULL,
    time_working integer NOT NULL,
    time_protection integer NOT NULL,
    query_interval integer NOT NULL,
    stabilization smallint NOT NULL,
    discrete_input_1 smallint DEFAULT 0 NOT NULL,
    discrete_input_2 smallint DEFAULT 0 NOT NULL,
    discrete_input_3 smallint DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz_log_analog_archive OWNER TO ide;

--
-- Name: crm_object_skz_log_analog_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_log_analog_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_log_analog_archive_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_log_analog_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_log_analog_archive_id_seq OWNED BY public.crm_object_skz_log_analog_archive.id;


--
-- Name: crm_object_skz_log_analog_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_log_analog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_log_analog_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_log_analog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_log_analog_id_seq OWNED BY public.crm_object_skz_log_analog.id;


--
-- Name: crm_object_skz_log_discrete; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_log_discrete (
    id integer NOT NULL,
    object_id integer NOT NULL,
    current_event character varying(50) NOT NULL,
    door_control smallint NOT NULL,
    load_current smallint NOT NULL,
    going_beyond smallint NOT NULL,
    adjustment smallint NOT NULL,
    disconnection smallint NOT NULL,
    entrance smallint NOT NULL,
    comment text,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz_log_discrete OWNER TO ide;

--
-- Name: crm_object_skz_log_discrete_archive; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_log_discrete_archive (
    id integer NOT NULL,
    object_id integer NOT NULL,
    current_event character varying(50) NOT NULL,
    door_control smallint NOT NULL,
    load_current smallint NOT NULL,
    going_beyond smallint NOT NULL,
    adjustment smallint NOT NULL,
    disconnection smallint NOT NULL,
    entrance smallint NOT NULL,
    comment text,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_object_skz_log_discrete_archive OWNER TO ide;

--
-- Name: crm_object_skz_log_discrete_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_log_discrete_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_log_discrete_archive_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_log_discrete_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_log_discrete_archive_id_seq OWNED BY public.crm_object_skz_log_discrete_archive.id;


--
-- Name: crm_object_skz_log_discrete_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_log_discrete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_log_discrete_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_log_discrete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_log_discrete_id_seq OWNED BY public.crm_object_skz_log_discrete.id;


--
-- Name: crm_object_skz_send_data; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_object_skz_send_data (
    id integer NOT NULL,
    object_id integer NOT NULL,
    active_type character varying(50) DEFAULT NULL::character varying,
    setting numeric(5,2) DEFAULT NULL::numeric,
    high numeric(5,2) DEFAULT NULL::numeric,
    low numeric(5,2) DEFAULT NULL::numeric,
    query_interval integer,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    setting_type character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.crm_object_skz_send_data OWNER TO ide;

--
-- Name: crm_object_skz_send_data_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_object_skz_send_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_object_skz_send_data_id_seq OWNER TO ide;

--
-- Name: crm_object_skz_send_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_object_skz_send_data_id_seq OWNED BY public.crm_object_skz_send_data.id;


--
-- Name: crm_profile; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_profile (
    user_id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    public_email character varying(255) DEFAULT NULL::character varying,
    gravatar_email character varying(255) DEFAULT NULL::character varying,
    gravatar_id character varying(32) DEFAULT NULL::character varying,
    location character varying(255) DEFAULT NULL::character varying,
    website character varying(255) DEFAULT NULL::character varying,
    bio text,
    timezone character varying(40) DEFAULT NULL::character varying
);


ALTER TABLE public.crm_profile OWNER TO ide;

--
-- Name: crm_setting; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_setting (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    code character varying(100) NOT NULL,
    value_data text,
    value_type character varying(50) DEFAULT 'input'::character varying NOT NULL,
    autoload smallint DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crm_setting OWNER TO ide;

--
-- Name: crm_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_setting_id_seq OWNER TO ide;

--
-- Name: crm_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_setting_id_seq OWNED BY public.crm_setting.id;


--
-- Name: crm_token; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_token (
    user_id integer NOT NULL,
    code character varying(32) NOT NULL,
    created_at integer NOT NULL,
    type smallint NOT NULL
);


ALTER TABLE public.crm_token OWNER TO ide;

--
-- Name: crm_user; Type: TABLE; Schema: public; Owner: ide
--

CREATE TABLE public.crm_user (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(255) NOT NULL,
    password_hash character varying(60) NOT NULL,
    auth_key character varying(32) NOT NULL,
    confirmed_at integer,
    unconfirmed_email character varying(255) DEFAULT NULL::character varying,
    blocked_at integer,
    registration_ip character varying(45),
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    last_login_at integer,
    access_token character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.crm_user OWNER TO ide;

--
-- Name: crm_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ide
--

CREATE SEQUENCE public.crm_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_user_id_seq OWNER TO ide;

--
-- Name: crm_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ide
--

ALTER SEQUENCE public.crm_user_id_seq OWNED BY public.crm_user.id;


--
-- Name: crm_address id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_address ALTER COLUMN id SET DEFAULT nextval('public.crm_address_id_seq'::regclass);


--
-- Name: crm_change_log id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_change_log ALTER COLUMN id SET DEFAULT nextval('public.crm_change_log_id_seq'::regclass);


--
-- Name: crm_change_log_archive id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_change_log_archive ALTER COLUMN id SET DEFAULT nextval('public.crm_change_log_archive_id_seq'::regclass);


--
-- Name: crm_city id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_city ALTER COLUMN id SET DEFAULT nextval('public.crm_city_id_seq'::regclass);


--
-- Name: crm_file id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_file ALTER COLUMN id SET DEFAULT nextval('public.crm_file_id_seq'::regclass);


--
-- Name: crm_language_source id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language_source ALTER COLUMN id SET DEFAULT nextval('public.crm_language_source_id_seq'::regclass);


--
-- Name: crm_manufacturer id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_manufacturer ALTER COLUMN id SET DEFAULT nextval('public.crm_manufacturer_id_seq'::regclass);


--
-- Name: crm_object_skz id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_id_seq'::regclass);


--
-- Name: crm_object_skz_file id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_file ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_file_id_seq'::regclass);


--
-- Name: crm_object_skz_log_analog id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_analog ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_log_analog_id_seq'::regclass);


--
-- Name: crm_object_skz_log_analog_archive id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_analog_archive ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_log_analog_archive_id_seq'::regclass);


--
-- Name: crm_object_skz_log_discrete id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_discrete ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_log_discrete_id_seq'::regclass);


--
-- Name: crm_object_skz_log_discrete_archive id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_discrete_archive ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_log_discrete_archive_id_seq'::regclass);


--
-- Name: crm_object_skz_send_data id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_send_data ALTER COLUMN id SET DEFAULT nextval('public.crm_object_skz_send_data_id_seq'::regclass);


--
-- Name: crm_setting id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_setting ALTER COLUMN id SET DEFAULT nextval('public.crm_setting_id_seq'::regclass);


--
-- Name: crm_social_account id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_social_account ALTER COLUMN id SET DEFAULT nextval('public.crm_account_id_seq'::regclass);


--
-- Name: crm_user id; Type: DEFAULT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_user ALTER COLUMN id SET DEFAULT nextval('public.crm_user_id_seq'::regclass);


--
-- Data for Name: crm_address; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_address (id, city_id, label, created_at, updated_at) FROM stdin;
3	3	Перон F	2021-02-06 16:06:59	2021-02-06 16:06:59
4	3	Склад ЦЗС	2021-02-06 16:07:10	2021-02-06 16:07:10
5	3	Перон G.1	2021-02-06 16:07:22	2021-02-06 16:07:22
6	3	Тепломережа-1	2021-02-06 16:07:33	2021-02-06 16:07:33
7	3	Міжскладський паливопровід	2021-02-06 16:07:46	2021-02-06 16:07:46
8	3	Склад ПММ	2021-02-06 16:07:58	2021-02-06 16:07:58
9	3	Тепломережа-2	2021-02-06 16:08:09	2021-02-06 16:08:09
10	3	Тепломережа-3	2021-02-06 16:08:21	2021-02-06 16:08:21
\.


--
-- Data for Name: crm_auth_assignment; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_auth_assignment (item_name, user_id, created_at) FROM stdin;
root	1	\N
view admin panel	2	1605614885
All Access Control	3	1606550556
root	4	1613316991
\.


--
-- Data for Name: crm_auth_item; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_auth_item (name, type, description, rule_name, data, created_at, updated_at) FROM stdin;
root	1	root access to all controller and actions	\N	\N	\N	\N
All Access Control	2	root access to all controller and actions	\N	\N	1596898271	1597596790
create	2	create All	\N	\N	1597596058	1597596058
delete	2	delete All	\N	\N	1597596084	1597596084
update	2	update All	\N	\N	1597596042	1597596042
view	2	view All	\N	\N	1597596018	1597596018
view admin panel	2	View Admin Panel	\N	\N	1597773894	1597773894
All Access address	2	All access to address	\N	\N	1612623206	1612623206
view address	2	Can view address	\N	\N	1612623206	1612623206
create address	2	Can create address	\N	\N	1612623206	1612623206
update address	2	Can update address	\N	\N	1612623206	1612623206
delete address	2	Can delete address	\N	\N	1612623206	1612623206
All Access change-log	2	All access to change-log	\N	\N	1612623206	1612623206
view change-log	2	Can view change-log	\N	\N	1612623206	1612623206
create change-log	2	Can create change-log	\N	\N	1612623206	1612623206
update change-log	2	Can update change-log	\N	\N	1612623206	1612623206
delete change-log	2	Can delete change-log	\N	\N	1612623206	1612623206
All Access city	2	All access to city	\N	\N	1612623206	1612623206
view city	2	Can view city	\N	\N	1612623206	1612623206
create city	2	Can create city	\N	\N	1612623206	1612623206
update city	2	Can update city	\N	\N	1612623206	1612623206
delete city	2	Can delete city	\N	\N	1612623206	1612623206
All Access default	2	All access to default	\N	\N	1612623206	1612623206
view default	2	Can view default	\N	\N	1612623206	1612623206
create default	2	Can create default	\N	\N	1612623206	1612623206
update default	2	Can update default	\N	\N	1612623206	1612623206
delete default	2	Can delete default	\N	\N	1612623206	1612623206
All Access manufacturer	2	All access to manufacturer	\N	\N	1612623206	1612623206
view manufacturer	2	Can view manufacturer	\N	\N	1612623206	1612623206
create manufacturer	2	Can create manufacturer	\N	\N	1612623206	1612623206
update manufacturer	2	Can update manufacturer	\N	\N	1612623206	1612623206
delete manufacturer	2	Can delete manufacturer	\N	\N	1612623206	1612623206
All Access object-skz	2	All access to object-skz	\N	\N	1612623206	1612623206
view object-skz	2	Can view object-skz	\N	\N	1612623206	1612623206
create object-skz	2	Can create object-skz	\N	\N	1612623206	1612623206
update object-skz	2	Can update object-skz	\N	\N	1612623206	1612623206
delete object-skz	2	Can delete object-skz	\N	\N	1612623206	1612623206
All Access object-skz-file	2	All access to object-skz-file	\N	\N	1612623206	1612623206
view object-skz-file	2	Can view object-skz-file	\N	\N	1612623206	1612623206
create object-skz-file	2	Can create object-skz-file	\N	\N	1612623206	1612623206
update object-skz-file	2	Can update object-skz-file	\N	\N	1612623206	1612623206
delete object-skz-file	2	Can delete object-skz-file	\N	\N	1612623206	1612623206
All Access setting	2	All access to setting	\N	\N	1612623206	1612623206
view setting	2	Can view setting	\N	\N	1612623206	1612623206
create setting	2	Can create setting	\N	\N	1612623206	1612623206
update setting	2	Can update setting	\N	\N	1612623206	1612623206
delete setting	2	Can delete setting	\N	\N	1612623206	1612623206
All Access object	2	All access to object	\N	\N	1612623206	1612623206
view object	2	Can view object	\N	\N	1612623206	1612623206
create object	2	Can create object	\N	\N	1612623206	1612623206
update object	2	Can update object	\N	\N	1612623206	1612623206
delete object	2	Can delete object	\N	\N	1612623206	1612623206
\.


--
-- Data for Name: crm_auth_item_child; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_auth_item_child (parent, child) FROM stdin;
root	All Access Control
All Access Control	create
All Access Control	delete
All Access Control	update
All Access Control	view
All Access address	view address
All Access address	create address
All Access address	update address
All Access address	delete address
All Access change-log	view change-log
All Access change-log	create change-log
All Access change-log	update change-log
All Access change-log	delete change-log
All Access city	view city
All Access city	create city
All Access city	update city
All Access city	delete city
All Access default	view default
All Access default	create default
All Access default	update default
All Access default	delete default
All Access manufacturer	view manufacturer
All Access manufacturer	create manufacturer
All Access manufacturer	update manufacturer
All Access manufacturer	delete manufacturer
All Access object-skz	view object-skz
All Access object-skz	create object-skz
All Access object-skz	update object-skz
All Access object-skz	delete object-skz
All Access object-skz-file	view object-skz-file
All Access object-skz-file	create object-skz-file
All Access object-skz-file	update object-skz-file
All Access object-skz-file	delete object-skz-file
All Access setting	view setting
All Access setting	create setting
All Access setting	update setting
All Access setting	delete setting
All Access object	view object
All Access object	create object
All Access object	update object
All Access object	delete object
\.


--
-- Data for Name: crm_auth_rule; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_auth_rule (name, data, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_change_log; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_change_log (id, user_id, ip, event, class, before, after, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_change_log_archive; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_change_log_archive (id, user_id, ip, event, class, before, after, created_at, updated_at) FROM stdin;
1	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:15</p><p><b>label</b>:test</p><p><b>label_identification</b>:546DSF4-5345F-G3564</p><p><b>text</b>:<p>test</p>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:1</p><p><b>published</b>:1</p><p><b>object_ip</b>:91.145.227.182</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:2</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-07 11:10:51</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-07 11:10:51</p><p><b>updated_at</b>:2021-02-07 11:10:51</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
2	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:15</p><p><b>label</b>:test</p><p><b>label_identification</b>:546DSF4-5345F-G3564</p><p><b>text</b>:<p>test</p>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:1</p><p><b>published</b>:1</p><p><b>object_ip</b>:91.145.227.182</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:2</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-07 11:10:51</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-07 11:10:51</p><p><b>updated_at</b>:2021-02-07 11:10:51</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
3	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:10</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-3</p><p><b>created_at</b>:2021-02-06 16:08:20</p><p><b>updated_at</b>:2021-02-06 16:08:20</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
4	1	127.0.0.1	afterInsert	app\\models\\City	\N	<p><b>id</b>:3</p><p><b>label</b>:ДП МА «Бориспіль»</p><p><b>created_at</b>:2021-02-06 16:06:42</p><p><b>updated_at</b>:2021-02-06 16:06:42</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
5	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:3</p><p><b>city_id</b>:3</p><p><b>label</b>:Перон F</p><p><b>created_at</b>:2021-02-06 16:06:59</p><p><b>updated_at</b>:2021-02-06 16:06:59</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
6	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:4</p><p><b>city_id</b>:3</p><p><b>label</b>:Склад ЦЗС</p><p><b>created_at</b>:2021-02-06 16:07:10</p><p><b>updated_at</b>:2021-02-06 16:07:10</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
7	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:5</p><p><b>city_id</b>:3</p><p><b>label</b>:Перон G.1</p><p><b>created_at</b>:2021-02-06 16:07:21</p><p><b>updated_at</b>:2021-02-06 16:07:21</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
8	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:6</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-1</p><p><b>created_at</b>:2021-02-06 16:07:32</p><p><b>updated_at</b>:2021-02-06 16:07:32</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
9	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:7</p><p><b>city_id</b>:3</p><p><b>label</b>:Міжскладський паливопровід</p><p><b>created_at</b>:2021-02-06 16:07:46</p><p><b>updated_at</b>:2021-02-06 16:07:46</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
10	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:8</p><p><b>city_id</b>:3</p><p><b>label</b>:Склад ПММ</p><p><b>created_at</b>:2021-02-06 16:07:58</p><p><b>updated_at</b>:2021-02-06 16:07:58</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
11	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:9</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-2</p><p><b>created_at</b>:2021-02-06 16:08:09</p><p><b>updated_at</b>:2021-02-06 16:08:09</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
12	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:7</p><p><b>label</b>:УКЗ №4</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон F</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №4</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1436</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 65 13</p>\r\n\r\n\t\t\t<p>91.145.220.80</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.220.80</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:11:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:11:06</p><p><b>updated_at</b>:2021-02-06 16:11:06</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
13	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:7</p><p><b>label</b>:УКЗ №4</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон F</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №4</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1436</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 65 13</p>\r\n\r\n\t\t\t<p>91.145.220.80</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.220.80</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:11:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:11:06</p><p><b>updated_at</b>:2021-02-06 16:11:06</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
14	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:8</p><p><b>label</b>:УКЗ №5</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ЦЗС</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №5</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 23</p>\r\n\r\n\t\t\t<p>91.145.255.247</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:4</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.255.247</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:12:53</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:12:53</p><p><b>updated_at</b>:2021-02-06 16:12:53</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
15	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:8</p><p><b>label</b>:УКЗ №5</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ЦЗС</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №5</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 23</p>\r\n\r\n\t\t\t<p>91.145.255.247</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:4</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.255.247</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:12:53</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:12:53</p><p><b>updated_at</b>:2021-02-06 16:12:53</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
16	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:9</p><p><b>label</b>:УКЗ №6</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон G.1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №6</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 67 45</p>\r\n\r\n\t\t\t<p>91.145.241.127</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:5</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.241.127</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:14:14</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:14:14</p><p><b>updated_at</b>:2021-02-06 16:14:14</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
17	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:9</p><p><b>label</b>:УКЗ №6</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон G.1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №6</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 67 45</p>\r\n\r\n\t\t\t<p>91.145.241.127</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:5</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.241.127</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:14:14</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:14:14</p><p><b>updated_at</b>:2021-02-06 16:14:14</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
18	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2084</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:11:02</p><p><b>updated_at</b>:2021-02-06 18:11:02</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
19	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:10</p><p><b>label</b>:УКЗ №7</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №7</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1430</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073 213 71 62</p>\r\n\r\n\t\t\t<p>91.145.239.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:6</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.239.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:17:47</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:17:47</p><p><b>updated_at</b>:2021-02-06 16:17:47</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
20	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:10</p><p><b>label</b>:УКЗ №7</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №7</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1430</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073 213 71 62</p>\r\n\r\n\t\t\t<p>91.145.239.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:6</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.239.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:17:47</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:17:47</p><p><b>updated_at</b>:2021-02-06 16:17:47</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
21	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:11</p><p><b>label</b>:УКЗ №8</p><p><b>label_identification</b>:1434</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Міжскладський паливопровід</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №8</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1434</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 90</p>\r\n\r\n\t\t\t<p>91.145.222.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:7</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.222.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:20:39</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:20:39</p><p><b>updated_at</b>:2021-02-06 16:20:39</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
22	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:11</p><p><b>label</b>:УКЗ №8</p><p><b>label_identification</b>:1434</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Міжскладський паливопровід</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №8</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1434</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 90</p>\r\n\r\n\t\t\t<p>91.145.222.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:7</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.222.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:20:39</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:20:39</p><p><b>updated_at</b>:2021-02-06 16:20:39</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
23	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:12</p><p><b>label</b>:УКЗ №9</p><p><b>label_identification</b>:1433</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ПММ</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №9</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1433</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073&nbsp;213 72 17</p>\r\n\r\n\t\t\t<p>91.145.212.71</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:8</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.212.71</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:41:41</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:41:41</p><p><b>updated_at</b>:2021-02-06 16:41:41</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
24	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:12</p><p><b>label</b>:УКЗ №9</p><p><b>label_identification</b>:1433</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ПММ</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №9</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1433</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073&nbsp;213 72 17</p>\r\n\r\n\t\t\t<p>91.145.212.71</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:8</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.212.71</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:41:41</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:41:41</p><p><b>updated_at</b>:2021-02-06 16:41:41</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
25	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>working_status</b>:0</p>	<p><b>ID</b>:8</p><p><b>working_status</b>:1</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
26	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:13</p><p><b>label</b>:УКЗ №10</p><p><b>label_identification</b>:1431</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №10</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1431</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 64 65</p>\r\n\r\n\t\t\t<p>91.145.192.252</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:9</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.192.252</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:45:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:45:06</p><p><b>updated_at</b>:2021-02-06 16:45:06</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
27	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:13</p><p><b>label</b>:УКЗ №10</p><p><b>label_identification</b>:1431</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №10</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1431</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 64 65</p>\r\n\r\n\t\t\t<p>91.145.192.252</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:9</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.192.252</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:45:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:45:06</p><p><b>updated_at</b>:2021-02-06 16:45:06</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
28	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:14</p><p><b>label</b>:УКЗ №11</p><p><b>label_identification</b>:1432</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-3</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №11</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1432</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 66 91</p>\r\n\r\n\t\t\t<p>91.145.224.30</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:10</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.224.30</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:47:15</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:47:15</p><p><b>updated_at</b>:2021-02-06 16:47:15</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
29	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:14</p><p><b>label</b>:УКЗ №11</p><p><b>label_identification</b>:1432</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-3</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №11</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1432</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 66 91</p>\r\n\r\n\t\t\t<p>91.145.224.30</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:10</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.224.30</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:47:15</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:47:15</p><p><b>updated_at</b>:2021-02-06 16:47:15</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
30	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
31	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogDiscrete	\N	<p><b>id</b>:42</p><p><b>object_id</b>:8</p><p><b>current_event</b>:door_control</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>comment</b>:</p><p><b>created_at</b>:2021-02-06 18:08:45</p><p><b>updated_at</b>:2021-02-06 18:08:45</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
32	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2082</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:08:45</p><p><b>updated_at</b>:2021-02-06 18:08:45</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
33	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
34	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
35	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2083</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:10:05</p><p><b>updated_at</b>:2021-02-06 18:10:05</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
36	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
37	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>working_status</b>:0</p>	<p><b>ID</b>:8</p><p><b>working_status</b>:1</p>	2021-02-07 13:09:26	2021-02-07 13:09:26
38	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:15</p><p><b>label</b>:test</p><p><b>label_identification</b>:546DSF4-5345F-G3564</p><p><b>text</b>:<p>test</p>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:1</p><p><b>published</b>:1</p><p><b>object_ip</b>:91.145.227.182</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:2</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-07 11:10:51</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-07 11:10:51</p><p><b>updated_at</b>:2021-02-07 11:10:51</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
39	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:15</p><p><b>label</b>:test</p><p><b>label_identification</b>:546DSF4-5345F-G3564</p><p><b>text</b>:<p>test</p>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:1</p><p><b>published</b>:1</p><p><b>object_ip</b>:91.145.227.182</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:2</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-07 11:10:51</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-07 11:10:51</p><p><b>updated_at</b>:2021-02-07 11:10:51</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
40	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:10</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-3</p><p><b>created_at</b>:2021-02-06 16:08:20</p><p><b>updated_at</b>:2021-02-06 16:08:20</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
41	1	127.0.0.1	afterInsert	app\\models\\City	\N	<p><b>id</b>:3</p><p><b>label</b>:ДП МА «Бориспіль»</p><p><b>created_at</b>:2021-02-06 16:06:42</p><p><b>updated_at</b>:2021-02-06 16:06:42</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
42	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:3</p><p><b>city_id</b>:3</p><p><b>label</b>:Перон F</p><p><b>created_at</b>:2021-02-06 16:06:59</p><p><b>updated_at</b>:2021-02-06 16:06:59</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
43	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:4</p><p><b>city_id</b>:3</p><p><b>label</b>:Склад ЦЗС</p><p><b>created_at</b>:2021-02-06 16:07:10</p><p><b>updated_at</b>:2021-02-06 16:07:10</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
44	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:5</p><p><b>city_id</b>:3</p><p><b>label</b>:Перон G.1</p><p><b>created_at</b>:2021-02-06 16:07:21</p><p><b>updated_at</b>:2021-02-06 16:07:21</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
45	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:6</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-1</p><p><b>created_at</b>:2021-02-06 16:07:32</p><p><b>updated_at</b>:2021-02-06 16:07:32</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
46	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:7</p><p><b>city_id</b>:3</p><p><b>label</b>:Міжскладський паливопровід</p><p><b>created_at</b>:2021-02-06 16:07:46</p><p><b>updated_at</b>:2021-02-06 16:07:46</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
47	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:8</p><p><b>city_id</b>:3</p><p><b>label</b>:Склад ПММ</p><p><b>created_at</b>:2021-02-06 16:07:58</p><p><b>updated_at</b>:2021-02-06 16:07:58</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
48	1	127.0.0.1	afterInsert	app\\models\\Address	\N	<p><b>id</b>:9</p><p><b>city_id</b>:3</p><p><b>label</b>:Тепломережа-2</p><p><b>created_at</b>:2021-02-06 16:08:09</p><p><b>updated_at</b>:2021-02-06 16:08:09</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
49	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:7</p><p><b>label</b>:УКЗ №4</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон F</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №4</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1436</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 65 13</p>\r\n\r\n\t\t\t<p>91.145.220.80</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.220.80</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:11:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:11:06</p><p><b>updated_at</b>:2021-02-06 16:11:06</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
50	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:7</p><p><b>label</b>:УКЗ №4</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон F</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №4</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1436</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 65 13</p>\r\n\r\n\t\t\t<p>91.145.220.80</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:3</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.220.80</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:11:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:11:06</p><p><b>updated_at</b>:2021-02-06 16:11:06</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
51	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:8</p><p><b>label</b>:УКЗ №5</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ЦЗС</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №5</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 23</p>\r\n\r\n\t\t\t<p>91.145.255.247</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:4</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.255.247</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:12:53</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:12:53</p><p><b>updated_at</b>:2021-02-06 16:12:53</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
52	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:8</p><p><b>label</b>:УКЗ №5</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ЦЗС</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №5</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 23</p>\r\n\r\n\t\t\t<p>91.145.255.247</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:4</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.255.247</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:12:53</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:12:53</p><p><b>updated_at</b>:2021-02-06 16:12:53</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
53	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:9</p><p><b>label</b>:УКЗ №6</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон G.1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №6</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 67 45</p>\r\n\r\n\t\t\t<p>91.145.241.127</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:5</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.241.127</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:14:14</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:14:14</p><p><b>updated_at</b>:2021-02-06 16:14:14</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
54	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:9</p><p><b>label</b>:УКЗ №6</p><p><b>label_identification</b>:іПАУ-1,2</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон G.1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №6</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 67 45</p>\r\n\r\n\t\t\t<p>91.145.241.127</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:5</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.241.127</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:14:14</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:14:14</p><p><b>updated_at</b>:2021-02-06 16:14:14</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
55	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2084</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:11:02</p><p><b>updated_at</b>:2021-02-06 18:11:02</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
56	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:10</p><p><b>label</b>:УКЗ №7</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №7</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1430</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073 213 71 62</p>\r\n\r\n\t\t\t<p>91.145.239.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:6</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.239.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:17:47</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:17:47</p><p><b>updated_at</b>:2021-02-06 16:17:47</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
57	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:10</p><p><b>label</b>:УКЗ №7</p><p><b>label_identification</b>:іПАУ-3,0</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №7</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1430</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073 213 71 62</p>\r\n\r\n\t\t\t<p>91.145.239.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:6</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.239.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:17:47</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:17:47</p><p><b>updated_at</b>:2021-02-06 16:17:47</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
58	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:11</p><p><b>label</b>:УКЗ №8</p><p><b>label_identification</b>:1434</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Міжскладський паливопровід</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №8</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1434</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 90</p>\r\n\r\n\t\t\t<p>91.145.222.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:7</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.222.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:20:39</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:20:39</p><p><b>updated_at</b>:2021-02-06 16:20:39</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
59	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:11</p><p><b>label</b>:УКЗ №8</p><p><b>label_identification</b>:1434</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Міжскладський паливопровід</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №8</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1434</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 90</p>\r\n\r\n\t\t\t<p>91.145.222.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:7</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.222.106</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:20:39</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:20:39</p><p><b>updated_at</b>:2021-02-06 16:20:39</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
60	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:12</p><p><b>label</b>:УКЗ №9</p><p><b>label_identification</b>:1433</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ПММ</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №9</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1433</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073&nbsp;213 72 17</p>\r\n\r\n\t\t\t<p>91.145.212.71</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:8</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.212.71</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:41:41</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:41:41</p><p><b>updated_at</b>:2021-02-06 16:41:41</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
61	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:12</p><p><b>label</b>:УКЗ №9</p><p><b>label_identification</b>:1433</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ПММ</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №9</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1433</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073&nbsp;213 72 17</p>\r\n\r\n\t\t\t<p>91.145.212.71</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:8</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.212.71</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:41:41</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:41:41</p><p><b>updated_at</b>:2021-02-06 16:41:41</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
62	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>working_status</b>:0</p>	<p><b>ID</b>:8</p><p><b>working_status</b>:1</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
63	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:13</p><p><b>label</b>:УКЗ №10</p><p><b>label_identification</b>:1431</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №10</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1431</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 64 65</p>\r\n\r\n\t\t\t<p>91.145.192.252</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:9</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.192.252</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:45:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:45:06</p><p><b>updated_at</b>:2021-02-06 16:45:06</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
64	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:13</p><p><b>label</b>:УКЗ №10</p><p><b>label_identification</b>:1431</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №10</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1431</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 64 65</p>\r\n\r\n\t\t\t<p>91.145.192.252</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:9</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.192.252</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:45:06</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:45:06</p><p><b>updated_at</b>:2021-02-06 16:45:06</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
65	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:14</p><p><b>label</b>:УКЗ №11</p><p><b>label_identification</b>:1432</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-3</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №11</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1432</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 66 91</p>\r\n\r\n\t\t\t<p>91.145.224.30</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:10</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.224.30</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:47:15</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:47:15</p><p><b>updated_at</b>:2021-02-06 16:47:15</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
66	1	127.0.0.1	afterInsert	app\\models\\ObjectSkz	\N	<p><b>id</b>:14</p><p><b>label</b>:УКЗ №11</p><p><b>label_identification</b>:1432</p><p><b>text</b>:<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-3</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №11</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1432</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 66 91</p>\r\n\r\n\t\t\t<p>91.145.224.30</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</p><p><b>address_id</b>:10</p><p><b>manufacturer_id</b>:2</p><p><b>working_status</b>:0</p><p><b>published</b>:0</p><p><b>object_ip</b>:91.145.224.30</p><p><b>object_port</b>:5001</p><p><b>slave_id</b>:1</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0</p><p><b>mses_setting</b>:0</p><p><b>mses_high</b>:0</p><p><b>mses_low</b>:0</p><p><b>u_skz_current</b>:0</p><p><b>u_skz_setting</b>:0</p><p><b>u_skz_high</b>:0</p><p><b>u_skz_low</b>:0</p><p><b>i_skz_current</b>:0</p><p><b>i_skz_setting</b>:0</p><p><b>i_skz_high</b>:0</p><p><b>i_skz_low</b>:0</p><p><b>mains_voltage</b>:0</p><p><b>temperature</b>:0</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>api_update_at</b>:2021-02-06 16:47:15</p><p><b>google_maps_lat</b>:0</p><p><b>google_maps_lng</b>:0</p><p><b>created_at</b>:2021-02-06 16:47:15</p><p><b>updated_at</b>:2021-02-06 16:47:15</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
67	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
68	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogDiscrete	\N	<p><b>id</b>:42</p><p><b>object_id</b>:8</p><p><b>current_event</b>:door_control</p><p><b>door_control</b>:0</p><p><b>load_current</b>:0</p><p><b>going_beyond</b>:1</p><p><b>adjustment</b>:0</p><p><b>disconnection</b>:0</p><p><b>entrance</b>:0</p><p><b>comment</b>:</p><p><b>created_at</b>:2021-02-06 18:08:45</p><p><b>updated_at</b>:2021-02-06 18:08:45</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
69	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2082</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:08:45</p><p><b>updated_at</b>:2021-02-06 18:08:45</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
70	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
71	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
72	1	127.0.0.1	afterInsert	app\\models\\ObjectSkzLogAnalog	\N	<p><b>id</b>:2083</p><p><b>object_id</b>:8</p><p><b>active_type</b>:mses</p><p><b>mses_current</b>:0.00</p><p><b>mses_setting</b>:0.00</p><p><b>mses_high</b>:0.00</p><p><b>mses_low</b>:0.00</p><p><b>u_skz_current</b>:0.00</p><p><b>u_skz_setting</b>:0.00</p><p><b>u_skz_high</b>:0.00</p><p><b>u_skz_low</b>:0.00</p><p><b>i_skz_current</b>:0.00</p><p><b>i_skz_setting</b>:0.00</p><p><b>i_skz_high</b>:0.00</p><p><b>i_skz_low</b>:0.00</p><p><b>mains_voltage</b>:0.00</p><p><b>temperature</b>:0.00</p><p><b>kvt_h_in</b>:0</p><p><b>kvt_h_out</b>:0</p><p><b>time_working</b>:0</p><p><b>time_protection</b>:0</p><p><b>query_interval</b>:30</p><p><b>stabilization</b>:0</p><p><b>discrete_input_1</b>:0</p><p><b>discrete_input_2</b>:0</p><p><b>discrete_input_3</b>:0</p><p><b>created_at</b>:2021-02-06 18:10:05</p><p><b>updated_at</b>:2021-02-06 18:10:05</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
73	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>published</b>:1</p>	<p><b>ID</b>:8</p><p><b>published</b>:0</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
74	1	127.0.0.1	afterUpdate	app\\models\\ObjectSkz	<p><b>ID</b>:8</p><p><b>working_status</b>:0</p>	<p><b>ID</b>:8</p><p><b>working_status</b>:1</p>	2021-02-07 13:11:01	2021-02-07 13:11:01
\.


--
-- Data for Name: crm_city; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_city (id, label, created_at, updated_at) FROM stdin;
3	ДП МА «Бориспіль»	2021-02-06 16:06:42	2021-02-06 16:06:42
\.


--
-- Data for Name: crm_file; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_file (id, model, model_id, file_type, file) FROM stdin;
1	app\\models\\Setting	1	image	5fdfad3a804a1.svg
\.


--
-- Data for Name: crm_language; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_language (language_id, language, country, name, name_ascii, status) FROM stdin;
af-ZA	af	za	Afrikaans	Afrikaans	0
ar-AR	ar	ar	‏العربية‏	Arabic	0
az-AZ	az	az	Azərbaycan dili	Azerbaijani	0
be-BY	be	by	Беларуская	Belarusian	0
bg-BG	bg	bg	Български	Bulgarian	0
bn-IN	bn	in	বাংলা	Bengali	0
bs-BA	bs	ba	Bosanski	Bosnian	0
ca-ES	ca	es	Català	Catalan	0
cs-CZ	cs	cz	Čeština	Czech	0
cy-GB	cy	gb	Cymraeg	Welsh	0
da-DK	da	dk	Dansk	Danish	0
de-DE	de	de	Deutsch	German	0
el-GR	el	gr	Ελληνικά	Greek	0
en-PI	en	pi	English (Pirate)	English (Pirate)	0
en-UD	en	ud	English (Upside Down)	English (Upside Down)	0
en-US	en	us	English (US)	English (US)	1
eo-EO	eo	eo	Esperanto	Esperanto	0
es-ES	es	es	Español (España)	Spanish (Spain)	0
es-LA	es	la	Español	Spanish	0
et-EE	et	ee	Eesti	Estonian	0
eu-ES	eu	es	Euskara	Basque	0
fa-IR	fa	ir	‏فارسی‏	Persian	0
fb-LT	fb	lt	Leet Speak	Leet Speak	0
fi-FI	fi	fi	Suomi	Finnish	0
fo-FO	fo	fo	Føroyskt	Faroese	0
fr-CA	fr	ca	Français (Canada)	French (Canada)	0
fr-FR	fr	fr	Français (France)	French (France)	0
fy-NL	fy	nl	Frysk	Frisian	0
ga-IE	ga	ie	Gaeilge	Irish	0
gl-ES	gl	es	Galego	Galician	0
he-IL	he	il	‏עברית‏	Hebrew	0
hi-IN	hi	in	हिन्दी	Hindi	0
hr-HR	hr	hr	Hrvatski	Croatian	0
hu-HU	hu	hu	Magyar	Hungarian	0
hy-AM	hy	am	Հայերեն	Armenian	0
id-ID	id	id	Bahasa Indonesia	Indonesian	0
is-IS	is	is	Íslenska	Icelandic	0
it-IT	it	it	Italiano	Italian	0
ja-JP	ja	jp	日本語	Japanese	0
ka-GE	ka	ge	ქართული	Georgian	0
km-KH	km	kh	ភាសាខ្មែរ	Khmer	0
ko-KR	ko	kr	한국어	Korean	0
ku-TR	ku	tr	Kurdî	Kurdish	0
la-VA	la	va	lingua latina	Latin	0
lt-LT	lt	lt	Lietuvių	Lithuanian	0
lv-LV	lv	lv	Latviešu	Latvian	0
mk-MK	mk	mk	Македонски	Macedonian	0
ml-IN	ml	in	മലയാളം	Malayalam	0
ms-MY	ms	my	Bahasa Melayu	Malay	0
nb-NO	nb	no	Norsk (bokmål)	Norwegian (bokmal)	0
ne-NP	ne	np	नेपाली	Nepali	0
nl-NL	nl	nl	Nederlands	Dutch	0
nn-NO	nn	no	Norsk (nynorsk)	Norwegian (nynorsk)	0
pa-IN	pa	in	ਪੰਜਾਬੀ	Punjabi	0
pl-PL	pl	pl	Polski	Polish	0
ps-AF	ps	af	‏پښتو‏	Pashto	0
pt-BR	pt	br	Português (Brasil)	Portuguese (Brazil)	0
pt-PT	pt	pt	Português (Portugal)	Portuguese (Portugal)	0
ro-RO	ro	ro	Română	Romanian	0
sk-SK	sk	sk	Slovenčina	Slovak	0
sl-SI	sl	si	Slovenščina	Slovenian	0
sq-AL	sq	al	Shqip	Albanian	0
sr-RS	sr	rs	Српски	Serbian	0
sv-SE	sv	se	Svenska	Swedish	0
sw-KE	sw	ke	Kiswahili	Swahili	0
ta-IN	ta	in	தமிழ்	Tamil	0
te-IN	te	in	తెలుగు	Telugu	0
th-TH	th	th	ภาษาไทย	Thai	0
tl-PH	tl	ph	Filipino	Filipino	0
tr-TR	tr	tr	Türkçe	Turkish	0
vi-VN	vi	vn	Tiếng Việt	Vietnamese	0
xx-XX	xx	xx	Fejlesztő	Developer	0
zh-CN	zh	cn	中文(简体)	Simplified Chinese (China)	0
zh-HK	zh	hk	中文(香港)	Traditional Chinese (Hong Kong)	0
zh-TW	zh	tw	中文(台灣)	Traditional Chinese (Taiwan)	0
en-GB	en	gb	English (UK)	English (UK)	0
ru-RU	ru	ru	Русский	Russian	1
uk-UA	uk	ua	Українська	Ukrainian	1
\.


--
-- Data for Name: crm_language_source; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_language_source (id, category, message) FROM stdin;
33	language	Language
34	language	List of languages
35	language	Create
36	language	Scan
37	language	Optimize
38	language	Im-/Export
39	language	Import
40	language	Export
41	language	Text not found in database! Please run project scan before translating!
42	language	translations
43	language	Successfully imported {fileName}
44	language	{type}: {new} new, {updated} updated
45	language	Invalid model "{model}":
46	language	Translation
47	language	Create {modelClass}
48	language	Languages
49	language	Source
50	language	Choosing the language of translation
51	language	Text to be translated
52	language	Status
53	language	Statistic
54	language	Translate
55	language	Optimise database
56	language	{n, plural, =0{No entries} =1{One entry} other{# entries}} were removed!
57	language	Scanning project
58	language	{n, plural, =0{No new entries} =1{One new entry} other{# new entries}} were added!
59	language	{n, plural, =0{No entries} =1{One entry} other{# entries}} remove!
60	language	Translation into {language_id}
61	language	Original
62	language	Source language
63	language	Enter "{command}" to search for empty translations.
64	language	Action
65	language	Save
66	language	Update {modelClass}: 
67	language	Update
68	language	Delete
69	language	Are you sure you want to delete this item?
70	language	Translation status
71	language	Select all
72	language	Delete selected
73	language	Home
74	language	Toggle translate
75	app/formatter	V
76	app/formatter	A
77	app/formatter	C
78	app/formatter	H
79	app/formatter	M
80	app/address	ID
81	app/address	City
82	app/address	Label
83	app/address	Created At
84	app/address	Updated At
85	app/address	Create Address
86	app/address	Addresses
87	app/address	Update Address: {name}
88	app/address	Update
89	app/address	Delete
90	app/address	Are you sure you want to delete this item?
91	app/address	Save
92	app/address	Search
93	app/address	Reset
95	app/address	Select address
96	app/address	Select station
97	app/address	Select manufacturer
98	app	Incorrect username or password.
99	app/change_log	ID
100	app/change_log	User
101	app/change_log	IP
102	app/change_log	Event
103	app/change_log	Class
104	app/change_log	Before
105	app/change_log	After
106	app/change_log	Created At
107	app/change_log	Updated At
108	app/city	ID
109	app/city	Label
110	app/city	Created At
111	app/city	Updated At
112	app/city	Select a city
113	app/city	Create City
114	app/city	Cities
115	app/city	Update City: {name}
116	app/city	Update
117	app/city	Delete
118	app/city	Are you sure you want to delete this item?
119	app/city	Save
120	app/city	Search
121	app/city	Reset
122	app/city	Select city
123	app/file	ID
124	app/file	Model
125	app/file	Model ID
126	app/file	File Type
127	app/file	File
128	app/manufacturer	ID
129	app/manufacturer	Label
130	app/manufacturer	Created At
131	app/manufacturer	Updated At
132	app/manufacturer	Create Manufacturer
133	app/manufacturer	Manufacturers
134	app/manufacturer	Update Manufacturer: {name}
135	app/manufacturer	Update
136	app/manufacturer	Delete
137	app/manufacturer	Are you sure you want to delete this item?
138	app/manufacturer	Save
139	app/manufacturer	Search
140	app/manufacturer	Reset
142	app/object_skz	ID
143	app/object_skz	Label
144	app/object_skz	Label Identification
145	app/object_skz	Text
146	app/object_skz	Address
147	app/object_skz	Manufacturer
148	app/object_skz	Working Status
149	app/object_skz	Published
150	app/object_skz	Object IP
151	app/object_skz	Object Port
152	app/object_skz	Slave Id
153	app/object_skz	Door Control
154	app/object_skz	Load Current
155	app/object_skz	Going Beyond
156	app/object_skz	Adjustment
157	app/object_skz	Disconnection
158	app/object_skz	Entrance
159	app/object_skz	Active Type
160	app/object_skz	Mses Current
161	app/object_skz	Mses Setting
162	app/object_skz	Mses High
163	app/object_skz	Mses Low
164	app/object_skz	U Skz Current
165	app/object_skz	U Skz Setting
166	app/object_skz	U Skz High
167	app/object_skz	U Skz Low
168	app/object_skz	I Skz Current
169	app/object_skz	I Skz Setting
170	app/object_skz	I Skz High
171	app/object_skz	I Skz Low
172	app/object_skz	Mains Voltage
173	app/object_skz	Temperature
174	app/object_skz	Kvt H In
175	app/object_skz	Kvt H Out
176	app/object_skz	Time Working
177	app/object_skz	Time Protection
178	app/object_skz	Query Interval
179	app/object_skz	Stabilization
180	app/object_skz	Discrete Input 1
181	app/object_skz	Discrete Input 2
182	app/object_skz	Discrete Input 3
183	app/object_skz	Api Update At
184	app/object_skz	Google Maps Lat
185	app/object_skz	Google Maps Lng
186	app/object_skz	Created At
187	app/object_skz	Updated At
188	app/object_skz	V
189	app/object_skz	A
190	app/object_skz	C
191	app/object_skz	M
192	app/object_skz	Object
193	app/object_skz	File Type
194	app/object_skz	Object ID
195	app/object_skz	Discrete input 1
196	app/object_skz	Discrete input 2
197	app/object_skz	Discrete input 3
198	app/object_skz	Current Event
199	app/object_skz	Comment
200	app/object_skz	Setting
201	app/object_skz	High
202	app/object_skz	Low
203	app/object_skz	The above error occurred while the Web server was processing your request.
204	app/object_skz	Please contact us if you think this is a server error. Thank you.
205	app/object_skz	Create Object Skz
206	app/object_skz	Object Skzs
207	app/object_skz	Update Object Skz: {name}
208	app/object_skz	Update
209	app/object_skz	Delete
210	app/object_skz	Are you sure you want to delete this item?
211	app/object_skz	Create File
212	app/object_skz	Generic
213	app/object_skz	Gallery
214	app/object_skz	Files
215	app/object_skz	Save
216	app/object_skz	Search
217	app/object_skz	Reset
218	app/object_skz	Sensor Monitoring
219	app/object_skz	Stabilization Type
220	app/object_skz	Working Information
221	app/object_skz	Create Object Skz File
222	app/object_skz	Object Skz Files
223	app/object_skz	Update Object Skz File: {name}
224	app/object_skz	Select a object
225	app/object_skz	Data invalid.
226	app/object_skz	Events
227	app/object_skz	List of objects
228	app/object_skz	Map
229	app/object_skz	Making measurements manually
230	app/object_skz	Stabilization type
231	app/object_skz	MSES
232	app/object_skz	U SKZ
233	app/object_skz	I SKZ
234	app/object_skz	Apply data
235	app/object_skz	Monitoring
236	app/object_skz	Download report
237	app/object_skz	Service
238	app/object_skz	Unacknowledged events
239	app/object_skz	Select event
240	app/object_skz	All events
241	app/object_skz	Latest information date
242	app/object_skz	SKZ
243	app/object_skz	Expand
244	app/object_skz	Go to object passport
245	app/object_skz	Add a comment
246	app/object_skz	Back
247	app/object_skz	Identification object
248	app/object_skz	History events
249	app/object_skz	Description
250	app/object_skz	Select station
251	app/object_skz	from date
252	app/object_skz	to date
253	app/object_skz	Generate report
254	app/object_skz	Collapse
255	app/setting	ID
256	app/setting	Label
257	app/setting	Code
258	app/setting	Value Data
259	app/setting	Value Type
260	app/setting	Autoload
261	app/setting	Created At
262	app/setting	Updated At
263	app/setting	Create Setting
264	app/setting	Settings
265	app/setting	Update Setting: {name}
266	app/setting	Update
267	app/setting	Delete
268	app/setting	Are you sure you want to delete this item?
269	app/setting	Enter date...
270	app/setting	Save
271	app/setting	Search
272	app/setting	Reset
273	app/change-log	Create Change Log
274	app/change-log	Change Logs
275	app/change-log	Update Change Log: {name}
276	app/change-log	Update
277	app/change-log	Delete
278	app/change-log	Are you sure you want to delete this item?
279	app/change-log	Save
280	app/change-log	Search
281	app/change-log	Reset
282	app/main	Company
283	app/main	Settings
284	app/main	127.0.0.1
285	app/main	Are you sure you want to delete this item?
286	app/menu	Menu
287	app/menu	Main
288	app/menu	Object SKZ
289	app/menu	Address
290	app/menu	City
291	app/menu	Manufacturer
292	app/menu	Change log
293	app/menu	Gii
294	app/menu	Debug
295	app/menu	Monitoring
296	app/menu	List of objects
297	app/menu	Download report
298	app/menu	Set measurement manually
299	app/menu	Map
300	app/menu	Logout
301	app/menu	Service
302	app/service	address:
303	app/service	tel.:
304	app/service	e-mail:
305	app/service	fax.:
306	app/service	Update software
307	rbac	Rule has been added
308	rbac	Rule has been updated
309	rbac	Rule has been removed
310	rbac	Not found
311	rbac	Items
312	rbac	Name
313	rbac	Description
314	rbac	Children
315	rbac	Rule
316	rbac	Auth item with such name already exists
317	rbac	Rule {0} does not exist
318	rbac	Data must be type of JSON ({0})
319	rbac	Item has been created
320	rbac	Item has been updated
321	rbac	Name is already in use
322	rbac	Class "{0}" does not exist
323	rbac	Rule class must extend "yii\rbacRule"
324	rbac	Rule class can not be instantiated
325	rbac	Invalid value
326	rbac	There is neither role nor permission with name "{0}"
327	rbac	Create new permission
328	rbac	Permissions
329	rbac	Select permission
330	rbac	Enter the description
331	rbac	Rule name
332	rbac	Select rule
333	rbac	Update permission
334	rbac	Data cannot be decoded
335	rbac	Save
336	rbac	Create new role
337	rbac	Roles
338	rbac	Select role
339	rbac	Update role
340	rbac	Create rule
341	rbac	Rules
342	rbac	Class
343	rbac	Created at
344	rbac	Updated at
345	rbac	Update rule
346	rbac	Users
347	rbac	Create
348	rbac	New user
349	rbac	New role
350	rbac	New permission
351	rbac	New rule
352	rbac	Assignments have been updated
353	rbac	Update assignments
354	user	VKontakte
355	user	Yandex
356	user	User is not found
357	user	User has been confirmed
358	user	Error occurred while confirming user
359	user	User has been created
360	user	Please fix following errors:
361	user	Are you sure? Deleted user can not be restored
362	user	User has been deleted
363	user	Error occurred while deleting user
364	user	Password has been changed
365	user	Error occurred while changing password
366	user	Account details have been updated
367	user	Profile details have been updated
368	user	Impersonate user is disabled in the application configuration
369	user	You can not remove your own account
370	user	You can not block your own account
371	user	User has been unblocked
372	user	User has been blocked
373	user	Password generation is not possible for admin users
374	user	New Password has been generated and sent to user
375	user	Error while trying to generate new password
376	user	Recovery message sent
377	user	Recovery link is invalid or expired. Please try requesting a new one.
378	user	Invalid or expired link
379	user	Your account has been created
380	user	Account confirmation
381	user	A new confirmation link has been sent
382	user	Registration on this website is disabled
383	user	Your account has been blocked.
384	user	Your profile has been updated
385	user	Your account details have been updated
386	user	Not found
387	user	Your account has been completely deleted
388	user	Welcome to {0}
389	user	Your password on {0} has been changed
390	user	Confirm account on {0}
391	user	Confirm email change on {0}
392	user	Complete password reset on {0}
393	user	Something went wrong
394	user	Your account has been connected
395	user	This account has already been connected to another user
396	user	Login
397	user	Password
398	user	Remember me next time
399	user	You need to confirm your email address
400	user	Your account has been blocked
401	user	Invalid login or password
402	user	Name
403	user	Email (public)
404	user	Gravatar email
405	user	Location
406	user	Website
407	user	Bio
408	user	Time zone
409	user	Time zone is not valid
410	user	Email
411	user	An email has been sent with instructions for resetting your password
412	user	Your password has been changed successfully.
413	user	An error occurred and your password has not been changed. Please try again later.
414	user	This username has already been taken
415	user	This email address has already been taken
416	user	Username
417	user	Your account has been created and a message with further instructions has been sent to your email
418	user	A message has been sent to your email address. It contains a confirmation link that you must click to complete registration.
419	user	Current password is not valid
420	user	New password
421	user	Current password
422	user	Your email address has been changed
423	user	A confirmation message has been sent to your new email address
424	user	We have sent confirmation links to both old and new email addresses. You must click both links to complete your request
425	user	Registration ip
426	user	New email
427	user	Registration time
428	user	Last login
429	user	Confirmation time
430	user	Thank you, registration is now complete.
431	user	Something went wrong and your account has not been confirmed.
432	user	The confirmation link is invalid or expired. Please try requesting a new one.
433	user	Your confirmation token is invalid or expired
434	user	An error occurred processing your request
435	user	Awesome, almost there. Now you need to click the confirmation link sent to your old email address
436	user	Awesome, almost there. Now you need to click the confirmation link sent to your new email address
437	user	#
438	user	Create a user account
439	user	Users
440	user	Account details
441	user	Profile details
442	user	Information
443	user	Credentials will be sent to the user by email
444	user	A password will be generated automatically if not provided
445	user	Save
446	user	Manage users
447	user	(not set)
448	user	{0, date, MMMM dd, YYYY HH:mm}
449	user	Never
450	user	Confirmation
451	user	Confirmed
452	user	Confirm
453	user	Are you sure you want to confirm this user?
454	user	Block status
455	user	Unblock
456	user	Are you sure you want to unblock this user?
457	user	Block
458	user	Are you sure you want to block this user?
459	user	Are you sure?
460	user	Generate and send new password to user
461	user	Become this user
462	user	Are you sure you want to switch to this user for the rest of this Session?
463	user	Update user account
464	user	Assignments
465	user	Delete
466	user	Are you sure you want to delete this user?
467	user	Update
468	user	You can assign multiple roles or permissions to user by using the form below
469	user	Registration IP
470	user	Confirmation status
471	user	Confirmed at {0, date, MMMM dd, YYYY HH:mm}
472	user	Unconfirmed
473	user	Blocked at {0, date, MMMM dd, YYYY HH:mm}
474	user	Not blocked
475	user	Roles
476	user	Permissions
477	user	Rules
478	user	Create
479	user	New user
480	user	New role
481	user	New permission
482	user	New rule
483	user	Hello
484	user	Thank you for signing up on {0}
485	user	In order to complete your registration, please click the link below
486	user	If you cannot click the link, please try pasting the text into your browser
487	user	If you did not make this request you can ignore this email
488	user	Your account on {0} has a new password
489	user	We have generated a password for you
490	user	We have received a request to change the email address for your account on {0}
491	user	In order to complete your request, please click the link below
492	user	We have received a request to reset the password for your account on {0}
493	user	Please click the link below to complete your password reset
494	user	Your account on {0} has been created
495	user	Joined on {0, date}
496	user	Recover your password
497	user	Continue
498	user	Reset your password
499	user	Finish
500	user	Sign in
501	user	In order to finish your registration, we need you to enter following fields
502	user	If you already registered, sign in and connect this account on settings page
503	user	Sign up
504	user	Already registered? Sign in!
505	user	Request new confirmation message
506	user	Password is not necessary because the module is in DEBUG mode.
507	user	Forgot password?
508	user	Didn't receive confirmation message?
509	user	Don't have an account? Sign up!
510	user	Account settings
511	user	Delete account
512	user	Once you delete your account, there is no going back
513	user	It will be deleted forever
514	user	Please be certain
515	user	Are you sure? There is no going back
516	user	Networks
517	user	You can connect multiple accounts to be able to log in using them
518	user	Disconnect
519	user	Connect
520	user	Profile settings
521	user	Change your avatar at Gravatar.com
522	user	Profile
523	user	Account
524	user	Logout
525	kvdialog	Ok
526	kvdialog	Cancel
527	kvdialog	Information
528	kvdialog	Confirmation
529	kvdynagrid	Apply
530	kvdynagrid	Save grid settings
531	kvdynagrid	Reset
532	kvdynagrid	Abort any changes and reset settings
533	kvdynagrid	Trash
534	kvdynagrid	Remove saved grid settings
535	kvdynagrid	Personalize grid settings
536	kvdynagrid	Save / edit grid {category}
537	kvdynagrid	Save / Edit Grid {title}
538	kvdynagrid	grid
539	kvdynagrid	sort
540	kvdynagrid	filter
541	kvdynagrid	Hidden / Fixed Columns
542	kvdynagrid	Visible Columns
543	kvdynagrid	Page Size
544	kvdynagrid	Default Filter
545	kvdynagrid	Default Sort
546	kvdynagrid	Grid Theme
547	kvdynagrid	Filter Name
548	kvdynagrid	Saved Filters
549	kvdynagrid	Filter Configuration
550	kvdynagrid	Sort Name
551	kvdynagrid	Saved Sorts
552	kvdynagrid	Sort Configuration
553	kvdynagrid	descending
554	kvdynagrid	ascending
555	kvdynagrid	Operation disallowed! Invalid request signature detected for dynagrid settings. {params}
556	kvdynagrid	Saving and applying configuration
557	kvdynagrid	Trashing all personalizations
558	kvdynagrid	Are you sure you want to delete the setting?
559	kvdynagrid	Personalize Grid Configuration
560	kvdynagrid	rows per page
561	kvdynagrid	Integer between {min} to {max}
562	kvdynagrid	Select a theme...
563	kvdynagrid	Select theme to style grid
564	kvdynagrid	Select a filter...
565	kvdynagrid	Set default grid filter criteria
566	kvdynagrid	Select a sort...
567	kvdynagrid	Set default grid sort criteria
568	kvdynagrid	Configure Order and Display of Grid Columns
569	kvdynagrid	Select...
570	kvdynagrid	Set a name to save the state of your current grid {category}. You can alternatively select a saved {category} from the list below to edit or delete.
571	kvdynagrid	NOTE: When editing an existing record, only the {category} name will be modified (and not the settings).
572	kvdynagrid	NOTE: When editing an existing record, both the {category} name and its settings will be modified.
573	kvdynagrid	Save
574	kvdynagrid	Delete
575	kvexport	Key
576	kvexport	Value
577	kvexport	Input error
578	kvexport	Value is not in list.
579	kvexport	Pick from list
580	kvexport	Please pick a value from the drop-down list.
581	kvexport	grid-export
582	kvexport	Export data in selected format
583	kvexport	Grid export generated by Krajee ExportMenu widget (yii2-export)
584	kvexport	Select Columns
585	kvexport	Select columns to export
586	kvexport	Column
587	kvexport	HTML
588	kvexport	Hyper Text Markup Language
589	kvexport	The HTML export file will be generated for download.
590	kvexport	CSV
591	kvexport	Comma Separated Values
592	kvexport	The CSV export file will be generated for download.
593	kvexport	Text
594	kvexport	Tab Delimited Text
595	kvexport	The TEXT export file will be generated for download.
596	kvexport	PDF
597	kvexport	Portable Document Format
598	kvexport	The PDF export file will be generated for download.
599	kvexport	Excel 95 +
600	kvexport	Microsoft Excel 95+ (xls)
601	kvexport	The EXCEL 95+ (xls) export file will be generated for download.
602	kvexport	Excel 2007+
603	kvexport	Microsoft Excel 2007+ (xlsx)
604	kvexport	The EXCEL 2007+ (xlsx) export file will be generated for download.
605	kvexport	Disable any popup blockers in your browser to ensure proper download.
606	kvexport	Ok to proceed?
607	kvexport	Generating the export file. Please wait...
608	kvexport	Request submitted! You may safely close this dialog after saving your downloaded file.
609	kvexport	Exported File
610	kvexport	Download exported file
611	kvgrid	Actions
612	kvgrid	item
613	kvgrid	Are you sure to delete this {item}?
614	kvgrid	View
615	kvgrid	Update
616	kvgrid	Delete
617	kvgrid	Active
618	kvgrid	Inactive
619	kvgrid	export
620	kvgrid	No data found
621	kvgrid	Krajee Solutions
622	kvgrid	Krajee Yii2 Grid Export Extension
623	kvgrid	Add Book
624	kvgrid	Book Listing
625	kvgrid	Download Selected
626	kvgrid	Library
627	kvgrid	Reset Grid
628	kvgrid	The page summary displays SUM for first 3 amount columns and AVG for the last.
629	kvgrid	The table header sticks to the top in this demo as you scroll
630	kvgrid	Resize table columns just like a spreadsheet by dragging the column edges.
631	kvgrid	Invalid or bad editable data
632	kvgrid	No valid editable model found
633	kvgrid	Invalid editable index or model form name
634	kvgrid	Failed to update editable data due to an unknown server error
635	kvgrid	<small>Loading &hellip;</small>
636	kvgrid	Expand
637	kvgrid	Collapse
638	kvgrid	Expand All
639	kvgrid	Collapse All
640	kvgrid	items
641	kvgrid	items-few
642	kvgrid	items-many
643	kvgrid	items-acc
644	kvgrid	Showing <b>{begin, number}-{end, number}</b> of <b>{totalCount, number}</b> {totalCount, plural, one{{item}} other{{items}}}.
645	kvgrid	Total <b>{count, number}</b> {count, plural, one{{item}} other{{items}}}.
646	kvgrid	Disable any popup blockers in your browser to ensure proper download.
647	kvgrid	Ok to proceed?
648	kvgrid	Generating the export file. Please wait...
649	kvgrid	Request submitted! You may safely close this dialog after saving your downloaded file.
650	kvgrid	Export
651	kvgrid	Export Page Data
652	kvgrid	Export All Data
653	kvgrid	Grid Export
654	kvgrid	Yii2 Grid Export (PDF)
655	kvgrid	Generated
656	kvgrid	© Krajee Yii2 Extensions
657	kvgrid	HTML
658	kvgrid	grid-export
659	kvgrid	The HTML export file will be generated for download.
660	kvgrid	Hyper Text Markup Language
661	kvgrid	CSV
662	kvgrid	The CSV export file will be generated for download.
663	kvgrid	Comma Separated Values
664	kvgrid	Text
665	kvgrid	The TEXT export file will be generated for download.
666	kvgrid	Tab Delimited Text
667	kvgrid	Excel
668	kvgrid	The EXCEL export file will be generated for download.
669	kvgrid	Microsoft Excel 95+
670	kvgrid	ExportWorksheet
671	kvgrid	PDF
672	kvgrid	The PDF export file will be generated for download.
673	kvgrid	Portable Document Format
674	kvgrid	PDF export generated by kartik-v/yii2-grid extension
675	kvgrid	krajee, grid, export, yii2-grid, pdf
676	kvgrid	JSON
677	kvgrid	The JSON export file will be generated for download.
678	kvgrid	JavaScript Object Notation
679	kvgrid	There are {totalCount} records. Are you sure you want to display them all?
680	kvgrid	All
681	kvgrid	Show all data
682	kvgrid	Page
683	kvgrid	Show first page data
684	kvgrid	Clear selection
685	kvbase	It is recommended you use an upgraded browser to display the {type} control properly.
686	kvdate	Select date
687	kvdate	Clear field
688	kvdtime	Select date & time
689	kvdtime	Clear field
690	fileinput	file preview and multiple file upload
691	fileinput	multiple file upload
692	fileinput	Note:
693	fileinput	Your browser does not support {validation}. Try an alternative or more recent browser to access these features.
694	kvselect	Select all
695	kvselect	Unselect all
696	model	Language ID
697	model	Language
698	model	Country
699	model	Name
700	model	Name Ascii
701	model	Status
702	model	ID
703	model	Category
704	model	Message
705	model	Translation
706	app/footer	tel.:
707	app/footer	fax.:
708	app/footer	e-mail:
709	app/footer	Copyright © {start}-{end}
710	app/title	Monitoring
711	array	Inactive
712	array	Active
713	array	Beta
727	app/manufacturer	Select manufacturer
728	app/object_skz	Setting Type
743	app/object-skz	Objects
744	app/warehouse	Total in object
745	app/city	Kyiv
746	app/manufacturer	ELMET
747	app/object_skz	SKZ 1 test prod
748	app/backups	Backups
749	app/object-skz	Total events in object
750	app/menu	Backups
751	app/setting	Kitvis
752	language	Update {modelClass}:
753	app/address	Select a address
754	app/manufacturer	Select a manufacturer
755	app/service	Service Center
756	app/city	ДП МА «Бориспіль»
757	app/address	Перон F
758	app/address	Склад ЦЗС
759	app/address	Перон G.1
760	app/address	Тепломережа-1
761	app/address	Міжскладський паливопровід
762	app/address	Склад ПММ
763	app/address	Тепломережа-2
764	app/address	Тепломережа-3
765	app/object_skz	УКЗ №4
766	app/object_skz	УКЗ №5
767	app/object_skz	УКЗ №6
768	app/object_skz	УКЗ №7
769	app/object_skz	УКЗ №8
770	app/object_skz	УКЗ №9
771	app/object_skz	УКЗ №10
772	app/object_skz	УКЗ №11
773	app/object_skz	test
774	app/setting	+38(044) 570-33-88
775	app/setting	office@kitvis.com.ua
776	app/setting	KITVIS
777	app/setting	02088, Ukraine, Kiev, str. Karla Marksa, 3
778	app/setting	HSS "GARANT"
779	app/setting	Hardware and Software System
\.


--
-- Data for Name: crm_language_translate; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_language_translate (id, language, translation) FROM stdin;
33	ru-RU	Язык
33	uk-UA	Мова
34	ru-RU	Языковой список
34	uk-UA	Мовний список
35	ru-RU	Создать
35	uk-UA	Створити
36	ru-RU	Сканирование
36	uk-UA	Сканування
37	ru-RU	Оптимизация
37	uk-UA	Оптимізація
39	ru-RU	Импорт
39	uk-UA	Імпорт
40	ru-RU	Экспорт
158	en-US	Power supply
40	uk-UA	Експорт
41	ru-RU	Текст не найден в базе данных! Пожалуйста, запустите сканирование проекта перед переводом!
41	uk-UA	Текст не знайдений у базі даних! Запустіть сканування проекту перед перекладом!
42	ru-RU	Перевод
42	uk-UA	Переклад
43	ru-RU	Успешно импортированно {fileName}
43	uk-UA	Успішно імпортовано {fileName}
44	ru-RU	{type}: {new} новый, {updated} обновленно
44	uk-UA	{type}: {new} новий, {updated} оновлено
46	ru-RU	Перевод
46	uk-UA	Переклад
48	ru-RU	Язык
48	uk-UA	Мова
50	ru-RU	Выбор языка для перевода
50	uk-UA	Вибір мови перекладу
51	ru-RU	Текст для перевода
51	uk-UA	Текст для перекладу
52	ru-RU	Статус
52	uk-UA	Статус
53	ru-RU	Статистика
53	uk-UA	Статистика
54	ru-RU	Перевод
54	uk-UA	Переклад
55	ru-RU	Оптимизация базы данних
55	uk-UA	Оптимізація бази данних
57	ru-RU	Сканирование проэкта
57	uk-UA	Сканування проекту
61	ru-RU	Оригинал
61	uk-UA	Оригынал
62	ru-RU	Языковой источник
62	uk-UA	Мовне джерело
64	ru-RU	Исполнение
64	uk-UA	Виконання
65	ru-RU	Сохранить
65	uk-UA	Зберегти
67	ru-RU	Обновить
67	uk-UA	Оновити
68	ru-RU	Удалить
68	uk-UA	Видалити
69	ru-RU	Вы уверены, что хотите удалить этот элемент?
69	uk-UA	Ви впевнені, що хочете видалити цей елемент?
70	ru-RU	Статус перевода
70	uk-UA	Статус перекладу
71	ru-RU	Выдилить все
71	uk-UA	Обрати все
72	ru-RU	Удалить выбраное
72	uk-UA	Видалити обране
73	ru-RU	Домой
73	uk-UA	Додому
74	ru-RU	Переключить перевод
74	uk-UA	Перемкнути переклад
80	ru-RU	ID
80	uk-UA	ID
82	ru-RU	Метка
82	uk-UA	Мітка
83	ru-RU	Создано в
83	uk-UA	Створено у
84	ru-RU	Обновлено в
84	uk-UA	Оновлено у
88	ru-RU	Обновить
88	uk-UA	Оновити
89	ru-RU	Удалить
89	uk-UA	Видалити
90	ru-RU	Вы уверены, что хотите удалить этот элемент?
90	uk-UA	Ви впевнені, що хочете видалити цей елемент?
91	ru-RU	Сохранить
91	uk-UA	Зберегти
92	ru-RU	Поиск
92	uk-UA	Пошук
93	ru-RU	Сбросить
93	uk-UA	Скинути
96	ru-RU	Выбирите станцию
96	uk-UA	Оберіть станцію
97	ru-RU	Выберите производителя
97	uk-UA	Виберіть виробника
98	ru-RU	Неправильное имя пользователя или пароль
98	uk-UA	Неправильне ім'я користувача або пароль
99	ru-RU	ID
99	uk-UA	ID
100	ru-RU	Пользователь
100	uk-UA	Користувач
101	ru-RU	IP
101	uk-UA	IP
102	ru-RU	Событие
102	uk-UA	Подія
103	ru-RU	Класс
103	uk-UA	Клас
104	ru-RU	До
104	uk-UA	Раніше
105	ru-RU	После
105	uk-UA	Пізніше
106	ru-RU	Создано в
106	uk-UA	Створено у
107	ru-RU	Обновлено в
107	uk-UA	Оновлено у
108	ru-RU	ID
108	uk-UA	ID
109	ru-RU	Метка
109	uk-UA	Мітка
110	ru-RU	Создано в
110	uk-UA	Створено у
111	ru-RU	Обновлено в
111	uk-UA	Оновлено у
114	ru-RU	Города
114	uk-UA	Мыста
116	ru-RU	Обновить
116	uk-UA	Оновити
117	ru-RU	Удалить
117	uk-UA	Видалити
118	ru-RU	Вы уверены, что хотите удалить этот элемент?
118	uk-UA	Ви впевнені, що хочете видалити цей елемент?
119	ru-RU	Сохранить
119	uk-UA	Зберегти
120	ru-RU	Поиск
120	uk-UA	Пошук
121	ru-RU	Сбросить
121	uk-UA	Скинути
123	ru-RU	ID
123	uk-UA	ID
124	ru-RU	Модель
124	uk-UA	Модель
125	ru-RU	Модель
125	uk-UA	Модель ID
126	ru-RU	Тип файла
126	uk-UA	Тип файлу
127	ru-RU	Файл
127	uk-UA	Файл
128	ru-RU	ID
128	uk-UA	ID
129	ru-RU	Метка
129	uk-UA	Мітка
130	ru-RU	Создано в
130	uk-UA	Створено у
131	ru-RU	Обновлено в
131	uk-UA	Оновлено у
132	ru-RU	Создать производителя
132	uk-UA	Створити виробника
133	ru-RU	Производитель
133	uk-UA	Виробник
86	uk-UA	Розташування
95	uk-UA	Оберіть Розташування
85	ru-RU	Создать Расположение
85	uk-UA	Створити Розташування
86	ru-RU	Расположение
95	ru-RU	Выбирите Расположение
81	ru-RU	Ответственный владелец СКЗ
112	ru-RU	Выбирите Ответственный владелец СКЗ
113	ru-RU	Создать Ответственный владелец СКЗ
122	ru-RU	Выбирите Ответственный владелец СКЗ
81	uk-UA	Відповідальний влатсник СКЗ
112	uk-UA	Оберіть Відповідальний влатсник СКЗ
113	uk-UA	Створити Відповідальний влатсник СКЗ
122	uk-UA	Оберіть Відповідальний влатсник СКЗ
135	ru-RU	Обновить
135	uk-UA	Оновити
136	ru-RU	Удалить
136	uk-UA	Видалити
137	ru-RU	Вы уверены, что хотите удалить этот элемент?
137	uk-UA	Ви впевнені, що хочете видалити цей елемент?
138	ru-RU	Сохранить
138	uk-UA	Зберегти
139	ru-RU	Поиск
139	uk-UA	Пошук
140	ru-RU	Сбросить
140	uk-UA	Скинути
142	ru-RU	ID
142	uk-UA	ID
143	ru-RU	Метка
143	uk-UA	Мітка
144	ru-RU	Идентификатор метки
144	uk-UA	Ідентивікотор мітки
145	ru-RU	Текст
145	uk-UA	Текст
147	ru-RU	Производитель
147	uk-UA	Виробник
149	ru-RU	Опубликовано
149	uk-UA	Опубліковано
150	ru-RU	IP Объекта
150	uk-UA	IP Об'єкт
151	ru-RU	Порт Объекта
151	uk-UA	Порт Об'єкт
153	ru-RU	Контроль Дверей
153	uk-UA	Контроль Дверей
154	uk-UA	Зчитати Струм
155	ru-RU	Выход за пределы
155	uk-UA	Вихід за межі
156	uk-UA	Налаштування
157	ru-RU	Ошибка связи
157	uk-UA	Помилка зв'язку
158	ru-RU	Сеть
158	uk-UA	Мережа
160	en-US	Potential Cur.
160	ru-RU	Потенциал Тек.
160	uk-UA	Потенціал Пот.
161	en-US	Potential Set
161	ru-RU	Потенциал Уст.
161	uk-UA	Потенціал Встан.
162	en-US	Potential max
162	ru-RU	Потенциал max
162	uk-UA	Потенціал max
163	en-US	Potential min
163	ru-RU	Потенциал min
163	uk-UA	Потенціал min
164	en-US	U CPS Cur.
164	ru-RU	U СКЗ Тек.
164	uk-UA	U СКЗ Пот.
165	en-US	U CPS Set
165	ru-RU	U СКЗ Уст.
165	uk-UA	U СКЗ Встан.
166	en-US	U CPS max
166	ru-RU	U СКЗ max
166	uk-UA	U СКЗ max
167	en-US	U CPS min
167	ru-RU	U СКЗ min
167	uk-UA	U СКЗ min
168	en-US	I CPS Cur.
168	ru-RU	I СКЗ Тек.
168	uk-UA	I СКЗ Пот.
169	en-US	I CPS Set
169	ru-RU	I СКЗ Уст.
169	uk-UA	I СКЗ Встан.
170	en-US	I CPS max
170	ru-RU	I СКЗ max
170	uk-UA	I СКЗ max
171	en-US	I CPS min
171	ru-RU	I СКЗ min
171	uk-UA	I СКЗ min
173	ru-RU	Температура
173	uk-UA	Темпиратура
174	en-US	Сonsumed electricity
174	ru-RU	Потребленная электроэнергия
174	uk-UA	Спожита електроенергія
175	en-US	Electricity for protection
175	ru-RU	Электроэнергия для защиты
175	uk-UA	Електроенергія для захисту
176	ru-RU	Время наработки
176	uk-UA	Час напрацювання
177	ru-RU	Время защиты
177	uk-UA	Час захисту
178	ru-RU	Интервал запросов
178	uk-UA	Інтервал запитів
179	ru-RU	Стабилизация
179	uk-UA	Стабілізація
180	ru-RU	Дискретный Вход 1
180	uk-UA	Дискретний Вхід 1
181	ru-RU	Дискретный Вход 2
181	uk-UA	Дискретний Вхід 2
182	ru-RU	Дискретный Вход 3
182	uk-UA	Дискретний Вхід 3
192	ru-RU	Объект
192	uk-UA	Об'єкт
193	ru-RU	Тип файла
193	uk-UA	Тип файлу
194	ru-RU	Объект ID
194	uk-UA	Об'єкт ID
195	en-US	Discrete Input 1
195	ru-RU	Дискретный Вход 1
195	uk-UA	Дискретний Вхід 1
196	en-US	Discrete Input 2
196	ru-RU	Дискретный Вход 2
196	uk-UA	Дискретний Вхід 2
197	en-US	Discrete Input 3
197	ru-RU	Дискретный Вход 3
197	uk-UA	Дискретний Вхід 3
198	ru-RU	Текущее Событие
198	uk-UA	Поточна Подія
199	ru-RU	Коментарий
199	uk-UA	Коментар
200	ru-RU	Настройка
148	ru-RU	Запрет опроса
148	uk-UA	Заборона опитування
146	ru-RU	Расположение
146	uk-UA	Розташування
152	ru-RU	ID Объекта
152	uk-UA	ID Об'єкт
200	uk-UA	Налаштування
201	en-US	max
201	ru-RU	max
201	uk-UA	max
202	en-US	min
202	ru-RU	min
202	uk-UA	min
203	ru-RU	Ошибка произошла, при обработке WEB-сервером Вашего запроса
203	uk-UA	Помилка сталася, при обробці WEB-сервером Вашого запиту
204	ru-RU	Свяжитесь с нами, если вы считаете, что это ошибка сервера. Спасибо.
204	uk-UA	Зв'яжіться з нами, якщо ви вважаєте, що це помилка сервера. Дякуемо.
205	en-US	Create Object CPS
205	ru-RU	Создать Объект СКЗ
205	uk-UA	Створити Об'єкт СКЗ
206	en-US	Object CPS
206	ru-RU	Объект СКЗ
206	uk-UA	Об'єкт СКЗ
207	en-US	Update Object CPS: {name}
207	ru-RU	Обновить Объект СКЗ: {name}
207	uk-UA	Оновити Об'єкт СКЗ: {name}
208	ru-RU	Обновить
208	uk-UA	Оновити
209	ru-RU	Удалить
209	uk-UA	Видалити
210	ru-RU	Вы уверены, что хотите удалить этот элемент?
210	uk-UA	Ви впевнені, що хочете видалити цей елемент?
211	ru-RU	Создать файл
211	uk-UA	Створити файл
213	ru-RU	Галерея
213	uk-UA	Галерея
214	ru-RU	Файл
214	uk-UA	Файл
215	ru-RU	Сохранить
215	uk-UA	Зберегти
216	ru-RU	Поиск
216	uk-UA	Пошук
217	ru-RU	Сброс
217	uk-UA	Скинути
219	ru-RU	Тип Стабилизации
219	uk-UA	Тип Стабілізації
220	ru-RU	Рабочая Информация
220	uk-UA	Робоча Інформація
221	en-US	Create object CPS file
221	ru-RU	Создать объект СКЗ файл
221	uk-UA	Створити об'єкт СКЗ файл
222	en-US	Object CPS files
222	ru-RU	Объект СКЗ файл
222	uk-UA	Об'єкт СКЗ файл
223	en-US	Update object CPS File: {name}
224	ru-RU	Выберите объект
224	uk-UA	Оберіть об'єкт
225	en-US	Data invalid
225	ru-RU	Некоректные данные
225	uk-UA	Некоректні дані
226	ru-RU	События
226	uk-UA	Події
227	ru-RU	Список объектов
227	uk-UA	Список об'єктів
228	ru-RU	Карта
228	uk-UA	Карта
229	ru-RU	Внесение измерений вручную
229	uk-UA	Внесення вимірювань вручну
230	ru-RU	Тип Стабилизации
230	uk-UA	Тип Стабілізації
231	en-US	Potential
231	ru-RU	Потенциал
231	uk-UA	Потенціал
232	en-US	U CPS
232	ru-RU	U СКЗ
232	uk-UA	U СКЗ
233	en-US	I CPS
233	ru-RU	I СКЗ
233	uk-UA	I СКЗ
234	ru-RU	Применить данные
234	uk-UA	Застосувати данні
235	ru-RU	Мониторинг
235	uk-UA	Моніторінг
237	ru-RU	Сервис
237	uk-UA	Сервіс
238	ru-RU	Неизвестные события
238	uk-UA	Невідомі події
239	ru-RU	Выберите события
239	uk-UA	Оберіть події
240	ru-RU	Все события
240	uk-UA	Всі події
241	ru-RU	Дата последних данных
241	uk-UA	Дата останніх даних
242	en-US	CPS
242	ru-RU	СКЗ
242	uk-UA	СКЗ
243	ru-RU	Развернуть
243	uk-UA	Розгорнути
244	ru-RU	Перейти к паспорту объекта
244	uk-UA	Перейти до паспорту об'єкту
245	ru-RU	Добавить коментарий
245	uk-UA	Додати коментар
246	ru-RU	Назад
246	uk-UA	Назад
247	ru-RU	Идентификатор объекта
247	uk-UA	Ідентифікатор об'єкту
248	ru-RU	История событий
248	uk-UA	Історія подій
249	ru-RU	Описание
249	uk-UA	Опис
250	en-US	Select CPS
250	ru-RU	Выбрать СКЗ
250	uk-UA	Обрати СКЗ
251	ru-RU	начало
251	uk-UA	початок
252	ru-RU	конец
252	uk-UA	кінець
253	ru-RU	Сформировать отчет
253	uk-UA	Сформувати звіт
254	ru-RU	Свернуть
254	uk-UA	Згорнути
255	ru-RU	ID
255	uk-UA	ID
236	ru-RU	Отчет
236	uk-UA	Звіт
256	ru-RU	Метка
256	uk-UA	Мітка
257	ru-RU	Код
257	uk-UA	Код
258	ru-RU	Данные о значении
258	uk-UA	Дані про значення
259	ru-RU	Данные о типе
259	uk-UA	Дані про тип
260	ru-RU	Автозагрузка
260	uk-UA	Автозавантаження
261	ru-RU	Создано в
261	uk-UA	Створено в
262	ru-RU	Обновлено в
262	uk-UA	Оновлено в
263	ru-RU	Создать Настройки
263	uk-UA	Створити Налаштування
264	ru-RU	Настройки
264	uk-UA	Налаштування
265	ru-RU	Обновить Настройки: {name}
265	uk-UA	Оновити Налаштування: {name}
266	ru-RU	Обновить
266	uk-UA	Оновити
267	ru-RU	Удалить
267	uk-UA	Видалити
268	ru-RU	Вы уверены, что хотите удалить этот элемент?
268	uk-UA	Ви впевнені, що хочете видалити цей елемент?
269	ru-RU	Ввести данные …
269	uk-UA	Ввести дані
270	ru-RU	Сохранить
270	uk-UA	Зберегти
271	ru-RU	Поиск
271	uk-UA	Пошук
272	ru-RU	Сброс
272	uk-UA	Скинути
273	ru-RU	Создать журнал изменений
273	uk-UA	Створити журнал змін
274	ru-RU	Журнал изменений
274	uk-UA	Журнал змін
275	ru-RU	Обновить журнал изменений: {name}
275	uk-UA	Оновити журнал змін: {name}
276	ru-RU	Обновить
276	uk-UA	Оновити
277	ru-RU	Удалить
277	uk-UA	Видалити
278	ru-RU	Вы уверены, что хотите удалить этот элемент?
278	uk-UA	Ви впевнені, що хочете видалити цей елемент?
279	ru-RU	Сохранить
279	uk-UA	Зберегти
280	ru-RU	Поиск
280	uk-UA	Пошук
281	ru-RU	Сброс
281	uk-UA	Скинути
282	ru-RU	Компания
282	uk-UA	Компанія
283	ru-RU	Настройки
283	uk-UA	Налаштування
285	ru-RU	Вы уверены, что хотите удалить этот элемент?
285	uk-UA	Ви впевнені, що хочете видалити цей елемент?
286	ru-RU	Меню
286	uk-UA	Меню
287	ru-RU	Главная
287	uk-UA	Головна
288	en-US	Object CPS
288	uk-UA	Об'єкт СКЗ
291	ru-RU	Производитель
291	uk-UA	Виробник
292	ru-RU	Журнал изменений
292	uk-UA	Журнал змін
294	ru-RU	Отладка
294	uk-UA	Відлагодження
295	ru-RU	Мониторинг
295	uk-UA	Моніторинг
296	ru-RU	Список обїектов
296	uk-UA	Список об'єктів
299	ru-RU	Карта
299	uk-UA	Карта
300	ru-RU	Вийти
300	uk-UA	Вийти
301	ru-RU	Сервис
301	uk-UA	Сервіс
302	ru-RU	адрес:
302	uk-UA	адреса:
303	ru-RU	тел.:
303	uk-UA	тел.:
304	ru-RU	e-mail:
304	uk-UA	e-mail:
305	ru-RU	fax.:
305	uk-UA	fax.:
306	ru-RU	Обновить ПО
306	uk-UA	Оновити ПЗ
307	ru-RU	Правило добавлено
307	uk-UA	Правило додано
308	ru-RU	Правило обновлено
308	uk-UA	Правило обновлено
309	ru-RU	Правило удалено
309	uk-UA	Правило видалено
310	ru-RU	Не существует
310	uk-UA	Не існуе
312	ru-RU	Имя
312	uk-UA	Ім'я
313	ru-RU	Описание
313	uk-UA	Опис
315	ru-RU	Правила
315	uk-UA	Правила
317	ru-RU	Правило  {0} не существует
317	uk-UA	Правило {0} не існує
318	ru-RU	Данные должны иметь тип JSON ({0})
318	uk-UA	Дані повинні мати тип JSON ({0})
319	ru-RU	Элемент создан
319	uk-UA	Елемент створено
320	ru-RU	Элемент изменен
320	uk-UA	Елемент змінено
321	ru-RU	Имя уже используется
289	ru-RU	Расположение
290	ru-RU	Ответственный владелец СКЗ
297	ru-RU	Отчет
297	uk-UA	Звіт
298	uk-UA	Внесення вимірювань вручну
298	ru-RU	Внесение измерений вручную
321	uk-UA	Ім'я вже використовуеться
322	ru-RU	Класс "{0}"не существует
322	uk-UA	Клас "{0}"не існує
324	ru-RU	Невозможно создать класс правил
324	uk-UA	Неможливо створити клас правил
325	ru-RU	Недействительное значение
325	uk-UA	Недійсне значення
327	ru-RU	Создайте новое разрешание
327	uk-UA	Створіть новий дозвіл
328	ru-RU	Разрешить
328	uk-UA	Дозволити
329	ru-RU	Выбирите разрешение
329	uk-UA	Виберіть дозвіл
330	ru-RU	Введите описание
330	uk-UA	Введіть опис
331	ru-RU	Название правила
331	uk-UA	Назва правила
332	ru-RU	Виберите правило
332	uk-UA	Виберіть правило
333	ru-RU	Разрешение на обновление
333	uk-UA	Дозвіл на оновлення
334	ru-RU	Данные невозможно декодировать
334	uk-UA	Дані неможливо декодувати
335	ru-RU	Сохранить
335	uk-UA	Зберегти
336	ru-RU	Создать новое правило
336	uk-UA	Створити нове правило
340	ru-RU	Создать правило
340	uk-UA	Створити правило
341	ru-RU	Правило
341	uk-UA	Правило
342	ru-RU	Класс
342	uk-UA	Клас
343	ru-RU	Создано в
343	uk-UA	Створено у
344	ru-RU	Обновлено в
344	uk-UA	Оновлено у
345	ru-RU	Создать правило
345	uk-UA	Створити правило
346	ru-RU	Пользователь
346	uk-UA	Користувач
347	ru-RU	Создать
347	uk-UA	Створити
348	ru-RU	Новый пользователь
348	uk-UA	Новий  користувач
350	ru-RU	Новое разрешение
350	uk-UA	Новий дозвіл
351	ru-RU	Новое правило
351	uk-UA	Нове правило
352	ru-RU	Задачи обновлены
352	uk-UA	Завдання оновлені
353	ru-RU	Обновить задачи
353	uk-UA	Оновити завдання
356	ru-RU	Пользователь не найден
356	uk-UA	Користувача не знайдено
357	ru-RU	Пользователь подтвержден
357	uk-UA	Користувача підтверджено
358	ru-RU	Ошибка при подтверждении пользователя
358	uk-UA	Під час підтвердження користувача сталася помилка
359	ru-RU	Пользователь  создан
359	uk-UA	Користувача створено
360	ru-RU	Исправлены следующие ошибки:
360	uk-UA	Виправте наступні помилки:
361	ru-RU	Вы уверены? Удаленного пользователя восстановить нельзя
361	uk-UA	Ти впевнений? Видалений користувач не може бути відновлений
362	ru-RU	Пользователь удален
362	uk-UA	Користувач видалений
363	ru-RU	Ошибка при удалении пользователя
363	uk-UA	Помилка при видаленні користувача
364	ru-RU	Пароль был изменен
364	uk-UA	Пароль змінено
365	ru-RU	Ошибка при смене пароля
365	uk-UA	Під час зміни пароля сталася помилка
366	ru-RU	Данные учетной записи обновлены
366	uk-UA	Дані про обліковий запис оновлені
367	ru-RU	Детали профиля обновлены
367	uk-UA	Деталі профілю оновлені
368	ru-RU	Выдача себя за пользователя отключена в конфигурации приложения
368	uk-UA	Уявлення про видаленого користувача вимкнено в конфігурації програми
369	ru-RU	Вы не можете удалить свою учетную запись
369	uk-UA	Ви не можете видалити власний обліковий запис
370	ru-RU	Вы не можете заблокировать свой аккаунт
370	uk-UA	Ви не можете заблокувати власний обліковий запис
371	ru-RU	Пользователь был разблокирован
371	uk-UA	Користувача розблоковано
372	ru-RU	Пользователь заблокирован
372	uk-UA	Користувача заблоковано
373	ru-RU	Генерация пароля невозможна для администраторов
373	uk-UA	Створення пароля для адміністраторів неможливе
374	ru-RU	Новый пароль создан и отправлен пользователю
374	uk-UA	Новий пароль створено та надіслано користувачеві
375	ru-RU	Ошибка при попытке сгенерировать новый пароль
455	ru-RU	Разблокировать
375	uk-UA	Помилка під час спроби згенерувати новий пароль
376	ru-RU	Сообщение о восстановлении отправлено
376	uk-UA	Повідомлення про відновлення надіслано
377	ru-RU	Ссылка для восстановления недействительна или срок ее действия истек. Пожалуйста, попробуйте запросить новый.
377	uk-UA	Посилання для відновлення недійсне або термін дії минув. Будь ласка, спробуйте подати запит на новий.
378	ru-RU	Недействительная или просроченная ссылка
378	uk-UA	Недійсне або минуле посилання
379	ru-RU	Ваш аккаунт был создан
379	uk-UA	Ваш обліковий запис створено
380	ru-RU	Подтверждение аккаунта
380	uk-UA	Підтвердження облікового запису
381	ru-RU	Отправлена ​​новая ссылка для подтверждения
381	uk-UA	Надіслано нове посилання на підтвердження
382	ru-RU	Регистрация на этом WEB-сайте отключена
382	uk-UA	Реєстрація на цьому WEB-сайті відключена
383	ru-RU	Ваша учетная запись заблокирована
383	uk-UA	Ваш обліковий запис заблоковано
384	ru-RU	Ваш профиль был обновлен
384	uk-UA	Ваш профіль був оновлений
385	ru-RU	Данные вашей учетной записи были обновлены
385	uk-UA	Інформація про ваш обліковий запису була оновлена
386	ru-RU	Не найдено
386	uk-UA	Не знайдено
387	ru-RU	Ваша учетная запись была полностью удалена
387	uk-UA	Ваш  обліковий запис повністю видалено
388	ru-RU	Добро пожаловать в {0}
388	uk-UA	Ласкаво просимо до {0}
389	ru-RU	Ваш пароль на {0} был изменен
389	uk-UA	Ваш пароль на {0} змінено
390	ru-RU	Подтвердите аккаунт на {0}
390	uk-UA	Підтвердьте обліковий запис на {0}
391	ru-RU	Подтвердите изменение адреса электронной почты {0}
391	uk-UA	Підтвердьте зміну електронної пошти на {0}
392	ru-RU	Завершить сброс пароля {0}
392	uk-UA	Завершити скидання пароля {0}
393	ru-RU	Что-то пошло не так
393	uk-UA	Щось пішло не так
394	ru-RU	Ваша учетная запись была подключена
394	uk-UA	Ваш обліковий запис підключено
395	ru-RU	Эта учетная запись уже была связана с другим пользователем
395	uk-UA	Цей обліковий запис уже підключено до іншого користувача
396	ru-RU	Логин
396	uk-UA	Логін
397	ru-RU	Пароль
397	uk-UA	Пароль
398	ru-RU	Вспомни меня в следующий раз
398	uk-UA	Згадай мене наступного разу
399	ru-RU	Вам необходимо подтвердить свой электронный адрес
399	uk-UA	Вам потрібно підтвердити свою електронну адресу
400	ru-RU	Ваш аккаунт заблокирован
400	uk-UA	Ваш обліковий запис заблоковано
401	ru-RU	Неправильный логин или пароль
401	uk-UA	Недійсний логін або пароль
402	ru-RU	Имя
402	uk-UA	Ім'я
403	ru-RU	Email (public)
403	uk-UA	Email (public)
405	ru-RU	Локация
405	uk-UA	Місцезнаходження
406	ru-RU	Website
406	uk-UA	Website
410	ru-RU	Email
410	uk-UA	Email
411	ru-RU	Было отправлено электронное письмо с инструкциями по сбросу пароля.
411	uk-UA	Надіслано електронне повідомлення з інструкціями щодо скидання пароля
412	ru-RU	Ваш пароль был успешно изменен.
412	uk-UA	Ваш пароль успішно змінено.
413	ru-RU	Произошла ошибка, и ваш пароль не был изменен. Пожалуйста, повторите попытку позже.
413	uk-UA	Сталася помилка, і ваш пароль не змінено. Будь-ласка спробуйте пізніше.
414	ru-RU	Это имя пользователя уже занято
414	uk-UA	Це ім’я користувача вже прийнято
415	ru-RU	Этот адрес электронной почты уже занят
415	uk-UA	Ця електронна адреса вже зайнята
416	ru-RU	Имя пользователя
416	uk-UA	Ім'я користувача
417	ru-RU	Ваша учетная запись была создана, и на вашу электронную почту было отправлено сообщение с дальнейшими инструкциями.
417	uk-UA	Ваш обліковий запис створено, а на електронну адресу надіслано повідомлення з подальшими інструкціями
455	uk-UA	Розблокувати
418	ru-RU	На ваш электронный адрес отправлено сообщение. Он содержит ссылку для подтверждения, которую вы должны нажать, чтобы завершить регистрацию.
418	uk-UA	На вашу електронну адресу надіслано повідомлення. Він містить посилання для підтвердження, яке потрібно натиснути, щоб завершити реєстрацію.
419	ru-RU	Текущий пароль недействителен
419	uk-UA	Поточний пароль не дійсний
420	ru-RU	Новый пароль
420	uk-UA	Новий пароль
421	ru-RU	Текущий пароль
421	uk-UA	Поточний пароль
422	ru-RU	Ваш электронный адрес был изменен
422	uk-UA	Вашу електронну адресу змінено
423	ru-RU	На ваш новый адрес электронной почты отправлено подтверждающее сообщение
423	uk-UA	На вашу нову електронну адресу надіслано повідомлення з підтвердженням
424	ru-RU	Мы отправили подтверждающие ссылки как на старый, так и на новый адрес электронной почты. Вы должны щелкнуть обе ссылки, чтобы завершить свой запрос
424	uk-UA	Ми надіслали посилання на підтвердження як на стару, так і на нову електронну адресу. Ви повинні натиснути обидва посилання, щоб завершити свій запит
425	en-US	Registration IP
425	ru-RU	Регистрация ІР
425	uk-UA	Регістрація ІР
426	ru-RU	Новый email
426	uk-UA	Новий email
427	ru-RU	Время регистрации
427	uk-UA	Час реєстрації
428	ru-RU	Последний логин
428	uk-UA	Останній логін
429	ru-RU	Время подтверждения
429	uk-UA	Час підтвердження
430	ru-RU	Спасибо, регистрация завершена.
430	uk-UA	Дякую, реєстрація завершена.
431	ru-RU	Что-то пошло не так, и ваш аккаунт не подтвержден.
431	uk-UA	Щось пішло не так, і ваш  обліковий запис не підтверджено.
432	ru-RU	Ссылка для подтверждения недействительна или срок ее действия истек. Пожалуйста, попробуйте запросить новый.
432	uk-UA	Посилання для підтвердження недійсне або термін дії минув. Будь ласка, спробуйте подати запит на новий.
433	ru-RU	Ваш запрос подтверждения недействителен или просрочен
433	uk-UA	Ваш запит підтвердження недійсний або термін дії минув
434	ru-RU	При обработке вашего запроса произошла ошибка
435	ru-RU	Отлично, почти готово. Теперь вам нужно нажать на ссылку подтверждения, отправленную на ваш старый адрес электронной почты.
435	uk-UA	Чудово, майже готово. Тепер потрібно натиснути посилання для підтвердження, надіслане на вашу стару адресу електронної пошти.
436	ru-RU	Отлично, почти готово. Теперь вам нужно нажать на ссылку подтверждения, отправленную на ваш новый адрес электронной почты.
436	uk-UA	Чудово, майже готово. Тепер потрібно натиснути посилання для підтвердження, надіслане на вашу нову електронну адресу.
438	ru-RU	Создайте учетную запись пользователя
438	uk-UA	Створіть обліковий запис користувача
439	ru-RU	Пользователь
439	uk-UA	Користувач
440	ru-RU	Детали учетной записи
440	uk-UA	Деталі облікового запису
441	ru-RU	Детали профиля
441	uk-UA	Деталі профілю
442	ru-RU	Информация
442	uk-UA	Інформація
443	ru-RU	Учетные данные будут отправлены пользователю по email
443	uk-UA	Облікові деталі будуть надіслані користувачеві електронною поштою
444	ru-RU	Если пароль не указан, он будет сгенерирован автоматически.
444	uk-UA	Пароль буде сформовано автоматично, якщо його не вказати
445	ru-RU	Сохранить
445	uk-UA	Зберегти
446	ru-RU	Управление пользователями
446	uk-UA	Керування користувачами
449	ru-RU	Никогда
449	uk-UA	Ніколи
450	ru-RU	Подтверждение
450	uk-UA	Підтвердження
451	ru-RU	Подтверждено
451	uk-UA	Підтверджено
452	ru-RU	Подтвердить
452	uk-UA	Підтвердити
453	ru-RU	Вы уверены, что хотите подтвердить этого пользователя?
453	uk-UA	Ви впевнені, що хочете підтвердити цього користувача?
454	ru-RU	Статус блокировки
454	uk-UA	Статус блокування
456	ru-RU	Вы уверены, что хотите разблокировать этого пользователя?
456	uk-UA	Ви впевнені, що хочете розблокувати цього користувача?
457	ru-RU	Блокировать
457	uk-UA	Блокувати
458	ru-RU	Вы уверены, что хотите заблокировать этого пользователя?
458	uk-UA	Ви впевнені, що хочете заблокувати цього користувача?
459	ru-RU	Вы уверены?
459	uk-UA	Ви впевнені?
460	ru-RU	Сгенерировать и отправить пользователю новый пароль
460	uk-UA	Сгенерувати та відправити новий пароль користувачеві
461	ru-RU	Станьте этим пользователем
461	uk-UA	Стати цим користувачем
462	ru-RU	Вы уверены, что хотите переключиться на этого пользователя до конца этого сеанса?
462	uk-UA	Ви впевнені, що хочете перейти до цього користувача до кінця цієї сесії?
463	ru-RU	Обновить учетную запись пользователя
463	uk-UA	Оновити обліковий запис користувача
464	ru-RU	Задания
464	uk-UA	Завдання
465	ru-RU	Удалить
465	uk-UA	Видалити
466	ru-RU	Вы уверены, что хотите удалить этого пользователя?
466	uk-UA	Ви впевнені, що хочете видалити цього користувача?
467	ru-RU	Обновить
467	uk-UA	Оновити
468	ru-RU	Вы можете назначить пользователю несколько ролей или разрешений, используя форму ниже
468	uk-UA	Ви можете призначити користувачеві кілька ролей або дозволів, використовуючи форму нижче
469	ru-RU	Регистрация IP
469	uk-UA	Реєстрація IP
470	ru-RU	Статус подтверждения
470	uk-UA	Статус підтвердження
471	ru-RU	Подтверждено на  {0, date, MMMM dd, YYYY HH:mm}
471	uk-UA	Підтверджено на  {0, date, MMMM dd, YYYY HH:mm}
472	ru-RU	Неподтвержденный
472	uk-UA	Непідтверджений
473	ru-RU	Заблокировано в {0, date, MMMM dd, YYYY HH:mm}
473	uk-UA	Заблоковано в {0, date, MMMM dd, YYYY HH:mm}
474	ru-RU	Не заблокирован
474	uk-UA	Не заблоковано
476	ru-RU	Разрешения
476	uk-UA	Дозволи
477	ru-RU	Правила
477	uk-UA	Правила
478	ru-RU	Создать
478	uk-UA	Створити
479	ru-RU	Новый пользователь
479	uk-UA	Новий користувач
480	ru-RU	Новая роль
480	uk-UA	Нова роль
481	ru-RU	Новое разрешение
481	uk-UA	Новий дозвіл
482	ru-RU	Новое правило
482	uk-UA	Нове правило
483	ru-RU	Здравствуйте
483	uk-UA	Здрастуйте
484	ru-RU	Спасибо за регистрацию на {0}
484	uk-UA	Дякуємо за реєстрацію в {0}
485	ru-RU	Чтобы завершить регистрацию, нажмите на ссылку ниже
485	uk-UA	Для завершення реєстрації натисніть на посилання нижче
486	ru-RU	Если вы не можете щелкнуть ссылку, попробуйте вставить текст в свой браузер.
486	uk-UA	Якщо ви не можете натиснути на посилання, спробуйте вставити текст у свій браузер
487	ru-RU	Если вы не отправляли этот запрос, проигнорируйте это письмо.
487	uk-UA	Якщо ви не робили цього запиту, ви можете проігнорувати цей електронний лист
488	ru-RU	У вашей учетной записи на {0} новый пароль
488	uk-UA	Ваш обліковий запис на {0} має новий пароль
489	ru-RU	Мы создали для вас пароль
489	uk-UA	Ми створили для вас пароль
490	ru-RU	Мы получили запрос на изменение адреса электронной почты для вашего аккаунта от {0}
490	uk-UA	Ми отримали запит на зміну адреси електронної пошти для вашого облікового запису {0}
491	ru-RU	Чтобы завершить запрос, нажмите на ссылку ниже
491	uk-UA	Щоб завершити ваш запит, натисніть на посилання нижче
492	ru-RU	Мы получили запрос на изменение пароля для вашего аккаунта {0}
492	uk-UA	Ми отримали запит на скидання пароля для вашого облікового запису {0}
493	ru-RU	Щелкните ссылку ниже, чтобы завершить сброс пароля
493	uk-UA	Натисныть на посилання нижче, щоб завершити скидання пароля
494	ru-RU	Ваш аккаунт на {0} был создан
494	uk-UA	Ваш обліковий запис на {0} створено
495	ru-RU	Зарегистрирован {0, date}
495	uk-UA	Зареестрований {0, date}
496	ru-RU	Восстановите свой пароль
496	uk-UA	Відновіть свій пароль
497	ru-RU	Продолжить
497	uk-UA	Продовжити
498	ru-RU	Сбросить пароль
498	uk-UA	Скинути пароль
499	ru-RU	Конец
499	uk-UA	Кінець
500	ru-RU	Войти в систему
500	uk-UA	Увійти в систему
501	ru-RU	Чтобы завершить регистрацию, нам нужно, чтобы вы заполнили следующие поля
501	uk-UA	Для того, щоб закінчити реєстрацію, нам потрібно ввести наступні поля
502	ru-RU	Если вы уже зарегистрировались, войдите в систему и подключите эту учетную запись на странице настроек
502	uk-UA	Якщо ви вже зареєструвались, увійдіть та підключіть цей обліковий запис на сторінці налаштувань
503	ru-RU	Зарегистрироваться
503	uk-UA	Зареєструйтесь
504	ru-RU	Уже зарегистрирован? Войти в систему!
504	uk-UA	Вже зареєстровані? Увійти!
505	ru-RU	Запросить новое подтверждающее сообщение
505	uk-UA	Запитувати нове повідомлення про підтвердження
506	ru-RU	Пароль не нужен, поскольку модуль находится в DEBUG режиме
506	uk-UA	Пароль не потрібен, оскільки модуль перебуває в DEBUG режимі
507	ru-RU	Забыли пароль?
507	uk-UA	Забули пароль?
508	ru-RU	Не получили подтверждающее сообщение?
508	uk-UA	Не отримали повідомлення з підтвердженням?
509	ru-RU	Нет учетной записи? Зарегистрироваться!
509	uk-UA	Не маєте облікового запису? Зареєструйтесь!
510	ru-RU	Настройки учетной записи
510	uk-UA	Налаштування облікового запису
511	ru-RU	Видалити учетной записи
511	uk-UA	Видалити обліковоий запис
512	ru-RU	После того, как вы удалите свою учетную запись, пути назад нет
512	uk-UA	Як тільки ви видалите свій обліковий запис, повернення назад не буде
513	ru-RU	Он будет удален навсегда
513	uk-UA	Його буде видалено назавжди
514	ru-RU	Пожалуйста будь уверен
514	uk-UA	Будьте впевнені
515	ru-RU	Вы уверены? Нет пути назад
515	uk-UA	Ти впевнений? Повернення назад немає
516	ru-RU	Сети
516	uk-UA	Мережі
517	ru-RU	Вы можете подключить несколько учетных записей, чтобы иметь возможность входить в систему с их помощью
517	uk-UA	Ви можете підключити кілька облікових записів, щоб мати можливість входити, використовуючи їх
518	ru-RU	Отключить
518	uk-UA	Від'єднати
519	ru-RU	Подключить
519	uk-UA	Підключіться
520	ru-RU	Настройки профиля
520	uk-UA	Налаштування профілю
521	ru-RU	Измените свой аватар на Gravatar.com
521	uk-UA	Змініть свій аватар на Gravatar.com
522	ru-RU	Профиль
522	uk-UA	Профіль
523	ru-RU	Учетная запись
523	uk-UA	Обліковий запис
524	ru-RU	Выйти
524	uk-UA	Вийти
525	en-US	ОК
525	ru-RU	ОК
525	uk-UA	ОК
526	ru-RU	Отмена
526	uk-UA	Скасувати
527	ru-RU	Информация
527	uk-UA	Інформація
528	ru-RU	Подтверждение
528	uk-UA	Підтвердження
529	ru-RU	Применить
529	uk-UA	Застосувати
530	ru-RU	Сохранить настройки сети
530	uk-UA	Зберегти налаштування мережі
531	ru-RU	Сбросить
531	uk-UA	Скинути
532	ru-RU	Отменить любые изменения и сбросить настройки
532	uk-UA	Скасуйте будь-які зміни та скинути налаштування
533	ru-RU	Мусор
533	uk-UA	Сміття
534	ru-RU	Удалить сохраненные настройки сетки
534	uk-UA	Видаліть збережені налаштування сітки
535	ru-RU	Персонализировать настройки сетки
535	uk-UA	Персоналізуйте параметри сітки
536	ru-RU	Сохранить / изменить сетку {category}
536	uk-UA	Зберегти / редагувати сітку {category}
537	ru-RU	Сохранить / изменить сетку {title}
537	uk-UA	Зберегти / редагувати сітку {title}
538	en-US	Grid
538	ru-RU	Сетка
538	uk-UA	Сітка
539	en-US	Sort
539	ru-RU	Сортировать
539	uk-UA	Сортувати
540	en-US	Filter
540	ru-RU	Фильтр
540	uk-UA	Фільтр
541	ru-RU	Скрытые / фиксированные столбцы
541	uk-UA	Приховані / фіксовані стовпці
542	ru-RU	Видимые столбцы
542	uk-UA	Видимі стовпці
543	ru-RU	Размер страницы
543	uk-UA	Розмір сторінки
544	ru-RU	Фильтр по умолчанию
544	uk-UA	Фільтр за замовчуванням
545	ru-RU	Сортировка по умолчанию
545	uk-UA	Сортування за замовчуванням
547	ru-RU	Имя фильтра
547	uk-UA	Назва фільтра
548	ru-RU	Сохраненные фильтры
548	uk-UA	Збережені фільтри
549	ru-RU	Конфигурация фильтра
549	uk-UA	Конфігурація фільтра
550	ru-RU	Сортировать Имя
550	uk-UA	Ім'я сортування
551	ru-RU	Сохраненные сортировки
551	uk-UA	Збережені сортування
552	ru-RU	Конфигурация сортировки
552	uk-UA	Конфигурація сортування
553	en-US	Descending
553	ru-RU	Нисходящий
553	uk-UA	Низхідний
554	en-US	Ascending
554	ru-RU	Восходящий
554	uk-UA	Висхідний
555	ru-RU	Операция запрещена! Обнаружена недействительная подпись запроса для настроек dynagrid. {params}
556	ru-RU	Сохранение и применение конфигурации
556	uk-UA	Збереження та застосування конфігурації
557	ru-RU	Удаление всех персонализаций
557	uk-UA	Видалення всіх персоналізацій
558	ru-RU	Вы уверены, что хотите удалить настройку?
558	uk-UA	Ви впевнені, що хочете видалити налаштування?
559	ru-RU	Персонализировать конфигурацию сетки
559	uk-UA	Персоналізуйте конфігурацію сітки
560	ru-RU	строк на странице
560	uk-UA	рядків на сторінці
561	ru-RU	Целое число от {min} до {max}
561	uk-UA	Ціле число від {min} до {max}
562	ru-RU	Выберите тему ...
562	uk-UA	Оберіть тему ...
563	ru-RU	Выберите тему для стилизации сетки
563	uk-UA	Оберіть тему для стилізації сітки
564	ru-RU	Выберите фильтр ...
564	uk-UA	Оберіть фільтр ...
565	ru-RU	Установить критерии фильтра сетки по умолчанию
565	uk-UA	Встановити критерії фільтру сітки за замовчуванням
566	ru-RU	Выберите сортировку ...
566	uk-UA	Виберіть сортування ...
567	ru-RU	Установить критерии сортировки сетки по умолчанию
567	uk-UA	Встановіть критерії сортування за замовчуванням
568	ru-RU	Настройка порядка и отображения столбцов сетки
568	uk-UA	Налаштування порядку та відображення колонок сітки
569	ru-RU	Выбрать...
569	uk-UA	Обрати…
571	ru-RU	ПРИМЕЧАНИЕ. При редактировании существующей записи будет изменено только имя {category} (но не настройки).
571	uk-UA	ПРИМІТКА. Під час редагування існуючого запису буде змінено лише ім’я {category} (а не налаштування).
572	ru-RU	ПРИМЕЧАНИЕ. При редактировании существующей записи будут изменены как имя {category}, так и ее настройки.
573	ru-RU	Сохранить
573	uk-UA	Зберегти
574	ru-RU	Удалить
574	uk-UA	Видалити
575	ru-RU	Ключ
575	uk-UA	Ключ
576	ru-RU	Значение
576	uk-UA	Значення
577	ru-RU	Ошибка ввода
577	uk-UA	Помилка воду
578	ru-RU	Значения нет в списке.
578	uk-UA	Значення в списку немає.
579	ru-RU	Выбрать из списка
579	uk-UA	Виберіть зі списку
580	ru-RU	Выберите значение из раскрывающегося списка.
580	uk-UA	Виберіть значення зі розкриваючогося списку.
582	ru-RU	Экспорт данных в выбранном формате
582	uk-UA	Експортуйте дані у вибраному форматі
583	ru-RU	Экспорт сетки, созданный виджетом Krajee ExportMenu (yii2-export)
583	uk-UA	Експорт сітки, створений віджетом Krajee ExportMenu (yii2-export)
584	en-US	Select сolumns
584	ru-RU	Выбрать столбцы
584	uk-UA	Виберіть стовпці
585	ru-RU	Выберите столбцы для экспорта
585	uk-UA	Виберіть стовпці для експорту
586	ru-RU	Столбцы
586	uk-UA	Стовпці
587	ru-RU	HTML
587	uk-UA	HTML
588	ru-RU	Hyper Text Markup Language
588	uk-UA	Hyper Text Markup Language
589	ru-RU	Для загрузки будет создан файл экспорта HTML.
589	uk-UA	Файл експорту HTML буде створений для завантаження.
590	ru-RU	CSV
590	uk-UA	CSV
591	ru-RU	Значения, разделенные запятыми
591	uk-UA	Значення, розділені комами
592	ru-RU	Файл экспорта CSV будет создан для загрузки.
592	uk-UA	Файл експорту CSV буде створений для завантаження.
593	ru-RU	Текст
593	uk-UA	Текст
594	ru-RU	Текст с разделителями табуляции
594	uk-UA	Розділений текст на вкладці
595	ru-RU	Файл экспорта ТЕКСТА будет создан для загрузки.
595	uk-UA	Файл експорту ТЕКСТ буде створений для завантаження.
596	ru-RU	PDF
596	uk-UA	PDF
597	ru-RU	Формат переносимого документа
597	uk-UA	Портативний формат документа
598	ru-RU	Экспортный файл PDF будет создан для загрузки.
598	uk-UA	Експортний файл PDF буде створений для завантаження.
599	ru-RU	Excel 95 +
599	uk-UA	Excel 95 +
600	ru-RU	Microsoft Excel 95+ (xls)
600	uk-UA	Microsoft Excel 95+ (xls)
601	ru-RU	Экспортный файл EXCEL 95+ (xls) будет создан для загрузки.
601	uk-UA	Для завантаження буде створено файл експорту EXCEL 95+ (xls).
602	ru-RU	Excel 2007+
602	uk-UA	Excel 2007+
603	ru-RU	Microsoft Excel 2007+ (xlsx)
603	uk-UA	Microsoft Excel 2007+ (xlsx)
604	ru-RU	Экспортный файл EXCEL 2007+ (xlsx) будет создан для загрузки.
604	uk-UA	Для завантаження буде створено файл експорту EXCEL 2007+ (xlsx).
605	ru-RU	Отключите все блокировщики всплывающих окон в своем браузере, чтобы обеспечить правильную загрузку.
605	uk-UA	Вимкніть будь-які блокувальники спливаючих вікон у вашому браузері, щоб забезпечити належне завантаження.
606	ru-RU	ОК, для продолжить?
606	uk-UA	ОК, для продовження
607	ru-RU	Создание файла экспорта. Пожалуйста, подождите...
607	uk-UA	Створення файлу експорту. Зачекайте, будь ласка ...
608	ru-RU	Запрос отправлен! Вы можете безопасно закрыть это диалоговое окно после сохранения загруженного файла.
608	uk-UA	Запит подано! Ви можете безпечно закрити це діалогове вікно після збереження завантаженого файлу.
609	ru-RU	Экспортированный файл
609	uk-UA	Експортований файл
610	ru-RU	Скачать экспортированный файл
610	uk-UA	Завантажте експортований файл
611	ru-RU	Действия
611	uk-UA	Дії
612	ru-RU	пункт
612	uk-UA	пункт
613	ru-RU	Вы действительно хотите удалить этот {item}?
613	uk-UA	Ви впевнені, що видалите цей {item}?
614	ru-RU	Посмотреть
614	uk-UA	Переглянути
615	ru-RU	Обновить
615	uk-UA	Оновити
616	ru-RU	Удалить
616	uk-UA	Видалити
617	ru-RU	Активный
617	uk-UA	Активний
618	ru-RU	Неактивный
618	uk-UA	Неакктивний
619	ru-RU	Экспорт
619	uk-UA	Єкспорт
620	ru-RU	Данные не найдены
620	uk-UA	Даних не знайдено
623	ru-RU	Добавить блок
623	uk-UA	Додпати блок
624	ru-RU	Список книг
624	uk-UA	Список книг
625	ru-RU	Скачать выбранное
625	uk-UA	Завантажити Вибране
626	ru-RU	Библиотека
626	uk-UA	Бібліотека
677	ru-RU	Для загрузки будет создан экспортный файл JSON.
628	ru-RU	Сводка по странице отображает СУММ для первых 3 столбцов суммы и СРЕДНЕЕ для последнего.
628	uk-UA	Підсумок сторінки відображає суму для перших 3 стовпців суми та AVG для останньої.
629	ru-RU	В этой демонстрации заголовок таблицы остается вверху при прокрутке.
629	uk-UA	Заголовок таблиці тримається вгорі в цій демонстрації під час прокрутки
630	ru-RU	Измените размер столбцов таблицы, как и в электронной таблице, перетаскивая края столбца.
630	uk-UA	Змінюйте розмір стовпців таблиці так само, як електронну таблицю, перетягуючи краю стовпців.
631	ru-RU	Недействительные или неверные редактируемые данные
631	uk-UA	Недійсні або погані дані для редагування
632	ru-RU	Действительная редактируемая модель не найдена
632	uk-UA	Не знайдено допустимої редагованої моделі
633	ru-RU	Недействительный редактируемый индекс или имя модели
633	uk-UA	Недійсний для редагування індекс або назва форми моделі
634	ru-RU	Не удалось обновить редактируемые данные из-за неизвестной ошибки сервера
634	uk-UA	Не вдалось оновити дані, які можна редагувати, через невідому помилку сервера
636	ru-RU	Развернуть
636	uk-UA	Розгорнути
637	ru-RU	Свернуть
637	uk-UA	Згорнути
638	ru-RU	Развернуть все
638	uk-UA	Розгорнути все
639	ru-RU	Свернуть все
639	uk-UA	Згорнути все
640	ru-RU	пунктов
640	uk-UA	пунктів
641	ru-RU	пунктов-несколько
641	uk-UA	пунктів-декілька
642	ru-RU	пунктов-много
642	uk-UA	пунктів-багато
643	ru-RU	пунктов-согласно
643	uk-UA	пункти-згідно
646	ru-RU	Отключите все блокировщики всплывающих окон в своем браузере, чтобы обеспечить правильную загрузку.
646	uk-UA	Отключите все блокировщики всплывающих окон в своем браузере, чтобы обеспечить правильную загрузку.
647	ru-RU	ОК, чтобы продолжить?
647	uk-UA	Ок,щоб продовжити?
648	ru-RU	Создание файла экспорта. Пожалуйста, подождите...
648	uk-UA	Створення файлу експорту. Зачекайте, будь ласка ...
649	ru-RU	Запрос отправлен! Вы можете безопасно закрыть это диалоговое окно после сохранения загруженного файла.
649	uk-UA	Запит подано! Ви можете безпечно закрити це діалогове вікно після збереження завантаженого файлу.
650	ru-RU	Экспорт
650	uk-UA	Експорт
651	ru-RU	Экспорт данных страницы
651	uk-UA	Експортувати дані сторінки
652	ru-RU	Экспорт всех данных
652	uk-UA	Експортувати всі дані
653	ru-RU	Экспорт сетки
653	uk-UA	Експортувати сітку
655	ru-RU	Создано
655	uk-UA	Створено
657	ru-RU	HTML
657	uk-UA	HTML
659	ru-RU	Для загрузки будет создан файл экспорта HTML.
661	ru-RU	CSV
661	uk-UA	CSV
662	ru-RU	Файл экспорта CSV будет создан для загрузки.
662	uk-UA	Файл експорту CSV буде створений для завантаження.
663	ru-RU	Значения, разделенные запятыми
663	uk-UA	Значення, розділені комами
664	ru-RU	Текст
664	uk-UA	Текст
665	ru-RU	Файл экспорта ТЕКСТА будет создан для загрузки.
665	uk-UA	Файл експорту ТЕКСТ буде створений для завантаження.
666	ru-RU	Текст с разделителями табуляции
666	uk-UA	Розділений текст на вкладці
667	ru-RU	Excel
667	uk-UA	Excel
668	ru-RU	Для загрузки будет создан файл экспорта EXCEL.
669	ru-RU	Microsoft Excel 95+
669	uk-UA	Microsoft Excel 95+
671	ru-RU	PDF
671	uk-UA	PDF
672	ru-RU	Экспортный файл PDF будет создан для загрузки.
672	uk-UA	Експортний файл EXCEL буде створений для завантаження.
673	ru-RU	Формат переносимого документа
673	uk-UA	Портативний формат документа
674	ru-RU	Экспорт PDF, созданный с помощью расширения kartik-v / yii2-grid
674	uk-UA	Експорт PDF-файлів, створений розширенням сітки kartik-v / yii2-grid
676	ru-RU	JSON
676	uk-UA	JSON
677	uk-UA	Експортний файл JSON буде створений для завантаження.
678	ru-RU	JavaScript Object Notation
678	uk-UA	JavaScript Object Notation
679	ru-RU	Есть {totalCount} записей. Вы уверены, что хотите показать их все?
679	uk-UA	Є {totalCount} записів. Ви впевнені, що хочете відобразити їх усі?
680	ru-RU	Все
680	uk-UA	Всі
681	ru-RU	Показать все данные
681	uk-UA	Показати всі дані
682	ru-RU	Страница
682	uk-UA	Сторінка
683	ru-RU	Показать данные первой страницы
683	uk-UA	Показати дані першої сторінки
684	ru-RU	Очистить выбор
684	uk-UA	Очистити вибір
685	ru-RU	Для правильного отображения элемента управления {type} рекомендуется использовать обновленный браузер.
685	uk-UA	Для правильного відображення елемента керування {type} рекомендується використовувати оновлений браузер.
686	ru-RU	Выберите дату
686	uk-UA	Виберіть дату
687	ru-RU	Очистить поле
687	uk-UA	Очистити поле
688	ru-RU	Выберите дату и время
688	uk-UA	Виберіть дату та час
689	ru-RU	Очистить поле
689	uk-UA	Очистити поле
690	ru-RU	предварительный просмотр файла и загрузка нескольких файлов
690	uk-UA	попередній перегляд файлу та завантаження декількох файлів
691	ru-RU	загрузка нескольких файлов
691	uk-UA	завантаження декількох файлів
692	ru-RU	Note:
692	uk-UA	Note:
694	ru-RU	Выбрать все
694	uk-UA	Оберати усе
695	ru-RU	Снять все
695	uk-UA	Скинути усе
696	ru-RU	ID языка
696	uk-UA	ID мови
697	ru-RU	Язык
697	uk-UA	Мова
698	ru-RU	Страна
698	uk-UA	Країна
699	ru-RU	Имя
699	uk-UA	Ім'я
700	ru-RU	Имя Ascii
700	uk-UA	Ім'я Ascii
701	ru-RU	Статус
701	uk-UA	Статус
702	ru-RU	ID
702	uk-UA	ID
703	ru-RU	Категория
703	uk-UA	Категорія
704	ru-RU	Сообщение
704	uk-UA	Повідомлення
705	ru-RU	Перевод
705	uk-UA	Переклад
706	ru-RU	tel.:
706	uk-UA	tel.:
707	ru-RU	fax.:
707	uk-UA	fax.:
708	ru-RU	e-mail:
708	uk-UA	e-mail:
709	ru-RU	Copyright © {start}-{end}
709	uk-UA	Copyright © {start}-{end}
710	ru-RU	Monitoring
710	uk-UA	Monitoring
47	ru-RU	Создать {modelClass}
47	uk-UA	Створити {modelClass}
60	ru-RU	Перевод на {language_id}
60	uk-UA	Переклад на {language_id}
134	ru-RU	Обновить производителя: {name}
134	uk-UA	Оновити виробника: {name}
223	ru-RU	Обновить объект СКЗ файл: {name}
223	uk-UA	Оновити об'єкт СКЗ файл: {name}
555	uk-UA	Операція заборонена! Виявлено недійсний підпис запиту для налаштувань dynagrid. {params}
570	ru-RU	Задайте имя, чтобы сохранить состояние вашей текущей сетки {category}. Вы также можете выбрать сохраненную {category} из списка ниже для редактирования или удаления.
570	uk-UA	Встановіть назву, щоб зберегти стан вашої поточної сітки {category}. Ви також можете вибрати збережену {category} зі списку нижче для редагування або видалення.
572	uk-UA	ПРИМІТКА. Під час редагування існуючого запису буде змінено як назву {category}, так і її налаштування.
693	ru-RU	Ваш браузер не поддерживает {validation}. Попробуйте использовать альтернативный или более свежий браузер для доступа к этим функциям.
693	uk-UA	Ваш браузер не підтримує {validation}. Спробуйте альтернативний або новіший браузер, щоб отримати доступ до цих функцій.
87	ru-RU	Обновить Расположение: {name}
87	uk-UA	Оновити Розташування: {name}
115	ru-RU	Обновить Ответственный владелец СКЗ: {name}
115	uk-UA	Оновити Відповідальний влатсник СКЗ: {name}
779	ru-RU	Программно Аппаратный Комплекс
172	ru-RU	Напряжение сети
172	uk-UA	Напруга мережі
745	ru-RU	Киев
745	uk-UA	Київ
746	ru-RU	ЭЛМЕТ
746	uk-UA	ЕЛМЕТ
81	en-US	Responsible owner CPS
779	uk-UA	Програмно Апаратний Комплекс
85	en-US	Create Location
86	en-US	Locations
87	en-US	Update Location: {name}
95	en-US	Select Location
146	en-US	Location
289	en-US	Location
302	en-US	
289	uk-UA	Розташування
290	uk-UA	Відповідальний влатсник СКЗ
751	en-US	KITVIS
751	ru-RU	КИТВИС
751	uk-UA	КІТВІС
752	ru-RU	Обновить {modelClass}:
752	uk-UA	Оновити {modelClass}:
753	en-US	Select Location
753	ru-RU	Выбирите Расположение
753	uk-UA	Оберіть Розташування
112	en-US	Select Responsible owner CPS
113	en-US	Create Responsible owner CPS
115	en-US	Update Responsible owner CPS: {name}
122	en-US	Select Responsible owner CPS
754	ru-RU	Выберите производителя
754	uk-UA	Виберіть виробника
154	ru-RU	Считать Ток
156	ru-RU	Настройка
159	en-US	Stabilization Type
159	ru-RU	Тип Стабилизации
159	uk-UA	Тип Стабілізації
288	ru-RU	Объеккт СКЗ
290	en-US	Responsible owner CPS
755	ru-RU	Сервисный центр
755	uk-UA	Сервісний центр
756	ru-RU	ДП МА «Бориспіль»
756	uk-UA	ДП МА «Бориспіль»
757	ru-RU	Перон F
757	uk-UA	Перон F
758	ru-RU	Склад ЦЗС
758	uk-UA	Склад ЦЗС
759	ru-RU	Перон G.1
759	uk-UA	Перон G.1
760	ru-RU	Тепломережа-1
760	uk-UA	Тепломережа-1
761	ru-RU	Міжскладський паливопровід
761	uk-UA	Міжскладський паливопровід
762	ru-RU	Склад ПММ
762	uk-UA	Склад ПММ
763	ru-RU	Тепломережа-2
763	uk-UA	Тепломережа-2
764	ru-RU	Тепломережа-3
764	uk-UA	Тепломережа-3
765	ru-RU	УКЗ №4
765	uk-UA	УКЗ №4
766	ru-RU	УКЗ №5
766	uk-UA	УКЗ №5
767	ru-RU	УКЗ №6
767	uk-UA	УКЗ №6
768	ru-RU	УКЗ №7
768	uk-UA	УКЗ №7
769	ru-RU	УКЗ №8
769	uk-UA	УКЗ №8
770	ru-RU	УКЗ №9
770	uk-UA	УКЗ №9
771	ru-RU	УКЗ №10
771	uk-UA	УКЗ №10
772	ru-RU	УКЗ №11
772	uk-UA	УКЗ №11
773	ru-RU	test
773	uk-UA	test
236	en-US	Report
297	en-US	Report
229	en-US	Manual measurement
298	en-US	Manual measurement
148	en-US	Disable polling
78	uk-UA	Ч
78	ru-RU	Ч
774	ru-RU	+38(044) 570-33-88
774	uk-UA	+38(044) 570-33-88
775	ru-RU	office@kitvis.com.ua
775	uk-UA	office@kitvis.com.ua
776	ru-RU	КИТВИС
776	uk-UA	КІТВІС
777	ru-RU	02088, Украина, г. Киев, ул. Карла Маркса, 3
777	uk-UA	02088, Україна, м. Київ, вул. Карла Маркса, 3
778	ru-RU	ПАК "ГАРАНТ"
778	uk-UA	ПАК "ГАРАНТ"
\.


--
-- Data for Name: crm_manufacturer; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_manufacturer (id, label, created_at, updated_at) FROM stdin;
2	ELMET	2020-12-23 22:25:20	2020-12-23 22:25:20
\.


--
-- Data for Name: crm_migration; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_migration (version, apply_time) FROM stdin;
m000000_000000_base	1605531823
m140209_132017_init	1605531832
m140403_174025_create_account_table	1605531832
m140504_113157_update_tables	1605531832
m140504_130429_create_token_table	1605531832
m140830_171933_fix_ip_field	1605531832
m140830_172703_change_account_table_name	1605531832
m141222_110026_update_ip_field	1605531832
m141222_135246_alter_username_length	1605531832
m150614_103145_update_social_account_table	1605531832
m150623_212711_fix_username_notnull	1605531832
m151218_234654_add_timezone_to_profile	1605531832
m160929_103127_add_last_login_at_to_user_table	1605531832
m140506_102106_rbac_init	1605531895
m170907_052038_rbac_add_index_on_auth_assignment_user_id	1605531895
m180523_151638_rbac_updates_indexes_without_prefix	1605531895
m200409_110543_rbac_update_mssql_trigger	1605531895
m141002_030233_translate_manager	1605533205
m201116_071352_create_db_scheme	1608230399
m201217_092215_dev_data	1608230399
m210123_120807_insert_translate	1612623206
m210130_164842_insert_permissions	1612623206
m210207_120317_archive_table	1612701692
\.


--
-- Data for Name: crm_object_skz; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz (id, label, label_identification, text, address_id, manufacturer_id, working_status, published, object_ip, object_port, slave_id, door_control, load_current, going_beyond, adjustment, disconnection, entrance, active_type, mses_current, mses_setting, mses_high, mses_low, u_skz_current, u_skz_setting, u_skz_high, u_skz_low, i_skz_current, i_skz_setting, i_skz_high, i_skz_low, mains_voltage, temperature, kvt_h_in, kvt_h_out, time_working, time_protection, query_interval, stabilization, discrete_input_1, discrete_input_2, discrete_input_3, api_update_at, google_maps_lat, google_maps_lng, created_at, updated_at) FROM stdin;
7	УКЗ №4	1436	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон F</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №4</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1436</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 65 13</p>\r\n\r\n\t\t\t<p>91.145.220.80</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	3	2	0	1	91.145.220.80	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:11:06	0.00000000	0.00000000	2021-02-06 16:11:06	2021-02-06 16:11:06
14	УКЗ №11	1432	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-3</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №11</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1432</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 66 91</p>\r\n\r\n\t\t\t<p>91.145.224.30</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	10	2	0	1	91.145.224.30	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:47:16	0.00000000	0.00000000	2021-02-06 16:47:16	2021-02-06 16:47:16
12	УКЗ №9	1433	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ПММ</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №9</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1433</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073&nbsp;213 72 17</p>\r\n\r\n\t\t\t<p>91.145.212.71</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	8	2	0	1	91.145.212.71	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:41:41	0.00000000	0.00000000	2021-02-06 16:41:41	2021-02-06 16:41:41
13	УКЗ №10	1431	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №10</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1431</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 64 65</p>\r\n\r\n\t\t\t<p>91.145.192.252</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	9	2	0	1	91.145.192.252	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:45:07	0.00000000	0.00000000	2021-02-06 16:45:07	2021-02-06 16:45:07
10	УКЗ №7	1430	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Тепломережа-1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №7</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1430</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>073 213 71 62</p>\r\n\r\n\t\t\t<p>91.145.239.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	6	2	0	1	91.145.239.106	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:17:48	0.00000000	0.00000000	2021-02-06 16:17:48	2021-02-06 16:17:48
11	УКЗ №8	1434	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Міжскладський паливопровід</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №8</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>1434</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 90</p>\r\n\r\n\t\t\t<p>91.145.222.106</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	7	2	0	1	91.145.222.106	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-06 16:20:40	0.00000000	0.00000000	2021-02-06 16:20:40	2021-02-06 16:20:40
8	УКЗ №5	іПАУ-3,0	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Склад ЦЗС</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №5</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>3,0</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063 980 64 23</p>\r\n\r\n\t\t\t<p>91.145.255.247</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	4	2	0	1	91.145.255.247	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-07 13:40:40	0.00000000	0.00000000	2021-02-06 16:12:53	2021-02-07 13:40:40
9	УКЗ №6	іПАУ-1,2	<table border="1" cellpadding="0" cellspacing="0">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p><strong>Ответственный владелец СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Адрес СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p><strong>СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Производитель</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p><strong>Наименование СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p><strong>Мощность СКЗ</strong><strong> кВт</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p><strong>Заводской номер СКЗ</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p><strong>Тел/ </strong><strong>IP</strong></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="width:168px">\r\n\t\t\t<p>ДП МА &laquo;Бориспіль<strong>&raquo;</strong></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>Перон G.1</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:94px">\r\n\t\t\t<p>УКЗ №6</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>&ldquo;ЕЛМЕТ&rdquo;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:123px">\r\n\t\t\t<p>іПАУ-1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:113px">\r\n\t\t\t<p>1,2</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:151px">\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td style="width:180px">\r\n\t\t\t<p>063&nbsp;980 67 45</p>\r\n\r\n\t\t\t<p>91.145.241.127</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n	5	2	0	1	91.145.241.127	5002	1	0	0	1	0	0	0	mses	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	30	0	0	0	0	2021-02-07 13:40:57	0.00000000	0.00000000	2021-02-06 16:14:15	2021-02-07 13:40:57
\.


--
-- Data for Name: crm_object_skz_file; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_file (id, object_id, label, file_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_object_skz_log_analog; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_log_analog (id, object_id, active_type, mses_current, mses_setting, mses_high, mses_low, u_skz_current, u_skz_setting, u_skz_high, u_skz_low, i_skz_current, i_skz_setting, i_skz_high, i_skz_low, mains_voltage, temperature, kvt_h_in, kvt_h_out, time_working, time_protection, query_interval, stabilization, discrete_input_1, discrete_input_2, discrete_input_3, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_object_skz_log_analog_archive; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_log_analog_archive (id, object_id, active_type, mses_current, mses_setting, mses_high, mses_low, u_skz_current, u_skz_setting, u_skz_high, u_skz_low, i_skz_current, i_skz_setting, i_skz_high, i_skz_low, mains_voltage, temperature, kvt_h_in, kvt_h_out, time_working, time_protection, query_interval, stabilization, discrete_input_1, discrete_input_2, discrete_input_3, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_object_skz_log_discrete; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_log_discrete (id, object_id, current_event, door_control, load_current, going_beyond, adjustment, disconnection, entrance, comment, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_object_skz_log_discrete_archive; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_log_discrete_archive (id, object_id, current_event, door_control, load_current, going_beyond, adjustment, disconnection, entrance, comment, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crm_object_skz_send_data; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_object_skz_send_data (id, object_id, active_type, setting, high, low, query_interval, created_at, updated_at, setting_type) FROM stdin;
\.


--
-- Data for Name: crm_profile; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_profile (user_id, name, public_email, gravatar_email, gravatar_id, location, website, bio, timezone) FROM stdin;
3	\N	\N	\N	\N	\N	\N	\N	\N
4	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: crm_setting; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_setting (id, label, code, value_data, value_type, autoload, created_at, updated_at) FROM stdin;
1	company logo	company-logo	\N	image	1	2020-12-20 19:59:45	2020-12-20 19:59:54
6	fax	fax	+38(044) 570-33-88	input	1	2020-12-23 19:55:48	2021-01-23 12:11:05
5	Phone	phone	+38(044) 570-33-88	input	1	2020-12-23 19:54:53	2021-02-08 19:11:51
7	email	email	office@kitvis.com.ua	input	1	2020-12-23 19:56:20	2021-02-08 19:12:01
8	Copyright	copyright	KITVIS	input	1	2020-12-23 20:14:45	2021-02-08 19:12:19
4	address	address	02088, Ukraine, Kiev, str. Karla Marksa, 3	input	1	2020-12-20 20:05:32	2021-02-08 19:13:04
3	company description	company-description	Hardware and Software System	input	1	2020-12-20 20:02:32	2021-02-08 19:14:30
2	company name	company-name	HSS "GARANT"	input	1	2020-12-20 20:00:15	2021-02-08 19:15:16
\.


--
-- Data for Name: crm_social_account; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_social_account (id, user_id, provider, client_id, data, code, created_at, email, username) FROM stdin;
\.


--
-- Data for Name: crm_token; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_token (user_id, code, created_at, type) FROM stdin;
\.


--
-- Data for Name: crm_user; Type: TABLE DATA; Schema: public; Owner: ide
--

COPY public.crm_user (id, username, email, password_hash, auth_key, confirmed_at, unconfirmed_email, blocked_at, registration_ip, created_at, updated_at, flags, last_login_at, access_token) FROM stdin;
3	api	api@skz.pro	$2y$12$QiNvB1qG4jlF29Rs99PT2eFnGjaxlnK/aJxWcaJ3aJC7ZH1JweApG	CgnmYMdqVNoG-517AVXeUSlJ_R1vL3W1	1606550538	\N	\N	127.0.0.1	1606550538	1613317095	0	\N	iosNZQYS0fu0kD5EdcD_bA0eHrzsaPg6
4	admin	admin@skz.pro	$2y$12$zFPrBZqH5I5JM6puhqU7ceKkOT7HfI/0cbsgQ1ME8WJCvTcmUTl06	PkRhBFzZxzXfIoIcawDTTbULtej2HvOB	1613316976	\N	\N	127.0.0.1	1613316976	1613316976	0	1613317131	\N
\.


--
-- Name: crm_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_account_id_seq', 1, false);


--
-- Name: crm_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_address_id_seq', 10, true);


--
-- Name: crm_change_log_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_change_log_archive_id_seq', 74, true);


--
-- Name: crm_change_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_change_log_id_seq', 5631, true);


--
-- Name: crm_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_city_id_seq', 3, true);


--
-- Name: crm_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_file_id_seq', 41, true);


--
-- Name: crm_language_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_language_source_id_seq', 779, true);


--
-- Name: crm_manufacturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_manufacturer_id_seq', 2, true);


--
-- Name: crm_object_skz_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_file_id_seq', 16, true);


--
-- Name: crm_object_skz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_id_seq', 15, true);


--
-- Name: crm_object_skz_log_analog_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_log_analog_archive_id_seq', 4, true);


--
-- Name: crm_object_skz_log_analog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_log_analog_id_seq', 2089, true);


--
-- Name: crm_object_skz_log_discrete_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_log_discrete_archive_id_seq', 1, true);


--
-- Name: crm_object_skz_log_discrete_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_log_discrete_id_seq', 44, true);


--
-- Name: crm_object_skz_send_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_object_skz_send_data_id_seq', 153, true);


--
-- Name: crm_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_setting_id_seq', 8, true);


--
-- Name: crm_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ide
--

SELECT pg_catalog.setval('public.crm_user_id_seq', 4, true);


--
-- Name: crm_social_account crm_account_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_social_account
    ADD CONSTRAINT crm_account_pkey PRIMARY KEY (id);


--
-- Name: crm_address crm_address_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_address
    ADD CONSTRAINT crm_address_pkey PRIMARY KEY (id);


--
-- Name: crm_auth_assignment crm_auth_assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_assignment
    ADD CONSTRAINT crm_auth_assignment_pkey PRIMARY KEY (item_name, user_id);


--
-- Name: crm_auth_item_child crm_auth_item_child_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_item_child
    ADD CONSTRAINT crm_auth_item_child_pkey PRIMARY KEY (parent, child);


--
-- Name: crm_auth_item crm_auth_item_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_item
    ADD CONSTRAINT crm_auth_item_pkey PRIMARY KEY (name);


--
-- Name: crm_auth_rule crm_auth_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_rule
    ADD CONSTRAINT crm_auth_rule_pkey PRIMARY KEY (name);


--
-- Name: crm_change_log_archive crm_change_log_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_change_log_archive
    ADD CONSTRAINT crm_change_log_archive_pkey PRIMARY KEY (id);


--
-- Name: crm_change_log crm_change_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_change_log
    ADD CONSTRAINT crm_change_log_pkey PRIMARY KEY (id);


--
-- Name: crm_city crm_city_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_city
    ADD CONSTRAINT crm_city_pkey PRIMARY KEY (id);


--
-- Name: crm_file crm_file_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_file
    ADD CONSTRAINT crm_file_pkey PRIMARY KEY (id);


--
-- Name: crm_language crm_language_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language
    ADD CONSTRAINT crm_language_pkey PRIMARY KEY (language_id);


--
-- Name: crm_language_source crm_language_source_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language_source
    ADD CONSTRAINT crm_language_source_pkey PRIMARY KEY (id);


--
-- Name: crm_language_translate crm_language_translate_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language_translate
    ADD CONSTRAINT crm_language_translate_pkey PRIMARY KEY (id, language);


--
-- Name: crm_manufacturer crm_manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_manufacturer
    ADD CONSTRAINT crm_manufacturer_pkey PRIMARY KEY (id);


--
-- Name: crm_migration crm_migration_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_migration
    ADD CONSTRAINT crm_migration_pkey PRIMARY KEY (version);


--
-- Name: crm_object_skz_file crm_object_skz_file_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_file
    ADD CONSTRAINT crm_object_skz_file_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz_log_analog_archive crm_object_skz_log_analog_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_analog_archive
    ADD CONSTRAINT crm_object_skz_log_analog_archive_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz_log_analog crm_object_skz_log_analog_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_analog
    ADD CONSTRAINT crm_object_skz_log_analog_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz_log_discrete_archive crm_object_skz_log_discrete_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_discrete_archive
    ADD CONSTRAINT crm_object_skz_log_discrete_archive_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz_log_discrete crm_object_skz_log_discrete_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_discrete
    ADD CONSTRAINT crm_object_skz_log_discrete_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz crm_object_skz_object_ip_key; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz
    ADD CONSTRAINT crm_object_skz_object_ip_key UNIQUE (object_ip);


--
-- Name: crm_object_skz crm_object_skz_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz
    ADD CONSTRAINT crm_object_skz_pkey PRIMARY KEY (id);


--
-- Name: crm_object_skz_send_data crm_object_skz_send_data_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_send_data
    ADD CONSTRAINT crm_object_skz_send_data_pkey PRIMARY KEY (id);


--
-- Name: crm_profile crm_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_profile
    ADD CONSTRAINT crm_profile_pkey PRIMARY KEY (user_id);


--
-- Name: crm_setting crm_setting_code_key; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_setting
    ADD CONSTRAINT crm_setting_code_key UNIQUE (code);


--
-- Name: crm_setting crm_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_setting
    ADD CONSTRAINT crm_setting_pkey PRIMARY KEY (id);


--
-- Name: crm_user crm_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_user
    ADD CONSTRAINT crm_user_pkey PRIMARY KEY (id);


--
-- Name: crm_account_unique; Type: INDEX; Schema: public; Owner: ide
--

CREATE UNIQUE INDEX crm_account_unique ON public.crm_social_account USING btree (provider, client_id);


--
-- Name: crm_account_unique_code; Type: INDEX; Schema: public; Owner: ide
--

CREATE UNIQUE INDEX crm_account_unique_code ON public.crm_social_account USING btree (code);


--
-- Name: crm_idx-auth_assignment-user_id; Type: INDEX; Schema: public; Owner: ide
--

CREATE INDEX "crm_idx-auth_assignment-user_id" ON public.crm_auth_assignment USING btree (user_id);


--
-- Name: crm_idx-auth_item-type; Type: INDEX; Schema: public; Owner: ide
--

CREATE INDEX "crm_idx-auth_item-type" ON public.crm_auth_item USING btree (type);


--
-- Name: crm_token_unique; Type: INDEX; Schema: public; Owner: ide
--

CREATE UNIQUE INDEX crm_token_unique ON public.crm_token USING btree (user_id, code, type);


--
-- Name: crm_user_unique_email; Type: INDEX; Schema: public; Owner: ide
--

CREATE UNIQUE INDEX crm_user_unique_email ON public.crm_user USING btree (email);


--
-- Name: crm_user_unique_username; Type: INDEX; Schema: public; Owner: ide
--

CREATE UNIQUE INDEX crm_user_unique_username ON public.crm_user USING btree (username);


--
-- Name: language_translate_idx_language; Type: INDEX; Schema: public; Owner: ide
--

CREATE INDEX language_translate_idx_language ON public.crm_language_translate USING btree (language);


--
-- Name: crm_auth_assignment crm_auth_assignment_item_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_assignment
    ADD CONSTRAINT crm_auth_assignment_item_name_fkey FOREIGN KEY (item_name) REFERENCES public.crm_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_auth_item_child crm_auth_item_child_child_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_item_child
    ADD CONSTRAINT crm_auth_item_child_child_fkey FOREIGN KEY (child) REFERENCES public.crm_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_auth_item_child crm_auth_item_child_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_item_child
    ADD CONSTRAINT crm_auth_item_child_parent_fkey FOREIGN KEY (parent) REFERENCES public.crm_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_auth_item crm_auth_item_rule_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_auth_item
    ADD CONSTRAINT crm_auth_item_rule_name_fkey FOREIGN KEY (rule_name) REFERENCES public.crm_auth_rule(name) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: crm_social_account crm_fk_user_account; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_social_account
    ADD CONSTRAINT crm_fk_user_account FOREIGN KEY (user_id) REFERENCES public.crm_user(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: crm_profile crm_fk_user_profile; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_profile
    ADD CONSTRAINT crm_fk_user_profile FOREIGN KEY (user_id) REFERENCES public.crm_user(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: crm_token crm_fk_user_token; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_token
    ADD CONSTRAINT crm_fk_user_token FOREIGN KEY (user_id) REFERENCES public.crm_user(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: crm_address fkCityId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_address
    ADD CONSTRAINT "fkCityId" FOREIGN KEY (city_id) REFERENCES public.crm_city(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz fkLocationId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz
    ADD CONSTRAINT "fkLocationId" FOREIGN KEY (address_id) REFERENCES public.crm_address(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz fkManufacturerId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz
    ADD CONSTRAINT "fkManufacturerId" FOREIGN KEY (manufacturer_id) REFERENCES public.crm_manufacturer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz_file fkObjectFileId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_file
    ADD CONSTRAINT "fkObjectFileId" FOREIGN KEY (object_id) REFERENCES public.crm_object_skz(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz_log_analog fkObjectFileId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_analog
    ADD CONSTRAINT "fkObjectFileId" FOREIGN KEY (object_id) REFERENCES public.crm_object_skz(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz_log_discrete fkObjectFileId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_log_discrete
    ADD CONSTRAINT "fkObjectFileId" FOREIGN KEY (object_id) REFERENCES public.crm_object_skz(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_object_skz_send_data fkObjectFileId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_object_skz_send_data
    ADD CONSTRAINT "fkObjectFileId" FOREIGN KEY (object_id) REFERENCES public.crm_object_skz(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_change_log fkUserId; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_change_log
    ADD CONSTRAINT "fkUserId" FOREIGN KEY (user_id) REFERENCES public.crm_user(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_language_translate language_translate_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language_translate
    ADD CONSTRAINT language_translate_ibfk_1 FOREIGN KEY (language) REFERENCES public.crm_language(language_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: crm_language_translate language_translate_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: ide
--

ALTER TABLE ONLY public.crm_language_translate
    ADD CONSTRAINT language_translate_ibfk_2 FOREIGN KEY (id) REFERENCES public.crm_language_source(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

