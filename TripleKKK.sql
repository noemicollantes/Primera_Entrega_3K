toc.dat                                                                                             0000600 0004000 0002000 00000041651 14427733375 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       ,                    {         	   TripleKKK    15.2    15.2 9    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         M           1262    254088 	   TripleKKK    DATABASE     �   CREATE DATABASE "TripleKKK" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "TripleKKK";
                postgres    false         N           0    0    DATABASE "TripleKKK"    COMMENT     U   COMMENT ON DATABASE "TripleKKK" IS 'Base de datos para la micro empresa triplekkk
';
                   postgres    false    3405                     2615    254089 	   triplekkk    SCHEMA        CREATE SCHEMA triplekkk;
    DROP SCHEMA triplekkk;
                postgres    false         O           0    0    SCHEMA triplekkk    COMMENT     >   COMMENT ON SCHEMA triplekkk IS 'Base de datos para proyecto';
                   postgres    false    5         �            1259    262300    access    TABLE     �   CREATE TABLE triplekkk.access (
    id_access integer NOT NULL,
    id_usser character varying(3),
    id_person character varying(3)
);
    DROP TABLE triplekkk.access;
    	   triplekkk         heap    postgres    false    5         �            1259    262299    access_id_access_seq    SEQUENCE     �   CREATE SEQUENCE triplekkk.access_id_access_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE triplekkk.access_id_access_seq;
    	   triplekkk          postgres    false    5    225         P           0    0    access_id_access_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE triplekkk.access_id_access_seq OWNED BY triplekkk.access.id_access;
       	   triplekkk          postgres    false    224         �            1259    254161    document_type    TABLE     �   CREATE TABLE triplekkk.document_type (
    id_document_type integer NOT NULL,
    document_type_name character varying(25),
    CONSTRAINT nn_document_type_name CHECK ((document_type_name IS NOT NULL))
);
 $   DROP TABLE triplekkk.document_type;
    	   triplekkk         heap    postgres    false    5         �            1259    254160    document_type_id_document_seq    SEQUENCE     �   CREATE SEQUENCE triplekkk.document_type_id_document_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE triplekkk.document_type_id_document_seq;
    	   triplekkk          postgres    false    221    5         Q           0    0    document_type_id_document_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE triplekkk.document_type_id_document_seq OWNED BY triplekkk.document_type.id_document_type;
       	   triplekkk          postgres    false    220         �            1259    262277    seq_person_id    SEQUENCE     z   CREATE SEQUENCE triplekkk.seq_person_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999
    CACHE 1;
 '   DROP SEQUENCE triplekkk.seq_person_id;
    	   triplekkk          postgres    false    5         �            1259    262282    person    TABLE     �  CREATE TABLE triplekkk.person (
    id_person character varying(3) DEFAULT to_char(nextval('triplekkk.seq_person_id'::regclass), 'FM000'::text) NOT NULL,
    id_document_type integer,
    number_document character varying(15),
    name_person character varying(30),
    last_name_person character varying(30),
    phone_person character varying(12),
    email_person character varying(50),
    CONSTRAINT nn_document_type CHECK ((id_document_type IS NOT NULL)),
    CONSTRAINT nn_last_name_person CHECK ((last_name_person IS NOT NULL)),
    CONSTRAINT nn_name_person CHECK ((name_person IS NOT NULL)),
    CONSTRAINT nn_number_document CHECK ((number_document IS NOT NULL))
);
    DROP TABLE triplekkk.person;
    	   triplekkk         heap    postgres    false    222    5         �            1259    254111    role    TABLE     �   CREATE TABLE triplekkk.role (
    id_role integer NOT NULL,
    name_role character varying(20),
    CONSTRAINT nn_name_role CHECK ((name_role IS NOT NULL))
);
    DROP TABLE triplekkk.role;
    	   triplekkk         heap    postgres    false    5         �            1259    254110    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE triplekkk.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE triplekkk.role_id_role_seq;
    	   triplekkk          postgres    false    215    5         R           0    0    role_id_role_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE triplekkk.role_id_role_seq OWNED BY triplekkk.role.id_role;
       	   triplekkk          postgres    false    214         �            1259    254130 	   seq_usser    SEQUENCE     w   CREATE SEQUENCE triplekkk.seq_usser
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1;
 #   DROP SEQUENCE triplekkk.seq_usser;
    	   triplekkk          postgres    false    5         �            1259    254121    state    TABLE     �   CREATE TABLE triplekkk.state (
    id_state integer NOT NULL,
    state_type character varying(20),
    CONSTRAINT nn_state_type CHECK ((state_type IS NOT NULL))
);
    DROP TABLE triplekkk.state;
    	   triplekkk         heap    postgres    false    5         �            1259    254120    state_id_state_seq    SEQUENCE     �   CREATE SEQUENCE triplekkk.state_id_state_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE triplekkk.state_id_state_seq;
    	   triplekkk          postgres    false    217    5         S           0    0    state_id_state_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE triplekkk.state_id_state_seq OWNED BY triplekkk.state.id_state;
       	   triplekkk          postgres    false    216         �            1259    254138    usser    TABLE       CREATE TABLE triplekkk.usser (
    id_usser character varying(3) DEFAULT to_char(nextval('triplekkk.seq_usser'::regclass), 'FM000'::text) NOT NULL,
    id_role integer,
    id_state integer,
    usser_name character varying(30),
    usser_password character varying(30),
    CONSTRAINT nn_id_role_usser CHECK ((id_role IS NOT NULL)),
    CONSTRAINT nn_id_state_usser CHECK ((id_state IS NOT NULL)),
    CONSTRAINT nn_usser_name CHECK ((usser_name IS NOT NULL)),
    CONSTRAINT nn_usser_password CHECK ((usser_password IS NOT NULL))
);
    DROP TABLE triplekkk.usser;
    	   triplekkk         heap    postgres    false    218    5         �           2604    262303    access id_access    DEFAULT     z   ALTER TABLE ONLY triplekkk.access ALTER COLUMN id_access SET DEFAULT nextval('triplekkk.access_id_access_seq'::regclass);
 B   ALTER TABLE triplekkk.access ALTER COLUMN id_access DROP DEFAULT;
    	   triplekkk          postgres    false    225    224    225         �           2604    254164    document_type id_document_type    DEFAULT     �   ALTER TABLE ONLY triplekkk.document_type ALTER COLUMN id_document_type SET DEFAULT nextval('triplekkk.document_type_id_document_seq'::regclass);
 P   ALTER TABLE triplekkk.document_type ALTER COLUMN id_document_type DROP DEFAULT;
    	   triplekkk          postgres    false    220    221    221         ~           2604    254114    role id_role    DEFAULT     r   ALTER TABLE ONLY triplekkk.role ALTER COLUMN id_role SET DEFAULT nextval('triplekkk.role_id_role_seq'::regclass);
 >   ALTER TABLE triplekkk.role ALTER COLUMN id_role DROP DEFAULT;
    	   triplekkk          postgres    false    214    215    215                    2604    254124    state id_state    DEFAULT     v   ALTER TABLE ONLY triplekkk.state ALTER COLUMN id_state SET DEFAULT nextval('triplekkk.state_id_state_seq'::regclass);
 @   ALTER TABLE triplekkk.state ALTER COLUMN id_state DROP DEFAULT;
    	   triplekkk          postgres    false    216    217    217         G          0    262300    access 
   TABLE DATA           C   COPY triplekkk.access (id_access, id_usser, id_person) FROM stdin;
 	   triplekkk          postgres    false    225       3399.dat C          0    254161    document_type 
   TABLE DATA           P   COPY triplekkk.document_type (id_document_type, document_type_name) FROM stdin;
 	   triplekkk          postgres    false    221       3395.dat E          0    262282    person 
   TABLE DATA           �   COPY triplekkk.person (id_person, id_document_type, number_document, name_person, last_name_person, phone_person, email_person) FROM stdin;
 	   triplekkk          postgres    false    223       3397.dat =          0    254111    role 
   TABLE DATA           5   COPY triplekkk.role (id_role, name_role) FROM stdin;
 	   triplekkk          postgres    false    215       3389.dat ?          0    254121    state 
   TABLE DATA           8   COPY triplekkk.state (id_state, state_type) FROM stdin;
 	   triplekkk          postgres    false    217       3391.dat A          0    254138    usser 
   TABLE DATA           [   COPY triplekkk.usser (id_usser, id_role, id_state, usser_name, usser_password) FROM stdin;
 	   triplekkk          postgres    false    219       3393.dat T           0    0    access_id_access_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('triplekkk.access_id_access_seq', 4, true);
       	   triplekkk          postgres    false    224         U           0    0    document_type_id_document_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('triplekkk.document_type_id_document_seq', 2, true);
       	   triplekkk          postgres    false    220         V           0    0    role_id_role_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('triplekkk.role_id_role_seq', 2, true);
       	   triplekkk          postgres    false    214         W           0    0    seq_person_id    SEQUENCE SET     >   SELECT pg_catalog.setval('triplekkk.seq_person_id', 3, true);
       	   triplekkk          postgres    false    222         X           0    0 	   seq_usser    SEQUENCE SET     :   SELECT pg_catalog.setval('triplekkk.seq_usser', 2, true);
       	   triplekkk          postgres    false    218         Y           0    0    state_id_state_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('triplekkk.state_id_state_seq', 2, true);
       	   triplekkk          postgres    false    216         �           2606    262305    access pk_id_access 
   CONSTRAINT     [   ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT pk_id_access PRIMARY KEY (id_access);
 @   ALTER TABLE ONLY triplekkk.access DROP CONSTRAINT pk_id_access;
    	   triplekkk            postgres    false    225         �           2606    254167    document_type pk_id_document 
   CONSTRAINT     k   ALTER TABLE ONLY triplekkk.document_type
    ADD CONSTRAINT pk_id_document PRIMARY KEY (id_document_type);
 I   ALTER TABLE ONLY triplekkk.document_type DROP CONSTRAINT pk_id_document;
    	   triplekkk            postgres    false    221         �           2606    262291    person pk_id_person 
   CONSTRAINT     [   ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT pk_id_person PRIMARY KEY (id_person);
 @   ALTER TABLE ONLY triplekkk.person DROP CONSTRAINT pk_id_person;
    	   triplekkk            postgres    false    223         �           2606    254117    role pk_id_role 
   CONSTRAINT     U   ALTER TABLE ONLY triplekkk.role
    ADD CONSTRAINT pk_id_role PRIMARY KEY (id_role);
 <   ALTER TABLE ONLY triplekkk.role DROP CONSTRAINT pk_id_role;
    	   triplekkk            postgres    false    215         �           2606    254127    state pk_id_state 
   CONSTRAINT     X   ALTER TABLE ONLY triplekkk.state
    ADD CONSTRAINT pk_id_state PRIMARY KEY (id_state);
 >   ALTER TABLE ONLY triplekkk.state DROP CONSTRAINT pk_id_state;
    	   triplekkk            postgres    false    217         �           2606    254147    usser pk_id_usser 
   CONSTRAINT     X   ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT pk_id_usser PRIMARY KEY (id_usser);
 >   ALTER TABLE ONLY triplekkk.usser DROP CONSTRAINT pk_id_usser;
    	   triplekkk            postgres    false    219         �           2606    254169 #   document_type uq_document_type_name 
   CONSTRAINT     o   ALTER TABLE ONLY triplekkk.document_type
    ADD CONSTRAINT uq_document_type_name UNIQUE (document_type_name);
 P   ALTER TABLE ONLY triplekkk.document_type DROP CONSTRAINT uq_document_type_name;
    	   triplekkk            postgres    false    221         �           2606    270472    access uq_id_person 
   CONSTRAINT     V   ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT uq_id_person UNIQUE (id_person);
 @   ALTER TABLE ONLY triplekkk.access DROP CONSTRAINT uq_id_person;
    	   triplekkk            postgres    false    225         �           2606    270470    access uq_id_usser 
   CONSTRAINT     T   ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT uq_id_usser UNIQUE (id_usser);
 ?   ALTER TABLE ONLY triplekkk.access DROP CONSTRAINT uq_id_usser;
    	   triplekkk            postgres    false    225         �           2606    254119    role uq_name_role 
   CONSTRAINT     T   ALTER TABLE ONLY triplekkk.role
    ADD CONSTRAINT uq_name_role UNIQUE (name_role);
 >   ALTER TABLE ONLY triplekkk.role DROP CONSTRAINT uq_name_role;
    	   triplekkk            postgres    false    215         �           2606    262293    person uq_number_document 
   CONSTRAINT     b   ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT uq_number_document UNIQUE (number_document);
 F   ALTER TABLE ONLY triplekkk.person DROP CONSTRAINT uq_number_document;
    	   triplekkk            postgres    false    223         �           2606    254129    state uq_state_type 
   CONSTRAINT     W   ALTER TABLE ONLY triplekkk.state
    ADD CONSTRAINT uq_state_type UNIQUE (state_type);
 @   ALTER TABLE ONLY triplekkk.state DROP CONSTRAINT uq_state_type;
    	   triplekkk            postgres    false    217         �           2606    254149    usser uq_usser_name 
   CONSTRAINT     W   ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT uq_usser_name UNIQUE (usser_name);
 @   ALTER TABLE ONLY triplekkk.usser DROP CONSTRAINT uq_usser_name;
    	   triplekkk            postgres    false    219         �           2606    262294    person fk_document_type_person    FK CONSTRAINT     �   ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT fk_document_type_person FOREIGN KEY (id_document_type) REFERENCES triplekkk.document_type(id_document_type);
 K   ALTER TABLE ONLY triplekkk.person DROP CONSTRAINT fk_document_type_person;
    	   triplekkk          postgres    false    221    223    3228         �           2606    254150    usser fk_id_role    FK CONSTRAINT     y   ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT fk_id_role FOREIGN KEY (id_role) REFERENCES triplekkk.role(id_role);
 =   ALTER TABLE ONLY triplekkk.usser DROP CONSTRAINT fk_id_role;
    	   triplekkk          postgres    false    219    215    3216         �           2606    254155    usser fk_id_state_usser    FK CONSTRAINT     �   ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT fk_id_state_usser FOREIGN KEY (id_state) REFERENCES triplekkk.state(id_state);
 D   ALTER TABLE ONLY triplekkk.usser DROP CONSTRAINT fk_id_state_usser;
    	   triplekkk          postgres    false    217    219    3220         �           2606    262311    access fk_person_access    FK CONSTRAINT     �   ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT fk_person_access FOREIGN KEY (id_person) REFERENCES triplekkk.person(id_person);
 D   ALTER TABLE ONLY triplekkk.access DROP CONSTRAINT fk_person_access;
    	   triplekkk          postgres    false    3232    225    223         �           2606    262306    access fk_usser_access    FK CONSTRAINT     �   ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT fk_usser_access FOREIGN KEY (id_usser) REFERENCES triplekkk.usser(id_usser);
 C   ALTER TABLE ONLY triplekkk.access DROP CONSTRAINT fk_usser_access;
    	   triplekkk          postgres    false    219    225    3224                                                                                               3399.dat                                                                                            0000600 0004000 0002000 00000000031 14427733375 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	001	001
4	002	003
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3395.dat                                                                                            0000600 0004000 0002000 00000000063 14427733375 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	CEDULA DE CIUDADANIA
2	TARJETA DE IDENTIDAD
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3397.dat                                                                                            0000600 0004000 0002000 00000000212 14427733375 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        001	1	1066111980	JENNIFER	PABON	3156091818	JENIIFER@GMAIL.COM
003	1	1223344445	LAURA VANESSA	IBANEZ PEREZ	3123456789	LAURA@GMAIL.COM
\.


                                                                                                                                                                                                                                                                                                                                                                                      3389.dat                                                                                            0000600 0004000 0002000 00000000041 14427733375 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ASISTENTE
2	ADMINISTRADOR
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3391.dat                                                                                            0000600 0004000 0002000 00000000031 14427733375 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ACTIVO
2	INACTIVO
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3393.dat                                                                                            0000600 0004000 0002000 00000000056 14427733376 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        001	1	1	JENNIFER	123*
002	2	2	LAU	123456
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000033044 14427733376 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE "TripleKKK";
--
-- Name: TripleKKK; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TripleKKK" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "TripleKKK" OWNER TO postgres;

\connect "TripleKKK"

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

--
-- Name: DATABASE "TripleKKK"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "TripleKKK" IS 'Base de datos para la micro empresa triplekkk
';


--
-- Name: triplekkk; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA triplekkk;


ALTER SCHEMA triplekkk OWNER TO postgres;

--
-- Name: SCHEMA triplekkk; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA triplekkk IS 'Base de datos para proyecto';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: access; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.access (
    id_access integer NOT NULL,
    id_usser character varying(3),
    id_person character varying(3)
);


ALTER TABLE triplekkk.access OWNER TO postgres;

--
-- Name: access_id_access_seq; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.access_id_access_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE triplekkk.access_id_access_seq OWNER TO postgres;

--
-- Name: access_id_access_seq; Type: SEQUENCE OWNED BY; Schema: triplekkk; Owner: postgres
--

ALTER SEQUENCE triplekkk.access_id_access_seq OWNED BY triplekkk.access.id_access;


--
-- Name: document_type; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.document_type (
    id_document_type integer NOT NULL,
    document_type_name character varying(25),
    CONSTRAINT nn_document_type_name CHECK ((document_type_name IS NOT NULL))
);


ALTER TABLE triplekkk.document_type OWNER TO postgres;

--
-- Name: document_type_id_document_seq; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.document_type_id_document_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE triplekkk.document_type_id_document_seq OWNER TO postgres;

--
-- Name: document_type_id_document_seq; Type: SEQUENCE OWNED BY; Schema: triplekkk; Owner: postgres
--

ALTER SEQUENCE triplekkk.document_type_id_document_seq OWNED BY triplekkk.document_type.id_document_type;


--
-- Name: seq_person_id; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.seq_person_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999
    CACHE 1;


ALTER TABLE triplekkk.seq_person_id OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.person (
    id_person character varying(3) DEFAULT to_char(nextval('triplekkk.seq_person_id'::regclass), 'FM000'::text) NOT NULL,
    id_document_type integer,
    number_document character varying(15),
    name_person character varying(30),
    last_name_person character varying(30),
    phone_person character varying(12),
    email_person character varying(50),
    CONSTRAINT nn_document_type CHECK ((id_document_type IS NOT NULL)),
    CONSTRAINT nn_last_name_person CHECK ((last_name_person IS NOT NULL)),
    CONSTRAINT nn_name_person CHECK ((name_person IS NOT NULL)),
    CONSTRAINT nn_number_document CHECK ((number_document IS NOT NULL))
);


ALTER TABLE triplekkk.person OWNER TO postgres;

--
-- Name: role; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.role (
    id_role integer NOT NULL,
    name_role character varying(20),
    CONSTRAINT nn_name_role CHECK ((name_role IS NOT NULL))
);


ALTER TABLE triplekkk.role OWNER TO postgres;

--
-- Name: role_id_role_seq; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE triplekkk.role_id_role_seq OWNER TO postgres;

--
-- Name: role_id_role_seq; Type: SEQUENCE OWNED BY; Schema: triplekkk; Owner: postgres
--

ALTER SEQUENCE triplekkk.role_id_role_seq OWNED BY triplekkk.role.id_role;


--
-- Name: seq_usser; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.seq_usser
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1;


ALTER TABLE triplekkk.seq_usser OWNER TO postgres;

--
-- Name: state; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.state (
    id_state integer NOT NULL,
    state_type character varying(20),
    CONSTRAINT nn_state_type CHECK ((state_type IS NOT NULL))
);


ALTER TABLE triplekkk.state OWNER TO postgres;

--
-- Name: state_id_state_seq; Type: SEQUENCE; Schema: triplekkk; Owner: postgres
--

CREATE SEQUENCE triplekkk.state_id_state_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE triplekkk.state_id_state_seq OWNER TO postgres;

--
-- Name: state_id_state_seq; Type: SEQUENCE OWNED BY; Schema: triplekkk; Owner: postgres
--

ALTER SEQUENCE triplekkk.state_id_state_seq OWNED BY triplekkk.state.id_state;


--
-- Name: usser; Type: TABLE; Schema: triplekkk; Owner: postgres
--

CREATE TABLE triplekkk.usser (
    id_usser character varying(3) DEFAULT to_char(nextval('triplekkk.seq_usser'::regclass), 'FM000'::text) NOT NULL,
    id_role integer,
    id_state integer,
    usser_name character varying(30),
    usser_password character varying(30),
    CONSTRAINT nn_id_role_usser CHECK ((id_role IS NOT NULL)),
    CONSTRAINT nn_id_state_usser CHECK ((id_state IS NOT NULL)),
    CONSTRAINT nn_usser_name CHECK ((usser_name IS NOT NULL)),
    CONSTRAINT nn_usser_password CHECK ((usser_password IS NOT NULL))
);


ALTER TABLE triplekkk.usser OWNER TO postgres;

--
-- Name: access id_access; Type: DEFAULT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access ALTER COLUMN id_access SET DEFAULT nextval('triplekkk.access_id_access_seq'::regclass);


--
-- Name: document_type id_document_type; Type: DEFAULT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.document_type ALTER COLUMN id_document_type SET DEFAULT nextval('triplekkk.document_type_id_document_seq'::regclass);


--
-- Name: role id_role; Type: DEFAULT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.role ALTER COLUMN id_role SET DEFAULT nextval('triplekkk.role_id_role_seq'::regclass);


--
-- Name: state id_state; Type: DEFAULT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.state ALTER COLUMN id_state SET DEFAULT nextval('triplekkk.state_id_state_seq'::regclass);


--
-- Data for Name: access; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.access (id_access, id_usser, id_person) FROM stdin;
\.
COPY triplekkk.access (id_access, id_usser, id_person) FROM '$$PATH$$/3399.dat';

--
-- Data for Name: document_type; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.document_type (id_document_type, document_type_name) FROM stdin;
\.
COPY triplekkk.document_type (id_document_type, document_type_name) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: person; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.person (id_person, id_document_type, number_document, name_person, last_name_person, phone_person, email_person) FROM stdin;
\.
COPY triplekkk.person (id_person, id_document_type, number_document, name_person, last_name_person, phone_person, email_person) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: role; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.role (id_role, name_role) FROM stdin;
\.
COPY triplekkk.role (id_role, name_role) FROM '$$PATH$$/3389.dat';

--
-- Data for Name: state; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.state (id_state, state_type) FROM stdin;
\.
COPY triplekkk.state (id_state, state_type) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: usser; Type: TABLE DATA; Schema: triplekkk; Owner: postgres
--

COPY triplekkk.usser (id_usser, id_role, id_state, usser_name, usser_password) FROM stdin;
\.
COPY triplekkk.usser (id_usser, id_role, id_state, usser_name, usser_password) FROM '$$PATH$$/3393.dat';

--
-- Name: access_id_access_seq; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.access_id_access_seq', 4, true);


--
-- Name: document_type_id_document_seq; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.document_type_id_document_seq', 2, true);


--
-- Name: role_id_role_seq; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.role_id_role_seq', 2, true);


--
-- Name: seq_person_id; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.seq_person_id', 3, true);


--
-- Name: seq_usser; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.seq_usser', 2, true);


--
-- Name: state_id_state_seq; Type: SEQUENCE SET; Schema: triplekkk; Owner: postgres
--

SELECT pg_catalog.setval('triplekkk.state_id_state_seq', 2, true);


--
-- Name: access pk_id_access; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT pk_id_access PRIMARY KEY (id_access);


--
-- Name: document_type pk_id_document; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.document_type
    ADD CONSTRAINT pk_id_document PRIMARY KEY (id_document_type);


--
-- Name: person pk_id_person; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT pk_id_person PRIMARY KEY (id_person);


--
-- Name: role pk_id_role; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.role
    ADD CONSTRAINT pk_id_role PRIMARY KEY (id_role);


--
-- Name: state pk_id_state; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.state
    ADD CONSTRAINT pk_id_state PRIMARY KEY (id_state);


--
-- Name: usser pk_id_usser; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT pk_id_usser PRIMARY KEY (id_usser);


--
-- Name: document_type uq_document_type_name; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.document_type
    ADD CONSTRAINT uq_document_type_name UNIQUE (document_type_name);


--
-- Name: access uq_id_person; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT uq_id_person UNIQUE (id_person);


--
-- Name: access uq_id_usser; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT uq_id_usser UNIQUE (id_usser);


--
-- Name: role uq_name_role; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.role
    ADD CONSTRAINT uq_name_role UNIQUE (name_role);


--
-- Name: person uq_number_document; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT uq_number_document UNIQUE (number_document);


--
-- Name: state uq_state_type; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.state
    ADD CONSTRAINT uq_state_type UNIQUE (state_type);


--
-- Name: usser uq_usser_name; Type: CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT uq_usser_name UNIQUE (usser_name);


--
-- Name: person fk_document_type_person; Type: FK CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.person
    ADD CONSTRAINT fk_document_type_person FOREIGN KEY (id_document_type) REFERENCES triplekkk.document_type(id_document_type);


--
-- Name: usser fk_id_role; Type: FK CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT fk_id_role FOREIGN KEY (id_role) REFERENCES triplekkk.role(id_role);


--
-- Name: usser fk_id_state_usser; Type: FK CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.usser
    ADD CONSTRAINT fk_id_state_usser FOREIGN KEY (id_state) REFERENCES triplekkk.state(id_state);


--
-- Name: access fk_person_access; Type: FK CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT fk_person_access FOREIGN KEY (id_person) REFERENCES triplekkk.person(id_person);


--
-- Name: access fk_usser_access; Type: FK CONSTRAINT; Schema: triplekkk; Owner: postgres
--

ALTER TABLE ONLY triplekkk.access
    ADD CONSTRAINT fk_usser_access FOREIGN KEY (id_usser) REFERENCES triplekkk.usser(id_usser);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            