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
    name character varying(20) NOT NULL,
    blackhole_in_center boolean,
    in_cluster character varying(20) NOT NULL,
    age_billion numeric(4,2)
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
    name character varying(20) NOT NULL,
    planet_id integer,
    description text,
    composition text NOT NULL
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
    name character varying(20) NOT NULL,
    avg_temp numeric(6,2),
    is_habitable boolean NOT NULL,
    star_id integer,
    moon_id integer,
    satellite_id integer
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number_of_ppl integer,
    year_active integer,
    planet_id integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exoplanet integer NOT NULL,
    galaxy_id integer,
    description text
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy_1', false, 'Cluster_C', 5.92);
INSERT INTO public.galaxy VALUES (2, 'Galaxy_2', false, 'Cluster_A', 13.65);
INSERT INTO public.galaxy VALUES (3, 'Galaxy_3', false, 'Cluster_C', 1.19);
INSERT INTO public.galaxy VALUES (4, 'Galaxy_4', false, 'Cluster_C', 10.56);
INSERT INTO public.galaxy VALUES (5, 'Galaxy_5', false, 'Cluster_C', 11.62);
INSERT INTO public.galaxy VALUES (6, 'Galaxy_6', true, 'Cluster_B', 7.34);
INSERT INTO public.galaxy VALUES (7, 'Galaxy_7', false, 'Cluster_A', 2.78);
INSERT INTO public.galaxy VALUES (8, 'Galaxy_8', true, 'Cluster_B', 3.42);
INSERT INTO public.galaxy VALUES (9, 'Galaxy_9', false, 'Cluster_C', 9.67);
INSERT INTO public.galaxy VALUES (10, 'Galaxy_10', true, 'Cluster_A', 8.21);
INSERT INTO public.galaxy VALUES (11, 'Galaxy_11', true, 'Cluster_B', 6.54);
INSERT INTO public.galaxy VALUES (12, 'Galaxy_12', false, 'Cluster_C', 4.87);
INSERT INTO public.galaxy VALUES (13, 'Galaxy_13', true, 'Cluster_A', 12.35);
INSERT INTO public.galaxy VALUES (14, 'Galaxy_14', false, 'Cluster_B', 11.01);
INSERT INTO public.galaxy VALUES (15, 'Galaxy_15', true, 'Cluster_C', 1.97);
INSERT INTO public.galaxy VALUES (16, 'Galaxy_16', false, 'Cluster_A', 10.14);
INSERT INTO public.galaxy VALUES (17, 'Galaxy_17', true, 'Cluster_B', 7.69);
INSERT INTO public.galaxy VALUES (18, 'Galaxy_18', false, 'Cluster_C', 2.53);
INSERT INTO public.galaxy VALUES (19, 'Galaxy_19', true, 'Cluster_A', 5.41);
INSERT INTO public.galaxy VALUES (20, 'Galaxy_20', false, 'Cluster_B', 3.98);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon_1', 12, 'Description of Moon_1', 'Rocky');
INSERT INTO public.moon VALUES (2, 'Moon_2', 7, 'Description of Moon_2', 'Gaseous');
INSERT INTO public.moon VALUES (3, 'Moon_3', 2, 'Description of Moon_3', 'Rocky');
INSERT INTO public.moon VALUES (4, 'Moon_4', 8, 'Description of Moon_4', 'Icy');
INSERT INTO public.moon VALUES (5, 'Moon_5', 5, 'Description of Moon_5', 'Rocky');
INSERT INTO public.moon VALUES (6, 'Moon_6', 10, 'Description of Moon_6', 'Gaseous');
INSERT INTO public.moon VALUES (7, 'Moon_7', 11, 'Description of Moon_7', 'Icy');
INSERT INTO public.moon VALUES (8, 'Moon_8', 1, 'Description of Moon_8', 'Rocky');
INSERT INTO public.moon VALUES (9, 'Moon_9', 3, 'Description of Moon_9', 'Gaseous');
INSERT INTO public.moon VALUES (10, 'Moon_10', 9, 'Description of Moon_10', 'Icy');
INSERT INTO public.moon VALUES (11, 'Moon_11', 4, 'Description of Moon_11', 'Rocky');
INSERT INTO public.moon VALUES (12, 'Moon_12', 6, 'Description of Moon_12', 'Gaseous');
INSERT INTO public.moon VALUES (13, 'Moon_13', 8, 'Description of Moon_13', 'Icy');
INSERT INTO public.moon VALUES (14, 'Moon_14', 2, 'Description of Moon_14', 'Rocky');
INSERT INTO public.moon VALUES (15, 'Moon_15', 7, 'Description of Moon_15', 'Gaseous');
INSERT INTO public.moon VALUES (16, 'Moon_16', 5, 'Description of Moon_16', 'Icy');
INSERT INTO public.moon VALUES (17, 'Moon_17', 3, 'Description of Moon_17', 'Rocky');
INSERT INTO public.moon VALUES (18, 'Moon_18', 11, 'Description of Moon_18', 'Gaseous');
INSERT INTO public.moon VALUES (19, 'Moon_19', 4, 'Description of Moon_19', 'Icy');
INSERT INTO public.moon VALUES (20, 'Moon_20', 10, 'Description of Moon_20', 'Rocky');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet_1', -145.72, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Planet_2', 187.08, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet_3', 337.38, false, 4, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet_4', 369.42, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet_5', 391.06, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet_6', 223.78, true, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet_7', -55.23, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet_8', 102.34, false, 6, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet_9', -30.45, true, 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet_10', 456.23, false, 3, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet_11', 78.56, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet_12', -200.12, false, 2, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Satellite_1', 2, 2001, NULL);
INSERT INTO public.satellite VALUES (2, 'Satellite_2', 0, 1957, NULL);
INSERT INTO public.satellite VALUES (3, 'Satellite_3', 3, 2009, NULL);
INSERT INTO public.satellite VALUES (4, 'Satellite_4', 5, 2004, NULL);
INSERT INTO public.satellite VALUES (5, 'Satellite_5', 1, 1952, NULL);
INSERT INTO public.satellite VALUES (6, 'Satellite_6', 4, 1976, NULL);
INSERT INTO public.satellite VALUES (7, 'Satellite_7', 0, 2015, NULL);
INSERT INTO public.satellite VALUES (8, 'Satellite_8', 1, 2020, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star_1', 7, 7, 'Description of Star_1');
INSERT INTO public.star VALUES (2, 'Star_2', 4, 20, 'Description of Star_2');
INSERT INTO public.star VALUES (3, 'Star_3', 5, 12, 'Description of Star_3');
INSERT INTO public.star VALUES (4, 'Star_4', 8, 4, 'Description of Star_4');
INSERT INTO public.star VALUES (5, 'Star_5', 5, 5, 'Description of Star_5');
INSERT INTO public.star VALUES (6, 'Star_6', 2, 9, 'Description of Star_6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_satellite_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_satellite_id_fkey FOREIGN KEY (satellite_id) REFERENCES public.satellite(satellite_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

