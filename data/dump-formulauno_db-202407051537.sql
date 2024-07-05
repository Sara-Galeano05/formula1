PGDMP  (    %                |            formulauno_db     16.3 (Ubuntu 16.3-1.pgdg22.04+1)     16.3 (Ubuntu 16.3-1.pgdg22.04+1)     R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            U           1262    16390    formulauno_db    DATABASE     y   CREATE DATABASE formulauno_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_AR.UTF-8';
    DROP DATABASE formulauno_db;
                postgres    false            V           0    0    DATABASE formulauno_db    ACL     0   GRANT ALL ON DATABASE formulauno_db TO fiscina;
                   postgres    false    3413                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            W           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16425    pilotos    TABLE     2  CREATE TABLE public.pilotos (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    team character varying(255) NOT NULL,
    podiums integer NOT NULL,
    world_champions integer NOT NULL
);
    DROP TABLE public.pilotos;
       public         heap    fiscina    false    4            �            1259    16424    pilotos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pilotos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pilotos_id_seq;
       public          fiscina    false    216    4            X           0    0    pilotos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pilotos_id_seq OWNED BY public.pilotos.id;
          public          fiscina    false    215            �           2604    16428 
   pilotos id    DEFAULT     h   ALTER TABLE ONLY public.pilotos ALTER COLUMN id SET DEFAULT nextval('public.pilotos_id_seq'::regclass);
 9   ALTER TABLE public.pilotos ALTER COLUMN id DROP DEFAULT;
       public          fiscina    false    215    216    216            O          0    16425    pilotos 
   TABLE DATA           d   COPY public.pilotos (id, "firstName", "lastName", city, team, podiums, world_champions) FROM stdin;
    public          fiscina    false    216   �       Y           0    0    pilotos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pilotos_id_seq', 1, true);
          public          fiscina    false    215            �           2606    16432    pilotos pilotos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pilotos
    ADD CONSTRAINT pilotos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pilotos DROP CONSTRAINT pilotos_pkey;
       public            fiscina    false    216            O   A   x�3��M��K-*.I,(H��H�,N-VpJ��/�JMQp*��QJL��K�440�4����� |�     