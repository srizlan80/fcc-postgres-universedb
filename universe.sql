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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    black_hole_name_code character varying(255) NOT NULL,
    black_hole_distance_from_earth integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_speed integer,
    galaxy_description text,
    name character varying(255),
    galaxy_name_code character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    moon_name_code character varying(255) NOT NULL,
    moon_has_round_shape boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mood_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mood_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_amount_of_people numeric,
    planet_time_travel boolean DEFAULT false NOT NULL,
    planet_name_code character varying(255) NOT NULL,
    star_id integer NOT NULL
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
    star_radius integer NOT NULL,
    star_color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    star_name_code character varying(255) NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mood_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Stellar', 'Stellar', NULL);
INSERT INTO public.black_hole VALUES (2, 'Sagittarius A', 'Sagittarius A', NULL);
INSERT INTO public.black_hole VALUES (3, 'Supermassive black hole', 'Supermassive black hole', NULL);
INSERT INTO public.black_hole VALUES (4, 'Black hole greybody factors', 'Black hole greybody factors', NULL);
INSERT INTO public.black_hole VALUES (5, 'Ic 1459', 'Ic 1459', NULL);
INSERT INTO public.black_hole VALUES (6, 'Messier 110', 'Messier 110', NULL);
INSERT INTO public.black_hole VALUES (7, 'Ngc 1023', 'Ngc 1023', NULL);
INSERT INTO public.black_hole VALUES (8, 'V404 Cygni', 'V404 Cygni', NULL);
INSERT INTO public.black_hole VALUES (9, 'Arp 220', 'Arp 220', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Andromeda Galaxy', 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Magellanic Clouds', 'Magellanic Clouds');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'Whirlpool Galaxy', 'Whirlpool Galaxy');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Sombrero Galaxy', 'Sombrero Galaxy');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Spider Galaxy', 'Spider Galaxy');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Sunflower Galaxy', 'Sunflower Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon1', true, 1);
INSERT INTO public.moon VALUES (2, 'Thebe', 'Thebe1', true, 1);
INSERT INTO public.moon VALUES (3, 'Anthe', 'Anthe1', true, 1);
INSERT INTO public.moon VALUES (4, 'Albiorix', 'Albiorix1', true, 1);
INSERT INTO public.moon VALUES (5, 'Fornjot', 'Fornjot1', true, 1);
INSERT INTO public.moon VALUES (6, 'Methone', 'Methone1', true, 1);
INSERT INTO public.moon VALUES (7, 'Siarnaq', 'Siarnaq1', true, 1);
INSERT INTO public.moon VALUES (8, 'Erriapus', 'Erriapus1', true, 1);
INSERT INTO public.moon VALUES (9, 'Bergelmir', 'Bergelmir1', true, 1);
INSERT INTO public.moon VALUES (10, 'Ijiraq', 'Ijiraq1', true, 1);
INSERT INTO public.moon VALUES (11, 'Adrastea', 'Adrastea1', true, 1);
INSERT INTO public.moon VALUES (12, 'Jarnsaxa', 'Jarnsaxa1', true, 1);
INSERT INTO public.moon VALUES (13, 'Themisto', 'Themisto1', true, 1);
INSERT INTO public.moon VALUES (14, 'Enceladus', 'Enceladus1', true, 1);
INSERT INTO public.moon VALUES (15, 'Farbauti', 'Farbauti1', true, 1);
INSERT INTO public.moon VALUES (16, 'Aegir', 'Aegir1', true, 1);
INSERT INTO public.moon VALUES (17, 'Cyllene', 'Cyllene1', true, 1);
INSERT INTO public.moon VALUES (18, 'Narvi', 'Narvi1', true, 1);
INSERT INTO public.moon VALUES (19, 'Titan', 'Titan1', true, 1);
INSERT INTO public.moon VALUES (20, 'Jupiter LII', 'Jupiter LII1', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, false, 'Earth1', 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, false, 'Jupiter1', 1);
INSERT INTO public.planet VALUES (3, 'Saturn', NULL, false, 'Saturn1', 1);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, false, 'Mercury1', 1);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, false, 'Venus1', 1);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, false, 'Mars1', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, false, 'Uranus1', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, false, 'Neptune1', 1);
INSERT INTO public.planet VALUES (9, 'Earth', NULL, false, 'Earth2', 2);
INSERT INTO public.planet VALUES (10, 'Jupiter', NULL, false, 'Jupiter2', 2);
INSERT INTO public.planet VALUES (11, 'Saturn', NULL, false, 'Saturn2', 2);
INSERT INTO public.planet VALUES (12, 'Mercury', NULL, false, 'Mercury2', 2);
INSERT INTO public.planet VALUES (13, 'Venus', NULL, false, 'Venus2', 2);
INSERT INTO public.planet VALUES (14, 'Mars', NULL, false, 'Mars2', 2);
INSERT INTO public.planet VALUES (15, 'Uranus', NULL, false, 'Uranus2', 2);
INSERT INTO public.planet VALUES (16, 'Neptune', NULL, false, 'Neptune2', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'green', 'Adhil', 'Adhil', 1);
INSERT INTO public.star VALUES (2, 2, 'blue', 'Almach', 'Almach', 1);
INSERT INTO public.star VALUES (3, 3, 'red', 'Alpheratz', 'Alpheratz', 1);
INSERT INTO public.star VALUES (4, 4, 'yellow', 'Buna', 'Buna', 1);
INSERT INTO public.star VALUES (5, 5, 'pink', 'Mirach', 'Mirach', 1);
INSERT INTO public.star VALUES (6, 6, 'orange', 'Nembus', 'Nembus', 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_mood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mood_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_black_hole_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_name_code_key UNIQUE (black_hole_name_code);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_code_key UNIQUE (galaxy_name_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_code_key UNIQUE (moon_name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_code_key UNIQUE (planet_name_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_code_key UNIQUE (star_name_code);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

