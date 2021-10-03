--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-09-25 19:37:38

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 16539)
-- Name: rdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rdata (
    id integer NOT NULL,
    a text,
    b text,
    moment date,
    x numeric(5,2),
    CONSTRAINT rdata_a_check CHECK ((char_length(a) < 6)),
    CONSTRAINT rdata_b_check CHECK ((char_length(b) < 6))
);


ALTER TABLE public.rdata OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16537)
-- Name: rdata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rdata_id_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 204
-- Name: rdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rdata_id_seq OWNED BY public.rdata.id;


--
-- TOC entry 2860 (class 2604 OID 16542)
-- Name: rdata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdata ALTER COLUMN id SET DEFAULT nextval('public.rdata_id_seq'::regclass);


--
-- TOC entry 2996 (class 0 OID 16539)
-- Dependencies: 205
-- Data for Name: rdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rdata (id, a, b, moment, x) FROM stdin;
\.


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 204
-- Name: rdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rdata_id_seq', 1, false);


--
-- TOC entry 2864 (class 2606 OID 16549)
-- Name: rdata rdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdata
    ADD CONSTRAINT rdata_pkey PRIMARY KEY (id);


-- Completed on 2021-09-25 19:37:39

--
-- PostgreSQL database dump complete
--

