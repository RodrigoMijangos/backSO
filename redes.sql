PGDMP                         y           redes    10.16    10.16     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    16394    redes    DATABASE     ?   CREATE DATABASE redes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE redes;
             mauricio    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                        0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16403 	   empleados    TABLE     ?   CREATE TABLE public.empleados (
    id integer NOT NULL,
    nombre character varying(200),
    apellido character varying(200),
    telefono character varying(200),
    imagen character varying(265)
);
    DROP TABLE public.empleados;
       public         postgres    false    3            ?            1259    16401    empleados_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.empleados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.empleados_id_seq;
       public       postgres    false    197    3                       0    0    empleados_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.empleados_id_seq OWNED BY public.empleados.id;
            public       postgres    false    196            ?            1259    16414    usuario    TABLE     ?   CREATE TABLE public.usuario (
    id integer NOT NULL,
    usuario character varying(200),
    password character varying(200),
    email character varying(200)
);
    DROP TABLE public.usuario;
       public         postgres    false    3            ?            1259    16412    usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       postgres    false    199    3                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
            public       postgres    false    198            v
           2604    16406    empleados id    DEFAULT     l   ALTER TABLE ONLY public.empleados ALTER COLUMN id SET DEFAULT nextval('public.empleados_id_seq'::regclass);
 ;   ALTER TABLE public.empleados ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            w
           2604    16417 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            ?
          0    16403 	   empleados 
   TABLE DATA               K   COPY public.empleados (id, nombre, apellido, telefono, imagen) FROM stdin;
    public       postgres    false    197   ?       ?
          0    16414    usuario 
   TABLE DATA               ?   COPY public.usuario (id, usuario, password, email) FROM stdin;
    public       postgres    false    199   =                  0    0    empleados_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleados_id_seq', 3, true);
            public       postgres    false    196                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
            public       postgres    false    198            y
           2606    16411    empleados empleados_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public         postgres    false    197            {
           2606    16422    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    199            ?
   R   x?3?tvq?w?442??())?????ON???/.??0?0?/-??OL???MLO??54307?4?062?4?+?K?????? #i      ?
   >   x?3??M,-?L??74?4LM)M,J???$?-??s3s???s???*9???J??qqq ???     