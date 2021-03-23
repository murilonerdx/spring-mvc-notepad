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
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.notas (id, ds_titulo, ds_assunto, ds_texto, dt_datacriacao) VALUES (8, 'Criando README', 'README', 'Criando algo pra mostrar pra vocÃªs.', '2021-03-23');


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (id, username, password) VALUES (1, 'jai', '123');


--
-- Name: gru_cod; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gru_cod', 1, false);


--
-- Name: notas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notas_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

