--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.1

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
-- Name: notepad; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE notepad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE notepad OWNER TO postgres;

\connect notepad

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
-- Name: gru_cod; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gru_cod
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 10000
    CACHE 100;


ALTER TABLE public.gru_cod OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: notas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notas (
    id integer NOT NULL,
    ds_titulo character varying NOT NULL,
    ds_assunto character varying NOT NULL,
    ds_texto character varying NOT NULL,
    dt_datacriacao character varying NOT NULL
);


ALTER TABLE public.notas OWNER TO postgres;

--
-- Name: notas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notas_id_seq OWNER TO postgres;

--
-- Name: notas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notas_id_seq OWNED BY public.notas.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: notas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas ALTER COLUMN id SET DEFAULT nextval('public.notas_id_seq'::regclass);


--
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

