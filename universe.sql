--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    has_water boolean,
    age_in_millions_of_years_galaxy integer,
    letter_id character(1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    has_water boolean,
    age_in_millions_of_years integer,
    radius_in_km numeric,
    planet_id integer,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    letter_id character(1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_water boolean,
    age_in_millions_of_years integer,
    radius_in_km numeric,
    star_id integer,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    letter_id character(1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_info (
    planet_info_id integer NOT NULL,
    radius_in_km numeric,
    comment text,
    has_water boolean,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    letter_id character(1)
);


ALTER TABLE public.planet_info OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    has_water boolean,
    age_in_millions_of_years integer,
    radius_in_km numeric,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    letter_id character(1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AB', true, true, 45, 'A');
INSERT INTO public.galaxy VALUES (2, 'AC', true, false, 20, 'B');
INSERT INTO public.galaxy VALUES (3, 'AD', false, true, 22, 'C');
INSERT INTO public.galaxy VALUES (4, 'BA', false, false, 50, 'D');
INSERT INTO public.galaxy VALUES (5, 'BB', true, true, 60, 'E');
INSERT INTO public.galaxy VALUES (6, 'BC', false, false, 10, 'F');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 900, 200.4, 5, 'AZE', true, 'W');
INSERT INTO public.moon VALUES (2, false, 95, 94.2, 11, 'OOP', true, 'R');
INSERT INTO public.moon VALUES (3, false, 33, 499.9, 10, 'FGH', false, 'T');
INSERT INTO public.moon VALUES (4, false, 44, 34.6, 4, 'GH', false, 'I');
INSERT INTO public.moon VALUES (5, true, 42, 45.7, 4, 'HJK', true, 'O');
INSERT INTO public.moon VALUES (6, false, 85, 54.7, 1, 'HU', false, 'Y');
INSERT INTO public.moon VALUES (7, false, 44, 29.8, 4, 'FGHJ', false, 'A');
INSERT INTO public.moon VALUES (8, true, 99, 98.6, 5, 'UJ', true, 'V');
INSERT INTO public.moon VALUES (9, false, 99, 45.3, 6, 'AS', true, 'N');
INSERT INTO public.moon VALUES (10, true, 90, 56.8, 9, 'WE', true, 'M');
INSERT INTO public.moon VALUES (11, true, 33, 145.3, 12, 'FA', true, 'J');
INSERT INTO public.moon VALUES (12, false, 44, 15.3, 10, 'Moon', false, 'L');
INSERT INTO public.moon VALUES (13, true, 23, 22.5, 11, 'POU', false, 'F');
INSERT INTO public.moon VALUES (14, false, 33, 30.9, 9, 'POW', true, 'S');
INSERT INTO public.moon VALUES (15, false, 44, 34.6, 4, 'AGH', false, 'K');
INSERT INTO public.moon VALUES (16, true, 42, 45.7, 4, 'HJPOK', true, 'G');
INSERT INTO public.moon VALUES (17, false, 85, 54.7, 1, 'HUVB', false, 'E');
INSERT INTO public.moon VALUES (18, false, 44, 29.8, 4, 'FGHJRT', false, 'D');
INSERT INTO public.moon VALUES (19, true, 99, 98.6, 5, 'UJRT', true, 'C');
INSERT INTO public.moon VALUES (20, false, 99, 45.3, 6, 'ASFF', true, 'B');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 80, 102.1, 5, 'Urias', false, 'Q');
INSERT INTO public.planet VALUES (2, true, 900, 200.4, 1, 'AZE', true, 'W');
INSERT INTO public.planet VALUES (3, false, 95, 94.2, 2, 'OOP', true, 'R');
INSERT INTO public.planet VALUES (4, false, 33, 499.9, 3, 'FGH', false, 'T');
INSERT INTO public.planet VALUES (5, false, 44, 34.6, 4, 'GHF', false, 'I');
INSERT INTO public.planet VALUES (6, true, 42, 45.7, 4, 'HJK', true, 'O');
INSERT INTO public.planet VALUES (7, false, 85, 54.7, 1, 'HUH', false, 'Y');
INSERT INTO public.planet VALUES (8, false, 44, 29.8, 4, 'FGHJK', false, 'A');
INSERT INTO public.planet VALUES (9, true, 99, 98.6, 5, 'UJM', true, 'V');
INSERT INTO public.planet VALUES (10, false, 99, 45.3, 6, 'ASD', true, 'N');
INSERT INTO public.planet VALUES (11, true, 90, 56.8, 2, 'WEG', true, 'M');
INSERT INTO public.planet VALUES (12, true, 33, 145.3, 2, 'FAG', true, 'J');


--
-- Data for Name: planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_info VALUES (1, 40.5, 'good', true, 'ABCD', false, 'L');
INSERT INTO public.planet_info VALUES (2, 44.0, 'far', false, 'EFGH', true, 'G');
INSERT INTO public.planet_info VALUES (3, 20.3, 'bad', false, 'IJKL', false, 'P');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, true, 4, 5.0, 'Mars', false, 'A');
INSERT INTO public.star VALUES (2, 1, true, 6, 8.7, 'Saturn', false, 'H');
INSERT INTO public.star VALUES (3, 2, false, 7, 50.5, 'Nepturn', true, 'Y');
INSERT INTO public.star VALUES (4, 3, false, 4, 9.8, 'Nebias', true, 'Z');
INSERT INTO public.star VALUES (5, 4, true, 11, 6.3, 'Eros', true, 'K');
INSERT INTO public.star VALUES (6, 6, true, 8, 2.1, 'Rogue', false, 'P');
INSERT INTO public.star VALUES (7, 5, false, 20, 2.1, 'Tim', false, 'I');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: galaxy galaxy_letter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_letter_id_key UNIQUE (letter_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_letter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_letter_id_key UNIQUE (letter_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_info planet_info_letter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_letter_id_key UNIQUE (letter_id);


--
-- Name: planet_info planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_pkey PRIMARY KEY (planet_info_id);


--
-- Name: planet planet_letter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_letter_id_key UNIQUE (letter_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_letter_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_letter_id_key UNIQUE (letter_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
