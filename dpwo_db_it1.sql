PGDMP  "                    |            dpwo    16.1    16.1 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    21123    dpwo    DATABASE     w   CREATE DATABASE dpwo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE dpwo;
                postgres    false            �            1259    21141    Gra    TABLE     F  CREATE TABLE public."Gra" (
    min_liczba_graczy smallint,
    id_gry smallint NOT NULL,
    nazwa character varying(50),
    status character varying(50),
    max_liczba_graczy smallint,
    opis_gry character varying(255),
    scenariusz character varying(255),
    trudnosc character varying(20),
    id_osoby smallint
);
    DROP TABLE public."Gra";
       public         heap    postgres    false            �            1259    21146    Mapa    TABLE     S   CREATE TABLE public."Mapa" (
    id_mapy smallint NOT NULL,
    id_gry smallint
);
    DROP TABLE public."Mapa";
       public         heap    postgres    false            �            1259    21156    MetodaPlatnosci    TABLE     i   CREATE TABLE public."MetodaPlatnosci" (
    id__met_plat integer NOT NULL,
    nazwa_platnosci "char"
);
 %   DROP TABLE public."MetodaPlatnosci";
       public         heap    postgres    false            �            1259    21129    Osoba    TABLE     �   CREATE TABLE public."Osoba" (
    id_osoby smallint NOT NULL,
    imie character varying(30),
    nazwisko character varying(50)
);
    DROP TABLE public."Osoba";
       public         heap    postgres    false            �            1259    21151    Placowka    TABLE     �   CREATE TABLE public."Placowka" (
    id_placowki smallint NOT NULL,
    miejscowosc character varying(70),
    ulica character varying(50),
    numer smallint
);
    DROP TABLE public."Placowka";
       public         heap    postgres    false            �            1259    21124    Platnosc    TABLE     �   CREATE TABLE public."Platnosc" (
    id_platnosci integer NOT NULL,
    data date,
    kwota smallint,
    metoda_platnosci smallint,
    id_osoby smallint,
    id_wydarzenia smallint
);
    DROP TABLE public."Platnosc";
       public         heap    postgres    false            �            1259    21161    StatusWydarzenia    TABLE     {   CREATE TABLE public."StatusWydarzenia" (
    id_stat_wyd smallint NOT NULL,
    nazwa_statusu_wyd character varying(40)
);
 &   DROP TABLE public."StatusWydarzenia";
       public         heap    postgres    false            �            1259    21134 
   Wydarzenie    TABLE     {  CREATE TABLE public."Wydarzenie" (
    id_wydarzenia smallint NOT NULL,
    ikona bytea,
    opis_techniczny character varying(255),
    liczba_graczy smallint,
    data timestamp without time zone,
    opis_klient character varying(255),
    cena_org double precision,
    "cena_udział" double precision,
    status smallint,
    id_osoby smallint,
    id_placowki smallint
);
     DROP TABLE public."Wydarzenie";
       public         heap    postgres    false            �          0    21141    Gra 
   TABLE DATA           �   COPY public."Gra" (min_liczba_graczy, id_gry, nazwa, status, max_liczba_graczy, opis_gry, scenariusz, trudnosc, id_osoby) FROM stdin;
    public          postgres    false    218   �,       �          0    21146    Mapa 
   TABLE DATA           1   COPY public."Mapa" (id_mapy, id_gry) FROM stdin;
    public          postgres    false    219   �,       �          0    21156    MetodaPlatnosci 
   TABLE DATA           J   COPY public."MetodaPlatnosci" (id__met_plat, nazwa_platnosci) FROM stdin;
    public          postgres    false    221   �,       �          0    21129    Osoba 
   TABLE DATA           ;   COPY public."Osoba" (id_osoby, imie, nazwisko) FROM stdin;
    public          postgres    false    216   -       �          0    21151    Placowka 
   TABLE DATA           L   COPY public."Placowka" (id_placowki, miejscowosc, ulica, numer) FROM stdin;
    public          postgres    false    220   9-       �          0    21124    Platnosc 
   TABLE DATA           j   COPY public."Platnosc" (id_platnosci, data, kwota, metoda_platnosci, id_osoby, id_wydarzenia) FROM stdin;
    public          postgres    false    215   V-       �          0    21161    StatusWydarzenia 
   TABLE DATA           L   COPY public."StatusWydarzenia" (id_stat_wyd, nazwa_statusu_wyd) FROM stdin;
    public          postgres    false    222   s-       �          0    21134 
   Wydarzenie 
   TABLE DATA           �   COPY public."Wydarzenie" (id_wydarzenia, ikona, opis_techniczny, liczba_graczy, data, opis_klient, cena_org, "cena_udział", status, id_osoby, id_placowki) FROM stdin;
    public          postgres    false    217   �-       <           2606    21145    Gra Gra_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Gra"
    ADD CONSTRAINT "Gra_pkey" PRIMARY KEY (id_gry);
 :   ALTER TABLE ONLY public."Gra" DROP CONSTRAINT "Gra_pkey";
       public            postgres    false    218            >           2606    21150    Mapa Mapa_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Mapa"
    ADD CONSTRAINT "Mapa_pkey" PRIMARY KEY (id_mapy);
 <   ALTER TABLE ONLY public."Mapa" DROP CONSTRAINT "Mapa_pkey";
       public            postgres    false    219            B           2606    21244 $   MetodaPlatnosci MetodaPlatnosci_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."MetodaPlatnosci"
    ADD CONSTRAINT "MetodaPlatnosci_pkey" PRIMARY KEY (id__met_plat);
 R   ALTER TABLE ONLY public."MetodaPlatnosci" DROP CONSTRAINT "MetodaPlatnosci_pkey";
       public            postgres    false    221            8           2606    21133    Osoba Osoba_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Osoba"
    ADD CONSTRAINT "Osoba_pkey" PRIMARY KEY (id_osoby);
 >   ALTER TABLE ONLY public."Osoba" DROP CONSTRAINT "Osoba_pkey";
       public            postgres    false    216            @           2606    21155    Placowka Placowka_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Placowka"
    ADD CONSTRAINT "Placowka_pkey" PRIMARY KEY (id_placowki);
 D   ALTER TABLE ONLY public."Placowka" DROP CONSTRAINT "Placowka_pkey";
       public            postgres    false    220            6           2606    21292    Platnosc Platnosc_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Platnosc"
    ADD CONSTRAINT "Platnosc_pkey" PRIMARY KEY (id_platnosci);
 D   ALTER TABLE ONLY public."Platnosc" DROP CONSTRAINT "Platnosc_pkey";
       public            postgres    false    215            D           2606    21165 &   StatusWydarzenia StatusWydarzenia_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."StatusWydarzenia"
    ADD CONSTRAINT "StatusWydarzenia_pkey" PRIMARY KEY (id_stat_wyd);
 T   ALTER TABLE ONLY public."StatusWydarzenia" DROP CONSTRAINT "StatusWydarzenia_pkey";
       public            postgres    false    222            :           2606    21140    Wydarzenie Wydarzenie_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Wydarzenie"
    ADD CONSTRAINT "Wydarzenie_pkey" PRIMARY KEY (id_wydarzenia);
 H   ALTER TABLE ONLY public."Wydarzenie" DROP CONSTRAINT "Wydarzenie_pkey";
       public            postgres    false    217            K           2606    21196    Gra Gra_id_osoby_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Gra"
    ADD CONSTRAINT "Gra_id_osoby_fkey" FOREIGN KEY (id_osoby) REFERENCES public."Osoba"(id_osoby) NOT VALID;
 C   ALTER TABLE ONLY public."Gra" DROP CONSTRAINT "Gra_id_osoby_fkey";
       public          postgres    false    216    4664    218            L           2606    21201    Mapa Mapa_id_gry_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mapa"
    ADD CONSTRAINT "Mapa_id_gry_fkey" FOREIGN KEY (id_gry) REFERENCES public."Gra"(id_gry) NOT VALID;
 C   ALTER TABLE ONLY public."Mapa" DROP CONSTRAINT "Mapa_id_gry_fkey";
       public          postgres    false    218    4668    219            E           2606    21166    Platnosc Platnosc_id_osoby_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Platnosc"
    ADD CONSTRAINT "Platnosc_id_osoby_fkey" FOREIGN KEY (id_osoby) REFERENCES public."Osoba"(id_osoby) NOT VALID;
 M   ALTER TABLE ONLY public."Platnosc" DROP CONSTRAINT "Platnosc_id_osoby_fkey";
       public          postgres    false    216    215    4664            F           2606    21171 $   Platnosc Platnosc_id_wydarzenia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Platnosc"
    ADD CONSTRAINT "Platnosc_id_wydarzenia_fkey" FOREIGN KEY (id_wydarzenia) REFERENCES public."Wydarzenie"(id_wydarzenia) NOT VALID;
 R   ALTER TABLE ONLY public."Platnosc" DROP CONSTRAINT "Platnosc_id_wydarzenia_fkey";
       public          postgres    false    4666    215    217            G           2606    21245 '   Platnosc Platnosc_metoda_platnosci_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Platnosc"
    ADD CONSTRAINT "Platnosc_metoda_platnosci_fkey" FOREIGN KEY (metoda_platnosci) REFERENCES public."MetodaPlatnosci"(id__met_plat) NOT VALID;
 U   ALTER TABLE ONLY public."Platnosc" DROP CONSTRAINT "Platnosc_metoda_platnosci_fkey";
       public          postgres    false    221    4674    215            H           2606    21181 #   Wydarzenie Wydarzenie_id_osoby_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wydarzenie"
    ADD CONSTRAINT "Wydarzenie_id_osoby_fkey" FOREIGN KEY (id_osoby) REFERENCES public."Osoba"(id_osoby) NOT VALID;
 Q   ALTER TABLE ONLY public."Wydarzenie" DROP CONSTRAINT "Wydarzenie_id_osoby_fkey";
       public          postgres    false    216    4664    217            I           2606    21186 &   Wydarzenie Wydarzenie_id_placowki_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wydarzenie"
    ADD CONSTRAINT "Wydarzenie_id_placowki_fkey" FOREIGN KEY (id_placowki) REFERENCES public."Placowka"(id_placowki) NOT VALID;
 T   ALTER TABLE ONLY public."Wydarzenie" DROP CONSTRAINT "Wydarzenie_id_placowki_fkey";
       public          postgres    false    217    220    4672            J           2606    21191 !   Wydarzenie Wydarzenie_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wydarzenie"
    ADD CONSTRAINT "Wydarzenie_status_fkey" FOREIGN KEY (status) REFERENCES public."StatusWydarzenia"(id_stat_wyd) NOT VALID;
 O   ALTER TABLE ONLY public."Wydarzenie" DROP CONSTRAINT "Wydarzenie_status_fkey";
       public          postgres    false    222    4676    217            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     