PGDMP     '    8    
            z         
   engenharia    14.4    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32848 
   engenharia    DATABASE     j   CREATE DATABASE engenharia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE engenharia;
                postgres    false            ?            1259    33081 
   fornecedor    TABLE     ?   CREATE TABLE public.fornecedor (
    cod_fornecedor integer NOT NULL,
    cod_pessoa integer NOT NULL,
    cnpj text NOT NULL
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false            ?            1259    33080    fornecedor_cod_fornecedor_seq    SEQUENCE     ?   CREATE SEQUENCE public.fornecedor_cod_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.fornecedor_cod_fornecedor_seq;
       public          postgres    false    212                       0    0    fornecedor_cod_fornecedor_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.fornecedor_cod_fornecedor_seq OWNED BY public.fornecedor.cod_fornecedor;
          public          postgres    false    211            ?            1259    32982    pessoa    TABLE     ?   CREATE TABLE public.pessoa (
    cod_pessoa integer NOT NULL,
    nome text NOT NULL,
    endereco text NOT NULL,
    telefone text NOT NULL
);
    DROP TABLE public.pessoa;
       public         heap    postgres    false            ?            1259    32981    pessoa_cod_pessoa_seq    SEQUENCE     ?   CREATE SEQUENCE public.pessoa_cod_pessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pessoa_cod_pessoa_seq;
       public          postgres    false    210            	           0    0    pessoa_cod_pessoa_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pessoa_cod_pessoa_seq OWNED BY public.pessoa.cod_pessoa;
          public          postgres    false    209            ?            1259    33095    produto    TABLE     ?   CREATE TABLE public.produto (
    cod_produto integer NOT NULL,
    cod_fornecedor integer NOT NULL,
    nome text NOT NULL,
    tipo text NOT NULL,
    quantidade integer NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false            ?            1259    33094    produto_cod_produto_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_cod_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.produto_cod_produto_seq;
       public          postgres    false    214            
           0    0    produto_cod_produto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.produto_cod_produto_seq OWNED BY public.produto.cod_produto;
          public          postgres    false    213            g           2604    33084    fornecedor cod_fornecedor    DEFAULT     ?   ALTER TABLE ONLY public.fornecedor ALTER COLUMN cod_fornecedor SET DEFAULT nextval('public.fornecedor_cod_fornecedor_seq'::regclass);
 H   ALTER TABLE public.fornecedor ALTER COLUMN cod_fornecedor DROP DEFAULT;
       public          postgres    false    212    211    212            f           2604    32985    pessoa cod_pessoa    DEFAULT     v   ALTER TABLE ONLY public.pessoa ALTER COLUMN cod_pessoa SET DEFAULT nextval('public.pessoa_cod_pessoa_seq'::regclass);
 @   ALTER TABLE public.pessoa ALTER COLUMN cod_pessoa DROP DEFAULT;
       public          postgres    false    209    210    210            h           2604    33098    produto cod_produto    DEFAULT     z   ALTER TABLE ONLY public.produto ALTER COLUMN cod_produto SET DEFAULT nextval('public.produto_cod_produto_seq'::regclass);
 B   ALTER TABLE public.produto ALTER COLUMN cod_produto DROP DEFAULT;
       public          postgres    false    214    213    214            ?          0    33081 
   fornecedor 
   TABLE DATA           F   COPY public.fornecedor (cod_fornecedor, cod_pessoa, cnpj) FROM stdin;
    public          postgres    false    212   ?       ?          0    32982    pessoa 
   TABLE DATA           F   COPY public.pessoa (cod_pessoa, nome, endereco, telefone) FROM stdin;
    public          postgres    false    210   ?                 0    33095    produto 
   TABLE DATA           V   COPY public.produto (cod_produto, cod_fornecedor, nome, tipo, quantidade) FROM stdin;
    public          postgres    false    214   '                  0    0    fornecedor_cod_fornecedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.fornecedor_cod_fornecedor_seq', 3, true);
          public          postgres    false    211                       0    0    pessoa_cod_pessoa_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pessoa_cod_pessoa_seq', 8, true);
          public          postgres    false    209                       0    0    produto_cod_produto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_cod_produto_seq', 4, true);
          public          postgres    false    213            l           2606    33088    fornecedor pk_fornecedor 
   CONSTRAINT     b   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT pk_fornecedor PRIMARY KEY (cod_fornecedor);
 B   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT pk_fornecedor;
       public            postgres    false    212            j           2606    32989    pessoa pk_pessoa 
   CONSTRAINT     V   ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (cod_pessoa);
 :   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT pk_pessoa;
       public            postgres    false    210            n           2606    33102    produto pk_produto 
   CONSTRAINT     Y   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (cod_produto);
 <   ALTER TABLE ONLY public.produto DROP CONSTRAINT pk_produto;
       public            postgres    false    214            p           2606    33103    produto fk_fornecedor    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_fornecedor FOREIGN KEY (cod_fornecedor) REFERENCES public.fornecedor(cod_fornecedor);
 ?   ALTER TABLE ONLY public.produto DROP CONSTRAINT fk_fornecedor;
       public          postgres    false    214    212    3180            o           2606    33089    fornecedor fk_produto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fk_produto FOREIGN KEY (cod_pessoa) REFERENCES public.pessoa(cod_pessoa);
 ?   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fk_produto;
       public          postgres    false    212    3178    210            ?      x?3?4?4162?2?4?0b???? (R@      ?   4   x?3?????8?39?8????؄?"bę???P???i?eU?W???? 2         #   x?3?4?LO,*JLK?4?44?2?4F????? ?E?     