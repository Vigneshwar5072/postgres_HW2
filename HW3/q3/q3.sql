--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-02 20:38:24

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
-- TOC entry 220 (class 1259 OID 16773)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id character(3) NOT NULL,
    location text,
    name text,
    division public.divisiontype,
    conference public.conferencetype
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 3048 (class 0 OID 16773)
-- Dependencies: 220
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, location, name, division, conference) FROM stdin;
BOS	Boston	Celtics	Atlantic	Eastern
BKN	Brooklyn	Nets	Atlantic	Eastern
NYK	New York	Knicks	Atlantic	Eastern
PHI	Philadelphia	76ers	Atlantic	Eastern
TOR	Toronto	Raptors	Atlantic	Eastern
CHI	Chicago	Bulls	Central	Eastern
CLE	Cleveland	Cavaliers	Central	Eastern
DET	Detroit	Pistons	Central	Eastern
IND	Indiana	Pacers	Central	Eastern
MIL	Milwaukee	Bucks	Central	Eastern
ATL	Atlanta	Hawks	Southeast	Eastern
CHA	Charlotte	Bobcats	Southeast	Eastern
MIA	Miami	Heat	Southeast	Eastern
ORL	Orlando	Magic	Southeast	Eastern
WAS	Washington	Wizards	Southeast	Eastern
DEN	Denver	Nuggets	Northwest	Western
MIN	Minnesota	Timberwolves	Northwest	Western
OKC	Oklahoma City	Thunder	Northwest	Western
POR	Portland	Trail Blazers	Northwest	Western
UTA	Utah	Jazz	Northwest	Western
GSW	Golden State	Warriors	Pacific	Western
LAC	Los Angeles	Clippers	Pacific	Western
LAL	Los Angeles	Lakers	Pacific	Western
PHX	Phoenix	Suns	Pacific	Western
SAC	Sacramento	Kings	Pacific	Western
DAL	Dallas	Mavericks	Southwest	Western
HOU	Houston	Rockets	Southwest	Western
MEM	Memphis	Grizzlies	Southwest	Western
NOP	New Orleans	Hornets	Southwest	Western
SAS	San Antonio	Spurs	Southwest	Western
\.


--
-- TOC entry 2917 (class 2606 OID 16780)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


-- Completed on 2021-10-02 20:38:25

--
-- PostgreSQL database dump complete
--

