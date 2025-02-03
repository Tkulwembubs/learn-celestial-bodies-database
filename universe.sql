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
-- Name: atmosphere; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.atmosphere (
    atmosphere_id integer NOT NULL,
    name character varying(40) NOT NULL,
    sustains_life boolean NOT NULL,
    wind_air_fire character varying(30),
    temperature_celcius numeric
);


ALTER TABLE public.atmosphere OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.atmosphere_atmosphere_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atmosphere_atmosphere_id_seq OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.atmosphere_atmosphere_id_seq OWNED BY public.atmosphere.atmosphere_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_type text NOT NULL,
    favourite_colour character varying(30),
    atmosphere integer
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
    name character varying(40) NOT NULL,
    distance_from_a_planet integer,
    material character varying(60),
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
    name character varying(40) NOT NULL,
    how_many_moons integer,
    is_spherical boolean NOT NULL,
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
    name character varying(40) NOT NULL,
    age_in_lightyears numeric,
    combustable boolean NOT NULL,
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
-- Name: atmosphere atmosphere_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere ALTER COLUMN atmosphere_id SET DEFAULT nextval('public.atmosphere_atmosphere_id_seq'::regclass);


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
-- Data for Name: atmosphere; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.atmosphere VALUES (1, 'Razy', false, 'FFire', 83.3);
INSERT INTO public.atmosphere VALUES (2, 'Castro', true, 'Wind', 49.5);
INSERT INTO public.atmosphere VALUES (3, 'Mooski', false, 'Air', 85.2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Rainaway', 'Wetland', 'Blue', NULL);
INSERT INTO public.galaxy VALUES (3, 'Fiery', 'Furnacce', 'Red', NULL);
INSERT INTO public.galaxy VALUES (4, 'Carnival', 'Meaty', 'Green', NULL);
INSERT INTO public.galaxy VALUES (5, 'Lavander', 'Floral', 'Purple', NULL);
INSERT INTO public.galaxy VALUES (6, 'Vitamin_C', 'Citrussy', 'Orange', NULL);
INSERT INTO public.galaxy VALUES (7, 'Sonneblom', 'Bright', 'Yellow', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lester', 8141, 'Water', 1);
INSERT INTO public.moon VALUES (2, 'Katranda', 7212, 'Rock', 2);
INSERT INTO public.moon VALUES (3, 'Eclipse', 4681, 'Grass', 3);
INSERT INTO public.moon VALUES (4, 'New Moon', 2314, 'Mud', 4);
INSERT INTO public.moon VALUES (5, 'February', 3821, 'Gas', 5);
INSERT INTO public.moon VALUES (6, 'Mediccen', 4172, 'Oil', 6);
INSERT INTO public.moon VALUES (7, 'Oceana', 7724, 'Water', 11);
INSERT INTO public.moon VALUES (8, 'Nigrolution', 8146, 'Rock', 12);
INSERT INTO public.moon VALUES (9, 'Grocure', 1784, 'Mud', 13);
INSERT INTO public.moon VALUES (10, 'Davina', 1800, 'Gas', 17);
INSERT INTO public.moon VALUES (11, 'Sypholus', 6829, 'Oil', 20);
INSERT INTO public.moon VALUES (12, 'Geminus', 1012, 'Water', 21);
INSERT INTO public.moon VALUES (13, 'Yskal', 1142, 'Rock', 1);
INSERT INTO public.moon VALUES (14, 'Ghanian', 6127, 'Grass', 2);
INSERT INTO public.moon VALUES (15, 'Excobar', 5116, 'Mud', 3);
INSERT INTO public.moon VALUES (16, 'Noshoq', 5221, 'Gas', 4);
INSERT INTO public.moon VALUES (17, 'TGB', 5683, 'Oil', 5);
INSERT INTO public.moon VALUES (18, 'Hoelooo', 8342, 'Water', 6);
INSERT INTO public.moon VALUES (19, 'Lustropolis', 7188, 'Rock', 11);
INSERT INTO public.moon VALUES (20, 'Razor', 8124, 'Grass', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jackteris', 2, true, 1);
INSERT INTO public.planet VALUES (2, 'Centralius', 4, true, 2);
INSERT INTO public.planet VALUES (3, 'Yokuro', 11, true, 3);
INSERT INTO public.planet VALUES (4, 'Valentine', 12, true, 4);
INSERT INTO public.planet VALUES (5, 'Constatius', 14, true, 5);
INSERT INTO public.planet VALUES (6, 'Delmargo', 15, true, 6);
INSERT INTO public.planet VALUES (11, 'Encanto', 88, true, 1);
INSERT INTO public.planet VALUES (12, 'Prosperous', 5, true, 2);
INSERT INTO public.planet VALUES (13, 'Zebedee', 3, true, 3);
INSERT INTO public.planet VALUES (17, 'Huawei', 62, true, 6);
INSERT INTO public.planet VALUES (20, 'Katastrophe', 9, true, 4);
INSERT INTO public.planet VALUES (21, 'Janky', 10, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Valerie', 114, false, 2);
INSERT INTO public.star VALUES (2, 'Constantia', 412, true, 3);
INSERT INTO public.star VALUES (3, 'Elemental', 312, false, 4);
INSERT INTO public.star VALUES (4, 'Rovonia', 724, true, 5);
INSERT INTO public.star VALUES (5, 'Silvery', 248, true, 6);
INSERT INTO public.star VALUES (6, 'Champion', 841, false, 7);


--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.atmosphere_atmosphere_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: atmosphere atmosphere_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_pkey PRIMARY KEY (atmosphere_id);


--
-- Name: atmosphere atmosphere_temperature_celcius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_temperature_celcius_key UNIQUE (temperature_celcius);


--
-- Name: galaxy galaxy_favourite_colour_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_favourite_colour_key UNIQUE (favourite_colour);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_a_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_a_planet_key UNIQUE (distance_from_a_planet);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_how_many_moons_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_how_many_moons_key UNIQUE (how_many_moons);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_lightyears_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_lightyears_key UNIQUE (age_in_lightyears);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_atmosphere_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_atmosphere_fkey FOREIGN KEY (atmosphere) REFERENCES public.atmosphere(atmosphere_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

