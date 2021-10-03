--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-02 20:37:32

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
-- TOC entry 219 (class 1259 OID 16744)
-- Name: player_bios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_bios (
    id integer NOT NULL,
    firstname text,
    lastname text,
    team character(3),
    age integer,
    weight integer,
    college text,
    country text,
    draft_year text,
    draft_round text,
    draft_number text,
    gp integer,
    pts numeric,
    reb numeric,
    ast numeric,
    netrtg numeric,
    oreb_pct numeric,
    dreb_pct numeric,
    usg_pct numeric,
    ts_pct numeric,
    ast_pct numeric,
    "position" text,
    height numeric
);


ALTER TABLE public.player_bios OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16742)
-- Name: player_bios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_bios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_bios_id_seq OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 218
-- Name: player_bios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.player_bios_id_seq OWNED BY public.player_bios.id;


--
-- TOC entry 2916 (class 2604 OID 16747)
-- Name: player_bios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_bios ALTER COLUMN id SET DEFAULT nextval('public.player_bios_id_seq'::regclass);


--
-- TOC entry 3050 (class 0 OID 16744)
-- Dependencies: 219
-- Data for Name: player_bios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_bios (id, firstname, lastname, team, age, weight, college, country, draft_year, draft_round, draft_number, gp, pts, reb, ast, netrtg, oreb_pct, dreb_pct, usg_pct, ts_pct, ast_pct, "position", height) FROM stdin;
3	Aaron	Harrison	CHA	21	210	Kentucky 	USA 	Undrafted 	Undrafted 	Undrafted 	21	0.9	0.7	0.1	2.2	4.7	13.3	13.8	37.1	3.3	SG/SF	78
4	Adreian	Payne	MIN	25	237	Michigan State 	USA 	2014 	1 	15 	52	2.5	2.1	0.6	-10.8	4.9	22.0	18.0	42.2	9.3	PF	82
5	Al	Horford	ATL	30	245	Florida 	Dominican Republic 	2007 	1 	3 	82	15.2	7.3	3.2	4.9	6.2	18.0	20.6	56.5	16.5	C	82
6	Al	Jefferson	CHA	31	289	None 	USA 	2004 	1 	15 	47	12	6.4	1.5	3.7	5.6	24.4	24.5	50.7	11.4	C	82
7	Al-Farouq	Aminu	POR	25	215	Wake Forest 	USA 	2010 	1 	8 	82	10.2	6.1	1.7	1.5	4.5	18.5	16.9	53.3	8.7	SG/SF	81
8	Alan	Anderson	WAS	33	220	Michigan State 	USA 	Undrafted 	Undrafted 	Undrafted 	13	5	2.1	1.1	5.4	0.6	14.9	15.7	49.5	11.2	SG/SF	78
9	Alan	Williams	PHX	23	260	California-Santa Barbara 	USA 	Undrafted 	Undrafted 	Undrafted 	10	2.9	3.8	0.5	-0.2	18.4	38.7	20.1	48.1	9.6	C	80
10	Alec	Burks	UTA	24	214	Colorado 	USA 	2011 	1 	12 	31	13.3	3.5	2	-2	2.3	13.9	25.1	52.0	14.0	SG/SF	78
11	Alex	Len	PHX	23	260	Maryland 	Ukraine 	2013 	1 	5 	78	9	7.6	1.2	-7.8	10.3	24.8	20.4	48.2	8.7	C	85
12	Alex	Stepheson	MEM	28	270	USC 	USA 	Undrafted 	Undrafted 	Undrafted 	8	2.8	3.5	0.3	-3.8	20.2	12.2	17.0	34.1	5.3	PF	82
13	Alexis	Ajinca	NOP	28	248	None 	France 	2008 	1 	20 	59	6	4.6	0.5	-3	9.4	25.7	20.6	51.4	5.9	C	86
14	Allen	Crabbe	POR	24	210	California 	USA 	2013 	2 	31 	81	10.3	2.7	1.2	0.1	1.4	9.7	16.3	57.2	7.2	SG/SF	78
15	Alonzo	Gee	NOP	29	225	Alabama 	USA 	Undrafted 	Undrafted 	Undrafted 	73	4.5	3.4	1	-4	3.9	12.6	9.2	57.2	6.3	SG/SF	78
16	Amare	Stoudemire	MIA	33	245	None 	USA 	2002 	1 	9 	52	5.8	4.3	0.5	1.8	10.1	22.9	18.0	59.9	5.4	PF	82
17	Amir	Johnson	BOS	29	240	None 	USA 	2005 	2 	56 	79	7.3	6.4	1.7	4.6	10.4	19.4	13.7	60.2	11.0	PF	81
18	Anderson	Varejao	GSW	33	273	None 	Brazil 	2004 	2 	30 	53	2.6	2.7	0.7	-0.5	7.9	23.0	14.7	47.3	10.2	PF	83
19	Andre	Drummond	DET	22	279	Connecticut 	USA 	2012 	1 	9 	81	16.2	14.8	0.8	2	15.3	34.3	24.0	49.9	4.2	C	83
20	Andre	Iguodala	GSW	32	215	Arizona 	USA 	2004 	1 	9 	65	7	4	3.4	14.4	3.4	12.7	12.0	56.5	16.5	SG/SF	78
21	Andre	Miller	SAS	40	200	Utah 	USA 	1999 	1 	8 	39	3.7	1.3	2.2	5.1	3.6	10.1	16.2	60.0	27.6	PG	75
22	Andre	Roberson	OKC	24	210	Colorado 	USA 	2013 	1 	26 	70	4.8	3.6	0.7	9.4	6.0	11.3	9.3	56.6	3.9	SG/SF	79
23	Andrea	Bargnani	BKN	30	245	None 	Italy 	2006 	1 	1 	46	6.6	2.1	0.4	-15.7	4.7	13.5	23.4	50.0	5.1	PF	84
24	Andrew	Bogut	GSW	31	260	Utah 	Australia 	2005 	1 	1 	70	5.4	7	2.3	14.2	9.4	25.2	11.6	62.3	14.5	C	84
25	Andrew	Goudelock	HOU	27	200	College of Charleston 	USA 	2011 	2 	46 	8	2.8	0.3	0.5	13.6	2.4	1.5	24.3	50.6	11.8	PG	75
26	Andrew	Nicholson	ORL	26	250	St. Bonaventure 	Canada 	2012 	1 	19 	56	6.9	3.6	0.4	1.2	4.5	21.6	20.9	56.7	5.0	PF	81
27	Andrew	Wiggins	MIN	21	199	Kansas 	Canada 	2014 	1 	1 	81	20.7	3.6	2	-1	4.3	7.4	26.9	54.3	9.8	SG/SF	80
28	Anthony	Bennett	TOR	23	245	Nevada-Las Vegas 	Canada 	2013 	1 	1 	19	1.5	1.2	0	-12.5	6.4	29.3	18.1	44.6	0.0	SG/SF	80
29	Anthony	Brown	LAL	23	210	Stanford 	USA 	2015 	2 	34 	29	4	2.4	0.7	-4.3	1.5	11.6	11.0	42.7	4.8	SG/SF	79
30	Anthony	Davis	NOP	23	253	Kentucky 	USA 	2012 	1 	1 	61	24.3	10.3	1.9	-4.7	6.4	26.2	29.6	55.9	10.0	PF	82
31	Anthony	Morrow	OKC	30	210	Georgia Tech 	USA 	Undrafted 	Undrafted 	Undrafted 	68	5.6	0.9	0.4	4	1.3	6.0	17.1	54.3	3.7	SG/SF	77
32	Anthony	Tolliver	DET	31	240	Creighton 	USA 	Undrafted 	Undrafted 	Undrafted 	72	5.3	3.2	0.7	-0.7	3.0	15.9	12.6	54.3	5.8	PF	80
33	Archie	Goodwin	PHX	21	200	Kentucky 	USA 	2013 	1 	29 	57	8.9	2.5	2.1	-11	2.6	11.4	23.1	49.8	17.4	SG/SF	77
34	Aron	Baynes	DET	29	260	Washington State 	Australia 	Undrafted 	Undrafted 	Undrafted 	81	6.3	4.7	0.6	-4.7	12.2	22.3	18.7	56.3	7.0	C	82
35	Arron	Afflalo	NYK	30	210	UCLA 	USA 	2007 	1 	27 	71	12.8	3.7	2	-3.2	1.1	10.9	18.1	53.1	9.7	SG/SF	77
36	Austin	Rivers	LAC	23	200	Duke 	USA 	2012 	1 	10 	67	8.9	1.9	1.5	-2.1	1.6	8.0	19.5	52.3	11.6	PG	76
37	Avery	Bradley	BOS	25	180	Texas 	USA 	2010 	1 	19 	76	15.2	2.9	2.1	4.2	2.0	7.3	20.0	53.8	9.5	PG	74
38	Axel	Toupane	DEN	23	210	None 	France 	Undrafted 	Undrafted 	Undrafted 	21	3.6	1.5	0.7	-2.1	3.2	8.7	12.5	49.0	6.8	SG/SF	79
39	Ben	McLemore	SAC	23	195	Kansas 	USA 	2013 	1 	7 	68	7.8	2.2	1.2	-0.6	2.6	8.3	17.4	53.1	7.6	SG/SF	77
40	Beno	Udrih	MEM	33	205	None 	Slovenia 	2004 	1 	28 	44	4.7	1.6	2.6	-1.3	1.3	10.1	17.2	49.6	25.6	SG/SF	75
41	Bismack	Biyombo	TOR	23	245	None 	Democratic Republic of the Congo 	2011 	1 	7 	82	5.5	8	0.4	3.8	11.5	28.1	11.7	58.6	2.5	C	81
42	Blake	Griffin	LAC	27	251	Oklahoma 	USA 	2009 	1 	1 	35	21.4	8.4	4.9	7.9	4.8	22.1	29.2	54.4	25.8	PF	82
43	Boban	Marjanovic	SAS	27	290	None 	Serbia 	Undrafted 	Undrafted 	Undrafted 	54	5.5	3.6	0.4	6.6	16.6	27.5	22.9	66.2	7.2	C	87
44	Bobby	Portis	CHI	21	230	Arkansas 	USA 	2015 	1 	22 	62	7	5.4	0.8	-7.9	11.4	21.0	20.7	46.9	7.6	PF	83
45	Bojan	Bogdanovic	BKN	27	216	None 	Croatia 	2011 	2 	31 	79	11.2	3.2	1.3	-8.8	1.9	11.8	19.4	55.0	7.3	SG/SF	80
46	Boris	Diaw	SAS	34	250	None 	France 	2003 	1 	21 	76	6.4	3.1	2.3	10.8	4.9	13.9	16.8	58.2	18.2	C	80
47	Bradley	Beal	WAS	23	207	Florida 	USA 	2012 	1 	3 	55	17.4	3.4	2.9	-1.6	2.7	9.9	25.0	54.7	15.3	SG/SF	77
48	Brandan	Wright	MEM	28	210	North Carolina 	USA 	2007 	1 	8 	12	6.9	3.6	0.5	-13.1	7.3	14.8	15.6	66.3	5.0	PF	82
49	Branden	Dawson	LAC	23	225	Michigan State 	USA 	2015 	2 	56 	6	0.8	0.7	0	-24.6	11.1	6.7	9.2	46.0	0.0	C	78
50	Brandon	Bass	LAL	31	250	Louisiana State 	USA 	2005 	2 	33 	66	7.2	4.3	1.1	-2.6	8.5	15.3	13.8	61.9	8.8	PF	80
51	Brandon	Jennings	ORL	26	169	None 	USA 	2009 	1 	10 	48	6.9	2	3.5	0.4	2.0	10.3	19.8	49.1	29.8	PG	73
52	Brandon	Knight	PHX	24	189	Kentucky 	USA 	2011 	1 	8 	52	19.6	3.9	5.1	-6.8	2.1	9.9	26.3	52.2	23.4	PG	75
53	Brandon	Rush	GSW	30	220	Kansas 	USA 	2008 	1 	13 	72	4.2	2.5	0.8	0.2	2.3	15.4	12.8	56.0	7.2	SG/SF	78
54	Brian	Roberts	POR	30	173	Dayton 	USA 	Undrafted 	Undrafted 	Undrafted 	51	4	0.8	1.1	-6.2	1.3	8.6	19.6	55.2	20.5	PG	73
55	Briante	Weber	MIA	23	165	Virginia Commonwealth 		Undrafted 	Undrafted 	Undrafted 	7	4.4	3.6	3	-22.5	4.0	12.7	11.8	38.0	17.5	PG	74
56	Brook	Lopez	BKN	28	275	Stanford 	USA 	2008 	1 	10 	73	20.6	7.8	2	-3.7	9.4	16.7	27.6	56.2	10.6	C	84
57	Bruno	Caboclo	TOR	20	205	None 	Brazil 	2014 	1 	20 	6	0.5	0.3	0.2	-2.5	2.2	2.4	16.4	12.5	3.3	SG/SF	81
58	Bryce	Cotton	MEM	23	165	Providence 	USA 	Undrafted 	Undrafted 	Undrafted 	8	1	0	0.4	-31	0.0	0.0	17.9	40.0	13.6	PG	73
59	Bryce	Dejean-Jones	NOP	23	203	Iowa State 	USA 	Undrafted 	Undrafted 	Undrafted 	14	5.6	3.4	1.1	-7	2.8	17.5	14.1	50.5	7.6	SG/SF	78
60	C.J.	McCollum	POR	24	200	Lehigh 	USA 	2013 	1 	10 	80	20.8	3.2	4.3	2	1.8	8.4	27.0	54.4	21.1	SG/SF	76
61	C.J.	Miles	IND	29	231	None 	USA 	2005 	2 	34 	64	11.8	2.7	1	-0.5	1.9	11.2	22.5	54.7	6.9	SG/SF	78
62	C.J.	Watson	ORL	32	175	Tennessee 	USA 	Undrafted 	Undrafted 	Undrafted 	33	4.3	2	2.7	-2.3	1.7	9.4	12.0	46.1	18.0	PG	74
63	C.J.	Wilcox	LAC	25	195	Washington 	USA 	2014 	1 	28 	23	3	0.5	0.4	8.8	0.7	6.3	20.0	49.1	9.0	SG/SF	77
64	Cameron	Bairstow	DET	25	250	New Mexico 	Australia 	2014 	2 	49 	18	1.9	1.6	0.3	-7.1	3.8	23.5	19.8	39.1	9.1	PF	81
65	Cameron	Payne	OKC	21	185	Murray State 	USA 	2015 	1 	14 	57	5	1.5	1.9	-2.8	1.4	12.1	20.6	49.0	24.1	PG	75
66	Carl	Landry	PHI	32	248	Purdue 	USA 	2007 	2 	31 	36	9.8	4.1	0.9	-10.4	9.0	20.2	23.9	60.5	10.2	PF	81
67	Carmelo	Anthony	NYK	32	240	Syracuse 	USA 	2003 	1 	3 	72	21.8	7.7	4.2	-0.7	4.3	19.5	29.5	53.0	20.9	SG/SF	80
68	Caron	Butler	SAC	36	228	Connecticut 	USA 	2002 	1 	10 	17	3.7	1.3	0.6	-12.4	2.9	11.5	16.3	49.0	9.9	SG/SF	79
69	Chandler	Parsons	DAL	27	230	Florida 	USA 	2011 	2 	38 	61	13.7	4.7	2.8	1.3	1.8	15.8	20.8	58.9	15.8	SG/SF	82
70	Channing	Frye	CLE	33	255	Arizona 	USA 	2005 	1 	8 	70	6.1	3.3	1	3.7	3.3	19.2	15.6	58.6	8.6	PF	83
71	Charles	Hayes	LAC	33	240	Kentucky 	USA 	Undrafted 	Undrafted 	Undrafted 	2	2	4	1	-2	0.0	28.6	11.2	69.4	13.3	SG/SF	78
72	Charlie	Villanueva	DAL	31	232	Connecticut 	USA 	2005 	1 	7 	62	5.1	2.5	0.4	-7.9	3.6	21.3	24.4	47.3	6.3	PF	83
73	Chase	Budinger	PHX	28	209	Arizona 	USA 	2009 	2 	44 	66	4.1	2.3	1	-0.1	4.8	12.9	14.2	51.4	9.8	SG/SF	79
74	Chris	Andersen	MEM	37	245	Blinn 	USA 	Undrafted 	Undrafted 	Undrafted 	27	3.9	3.6	0.4	-10.7	10.0	19.1	10.9	59.8	4.5	PF	82
75	Chris	Bosh	MIA	32	235	Georgia Tech 	USA 	2003 	1 	4 	53	19.1	7.4	2.4	1.7	3.2	21.1	25.3	57.1	12.9	PF	83
76	Chris	Copeland	MIL	32	239	Colorado 	USA 	Undrafted 	Undrafted 	Undrafted 	24	2.1	0.4	0.5	-26.2	0.7	7.3	17.7	46.2	12.0	SG/SF	81
77	Chris	Johnson	UTA	26	206	Dayton 	USA 	Undrafted 	Undrafted 	Undrafted 	70	2.9	1.9	0.6	4.6	3.7	13.4	13.7	48.2	8.2	SG/SF	78
78	Chris	Kaman	POR	34	265	Central Michigan 	USA 	2003 	1 	6 	16	2.8	1.5	0.7	-13.2	7.7	17.0	21.3	49.6	18.6	C	84
79	Chris	McCullough	BKN	21	200	Syracuse 		2015 	1 	29 	24	4.7	2.8	0.4	-16.1	7.4	14.5	16.0	47.0	3.8	PF	83
80	Chris	Paul	LAC	31	175	Wake Forest 	USA 	2005 	1 	4 	74	19.5	4.2	10	11.9	1.8	11.9	26.9	57.5	49.3	PG	72
81	Christian	Wood	PHI	20	220	Nevada-Las Vegas 	USA 	Undrafted 	Undrafted 	Undrafted 	17	3.6	2.2	0.2	-13.5	8.2	19.2	18.7	49.0	3.5	PF	83
82	Cleanthony	Early	NYK	25	210	Wichita State 	USA 	2014 	2 	34 	17	1.8	1.5	0.4	0.4	2.8	14.6	14.8	37.1	5.8	SG/SF	80
83	Cliff	Alexander	POR	20	240	Kansas 	USA 	Undrafted 	Undrafted 	Undrafted 	8	1.3	0.8	0	-15.1	8.7	11.8	15.1	50.0	0.0	PF	80
84	Clint	Capela	HOU	22	240	None 	Switzerland 	2014 	1 	25 	77	7	6.4	0.6	3.1	14.1	22.5	15.9	55.3	5.0	PF	82
85	Cody	Zeller	CHA	23	240	Indiana 	USA 	2013 	1 	4 	73	8.7	6.2	1	4.4	8.6	20.1	15.4	59.2	6.1	C	84
86	Cole	Aldrich	LAC	27	250	Kansas 	USA 	2010 	1 	11 	60	5.5	4.8	0.8	1	12.2	28.4	19.0	62.6	10.7	C	83
87	Corey	Brewer	HOU	30	186	Florida 	USA 	2007 	1 	7 	82	7.2	2.4	1.3	-2.2	2.7	10.2	17.6	48.1	10.2	SG/SF	81
88	Cory	Jefferson	PHX	25	218	Baylor 	USA 	2014 	2 	60 	8	2.8	2	0	-10.2	12.2	19.6	20.9	44.6	0.0	PF	81
89	Cory	Joseph	TOR	24	190	Texas 	Canada 	2011 	1 	29 	80	8.5	2.6	3.1	6.9	2.1	9.2	17.0	51.2	19.9	PG	75
90	Coty	Clarke	BOS	23	225	None 		Undrafted 	Undrafted 	Undrafted 	3	2	0.3	0	24.4	0.0	33.3	36.3	75.0	0.0	PF	79
91	Courtney	Lee	CHA	30	200	Western Kentucky 	USA 	2008 	1 	22 	79	9.6	2.6	1.7	2.9	1.4	8.7	15.0	55.1	8.8	SG/SF	77
92	Cristiano	Felicio	CHI	23	275	None 	Brazil 	Undrafted 	Undrafted 	Undrafted 	31	3.4	3.3	0.8	5.6	10.9	25.2	13.6	60.1	11.5	PF	82
93	D'Angelo	Russell	LAL	20	195	Ohio State 	USA 	2015 	1 	2 	80	13.2	3.4	3.3	-13	2.1	11.3	24.1	50.7	21.3	PG	77
94	D.J.	Augustin	DEN	28	183	Texas 	USA 	2008 	1 	9 	62	7.5	1.5	3.2	-1.4	0.8	8.1	18.3	57.5	25.7	PG	72
95	Dahntay	Jones	CLE	35	225	Duke 	USA 	2003 	1 	20 	1	13	5	2	-6.1	2.8	11.4	15.7	46.4	6.7	SG/SF	78
96	Damian	Lillard	POR	25	195	Weber State 	USA 	2012 	1 	6 	75	25.1	4	6.8	0.9	1.8	10.5	31.0	56.0	33.0	PG	75
97	Damien	Inglis	MIL	21	246	None 	France 	2014 	2 	31 	20	1.8	1.6	0.5	-10	1.6	19.5	15.8	44.4	11.2	SG/SF	80
98	Damjan	Rudez	MIN	30	230	None 	Croatia 	Undrafted 	Undrafted 	Undrafted 	33	2.3	0.6	0.3	-2.1	2.2	6.5	12.6	57.2	5.8	SG/SF	81
99	Danilo	Gallinari	DEN	27	225	None 	Italy 	2008 	1 	6 	53	19.5	5.3	2.5	-3.5	3.0	14.3	22.8	58.2	12.2	SG/SF	82
100	Danny	Green	SAS	29	215	North Carolina 	USA 	2009 	2 	46 	79	7.2	3.8	1.8	12.7	2.6	13.4	14.5	49.2	9.2	SG/SF	78
101	Dante	Cunningham	NOP	29	230	Villanova 	USA 	2009 	2 	33 	80	6.1	3	1	-6.4	3.1	10.8	11.1	54.0	5.6	PF	80
102	Darrell	Arthur	DEN	28	235	Kansas 	USA 	2008 	1 	27 	70	7.5	4.2	1.4	-2.1	6.2	15.1	16.8	51.4	10.2	PF	81
103	Darren	Collison	SAC	28	175	UCLA 	USA 	2009 	1 	21 	74	14	2.3	4.3	-2.4	1.4	7.0	19.3	59.1	21.9	PG	72
104	Darrun	Hilliard	DET	23	205	Villanova 	USA 	2015 	2 	38 	38	4	1.2	0.7	-0.1	1.4	11.5	19.8	51.1	11.7	SG/SF	78
105	David	Lee	DAL	33	245	Florida 	USA 	2005 	1 	30 	55	7.8	5.5	1.5	-3	12.2	24.7	21.5	56.8	16.2	PF	81
106	David	West	SAS	35	250	Xavier 	USA 	2003 	1 	18 	78	7.1	4	1.8	11.8	6.1	18.7	17.9	57.3	15.0	PF	81
107	DeAndre	Jordan	LAC	27	265	Texas A&M 	USA 	2008 	2 	35 	77	12.7	13.8	1.2	10.2	11.5	32.1	15.4	62.8	5.1	C	83
108	DeJuan	Blair	WAS	27	270	Pittsburgh 	USA 	2009 	2 	37 	29	2.1	2	0.4	-11.4	9.7	20.3	17.2	41.4	7.7	SG/SF	79
109	DeMar	DeRozan	TOR	26	220	Southern California 	USA 	2009 	1 	9 	78	23.5	4.5	4	3	2.7	11.6	29.7	55.0	20.8	SG/SF	79
110	DeMarcus	Cousins	SAC	25	270	Kentucky 	USA 	2010 	1 	5 	65	26.9	11.5	3.3	0	7.8	27.4	35.2	53.8	16.7	C	83
111	DeMarre	Carroll	TOR	29	212	Missouri 	USA 	2009 	1 	27 	26	11	4.7	1	2.7	4.3	13.4	17.9	49.0	5.6	SG/SF	80
112	Delon	Wright	TOR	24	190	Utah 	USA 	2015 	1 	20 	27	3.8	1.4	1.1	5.2	4.0	13.6	22.6	54.0	22.6	PG	77
113	Dennis	Schroder	ATL	22	172	None 	Germany 	2013 	1 	17 	80	11	2.6	4.4	7.8	1.8	12.3	29.3	51.0	36.8	PG	73
114	Deron	Williams	DAL	32	200	Illinois 	USA 	2005 	1 	3 	65	14.1	2.9	5.8	0.4	1.0	8.8	22.1	53.0	29.5	PG	75
115	Derrick	Favors	UTA	24	265	Georgia Tech 	USA 	2010 	1 	3 	62	16.4	8.1	1.5	1.1	10.2	20.0	23.9	55.1	8.6	PF	82
116	Derrick	Rose	CHI	27	190	Memphis 	USA 	2008 	1 	1 	66	16.4	3.4	4.7	-4.2	2.3	8.6	27.0	47.9	25.0	PG	75
117	Derrick	Williams	NYK	25	240	Arizona 	USA 	2011 	1 	2 	80	9.3	3.7	0.9	-7.5	3.5	19.1	23.4	55.0	9.6	PF	80
118	Devin	Booker	PHX	19	206	Kentucky 	USA 	2015 	1 	13 	76	13.8	2.5	2.6	-9.6	1.4	8.3	23.1	53.5	16.2	SG/SF	78
119	Devin	Harris	DAL	33	185	Wisconsin 	USA 	2004 	1 	5 	64	7.6	2.2	1.8	-1.6	1.5	10.2	17.5	55.9	14.9	PG	75
120	Devyn	Marble	ORL	23	200	Iowa 	USA 	2014 	2 	56 	28	2.1	1.4	0.4	-4.2	2.3	13.4	15.5	36.8	7.2	SG/SF	78
121	Dewayne	Dedmon	ORL	26	245	Southern California 	USA 	Undrafted 	Undrafted 	Undrafted 	58	4.4	3.9	0.2	-2.7	10.8	25.0	15.2	60.6	2.9	C	84
122	Dion	Waiters	OKC	24	220	Syracuse 	USA 	2012 	1 	4 	78	9.8	2.6	2	3.7	1.9	8.2	17.6	49.2	10.3	SG/SF	76
123	Dirk	Nowitzki	DAL	38	245	None 	Germany 	1998 	1 	9 	75	18.3	6.5	1.8	3.6	2.5	20.2	25.5	55.5	9.6	PF	84
124	Donald	Sloan	BKN	28	205	Texas A&M 	USA 	Undrafted 	Undrafted 	Undrafted 	61	7	2.8	4.4	-5.1	1.5	13.1	16.5	53.6	29.3	PG	75
125	Donatas	Motiejunas	HOU	25	222	None 	Lithuania 	2011 	1 	20 	37	6.2	2.9	1.1	4.6	7.7	14.0	21.7	50.4	11.6	PF	84
126	Doug	McDermott	CHI	24	225	Creighton 	USA 	2014 	1 	11 	81	9.4	2.4	0.7	-3.7	2.1	9.0	17.1	56.1	4.9	SG/SF	80
127	Draymond	Green	GSW	26	230	Michigan State 	USA 	2012 	2 	35 	81	14	9.5	7.4	18.9	5.6	22.2	18.6	58.7	27.7	PF	79
128	Drew	Gooden	WAS	34	250	Kansas 	USA 	2002 	1 	4 	30	2.7	2.8	0.4	-12	9.3	23.4	17.4	37.6	6.6	PF	82
129	Duje	Dukan	SAC	24	220	Wisconsin 	Croatia 	Undrafted 	Undrafted 	Undrafted 	1	6	4	1	-18.1	6.3	8.0	16.0	30.0	6.7	PF	81
130	Dwight	Howard	HOU	30	265	None 	USA 	2004 	1 	1 	71	13.7	11.8	1.4	0.2	11.7	29.3	18.7	60.4	7.1	C	83
131	Dwight	Powell	DAL	24	240	Stanford 	Canada 	2014 	2 	45 	69	5.8	4	0.6	-1	9.1	21.4	18.2	55.7	7.7	PF	83
132	Dwyane	Wade	MIA	34	220	Marquette 	USA 	2003 	1 	5 	74	19	4.1	4.6	1	4.2	10.8	31.5	51.7	26.7	SG/SF	76
133	E'Twaun	Moore	CHI	27	191	Purdue 	USA 	2011 	2 	55 	59	7.5	2.3	1.7	-1	1.7	9.2	16.0	54.8	11.8	SG/SF	76
134	Ed	Davis	POR	27	240	North Carolina 	USA 	2010 	1 	13 	81	6.5	7.4	1.1	1.4	14.2	23.9	12.8	61.6	7.8	C	82
135	Elfrid	Payton	ORL	22	185	Louisiana-Lafayette 	USA 	2014 	1 	10 	73	10.7	3.6	6.4	-2.1	3.8	9.6	20.1	47.8	31.7	PG	76
136	Elijah	Millsap	UTA	28	225	Alabama-Birmingham 	USA 	Undrafted 	Undrafted 	Undrafted 	20	1.8	1.8	1	6.6	3.8	17.9	14.6	38.4	16.4	SG/SF	78
137	Elliot	Williams	CHA	27	190	Memphis 	USA 	2010 	1 	22 	5	1.6	0.8	0.8	-0.6	2.6	7.9	13.7	34.0	14.3	SG/SF	77
138	Elton	Brand	PHI	37	254	Duke 	USA 	1999 	1 	1 	17	4.1	3.7	1.1	-5.6	3.6	24.5	17.4	46.1	14.2	PF	81
139	Emmanuel	Mudiay	DEN	20	200	None 	Democratic Republic of the Congo 	2015 	1 	7 	68	12.8	3.4	5.5	-3.7	1.7	10.7	25.3	43.7	28.1	PG	77
140	Enes	Kanter	OKC	24	245	Kentucky 	Turkey 	2011 	1 	3 	82	12.7	8.1	0.4	2.7	16.8	25.6	23.4	62.6	3.2	C	83
141	Eric	Bledsoe	PHX	26	190	Kentucky 	USA 	2010 	1 	18 	31	20.4	4	6.1	-2.2	1.8	11.2	27.3	55.7	29.8	PG	73
142	Eric	Gordon	NOP	27	215	Indiana 	USA 	2008 	1 	7 	45	15.2	2.2	2.7	-2.6	0.8	6.7	20.5	56.5	12.9	SG/SF	76
143	Eric	Moreland	SAC	24	238	Oregon State 	USA 	Undrafted 	Undrafted 	Undrafted 	8	1	1.4	0.1	1.6	7.9	15.7	9.6	51.5	2.9	PF	82
144	Erick	Green	DEN	25	185	Virginia Tech 	USA 	2013 	2 	46 	9	1.4	0.7	0.3	-1.5	8.6	11.5	15.1	46.8	10.7	PF	76
145	Ersan	Ilyasova	ORL	29	235	None 	Turkey 	2005 	2 	36 	74	10.4	5.4	0.9	-4.3	7.8	16.7	18.2	52.6	5.5	PF	82
146	Evan	Fournier	ORL	23	205	None 	France 	2012 	1 	20 	79	15.4	2.8	2.7	-3.7	1.4	8.5	20.3	58.7	12.8	SG/SF	79
147	Evan	Turner	BOS	27	220	Ohio State 	USA 	2010 	1 	2 	81	10.5	4.9	4.4	1.8	2.3	16.5	18.7	51.3	24.7	SG/SF	79
148	Festus	Ezeli	GSW	26	265	Vanderbilt 	Nigeria 	2012 	1 	30 	46	7	5.6	0.7	14.3	14.1	22.4	18.0	55.9	6.0	C	83
149	Frank	Kaminsky	CHA	23	240	Wisconsin 	USA 	2015 	1 	9 	81	7.5	4.1	1.2	-0.4	4.4	17.1	17.0	51.3	9.5	C	84
150	Garrett	Temple	WAS	30	195	Louisiana State 	USA 	Undrafted 	Undrafted 	Undrafted 	80	7.3	2.7	1.8	0.4	2.0	10.3	14.2	52.0	10.2	SG/SF	78
151	Gary	Harris	DEN	21	210	Michigan State 	USA 	2014 	1 	19 	76	12.3	2.9	1.9	-5.1	2.4	7.7	16.3	56.6	9.3	SG/SF	76
152	Gary	Neal	WAS	31	210	Towson 	USA 	Undrafted 	Undrafted 	Undrafted 	40	9.8	2.1	1.2	-9	1.5	10.8	21.1	55.8	9.9	PF	76
153	George	Hill	IND	30	188	Indiana Purdue-Indianapolis 	USA 	2008 	1 	26 	74	12.1	4	3.5	2.5	2.6	10.5	16.0	55.5	15.7	PG	75
154	Gerald	Green	MIA	30	205	None 	USA 	2005 	1 	18 	69	8.9	2.4	0.8	1.3	1.9	9.6	19.8	49.1	5.7	SG/SF	79
155	Gerald	Henderson	POR	28	215	Duke 	USA 	2009 	1 	12 	72	8.7	2.9	1	1.6	2.3	13.7	20.3	52.6	8.4	SG/SF	77
156	Giannis	Antetokounmpo	MIL	21	222	None 	Greece 	2013 	1 	15 	80	16.9	7.7	4.3	-2.6	4.7	20.2	22.3	56.6	19.5	SG/SF	83
157	Glenn	Robinson	IND	22	222	Michigan 	USA 	2014 	2 	40 	45	3.8	1.5	0.6	-4.4	2.5	11.8	16.1	50.8	7.7	SG/SF	79
158	Goran	Dragic	MIA	30	190	None 	Slovenia 	2008 	2 	45 	72	14.1	3.8	5.8	4.1	2.6	10.1	21.5	53.7	27.6	PG	75
159	Gordon	Hayward	UTA	26	226	Butler 	USA 	2010 	1 	9 	80	19.7	5	3.7	1	2.5	13.5	25.6	55.9	18.1	SG/SF	80
160	Gorgui	Dieng	MIN	26	241	Louisville 	Senegal 	2013 	1 	21 	82	10.1	7.1	1.7	0.8	8.6	22.2	16.9	60.1	9.9	C	83
161	Greg	Monroe	MIL	26	265	Georgetown 	USA 	2010 	1 	7 	79	15.3	8.8	2.3	-2.7	10.9	23.9	23.4	56.2	12.8	C	83
162	Greg	Smith	MIN	25	250	Fresno State 	USA 	Undrafted 	Undrafted 	Undrafted 	18	2.4	2.3	0.3	-17.8	6.9	18.6	10.8	54.5	4.9	PF	82
163	Greivis	Vasquez	MIL	29	217	Maryland 	Venezuela 	2010 	1 	28 	23	5.7	2	4	-8.9	1.2	10.5	18.9	43.5	32.0	PG	78
164	Harrison	Barnes	GSW	24	225	North Carolina 	USA 	2012 	1 	7 	66	11.7	4.9	1.8	10.5	4.3	12.7	15.9	55.9	7.7	SG/SF	80
165	Hassan	Whiteside	MIA	27	265	Marshall 	USA 	2010 	2 	33 	73	14.2	11.8	0.4	3	13.0	31.6	20.5	62.9	2.2	C	84
166	Henry	Sims	BKN	26	248	Georgetown 	USA 	Undrafted 	Undrafted 	Undrafted 	14	6.5	5.1	0.6	-16.8	8.4	23.0	17.0	50.4	5.4	C	82
167	Hollis	Thompson	PHI	25	206	Georgetown 	USA 	Undrafted 	Undrafted 	Undrafted 	77	9.8	3.5	1.3	-8.4	2.6	11.3	16.1	52.5	7.2	SG/SF	80
168	Ian	Clark	GSW	25	175	Belmont 	USA 	Undrafted 	Undrafted 	Undrafted 	66	3.6	1	1	-5.2	2.6	10.1	20.1	54.4	17.1	SG/SF	75
169	Ian	Mahinmi	IND	29	250	None 	France 	2005 	1 	28 	71	9.3	7.1	1.5	4.3	8.4	22.1	15.8	60.3	9.0	C	83
170	Iman	Shumpert	CLE	26	220	Georgia Tech 	USA 	2011 	1 	17 	54	5.8	3.8	1.7	7.8	2.8	14.3	13.3	47.5	10.0	SG/SF	77
171	Isaiah	Canaan	PHI	25	201	Murray State 	USA 	2013 	2 	34 	77	11	2.3	1.8	-12.6	1.0	9.0	19.8	52.8	12.0	PG	72
172	Isaiah	Thomas	BOS	27	185	Washington 	USA 	2011 	2 	60 	82	22.2	3	6.2	3.7	1.8	8.0	29.3	56.2	31.2	PG	69
173	Ish	Smith	PHI	27	175	Wake Forest 	USA 	Undrafted 	Undrafted 	Undrafted 	77	12.6	4	6.5	-7.5	2.0	12.7	23.8	46.5	37.0	PG	72
174	J.J.	Barea	DAL	32	185	Northeastern 	Puerto Rico 	Undrafted 	Undrafted 	Undrafted 	74	10.9	2.1	4.1	-1.8	1.7	8.5	23.5	53.6	30.1	PG	72
175	J.J.	O'Brien	UTA	24	220	San Diego State 	USA 	Undrafted 	Undrafted 	Undrafted 	2	0	0.5	0	-48.1	0.0	25.0	7.7	0.0	0.0	SG/SF	79
176	J.R.	Smith	CLE	30	225	None 	USA 	2004 	1 	18 	77	12.4	2.8	1.7	6.1	2.0	8.4	17.8	54.2	8.2	SG/SF	78
177	JJ	Hickson	WAS	27	242	North Carolina State 	USA 	2008 	1 	19 	35	5.9	3.8	0.7	-7.4	9.5	22.6	22.2	51.4	9.1	C	81
178	JJ	Redick	LAC	32	190	Duke 	USA 	2006 	1 	11 	75	16.3	1.9	1.4	12.1	0.5	6.5	22.4	63.2	8.0	SG/SF	76
179	JaKarr	Sampson	DEN	23	214	St. John's (NY) 	USA 	Undrafted 	Undrafted 	Undrafted 	73	5.1	2.6	0.6	-6.5	4.2	13.4	16.8	50.4	6.2	SG/SF	81
180	JaMychal	Green	MEM	26	227	Alabama 	USA 	Undrafted 	Undrafted 	Undrafted 	78	7.4	4.8	0.9	-1.9	10.3	19.7	19.3	52.0	7.4	PF	81
181	JaVale	McGee	DAL	28	270	Nevada 	USA 	2008 	1 	18 	34	5.1	3.9	0.1	-6.6	14.8	23.1	21.2	57.4	1.5	C	84
182	Jabari	Parker	MIL	21	250	Duke 	USA 	2014 	1 	2 	76	14.1	5.2	1.7	-3.4	5.9	12.7	20.8	53.5	8.6	PF	80
183	Jae	Crowder	BOS	25	235	Marquette 	USA 	2012 	2 	34 	73	14.2	5.1	1.8	4.5	3.1	14.1	18.4	56.5	8.7	SG/SF	78
184	Jahlil	Okafor	PHI	20	275	Duke 	USA 	2015 	1 	3 	53	17.5	7	1.2	-16.6	8.4	17.8	27.8	53.6	8.8	C	83
185	Jamal	Crawford	LAC	36	195	Michigan 	USA 	2000 	1 	8 	79	14.2	1.8	2.3	2.3	1.0	6.6	24.6	52.9	14.5	SG/SF	77
186	Jameer	Nelson	DEN	34	190	Saint Joseph's 	USA 	2004 	1 	20 	39	7.7	2.9	4.9	-7	1.9	10.9	16.6	46.4	28.7	PG	72
187	James	Anderson	SAC	27	213	Oklahoma State 	USA 	2010 	1 	20 	51	3.5	1.7	0.8	-3.2	1.9	10.4	13.7	46.9	7.8	SG/SF	78
188	James	Ennis	NOP	25	210	Long Beach State 	USA 	2013 	2 	50 	22	7.2	1.9	1	-6.4	7.4	7.8	20.0	62.1	10.4	SG/SF	79
189	James	Harden	HOU	26	220	Arizona State 	USA 	2009 	1 	3 	82	29	6.1	7.5	1.2	2.2	15.7	32.5	59.8	35.4	SG/SF	77
190	James	Johnson	TOR	29	250	Wake Forest 	USA 	2009 	1 	16 	57	5	2.2	1.2	-0.6	3.5	12.1	16.0	53.2	11.3	PF	81
191	James	Jones	CLE	35	218	Miami (FL) 	USA 	2003 	2 	49 	48	3.7	1	0.3	-4.8	1.8	9.9	16.3	58.0	5.4	SG/SF	80
192	James	Michael McAdoo	GSW	23	240	North Carolina 	USA 	Undrafted 	Undrafted 	Undrafted 	41	2.9	1.4	0.4	-15.9	12.0	13.1	20.1	55.4	11.0	SG/SF	81
193	James	Young	BOS	20	215	Kentucky 	USA 	2014 	1 	17 	29	1	0.9	0.3	-6.1	2.1	12.9	9.5	38.4	6.3	SG/SF	78
194	Jared	Cunningham	CLE	25	195	Oregon State 	USA 	2012 	1 	24 	44	2.7	0.9	0.5	-3.3	0.9	10.2	16.9	46.4	7.4	SG/SF	76
195	Jared	Dudley	WAS	30	225	Boston College 	USA 	2007 	1 	22 	81	7.9	3.5	2.1	1.1	2.9	12.8	12.9	60.2	11.2	SG/SF	79
196	Jared	Sullinger	BOS	24	260	Ohio State 	USA 	2012 	1 	21 	81	10.3	8.3	2.3	4.3	10.6	27.1	21.8	47.6	14.8	C	81
197	Jarell	Eddie	WAS	24	218	Virginia Tech 	USA 	Undrafted 	Undrafted 	Undrafted 	26	2.4	0.9	0.2	-10.9	1.3	15.0	20.1	46.0	5.8	SG/SF	79
198	Jarell	Martin	MEM	22	239	Louisiana State 	USA 	2015 	1 	25 	27	5.7	3.2	0.6	-5.8	10.0	15.0	18.2	53.4	6.5	PF	82
199	Jarnell	Stokes	MEM	22	263	Tennessee 	USA 	2014 	2 	35 	7	1	0.6	0.1	20.3	7.1	17.6	14.1	59.5	8.3	PF	81
200	Jarrett	Jack	BKN	32	200	Georgia Tech 	USA 	2005 	1 	22 	32	12.8	4.3	7.4	-5.8	0.9	13.8	21.3	50.5	34.0	PG	75
201	Jason	Smith	ORL	30	240	Colorado State 	USA 	2007 	1 	20 	76	7.2	2.9	0.8	-1.9	5.1	16.3	22.4	51.3	8.7	PF	84
202	Jason	Terry	HOU	38	185	Arizona 	USA 	1999 	1 	10 	72	5.9	1.1	1.4	-0.3	1.2	5.8	15.0	54.0	12.5	SG/SF	74
203	Jason	Thompson	TOR	29	250	Rider 	USA 	2008 	1 	12 	47	3.1	2.9	0.6	1.2	7.5	23.4	14.0	55.8	9.4	PF	83
204	Jeff	Ayres	LAC	29	250	Arizona State 	USA 	2009 	2 	31 	17	1.8	1.3	0.3	-18.2	4.2	17.0	14.2	58.5	7.8	PF	81
205	Jeff	Green	LAC	29	235	Georgetown 	USA 	2007 	1 	5 	80	11.7	4.2	1.7	-0.1	3.8	13.2	20.7	51.0	10.2	SG/SF	81
206	Jeff	Teague	ATL	28	186	Wake Forest 	USA 	2009 	1 	19 	79	15.7	2.7	5.9	1.5	1.6	8.3	26.3	55.1	34.1	PG	74
207	Jeff	Withey	UTA	26	231	Kansas 	USA 	2013 	2 	39 	51	4.3	3.4	0.4	4.4	10.2	20.9	15.3	57.7	5.1	C	84
208	Jerami	Grant	PHI	22	210	Syracuse 	USA 	2014 	2 	39 	77	9.7	4.7	1.8	-9.1	5.1	13.9	18.3	50.6	10.6	SG/SF	80
209	Jeremy	Evans	DAL	28	200	Western Kentucky 	USA 	2010 	2 	55 	30	2.4	1.8	0.1	-4.5	4.7	16.7	11.6	62.0	1.3	SG/SF	81
210	Jeremy	Lamb	CHA	24	185	Connecticut 	USA 	2012 	1 	12 	66	8.8	3.8	1.2	5.9	3.9	18.0	21.9	52.9	11.1	SG/SF	77
211	Jeremy	Lin	CHA	27	200	Harvard 	USA 	Undrafted 	Undrafted 	Undrafted 	78	11.7	3.2	3	2.7	2.2	11.1	22.0	53.4	19.2	PG	75
212	Jerian	Grant	NYK	23	195	Notre Dame 	USA 	2015 	1 	19 	76	5.6	1.9	2.3	-6.4	2.0	10.5	18.9	47.9	23.6	PG	76
213	Jerryd	Bayless	MIL	27	200	Arizona 	USA 	2008 	1 	11 	52	10.4	2.7	3.1	-4.9	1.6	9.2	16.7	56.8	16.8	PG	75
214	Jimmer	Fredette	SAS	27	195	Brigham Young 	USA 	2011 	1 	10 	6	1.5	0	0.2	-71.1	0.0	0.0	24.2	62.5	50.0	PF	74
215	Jimmy	Butler	CHI	26	220	Marquette 	USA 	2011 	1 	30 	67	20.9	5.3	4.8	-0.8	3.5	11.6	24.5	56.2	21.8	SG/SF	79
216	Joakim	Noah	CHI	31	232	Florida 	USA 	2007 	1 	9 	29	4.3	8.8	3.8	-0.2	14.0	26.6	13.9	40.6	25.6	C	83
217	Jodie	Meeks	DET	28	210	Kentucky 	USA 	2009 	2 	41 	3	7.3	1.7	1	12.4	2.6	10.3	24.3	50.6	14.3	SG/SF	76
218	Joe	Harris	CLE	24	219	Virginia 	USA 	2014 	2 	33 	5	0.6	0.6	0.4	-55.2	0.0	37.5	14.2	37.5	18.2	SG/SF	78
219	Joe	Ingles	UTA	28	226	None 	Australia 	Undrafted 	Undrafted 	Undrafted 	81	4.2	1.9	1.2	-2.1	1.7	12.4	13.3	57.2	12.5	SG/SF	80
220	Joe	Johnson	MIA	35	240	Arkansas 	USA 	2001 	1 	10 	81	12.2	3.6	3.9	-1.1	2.1	10.1	18.0	53.8	17.2	SG/SF	79
221	Joe	Young	IND	24	180	Oregon 	USA 	2015 	2 	43 	41	3.8	1.2	1.6	-5.1	1.7	12.3	24.0	42.8	26.1	PG	74
222	Joel	Anthony	DET	33	245	Nevada-Las Vegas 	Canada 	Undrafted 	Undrafted 	Undrafted 	19	0.9	1.1	0.1	-7	9.3	15.1	7.4	66.6	2.0	C	81
223	Joffrey	Lauvergne	DEN	24	220	None 	France 	2013 	2 	55 	59	7.9	4.9	0.9	-9.7	8.3	23.2	19.9	56.7	9.3	C	83
224	John	Henson	MIL	25	229	North Carolina 	USA 	2012 	1 	14 	57	7	3.9	0.9	-4.8	10.5	15.2	19.2	58.0	9.6	PF	83
225	John	Jenkins	PHX	25	215	Vanderbilt 	USA 	2012 	1 	23 	43	4.1	1.3	0.8	-6.6	1.7	10.2	17.4	52.2	11.1	SG/SF	76
226	John	Wall	WAS	25	195	Kentucky 	USA 	2010 	1 	1 	77	19.9	4.9	10.2	0.7	1.7	13.8	28.4	51.0	44.9	PG	76
227	Johnny	O'Bryant	MIL	23	257	Louisiana State 	USA 	2014 	2 	36 	66	3	2.7	0.5	-5.7	9.0	15.0	13.8	44.1	5.7	PF	81
228	Jon	Leuer	PHX	27	228	Wisconsin 	USA 	2011 	2 	40 	67	8.5	5.6	1.1	-3	6.5	25.9	19.9	55.5	9.0	PF	82
229	Jonas	Jerebko	BOS	29	231	None 	Sweden 	2009 	2 	39 	78	4.4	3.7	0.8	2.9	7.0	19.9	13.6	53.1	7.8	PF	82
230	Jonas	Valanciunas	TOR	24	255	None 	Lithuania 	2011 	1 	5 	60	12.8	9.1	0.7	3	14.2	27.3	20.7	61.0	4.5	C	84
231	Jonathon	Simmons	SAS	26	195	Houston 		Undrafted 	Undrafted 	Undrafted 	55	6	1.7	1.1	7.2	2.5	10.9	19.0	58.6	10.8	SG/SF	78
232	Jordan	Adams	MEM	21	209	UCLA 	USA 	2014 	1 	22 	2	3.5	1	1.5	5.3	0.0	18.2	28.6	42.7	27.3	C	77
233	Jordan	Clarkson	LAL	24	194	Missouri 	USA 	2014 	2 	46 	79	15.5	4	2.4	-13.1	3.7	9.6	22.8	51.6	13.9	PG	77
234	Jordan	Farmar	MEM	29	180	UCLA 	USA 	2006 	1 	26 	12	9.2	2.1	3.1	-13.6	1.4	9.7	18.2	52.7	19.8	PG	74
235	Jordan	Hamilton	NOP	25	220	Texas 	USA 	2011 	1 	26 	11	11.4	5.6	2.3	-11.2	4.3	19.4	20.8	49.9	12.8	SG/SF	79
236	Jordan	Hill	IND	28	235	Arizona 	USA 	2009 	1 	8 	73	8.8	6.2	1.2	1.2	11.2	20.9	20.4	53.4	9.6	C	82
237	Jordan	McRae	CLE	25	179	Tennessee 		2014 	2 	58 	22	4.5	0.9	1.1	10.6	2.4	8.2	25.3	54.8	21.6	SG/SF	77
238	Jordan	Mickey	BOS	21	235	Louisiana State 	USA 	2015 	2 	33 	16	1.3	0.8	0.1	9.3	10.2	14.3	20.8	39.8	3.0	PF	80
239	Jorge	Gutierrez	CHA	27	189	California-Berkeley 	Mexico 	Undrafted 	Undrafted 	Undrafted 	12	1.8	0.6	1.4	11.6	0.0	10.3	15.5	69.4	39.5	PG	75
240	Jose	Calderon	NYK	34	200	None 	Spain 	Undrafted 	Undrafted 	Undrafted 	72	7.6	3.2	4.1	-2	1.2	10.9	12.6	57.1	21.3	PG	75
241	Josh	Huestis	OKC	24	230	Stanford 	USA 	2014 	1 	29 	5	2.8	2	0	-3.4	4.5	15.7	13.2	50.9	0.0	SG/SF	79
242	Josh	McRoberts	MIA	29	240	Duke 	USA 	2007 	2 	37 	42	3.6	2.5	1.9	2	4.4	15.7	15.4	45.3	20.4	PF	82
243	Josh	Richardson	MIA	22	200	Tennessee 	USA 	2015 	2 	40 	52	6.6	2.1	1.4	3.1	2.3	8.5	13.7	56.9	9.8	SG/SF	78
244	Josh	Smith	HOU	30	225	None 	USA 	2004 	1 	17 	55	6	3.5	1.6	-4.2	5.9	17.7	22.6	43.9	17.2	C	81
245	Jrue	Holiday	NOP	26	205	UCLA 	USA 	2009 	1 	17 	65	16.8	3	6	-0.3	1.6	10.6	28.7	52.9	36.5	PG	76
246	Julius	Randle	LAL	21	250	Kentucky 	USA 	2014 	1 	7 	81	11.3	10.2	1.8	-15.4	7.7	32.7	21.2	48.2	11.1	PF	81
247	Justin	Anderson	DAL	22	228	Virginia 	USA 	2015 	1 	21 	55	3.8	2.4	0.5	2.2	2.9	18.8	15.5	52.2	7.1	SG/SF	78
248	Justin	Harper	BKN	26	225	Richmond 	USA 	2011 	2 	32 	5	2.6	0.2	0	-51.9	0.0	3.8	17.7	59.7	0.0	SG/SF	82
249	Justin	Holiday	CHI	27	185	Washington 	USA 	Undrafted 	Undrafted 	Undrafted 	53	4.5	1.7	1.1	-3.4	1.7	11.1	16.4	48.9	11.1	SG/SF	78
250	Justise	Winslow	MIA	20	225	Duke 	USA 	2015 	1 	10 	78	6.4	5.2	1.5	3.9	4.2	15.8	12.4	48.9	7.7	SG/SF	79
251	Jusuf	Nurkic	DEN	21	280	None 	Boznia & Herzegovina 	2014 	1 	16 	32	8.2	5.5	1.3	-1.3	12.8	22.7	27.2	46.0	12.3	C	84
252	K.J.	McDaniels	HOU	23	205	Clemson 	USA 	2014 	2 	32 	37	2.4	1.1	0.3	18.9	7.8	10.4	18.8	52.2	5.9	SG/SF	78
253	Karl-Anthony	Towns	MIN	20	244	Kentucky 	USA 	2015 	1 	1 	82	18.3	10.5	2	-2.1	10.2	27.1	24.7	59.0	10.8	C	84
254	Kawhi	Leonard	SAS	25	230	San Diego State 	USA 	2011 	1 	15 	72	21.2	6.8	2.6	14.3	4.6	18.2	25.8	61.6	12.8	SG/SF	79
255	Keith	Appling	ORL	24	185	Michigan State 	USA 	Undrafted 	Undrafted 	Undrafted 	5	1.2	0.2	0.2	20.3	0.0	4.2	20.1	33.8	5.9	\N	73
256	Kelly	Olynyk	BOS	25	238	Gonzaga 	Canada 	2013 	1 	13 	69	10	4.1	1.5	5.2	5.4	15.8	20.7	56.1	11.9	C	84
257	Kelly	Oubre Jr.	WAS	20	205	Kansas 	USA 	2015 	1 	15 	63	3.7	2.1	0.2	-1.9	3.9	17.7	17.3	50.7	2.9	SG/SF	79
258	Kemba	Walker	CHA	26	184	Connecticut 	USA 	2011 	1 	9 	81	20.9	4.4	5.2	4.2	2.1	11.6	26.5	55.4	25.3	PG	73
259	Kendall	Marshall	PHI	24	200	North Carolina 	USA 	2012 	1 	13 	30	3.7	0.9	2.4	-14.6	0.5	7.6	18.1	44.9	26.6	PG	76
260	Kendrick	Perkins	NOP	31	270	None 	USA 	2003 	1 	27 	37	2.5	3.5	0.8	-5.8	5.3	22.5	10.6	52.9	7.7	C	82
261	Kenneth	Faried	DEN	26	228	Morehead State 	USA 	2011 	1 	22 	67	12.5	8.7	1.2	-4.3	15.0	23.2	20.7	57.7	7.7	PF	80
262	Kent	Bazemore	ATL	26	201	Old Dominion 	USA 	Undrafted 	Undrafted 	Undrafted 	75	11.6	5.1	2.3	3.2	1.5	17.6	19.9	55.1	12.7	SG/SF	77
263	Kentavious	Caldwell-Pope	DET	23	205	Georgia 	USA 	2013 	1 	8 	76	14.5	3.7	1.8	2	2.6	8.5	18.0	52.1	7.5	SG/SF	77
264	Kevin	Durant	OKC	27	240	Texas 	USA 	2007 	1 	2 	72	28.2	8.2	5	11.2	2.1	20.9	30.5	63.4	23.0	SG/SF	81
265	Kevin	Garnett	MIN	40	240	None 	USA 	1995 	1 	5 	38	3.2	3.9	1.6	6.6	3.1	26.2	11.7	49.1	16.4	PF	83
266	Kevin	Love	CLE	27	251	UCLA 	USA 	2008 	1 	5 	77	16	9.9	2.4	8.4	7.1	28.7	23.5	55.3	11.9	PF	82
267	Kevin	Martin	SAS	33	199	Western Carolina 	USA 	2004 	1 	26 	55	9.3	2	1.1	-5.4	1.4	10.2	22.2	52.0	8.9	SG/SF	79
268	Kevin	Seraphin	NYK	26	278	Le Moyne 	France 	2010 	1 	17 	48	3.9	2.6	1	-10.4	6.5	19.4	22.3	43.5	15.7	C	82
269	Kevon	Looney	GSW	20	220	UCLA 	USA 	2015 	1 	30 	5	1.8	2	0	-41.8	16.0	37.5	15.4	64.3	0.0	SG/SF	81
270	Khris	Middleton	MIL	24	234	Texas A&M 	USA 	2012 	2 	39 	79	18.2	3.8	4.2	-0.1	1.8	10.3	22.9	56.0	18.3	SG/SF	80
271	Kirk	Hinrich	ATL	35	190	Kansas 	USA 	2003 	1 	7 	46	3	1.5	1.6	1.5	1.4	10.7	11.7	50.4	17.3	SG/SF	76
272	Klay	Thompson	GSW	26	215	Washington State 	USA 	2011 	1 	11 	80	22.1	3.8	2.1	15.7	1.5	10.0	26.4	59.7	9.4	SG/SF	79
273	Kobe	Bryant	LAL	37	212	None 	USA 	1996 	1 	13 	66	17.6	3.7	2.8	-15.8	2.3	12.3	31.9	46.9	18.3	SG/SF	78
274	Kosta	Koufos	SAC	27	265	Ohio State 	USA 	2008 	1 	23 	78	6.8	5.4	0.4	-7.1	12.2	19.0	15.5	54.0	3.4	C	84
275	Kostas	Papanikolaou	DEN	25	235	None 	Greece 	2012 	2 	48 	26	2.6	1.5	0.6	-0.2	3.2	12.5	14.5	46.4	7.7	SG/SF	80
276	Kris	Humphries	ATL	31	235	Minnesota 	USA 	2004 	1 	14 	53	6.5	4.1	0.7	-5.2	7.3	21.6	19.2	51.7	6.8	PF	81
277	Kristaps	Porzingis	NYK	20	240	None 	Latvia 	2015 	1 	4 	72	14.3	7.3	1.3	-0.2	7.1	20.6	24.5	51.8	7.6	PF	87
278	Kyle	Anderson	SAS	22	230	UCLA 	USA 	2014 	1 	30 	78	4.5	3.1	1.6	10	2.4	20.1	14.7	52.8	14.0	SG/SF	81
279	Kyle	Korver	ATL	35	212	Creighton 	USA 	2003 	2 	51 	80	9.2	3.3	2.1	6.3	0.6	10.8	13.5	57.7	9.5	SG/SF	79
280	Kyle	Lowry	TOR	30	205	Villanova 	USA 	2006 	1 	24 	77	21.2	4.7	6.4	6	2.3	12.4	26.0	57.8	29.3	PG	72
281	Kyle	O'Quinn	NYK	26	250	Norfolk State 	USA 	2012 	2 	49 	65	4.8	3.8	1.1	-4.3	11.4	23.7	21.2	52.0	16.1	PF	82
282	Kyle	Singler	OKC	28	228	Duke 	USA 	2011 	2 	33 	68	3.4	2.1	0.4	-0.7	5.6	9.9	11.7	48.1	3.5	SG/SF	80
283	Kyrie	Irving	CLE	24	193	Duke 	Australia 	2011 	1 	1 	53	19.6	3	4.7	5.7	3.0	7.8	29.3	54.0	25.3	PG	75
284	LaMarcus	Aldridge	SAS	30	240	Texas 	USA 	2006 	1 	2 	74	18	8.5	1.5	12	9.1	22.2	26.0	56.5	8.1	PF	83
285	Lamar	Patterson	ATL	24	225	Pittsburgh 	USA 	Undrafted 	Undrafted 	Undrafted 	35	2.4	1.4	1.1	3.1	1.2	14.1	12.6	46.8	13.4	SG/SF	77
286	Lance	Stephenson	MEM	25	230	Cincinnati 	USA 	2010 	2 	40 	69	8.3	3.2	1.9	-2.4	3.2	15.2	19.9	54.8	15.2	SG/SF	77
287	Lance	Thomas	NYK	28	235	Duke 	USA 	Undrafted 	Undrafted 	Undrafted 	59	8.2	2.2	0.9	-0.1	3.0	7.9	17.2	55.7	6.6	SG/SF	80
288	Langston	Galloway	NYK	24	200	Saint Joseph's 	USA 	Undrafted 	Undrafted 	Undrafted 	82	7.6	3.5	2.5	-2.9	2.3	13.1	15.5	49.0	16.1	SG/SF	74
289	Larry	Nance Jr.	LAL	23	230	Wyoming 	USA 	2015 	1 	27 	63	5.5	5	0.7	-5.2	8.6	18.4	12.6	54.4	5.5	PF	81
290	Lavoy	Allen	IND	27	255	Temple 	USA 	2011 	2 	50 	79	5.4	5.4	1	6.9	11.4	18.0	13.1	53.2	7.0	PF	81
291	LeBron	James	CLE	31	250	None 	USA 	2003 	1 	1 	76	25.3	7.4	6.8	11	4.7	18.7	31.1	58.8	33.9	SG/SF	80
292	Leandro	Barbosa	GSW	33	194	None 	Brazil 	2003 	1 	28 	68	6.4	1.7	1.2	3.1	2.8	9.0	17.9	54.5	11.2	SG/SF	75
293	Lorenzo	Brown	DET	25	189	North Carolina State 	USA 	2013 	2 	52 	8	2.5	0.9	1.4	-29.1	0.0	14.9	26.1	37.4	30.6	PG	77
294	Lou	Amundson	NYK	33	220	Nevada-Las Vegas 	USA 	Undrafted 	Undrafted 	Undrafted 	29	1.8	1.7	0.4	-9.7	11.5	13.7	17.5	40.1	10.7	PF	81
295	Louis	Williams	LAL	29	175	None 	USA 	2005 	2 	45 	67	15.3	2.5	2.5	-10.8	1.7	8.0	22.7	58.4	14.9	SG/SF	73
296	Luc	Mbah a Moute	LAC	29	230	UCLA 	Cameroon 	2008 	2 	37 	75	3.1	2.3	0.4	11.5	5.3	9.0	9.7	49.8	3.2	PF	80
297	Lucas	Nogueira	TOR	23	220	None 	Brazil 	2013 	1 	16 	29	2.2	1.6	0.2	8.1	8.7	13.6	12.5	64.2	4.4	C	84
298	Luis	Montero	POR	23	185	Westchester CC NY 	Dominican Republic 	Undrafted 	Undrafted 	Undrafted 	12	1.2	0.3	0.1	-58	0.0	11.8	26.6	33.7	6.7	SG/SF	79
299	Luis	Scola	TOR	36	240	None 	Argentina 	2002 	2 	55 	76	8.7	4.8	0.9	-2.7	6.1	19.9	19.3	52.3	6.6	PF	81
300	Luke	Babbitt	NOP	27	225	Nevada 	USA 	2010 	1 	16 	47	7	3.1	1.1	-3.1	3.2	16.6	17.2	52.6	9.2	SG/SF	81
301	Luol	Deng	MIA	31	220	Duke 	Great Britain 	2004 	1 	7 	74	12.3	6	1.9	1.3	5.2	15.5	17.1	54.9	8.7	SG/SF	81
302	Manu	Ginobili	SAS	38	205	None 	Argentina 	1999 	2 	57 	58	9.6	2.5	3.1	14.9	2.8	11.5	23.1	57.3	23.4	SG/SF	78
303	Marc	Gasol	MEM	31	255	None 	Spain 	2007 	2 	48 	52	16.6	7	3.8	-0.1	3.6	20.2	23.9	52.8	19.5	C	85
304	Marcelo	Huertas	LAL	33	200	None 	Brazil 	Undrafted 	Undrafted 	Undrafted 	53	4.5	1.7	3.4	0.1	2.3	9.3	16.5	48.8	32.7	PG	75
305	Marcin	Gortat	WAS	32	240	None 	Poland 	2005 	2 	57 	75	13.5	9.9	1.4	0.8	10.7	25.2	18.8	59.2	7.2	C	83
306	Marco	Belinelli	SAC	30	210	None 	Italy 	2007 	1 	18 	68	10.2	1.7	1.9	-6.4	0.6	7.1	19.9	50.0	11.7	SG/SF	77
307	Marcus	Morris	DET	26	235	Kansas 	USA 	2011 	1 	14 	80	14.1	5.1	2.5	1.8	3.4	12.6	18.4	53.1	10.7	PF	81
308	Marcus	Smart	BOS	22	220	Oklahoma State 	USA 	2014 	1 	6 	61	9.1	4.2	3	2.6	4.7	11.7	17.2	46.3	16.2	PG	76
309	Marcus	Thornton	WAS	29	205	Louisiana State 	USA 	2009 	2 	43 	61	9.7	2.5	1.4	-0.4	3.7	11.2	24.0	51.1	12.5	SG/SF	76
310	Mario	Chalmers	MIA	30	190	Kansas 	USA 	2008 	2 	34 	61	10.3	2.6	3.8	2.9	2.0	11.1	21.8	56.1	27.0	PF	74
311	Mario	Hezonja	ORL	21	218	None 	Croatia 	2015 	1 	5 	79	6.1	2.2	1.4	-1.4	2.2	12.1	16.9	54.1	11.3	SG/SF	80
312	Markel	Brown	BKN	24	190	Oklahoma State 	USA 	2014 	2 	44 	62	5.9	2	1.5	-11.5	2.6	12.0	18.7	50.0	14.2	SG/SF	75
313	Markieff	Morris	WAS	26	245	Kansas 	USA 	2011 	1 	13 	64	12	5.5	1.9	-4.3	4.9	19.5	24.3	48.9	12.5	PF	82
314	Marreese	Speights	GSW	28	255	Florida 	USA 	2008 	1 	16 	72	7.1	3.3	0.8	1.7	10.1	20.5	30.2	50.6	12.6	C	82
315	Marvin	Williams	CHA	30	237	North Carolina 	USA 	2005 	1 	2 	81	11.7	6.4	1.4	5.2	5.9	18.7	16.9	58.5	7.4	PF	81
316	Mason	Plumlee	POR	26	235	Duke 	USA 	2013 	1 	22 	82	9.1	7.7	2.8	1.1	10.6	22.3	17.3	56.4	16.1	C	83
317	Matt	Barnes	MEM	36	226	UCLA 	USA 	2002 	2 	45 	76	10	5.5	2.1	-5.5	4.1	17.9	17.7	50.3	11.7	SG/SF	79
318	Matt	Bonner	SAS	36	235	Florida 	USA 	2003 	2 	45 	30	2.5	0.9	0.3	17.5	1.9	13.3	14.6	64.7	6.1	C	82
319	Matthew	Dellavedova	CLE	25	198	Saint Mary's (CA) 	Australia 	Undrafted 	Undrafted 	Undrafted 	76	7.5	2.1	4.4	10	2.1	7.6	15.9	52.7	26.5	PG	76
320	Maurice	Harkless	POR	23	215	St. John's (NY) 	USA 	2012 	1 	15 	78	6.4	3.6	0.9	1.7	7.6	13.3	15.5	54.1	6.8	SG/SF	81
321	Metta	World Peace	LAL	36	260	St. John's (NY) 	USA 	1999 	1 	16 	35	5	2.5	0.8	-6	3.3	12.5	16.5	43.5	7.8	SG/SF	79
322	Meyers	Leonard	POR	24	245	Illinois 	USA 	2012 	1 	11 	61	8.4	5.1	1.5	1	4.2	21.3	17.6	56.1	10.3	PF	85
323	Michael	Beasley	HOU	27	235	Kansas State 	USA 	2008 	1 	2 	20	12.8	4.9	0.8	-8.4	8.4	19.8	29.0	56.3	8.6	SG/SF	82
324	Michael	Carter-Williams	MIL	24	190	Syracuse 	USA 	2013 	1 	11 	54	11.5	5.1	5.2	-3.3	3.3	15.4	21.0	49.8	26.4	PG	78
325	Michael	Kidd-Gilchrist	CHA	22	232	Kentucky 	USA 	2012 	1 	2 	7	12.7	6.4	1.3	15.2	6.5	16.0	17.9	60.3	6.9	SG/SF	79
326	Mike	Conley	MEM	28	175	Ohio State 	USA 	2007 	1 	4 	56	15.3	2.9	6.1	1.6	1.7	9.3	23.1	53.8	32.4	PG	73
327	Mike	Dunleavy	CHI	35	230	Duke 	USA 	2002 	1 	3 	31	7.2	2.7	1.3	-5.7	1.2	11.6	14.4	54.3	7.6	SG/SF	81
328	Mike	Miller	DEN	36	218	Florida 	USA 	2000 	1 	5 	47	1.3	1.1	0.9	-14.2	1.6	14.0	9.2	50.8	15.9	SG/SF	80
329	Mike	Muscala	ATL	24	240	Bucknell 	USA 	2013 	2 	44 	60	3.3	2	0.6	-2.2	7.5	15.7	15.8	57.6	9.9	PF	83
330	Mike	Scott	ATL	27	237	Virginia 	USA 	2012 	2 	43 	75	6.2	2.7	1	5.1	5.2	14.4	17.6	57.5	10.6	PF	80
331	Miles	Plumlee	MIL	27	249	Duke 	USA 	2012 	1 	26 	61	5.1	3.8	0.3	-4.5	12.1	17.4	15.4	60.6	3.0	C	83
332	Mirza	Teletovic	PHX	30	242	None 	Boznia & Herzegovina 	Undrafted 	Undrafted 	Undrafted 	79	12.2	3.8	1.1	-5.8	3.5	16.4	23.3	57.1	8.8	PF	81
333	Mitch	McGary	OKC	24	255	Michigan 	USA 	2014 	1 	21 	20	1.3	0.9	0.2	-32.2	6.8	22.2	20.8	47.4	7.1	PF	82
334	Mo	Williams	CLE	33	198	Alabama 	USA 	2003 	2 	47 	41	8.2	1.8	2.4	-5	0.9	9.9	22.7	52.7	23.1	PG	73
335	Monta	Ellis	IND	30	185	None 	USA 	2005 	2 	40 	81	13.8	3.3	4.7	2.5	1.7	9.1	21.0	50.4	22.2	SG/SF	75
336	Montrezl	Harrell	HOU	22	240	Louisville 	USA 	2015 	2 	32 	39	3.6	1.7	0.4	5	7.6	10.8	14.4	63.5	6.7	PF	80
337	Myles	Turner	IND	20	243	Texas 	USA 	2015 	1 	11 	60	10.3	5.5	0.7	-1.3	5.4	20.7	21.1	53.1	5.0	PF	83
338	Nate	Robinson	NOP	32	180	Washington 	USA 	2005 	1 	21 	2	0	0	2	-43.4	0.0	0.0	1.9	0.0	28.6	SG/SF	69
339	Nazr	Mohammed	OKC	38	250	Kentucky 	USA 	1998 	1 	29 	5	1.6	0.8	0	-9.5	5.6	15.8	20.6	68.0	0.0	C	82
340	Nemanja	Bjelica	MIN	28	240	None 	Serbia 	Undrafted 	Undrafted 	Undrafted 	60	5.1	3.5	1.4	-5.2	5.4	17.8	12.7	59.4	11.5	PF	82
341	""	Nene	WAS	33	250	None 	Brazil 	2002 	1 	7 	57	9.2	4.5	1.7	2.4	5.4	22.7	22.3	56.4	14.5	C	83
342	Nerlens	Noel	PHI	22	228	Kentucky 	USA 	2013 	1 	6 	67	11.1	8.1	1.8	-11	8.5	22.0	18.9	54.4	10.7	PF	83
343	Nick	Collison	OKC	35	255	Kansas 	USA 	2003 	1 	12 	59	2.1	2.9	0.9	3.1	10.7	16.1	10.7	49.8	10.3	PF	82
344	Nick	Young	LAL	31	210	Southern California 	USA 	2007 	1 	16 	54	7.3	1.8	0.6	-10.8	1.5	9.2	18.8	48.3	5.8	SG/SF	79
345	Nicolas	Batum	CHA	27	200	None 	France 	2008 	1 	25 	70	14.9	6.1	5.8	4.8	2.5	16.6	21.5	54.6	26.2	SG/SF	80
346	Nik	Stauskas	PHI	22	205	Michigan 	Canada 	2014 	1 	8 	73	8.5	2.5	1.9	-11.7	1.3	10.1	16.6	51.7	11.9	SG/SF	78
347	Nikola	Jokic	DEN	21	250	None 	Serbia 	Undrafted 	Undrafted 	Undrafted 	80	10	7	2.4	1.2	11.3	24.8	19.8	58.2	17.6	C	82
348	Nikola	Mirotic	CHI	25	220	None 	Montenegro 	2011 	1 	23 	66	11.8	5.5	1.5	0.2	3.9	19.7	21.1	56.4	9.5	PF	82
349	Nikola	Pekovic	MIN	30	307	None 	Montenegro 	2008 	2 	31 	12	4.5	1.8	0.9	-18.3	5.3	11.8	20.8	45.9	13.1	C	83
350	Nikola	Vucevic	ORL	25	260	Southern California 	Montenegro 	2011 	1 	16 	65	18.2	8.9	2.8	-2.2	9.2	22.3	26.7	53.1	15.4	C	84
351	Noah	Vonleh	POR	20	240	Indiana 	USA 	2014 	1 	9 	78	3.6	3.9	0.4	-2.7	8.3	20.2	13.2	47.1	3.7	PF	81
352	Norman	Powell	TOR	23	215	UCLA 	USA 	2015 	2 	46 	49	5.6	2.3	1	4.9	2.6	14.2	17.9	54.1	10.2	SG/SF	76
353	Norris	Cole	NOP	27	175	Cleveland State 	USA 	2011 	1 	28 	45	10.6	3.4	3.7	-5.5	0.9	13.7	21.6	46.5	21.9	PG	74
354	O.J.	Mayo	MIL	28	210	Southern California 	USA 	2008 	1 	3 	41	7.8	2.6	2.9	-1.2	1.3	9.4	16.9	47.4	15.6	SG/SF	77
355	Omer	Asik	NOP	29	255	None 	Turkey 	2008 	2 	36 	68	4	6.1	0.4	-9.3	10.3	28.0	11.5	55.1	3.2	C	84
356	Omri	Casspi	SAC	28	225	None 	Israel 	2009 	1 	23 	69	11.8	5.9	1.4	-0.2	3.4	19.6	17.7	58.7	7.4	SG/SF	81
357	Orlando	Johnson	NOP	27	220	California-Santa Barbara 	USA 	2012 	2 	36 	7	3.7	2.1	0.3	-16.1	3.5	14.1	16.9	34.6	3.1	SG/SF	77
358	Otto	Porter Jr.	WAS	23	198	Georgetown 	USA 	2013 	1 	3 	75	11.6	5.2	1.6	0.6	4.7	14.8	16.0	56.4	7.6	SG/SF	80
359	P.J.	Hairston	MEM	23	230	North Carolina 	USA 	2014 	1 	26 	66	6.2	2.6	0.6	-6	2.0	13.6	16.4	47.0	4.5	SG/SF	78
360	P.J.	Tucker	PHX	31	245	Texas 	USA 	2006 	2 	35 	82	8	6.2	2.2	-7.2	7.0	15.2	12.7	50.6	10.4	SG/SF	78
361	Pablo	Prigioni	LAC	39	185	None 	Argentina 	Undrafted 	Undrafted 	Undrafted 	59	2.5	1.9	2.2	-2.7	5.0	10.3	11.2	48.2	23.5	PG	75
362	Pat	Connaughton	POR	23	206	Notre Dame 	USA 	2015 	2 	41 	34	1.1	0.9	0.3	-6.7	8.0	14.4	18.8	35.2	11.5	SG/SF	77
363	Patrick	Beverley	HOU	27	185	Arkansas 	USA 	2009 	2 	42 	71	9.9	3.5	3.4	3.1	4.0	9.7	15.5	55.3	17.5	PG	73
364	Patrick	Patterson	TOR	27	235	Kentucky 	USA 	2010 	1 	14 	79	6.9	4.3	1.2	9.3	4.6	14.6	13.1	53.4	7.0	PF	81
365	Patty	Mills	SAS	27	185	Saint Mary's (CA) 	Australia 	2009 	2 	55 	81	8.5	2	2.8	12.2	1.9	8.7	19.3	54.1	19.7	PG	72
366	Pau	Gasol	CHI	35	250	None 	Spain 	2001 	1 	3 	72	16.5	11	4.1	-1.2	7.3	27.7	24.6	52.9	21.5	C	84
367	Paul	George	IND	26	220	Fresno State 	USA 	2010 	1 	10 	81	23.1	7	4.1	3.3	3.1	18.7	30.1	55.7	20.3	SG/SF	81
368	Paul	Millsap	ATL	31	246	Louisiana Tech 	USA 	2006 	2 	47 	81	17.1	9	3.3	4	8.3	21.3	24.0	55.6	16.2	PF	80
369	Paul	Pierce	LAC	38	235	Kansas 	USA 	1998 	1 	10 	68	6.1	2.7	1	2.2	1.1	15.1	18.0	48.9	8.8	SG/SF	79
370	Phil	Pressey	POR	25	175	Missouri 	USA 	Undrafted 	Undrafted 	Undrafted 	23	3.3	1.3	3.3	-6.7	1.1	10.9	17.8	43.3	39.5	PG	71
371	Quincy	Acy	SAC	25	240	Baylor 	USA 	2012 	2 	37 	59	5.2	3.2	0.5	-7.6	7.9	15.4	13.1	62.9	4.5	SG/SF	79
372	R.J.	Hunter	BOS	22	185	Georgia State 	USA 	2015 	1 	28 	36	2.7	1	0.4	-3.5	0.6	13.1	15.5	48.0	6.8	SG/SF	77
373	Rajon	Rondo	SAC	30	186	Kentucky 	USA 	2006 	1 	21 	72	11.9	6	11.7	-3.4	3.3	15.0	18.7	50.6	47.3	PG	73
374	Rakeem	Christmas	IND	24	250	Syracuse 	USA 	2015 	2 	36 	1	4	1	0	-85.4	25.0	0.0	15.4	100	0.0	PF	81
375	Ramon	Sessions	WAS	30	190	Nevada 	USA 	2007 	2 	56 	82	9.9	2.5	2.9	-1.4	1.7	12.3	22.0	56.5	22.8	PG	75
376	Randy	Foye	OKC	32	213	Villanova 	USA 	2006 	1 	7 	81	5.9	1.9	2	1	1.6	8.6	16.0	46.1	14.4	SG/SF	76
377	Rashad	Vaughn	MIL	19	202	UNLV 	USA 	2015 	1 	17 	70	3.1	1.3	0.6	-6.8	1.2	8.6	13.3	39.8	5.5	SG/SF	78
378	Rasual	Butler	SAS	37	215	La Salle 	USA 	2002 	2 	52 	46	2.7	1.2	0.5	11.9	0.8	13.0	12.9	55.8	7.9	PF	79
379	Raul	Neto	UTA	24	179	None 	Brazil 	2013 	2 	47 	81	5.9	1.5	2.1	3.6	1.4	8.0	17.6	53.0	19.0	PG	73
380	Ray	McCallum	SAS	25	190	Detroit Mercy 	USA 	2013 	2 	36 	41	3.3	1.1	1.5	3.1	1.8	9.6	16.8	44.9	18.5	PG	75
381	Raymond	Felton	DAL	32	205	North Carolina 	USA 	2005 	1 	5 	80	9.5	3.2	3.6	0.8	1.8	11.1	18.4	50.2	20.5	PG	73
382	Reggie	Bullock	DET	25	205	North Carolina 	USA 	2013 	1 	25 	37	3.3	1.8	0.7	-7.5	3.4	15.1	11.7	58.3	10.0	SG/SF	79
383	Reggie	Jackson	DET	26	208	Boston College 	USA 	2011 	1 	24 	79	18.8	3.2	6.2	1.6	2.5	9.2	28.8	53.5	34.4	PG	75
384	Richard	Jefferson	CLE	36	233	Arizona 	USA 	2001 	1 	13 	74	5.5	1.7	0.8	-2.3	1.3	9.6	13.6	58.5	7.0	SG/SF	79
385	Richaun	Holmes	PHI	22	245	Bowling Green 	USA 	2015 	2 	37 	51	5.6	2.6	0.6	-2.5	9.9	12.1	17.5	56.4	7.3	PF	82
386	Ricky	Rubio	MIN	25	194	None 	Spain 	2009 	1 	5 	76	10.1	4.3	8.7	1.1	2.0	13.9	17.6	52.9	40.2	PG	76
387	Robert	Covington	PHI	25	215	Tennessee State 	USA 	Undrafted 	Undrafted 	Undrafted 	67	12.8	6.3	1.4	-7.8	3.5	21.1	21.3	54.3	8.3	SG/SF	81
388	Robert	Sacre	LAL	27	270	Gonzaga 	Canada 	2012 	2 	60 	25	3.5	2.9	0.6	-6.6	9.7	13.8	13.8	47.4	7.2	C	84
389	Robin	Lopez	NYK	28	255	Stanford 	USA 	2008 	1 	15 	82	10.3	7.3	1.4	-1.5	13.2	16.1	17.6	57.4	8.3	C	84
390	Rodney	Hood	UTA	23	206	Duke 	USA 	2014 	1 	23 	79	14.5	3.4	2.7	2	1.8	10.7	21.8	54.2	14.2	SG/SF	80
391	Rodney	Stuckey	IND	30	205	Eastern Washington 	USA 	2007 	1 	15 	58	8.9	2.7	2.4	0.8	1.7	11.6	20.7	50.4	17.9	PG	77
392	Rondae	Hollis-Jefferson	BKN	21	220	Arizona 		2015 	1 	23 	29	5.8	5.3	1.5	-2.9	6.7	19.9	13.2	51.9	10.0	SG/SF	79
393	Ronnie	Price	PHX	33	190	Utah Valley 	USA 	Undrafted 	Undrafted 	Undrafted 	62	5.3	1.6	2.4	-3.2	2.1	6.8	13.7	51.7	18.7	PG	74
394	Roy	Hibbert	LAL	29	270	Georgetown 	USA 	2008 	1 	17 	81	5.9	4.9	1.2	-18	7.1	15.4	13.0	50.7	8.2	C	86
395	Rudy	Gay	SAC	29	230	Connecticut 	USA 	2006 	1 	8 	70	17.2	6.5	1.7	-2.1	4.7	16.0	22.5	53.8	7.8	SG/SF	80
396	Rudy	Gobert	UTA	24	245	None 	France 	2013 	1 	27 	61	9.1	11	1.5	4.3	13.0	27.3	14.3	58.2	7.3	C	85
397	Russ	Smith	MEM	25	165	Louisville 	USA 	2014 	2 	47 	15	1.5	0.6	0.7	-23.3	1.7	14.3	23.9	41.5	31.4	SG/SF	72
398	Russell	Westbrook	OKC	27	200	UCLA 	USA 	2008 	1 	4 	80	23.5	7.8	10.4	10.8	6.1	17.8	31.3	55.4	46.8	PG	75
399	Ryan	Anderson	NOP	28	240	California 	USA 	2008 	1 	21 	66	17	6	1.1	-1.2	6.9	15.3	24.2	54.6	5.9	PF	82
400	Ryan	Hollins	MEM	31	240	UCLA 	USA 	2006 	2 	50 	37	3.4	2.6	0.3	-17.3	10.8	14.3	11.7	63.6	3.4	PF	84
401	Ryan	Kelly	LAL	25	230	Duke 	USA 	2013 	2 	48 	36	4.2	3.4	0.6	-0.9	4.6	22.9	17.6	44.0	7.0	PF	83
402	Salah	Mejri	DAL	30	245	None 	Tunisia 	Undrafted 	Undrafted 	Undrafted 	34	3.7	3.6	0.3	6.3	11.4	21.1	14.1	63.6	3.8	C	86
403	Sam	Dekker	HOU	22	230	Wisconsin 	USA 	2015 	1 	18 	3	0	0.3	0	2.8	0.0	20.0	0.0	0.0	0.0	PG	81
404	Sasha	Kaun	CLE	31	260	Kansas 	Russia 	2008 	2 	56 	25	0.9	1	0.1	-3.2	14.3	15.4	13.4	52.7	5.2	C	83
405	Sasha	Vujacic	NYK	32	195	None 	Slovenia 	2004 	1 	27 	61	4.9	2.4	1.4	-1.9	3.0	15.1	16.4	50.3	14.6	SG/SF	79
406	Sean	Kilpatrick	BKN	26	219	Cincinnati 	USA 	Undrafted 	Undrafted 	Undrafted 	31	11.1	1.8	0.9	-12.3	2.1	8.3	23.0	57.6	7.8	SG/SF	76
407	Serge	Ibaka	OKC	26	245	None 	Congo 	2008 	1 	24 	78	12.6	6.8	0.8	9.9	6.5	16.0	17.6	53.3	3.7	PF	82
408	Sergey	Karasev	BKN	22	208	None 	Russia 	2013 	1 	19 	40	2.4	1.5	0.9	1	2.4	15.0	12.0	56.2	11.4	SG/SF	79
409	Seth	Curry	SAC	25	185	Duke 	USA 	Undrafted 	Undrafted 	Undrafted 	44	6.8	1.4	1.5	-3.7	1.4	8.1	17.6	60.3	14.8	SG/SF	74
410	Shabazz	Muhammad	MIN	23	223	UCLA 	USA 	2013 	1 	14 	82	10.5	3.3	0.6	-6.6	7.1	11.7	22.9	54.8	5.5	SG/SF	78
411	Shabazz	Napier	ORL	24	175	Connecticut 	USA 	2014 	1 	24 	55	3.7	1	1.8	-5.2	1.6	8.7	20.2	46.0	25.3	PG	73
412	Shane	Larkin	BKN	23	175	Miami (FL) 	USA 	2013 	1 	18 	78	7.3	2.3	4.4	-9.6	1.8	10.4	17.5	51.5	30.0	PG	71
1	Aaron	Brooks	CHI	31	161	Oregon 	USA 	2007 	1 	26 	69	7.1	1.5	2.6	-1.4	2.0	7.8	23.1	49.4	26.5	PG	72
2	Aaron	Gordon	ORL	20	220	Arizona 	USA 	2014 	1 	4 	78	9.2	6.5	1.6	-1.3	8.9	21.0	17.1	54.1	10.3	PF	81
413	Shaun	Livingston	GSW	30	192	None 	USA 	2004 	1 	4 	78	6.3	2.2	3	8.5	3.2	8.9	14.5	58.1	22.2	PG	79
414	Shayne	Whittington	IND	25	250	Western Michigan 	USA 	Undrafted 	Undrafted 	Undrafted 	7	1.6	1.7	0.4	-8.4	11.6	19.4	18.2	46.3	12.0	PF	83
415	Shelvin	Mack	UTA	26	203	Butler 	USA 	2011 	2 	34 	52	8.6	2.5	3.6	3.6	1.4	12.5	23.4	50.7	29.2	PG	75
416	Solomon	Hill	IND	25	225	Arizona 	USA 	2013 	1 	23 	59	4.2	2.8	1	4.2	4.9	15.6	13.1	54.3	9.3	SG/SF	79
417	Sonny	Weems	PHX	29	205	Arkansas 	USA 	2008 	2 	39 	43	2.5	1.2	1.1	-10.7	1.4	10.9	13.2	45.9	14.8	SG/SF	78
418	Spencer	Dinwiddie	CHI	23	200	Colorado 	USA 	2014 	2 	38 	12	4.8	1.4	1.8	-17	2.5	9.4	21.3	42.3	29.7	PG	78
419	Spencer	Hawes	CHA	28	245	Washington 	USA 	2007 	1 	10 	57	6	4.3	1.9	2.1	5.3	20.1	17.1	50.8	17.1	PF	85
420	Stanley	Johnson	DET	20	245	Arizona 	USA 	2015 	1 	8 	73	8.1	4.2	1.6	-3.8	3.6	16.4	19.6	46.0	11.3	SG/SF	79
421	Stephen	Curry	GSW	28	190	Davidson 	USA 	2009 	1 	7 	79	30.1	5.4	6.7	18.3	2.9	13.1	32.0	66.9	31.5	PG	75
422	Steve	Blake	DET	36	172	Maryland 	USA 	2003 	2 	38 	58	4.4	1.5	3.4	-3.7	1.0	9.2	14.8	51.0	31.1	PG	75
423	Steve	Novak	MIL	33	225	Marquette 	USA 	2006 	2 	32 	10	2.4	0.5	0	5.1	0.0	10.2	18.0	65.1	0.0	SG/SF	82
424	Steven	Adams	OKC	22	255	Pittsburgh 	New Zealand 	2013 	1 	12 	80	8	6.7	0.8	11.1	12.4	15.8	12.7	62.1	4.2	C	84
425	T.J.	McConnell	PHI	24	200	Arizona 	USA 	Undrafted 	Undrafted 	Undrafted 	81	6.1	3.1	4.5	-7.9	2.9	15.4	17.1	51.1	36.0	PG	74
426	T.J.	Warren	PHX	22	230	North Carolina State 	USA 	2014 	1 	14 	47	11	3.1	0.9	-7.2	5.7	10.0	19.8	54.9	6.8	SG/SF	80
427	Taj	Gibson	CHI	31	225	Southern California 	USA 	2009 	1 	26 	73	8.6	6.9	1.5	-2.6	11.6	15.5	14.8	55.6	8.3	PF	81
428	Tarik	Black	LAL	24	250	Kansas 	USA 	Undrafted 	Undrafted 	Undrafted 	39	3.4	4	0.4	0.7	10.0	25.7	13.0	53.7	5.3	C	81
429	Tayshaun	Prince	MIN	36	212	Kentucky 	USA 	2002 	1 	23 	77	2.9	1.9	1	-1.9	2.5	8.9	8.3	46.6	7.3	SG/SF	81
430	Terrence	Jones	HOU	24	252	Kentucky 	USA 	2012 	1 	18 	50	8.7	4.2	0.8	-10.5	6.4	16.6	19.5	51.9	6.9	PF	81
431	Terrence	Ross	TOR	25	195	Washington 	USA 	2012 	1 	8 	73	9.9	2.5	0.8	5.7	1.4	10.4	18.3	55.1	5.3	SG/SF	79
432	Terry	Rozier	BOS	22	190	Louisville 	USA 	2015 	1 	16 	39	1.8	1.6	0.9	-6.6	7.1	13.4	17.6	32.6	19.9	PG	74
433	Thabo	Sefolosha	ATL	32	220	None 	Switzerland 	2006 	1 	13 	75	6.4	4.5	1.4	3.1	3.4	17.1	12.5	57.9	9.3	SG/SF	79
434	Thaddeus	Young	BKN	28	221	Georgia Tech 	USA 	2007 	1 	12 	73	15.1	9	1.9	-4.4	8.3	22.7	21.9	53.3	9.4	PF	80
435	Thanasis	Antetokounmpo	NYK	23	205	None 		2014 	2 	51 	2	3	0.5	0	-26.1	0.0	12.5	28.8	75.0	0.0	C	79
436	Thomas	Robinson	BKN	25	237	Kansas 	USA 	2012 	1 	5 	71	4.3	5.1	0.6	-13.9	15.2	29.3	19.2	45.3	8.0	PF	82
437	Tiago	Splitter	ATL	31	245	None 	Brazil 	2007 	1 	28 	36	5.6	3.3	0.8	9.3	9.0	14.5	15.4	57.1	7.7	C	83
438	Tibor	Pleiss	UTA	26	256	None 	Germany 	2010 	2 	31 	12	2	1.3	0.2	-6	9.5	13.4	19.9	46.4	4.3	C	87
439	Tim	Duncan	SAS	40	250	Wake Forest 	U.S. Virgin Islands 	1997 	1 	1 	61	8.6	7.3	2.7	13.7	8.7	23.4	17.4	52.3	15.3	C	83
440	Tim	Frazier	NOP	25	170	None 	USA 	Undrafted 	Undrafted 	Undrafted 	51	5.1	2.2	3.2	-0.5	3.9	12.6	19.8	49.9	33.9	PG	73
441	Tim	Hardaway Jr.	ATL	24	205	Michigan 	USA 	2013 	1 	24 	51	6.4	1.7	1	6.1	0.9	9.7	16.4	56.3	8.9	SG/SF	78
442	Timofey	Mozgov	CLE	29	275	None 	Russia 	Undrafted 	Undrafted 	Undrafted 	76	6.3	4.4	0.4	0.8	9.7	18.7	16.5	59.3	3.9	C	85
443	Tobias	Harris	DET	23	235	Tennessee 	USA 	2011 	1 	19 	76	14.7	6.7	2.2	-0.5	4.2	18.4	19.5	56.0	10.6	SG/SF	81
444	Toney	Douglas	NOP	30	195	Florida State 	USA 	2009 	1 	29 	61	8.7	2.3	2.6	-4.8	2.0	11.1	19.2	54.3	18.8	PG	74
445	Tony	Allen	MEM	34	213	Oklahoma State 	USA 	2004 	1 	25 	64	8.4	4.6	1.1	-1.4	7.1	14.3	17.0	50.5	6.8	SG/SF	76
446	Tony	Parker	SAS	34	185	None 	France 	2001 	1 	28 	72	11.9	2.4	5.3	10.6	1.0	8.9	21.4	54.6	29.4	PG	74
447	Tony	Snell	CHI	24	200	New Mexico 	USA 	2013 	1 	20 	64	5.3	3.1	1	4.5	1.6	13.2	13.7	47.8	7.0	SG/SF	79
448	Tony	Wroten	NYK	23	205	Washington 	USA 	2012 	1 	25 	8	8.4	2.6	2.5	-24.2	1.5	14.1	32.0	41.2	27.4	SG/SF	78
449	Trevor	Ariza	HOU	31	215	UCLA 	USA 	2004 	2 	43 	81	12.7	4.5	2.3	0.4	2.6	11.9	15.8	55.1	10.0	SG/SF	80
450	Trevor	Booker	UTA	28	228	Clemson 	USA 	2010 	1 	23 	79	5.9	5.7	1.1	1.6	11.9	20.2	14.4	53.3	8.3	PF	80
451	Trey	Burke	UTA	23	191	Michigan 	USA 	2013 	1 	9 	64	10.6	1.8	2.3	-2	1.5	8.0	24.7	50.7	20.1	PG	73
452	Trey	Lyles	UTA	20	234	Kentucky 	Canada 	2015 	1 	12 	80	6.1	3.7	0.7	-0.9	4.8	20.3	18.3	51.7	7.2	PF	82
453	Tristan	Thompson	CLE	25	238	Texas 	Canada 	2011 	1 	4 	82	7.8	9	0.8	7.9	13.3	23.3	11.6	61.1	4.0	C	81
454	Troy	Daniels	CHA	24	205	Virginia Commonwealth 	USA 	Undrafted 	Undrafted 	Undrafted 	43	5.6	1.3	0.5	-2.4	1.6	11.9	20.2	63.4	8.3	SG/SF	76
455	Ty	Lawson	IND	28	195	North Carolina 	USA 	2009 	1 	18 	66	5.7	1.8	3.6	-6.2	1.9	7.2	14.7	47.6	25.1	PG	71
456	Tyler	Ennis	MIL	21	194	Syracuse 	Canada 	2014 	1 	18 	46	4.5	1.6	2.1	-5.5	2.3	10.8	17.3	51.0	22.5	PG	75
457	Tyler	Hansbrough	CHA	30	250	North Carolina 	USA 	2009 	1 	13 	44	2.4	2	0.2	-1.2	11.9	17.4	14.6	52.2	3.8	PF	81
458	Tyler	Johnson	MIA	24	186	Fresno State 	USA 	Undrafted 	Undrafted 	Undrafted 	36	8.7	3	2.2	2.4	3.8	10.4	17.2	57.9	15.1	SG/SF	76
459	Tyler	Zeller	BOS	26	253	North Carolina 	USA 	2012 	1 	17 	60	6.1	3	0.5	-3.4	9.1	16.8	23.0	53.9	7.3	C	84
460	Tyreke	Evans	NOP	26	220	Memphis 	USA 	2009 	1 	4 	25	15.2	5.2	6.6	-0.9	2.9	15.9	25.4	53.4	36.6	SG/SF	78
461	Tyson	Chandler	PHX	33	240	None 	USA 	2001 	1 	2 	66	7.2	8.7	1	-12.6	11.6	27.2	12.8	60.6	6.4	C	85
462	Tyus	Jones	MIN	20	195	Duke 	USA 	2015 	1 	24 	37	4.2	1.3	2.9	-10	1.4	8.3	15.9	45.0	27.8	PG	74
463	Udonis	Haslem	MIA	36	235	Florida 	USA 	Undrafted 	Undrafted 	Undrafted 	37	1.6	2	0.4	0	5.0	30.1	13.6	43.2	8.0	PF	80
464	Victor	Oladipo	ORL	24	210	Indiana 	USA 	2013 	1 	2 	72	16	4.8	3.9	-0.6	2.2	13.5	22.8	53.4	18.2	SG/SF	76
465	Vince	Carter	MEM	39	220	North Carolina 	USA 	1998 	1 	5 	60	6.6	2.4	0.9	-3	3.3	13.2	18.1	52.0	8.9	SG/SF	78
466	Walter	Tavares	ATL	24	260	None 	Cape Verde 	Undrafted 	Undrafted 	Undrafted 	11	2.3	1.9	0.3	-3.1	13.2	22.2	16.8	55.5	5.5	C	87
467	Wayne	Ellington	BKN	28	200	North Carolina 	USA 	2009 	1 	28 	76	7.7	2.3	1.1	-10.6	1.3	10.7	17.6	49.8	8.2	SG/SF	76
468	Wesley	Johnson	LAC	28	215	Syracuse 	USA 	2010 	1 	4 	80	6.9	3.1	0.6	3.3	2.4	13.7	15.7	51.3	4.5	SG/SF	79
469	Wesley	Matthews	DAL	29	220	Marquette 	USA 	Undrafted 	Undrafted 	Undrafted 	78	12.5	3.1	1.9	2.7	1.1	8.9	17.4	53.2	8.8	SG/SF	77
470	Will	Barton	DEN	25	175	Memphis 	USA 	2012 	2 	40 	82	14.4	5.8	2.5	-3.5	2.8	20.2	23.1	53.5	14.7	SG/SF	78
471	Willie	Cauley-Stein	SAC	22	240	Kentucky 	USA 	2015 	1 	6 	66	7	5.3	0.6	-2.7	10.5	16.6	13.3	58.8	3.8	C	84
472	Willie	Reed	BKN	26	220	Saint Louis 	USA 	Undrafted 	Undrafted 	Undrafted 	39	4.7	3.1	0.3	-7.9	13.2	20.6	18.0	57.9	3.9	PF	82
473	Xavier	Munford	MEM	24	180	Rhode Island 		Undrafted 	Undrafted 	Undrafted 	14	5.7	2.2	1.6	-9.5	1.3	14.4	17.2	48.1	13.6	PG	75
474	Zach	LaVine	MIN	21	189	UCLA 	USA 	2014 	1 	13 	82	14	2.8	3.1	-5.5	1.4	10.0	23.3	54.8	18.7	PG	77
475	Zach	Randolph	MEM	34	260	Michigan State 	USA 	2001 	1 	19 	68	15.3	7.8	2.1	-2	10.0	21.0	24.7	51.9	12.5	PF	81
476	Zaza	Pachulia	DAL	32	275	None 	Georgia 	2003 	2 	42 	76	8.6	9.4	1.7	0.9	13.7	26.2	16.4	55.0	10.1	C	83
\.


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 218
-- Name: player_bios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_bios_id_seq', 476, true);


--
-- TOC entry 2918 (class 2606 OID 16752)
-- Name: player_bios player_bios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_bios
    ADD CONSTRAINT player_bios_pkey PRIMARY KEY (id);


-- Completed on 2021-10-02 20:37:32

--
-- PostgreSQL database dump complete
--

