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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    column4 integer,
    column5 integer NOT NULL,
    column6 integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    identifier_sky integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    "position" integer,
    on_a_sistem boolean,
    planetary_system_id integer,
    column_aux integer
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
-- Name: planetary_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_system (
    planetary_system_id integer NOT NULL,
    name character varying(30),
    description text,
    column4 integer,
    column5 integer NOT NULL
);


ALTER TABLE public.planetary_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    luminosity_10_20_w numeric(5,2),
    hip integer,
    visible boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_seq OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_seq OWNED BY public.star.star_id;


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', NULL, NULL, 1, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', NULL, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', NULL, 5, NULL);
INSERT INTO public.moon VALUES (3, 'Triton', NULL, 6, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, 25, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, 26, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, 27, NULL);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, 28, NULL);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, 29, NULL);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, 30, NULL);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, 31, NULL);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, 32, NULL);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, 33, NULL);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, 25, NULL);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, 26, NULL);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, 27, NULL);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, 28, NULL);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, 29, NULL);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, 30, NULL);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, 31, NULL);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, 32, NULL);
INSERT INTO public.moon VALUES (21, 'Moon21', NULL, 33, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Jupiter', 2, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 2, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Neptune', 2, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'planet4', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'planet5', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'planet6', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'planet7', 8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'planet8', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'planet9', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'planet10', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (32, 'planet11', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'planet12', 7, NULL, NULL, NULL, NULL);


--
-- Data for Name: planetary_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_system VALUES (1, 'Solar', NULL, NULL, 1);
INSERT INTO public.planetary_system VALUES (2, 'psystem2', NULL, NULL, 1);
INSERT INTO public.planetary_system VALUES (3, 'psystem3', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1, NULL, NULL, true);
INSERT INTO public.star VALUES (4, 'Sirius', 1, NULL, NULL, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, NULL, NULL, true);
INSERT INTO public.star VALUES (6, 'star4', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'star5', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'star6', 4, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name: star_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_seq', 8, true);


--
-- Name: galaxy galaxy_column4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_column4_key UNIQUE (column4);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_identifier_sky_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_identifier_sky_key UNIQUE (identifier_sky);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_column_aux_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_column_aux_key UNIQUE (column_aux);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_system planetary_system_column4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_column4_key UNIQUE (column4);


--
-- Name: planetary_system planetary_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_pkey PRIMARY KEY (planetary_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_hip; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_hip UNIQUE (hip);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planetary_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planetary_system_id_fkey FOREIGN KEY (planetary_system_id) REFERENCES public.planetary_system(planetary_system_id);


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

