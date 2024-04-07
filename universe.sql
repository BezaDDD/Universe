--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: additional; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional (
    additional_id integer NOT NULL,
    a integer NOT NULL,
    b integer NOT NULL,
    name character varying(5)
);


ALTER TABLE public.additional OWNER TO freecodecamp;

--
-- Name: additional_add_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_add_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_add_id_seq OWNER TO freecodecamp;

--
-- Name: additional_add_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_add_id_seq OWNED BY public.additional.additional_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    code text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    is_white boolean,
    is_round boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    diameter numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: additional additional_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional ALTER COLUMN additional_id SET DEFAULT nextval('public.additional_add_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: additional; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional VALUES (1, 1, 2, 'a');
INSERT INTO public.additional VALUES (2, 2, 3, 'b');
INSERT INTO public.additional VALUES (3, 3, 4, 'c');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 1, 'ABCDEFG');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 3, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backwards', 4, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 5, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'CartWheel', 6, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, 1, NULL, NULL, 12);
INSERT INTO public.moon VALUES (2, 'B', 2, 2, NULL, NULL, 12);
INSERT INTO public.moon VALUES (3, 'C', 3, 3, NULL, NULL, 12);
INSERT INTO public.moon VALUES (4, 'D', 4, 4, NULL, NULL, 12);
INSERT INTO public.moon VALUES (5, 'E', 5, 5, NULL, NULL, 12);
INSERT INTO public.moon VALUES (6, 'F', 6, 6, NULL, NULL, 12);
INSERT INTO public.moon VALUES (7, 'G', 7, 7, NULL, NULL, 12);
INSERT INTO public.moon VALUES (8, 'H', 8, 8, NULL, NULL, 12);
INSERT INTO public.moon VALUES (9, 'I', 9, 9, NULL, NULL, 12);
INSERT INTO public.moon VALUES (10, 'J', 10, 10, NULL, NULL, 13);
INSERT INTO public.moon VALUES (11, 'K', 11, 11, NULL, NULL, 13);
INSERT INTO public.moon VALUES (12, 'L', 12, 12, NULL, NULL, 13);
INSERT INTO public.moon VALUES (13, 'M', 13, 13, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'N', 14, 14, NULL, NULL, 13);
INSERT INTO public.moon VALUES (15, 'O', 15, 15, NULL, NULL, 13);
INSERT INTO public.moon VALUES (16, 'P', 16, 16, NULL, NULL, 13);
INSERT INTO public.moon VALUES (17, 'Q', 17, 17, NULL, NULL, 13);
INSERT INTO public.moon VALUES (18, 'R', 18, 18, NULL, NULL, 13);
INSERT INTO public.moon VALUES (19, 'S', 19, 19, NULL, NULL, 13);
INSERT INTO public.moon VALUES (20, 'T', 20, 20, NULL, NULL, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (12, 'Mercury', 1, 1, 1);
INSERT INTO public.planet VALUES (13, 'Venus', 2, 2, 1);
INSERT INTO public.planet VALUES (14, 'Earth', 3, 3, 1);
INSERT INTO public.planet VALUES (15, 'Mars', 4, 4, 1);
INSERT INTO public.planet VALUES (16, 'Jupiter', 5, 5, 1);
INSERT INTO public.planet VALUES (17, 'Saturn', 6, 6, 1);
INSERT INTO public.planet VALUES (18, 'Uranus', 7, 7, 1);
INSERT INTO public.planet VALUES (19, 'Neptune', 8, 8, 1);
INSERT INTO public.planet VALUES (20, 'Alpha', 9, 9, 2);
INSERT INTO public.planet VALUES (21, 'Beta', 10, 10, 2);
INSERT INTO public.planet VALUES (22, 'Gamma', 11, 11, 2);
INSERT INTO public.planet VALUES (23, 'Delta', 12, 12, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 1.0, 1);
INSERT INTO public.star VALUES (4, 'Scorpius', 4, 4, 4.0, 1);
INSERT INTO public.star VALUES (5, 'Crux', 5, 5, 5.0, 1);
INSERT INTO public.star VALUES (6, 'Cancer', 6, 6, 6.0, 1);
INSERT INTO public.star VALUES (2, 'Eridanus', 2, 2, 2.0, 3);
INSERT INTO public.star VALUES (3, 'Cassiopeia', 3, 3, 3.0, 3);


--
-- Name: additional_add_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_add_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: additional additional_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_pkey PRIMARY KEY (additional_id);


--
-- Name: additional additional_s_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_s_key UNIQUE (name);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

