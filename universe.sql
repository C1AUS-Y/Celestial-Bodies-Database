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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(50) NOT NULL,
    age numeric(10,2),
    description text,
    blackhole_id integer NOT NULL,
    is_it_big boolean,
    threat_level integer,
    nearest_galaxy character varying(100)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    system_amount integer,
    description text,
    is_it_big character varying(50),
    is_it_thriving boolean
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
    name character varying(100) NOT NULL,
    description text,
    planet_id integer,
    planet_orbit character varying(50),
    is_moon_pretty boolean
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
    name character varying(100) NOT NULL,
    moon_amount integer,
    description text,
    is_there_life boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_million_years numeric(10,2),
    description text,
    is_it_alive boolean,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('Sagittarius A*', 13000.00, 'The supermassive black hole at the center of the Milky Way galaxy.', 1, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('M87*', 6500.00, 'A supermassive black hole at the center of the Messier 87 galaxy, famously imaged in 2019.', 2, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('Cygnus X-1', 5.00, 'One of the first black hole candidates discovered, located in the constellation Cygnus.', 3, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('LIGO Black Hole', 0.10, 'A black hole formed from the merger of two stellar-mass black holes, detected by LIGO in 2015.', 4, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('TON 618', 2000.00, 'A very large supermassive black hole located in a distant quasar, one of the most massive known.', 5, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000000, 'The galaxy containing our solar system, known for its spiral shape.', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000, 'The closest spiral galaxy to the Milky Way, expected to collide with it in about 4 billion years.', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000000, 'A member of the Local Group of galaxies, known for its distinct spiral shape.', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 1000000000, 'A supergiant elliptical galaxy in the Virgo Cluster, home to a supermassive black hole.', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 300000000, 'A spiral galaxy with a distinctive hat-like appearance, located in the Virgo Cluster.', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 500000000, 'A spiral galaxy famous for its beautiful structure and interaction with a companion galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC 1300', 200000000, 'A barred spiral galaxy located approximately 61 million light-years away from Earth.', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only natural satellite, known for its phases, tidal effects, and importance to life on Earth.', 1, 'Earth', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'One of Jupiters largest moons, known for its extreme volcanic activity, making it the most geologically active body in the solar system.', 7, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon covered in ice, with a potential subsurface ocean that may harbor conditions suitable for life.', 7, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the solar system, even larger than the planet Mercury, with its own magnetic field.', 7, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A heavily cratered, ice-covered moon, known for its ancient surface and lack of geological activity.', 7, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 'A small moon of Saturn, famous for a large impact crater that makes it resemble the Death Star from Star Wars.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A small, icy moon known for its water geysers, suggesting the presence of a subsurface ocean.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 'A moon with a large, prominent ring-shaped feature, and its surface is composed mostly of water ice.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 'A moon with a heavily cratered surface and icy terrain, also featuring bright wispy lines of material.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 'A large moon with a mostly icy surface and a faint ring system around it.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 'The largest moon of Saturn, it has a thick atmosphere and lakes of liquid methane, making it unique among moons in the solar system.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'A moon with a distinctive two-tone coloration and an equatorial ridge, making it look like a walnut.', 3, 'Saturn', NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 'A small, irregularly shaped moon known for its extreme geological features, including large valleys and cliffs.', 8, 'Uranus', NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 'One of Uranuss larger moons, with a surface full of ridges, valleys, and craters, indicating past geological activity.', 8, 'Uranus', NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'A darker moon of Uranus, with a heavily cratered surface and less geological activity than Ariel or Miranda.', 8, 'Uranus', NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 'The largest moon of Uranus, it has a mix of ice and rock with large fault canyons and craters.', 8, 'Uranus', NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 'The second-largest moon of Uranus, with a surface covered in craters, some of which are several kilometers deep.', 8, 'Uranus', NULL);
INSERT INTO public.moon VALUES (20, 'Triton', 'The largest moon of Neptune, known for its retrograde orbit and geysers that erupt nitrogen gas from beneath its icy surface.', 6, 'Neptune', NULL);
INSERT INTO public.moon VALUES (21, 'Proteus', 'An irregularly shaped moon with a heavily cratered surface and no significant geological activity.', 6, 'Neptune', NULL);
INSERT INTO public.moon VALUES (22, 'Nereid', 'A small, irregular moon with a highly elliptical orbit, making it one of the most eccentric moons in the solar system.', 6, 'Neptune', NULL);
INSERT INTO public.moon VALUES (28, 'Charon', 'Plutos largest moon, it is nearly half the size of Pluto itself and is tidally locked with it, meaning both always show the same face to each other.', 9, 'Pluto', NULL);
INSERT INTO public.moon VALUES (29, 'Styx', 'A small moon of Pluto, part of a group of small moons that orbit the dwarf planet in a complex and relatively stable configuration.', 9, 'Pluto', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Earth is the planet with life.', true, 8);
INSERT INTO public.planet VALUES (3, 'Saturn', 146, 'The planet with rings.', false, 8);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 'The hottest planet in our Solar System', false, 8);
INSERT INTO public.planet VALUES (5, 'Mercury', 0, 'Smallest Planet', false, 8);
INSERT INTO public.planet VALUES (6, 'Neptune', 16, 'Known as the Ice Giant', false, 8);
INSERT INTO public.planet VALUES (7, 'Jupiter', 95, 'The gassy planet', false, 8);
INSERT INTO public.planet VALUES (8, 'Uranus', 28, 'Also an Ice Giant.', false, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 'A dwarf planet located in the Kuiper Belt.', false, 8);
INSERT INTO public.planet VALUES (23, 'Sphynx', 0, 'A barren, desert-like planet with no atmosphere, known for its smooth surface that resembles the hairless body of the Sphynx cat.', false, 3);
INSERT INTO public.planet VALUES (24, 'Maine Coon', 2, 'A large, rugged planet with vast forests and icy plains, named for its majestic, wild appearance and feline-like adaptability.', false, 3);
INSERT INTO public.planet VALUES (25, 'Singapura', 1, 'A tiny, tropical planet with lush vegetation and vibrant colors, reflecting the small but energetic nature of the Singapura cat.', false, 3);
INSERT INTO public.planet VALUES (26, 'Bengal', 3, 'A planet with striking, spotty terrain that resembles the wild beauty of a Bengal cat, featuring dense jungles and mysterious wildlife.', true, 3);
INSERT INTO public.planet VALUES (27, 'Scottish Fold', 0, 'A planet with unique, folded mountains and serene valleys, embodying the calm and peaceful nature of the Scottish Fold cat.', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Betelgeuse', 10.00, 'A red supergiant in the constellation Orion, expected to go supernova soon.', false, 1);
INSERT INTO public.star VALUES (1, 'Sirius', 200.00, 'The brightest star in the night sky, part of the constellation Canis Major.', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4500.00, 'A main-sequence star in the Alpha Centauri star system, closest to our Sun.', true, 1);
INSERT INTO public.star VALUES (4, 'Polaris', 7000.00, 'The North Star, a yellow supergiant in the constellation Ursa Minor.', true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8.00, 'A blue supergiant in the constellation Orion, one of the brightest stars in the sky.', true, 1);
INSERT INTO public.star VALUES (6, 'White Dwarf (Sirius B)', 120.00, 'A faint, dense remnant of a star that has exhausted its nuclear fuel.', false, 1);
INSERT INTO public.star VALUES (7, 'Antares', 12.00, 'A red supergiant in the constellation Scorpius, known for its intense red color.', false, 1);
INSERT INTO public.star VALUES (8, 'Sol', 4.60, 'Our Sun.', true, 1);


--
-- Name: blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 29, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 27, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole unique_blackhole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

