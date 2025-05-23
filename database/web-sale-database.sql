PGDMP  *                    }            Web sale    17.4    17.4 \    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            k           1262    16492    Web sale    DATABASE     p   CREATE DATABASE "Web sale" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE "Web sale";
                     postgres    false            �            1259    16529    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.category;
       public         heap r       postgres    false            �            1259    16528    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public               postgres    false    223            l           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public               postgres    false    222            �            1259    16564    feedback    TABLE     |   CREATE TABLE public.feedback (
    id integer NOT NULL,
    product_id integer,
    rating integer,
    description text
);
    DROP TABLE public.feedback;
       public         heap r       postgres    false            �            1259    16563    feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.feedback_id_seq;
       public               postgres    false    229            m           0    0    feedback_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;
          public               postgres    false    228            �            1259    16550    gallery    TABLE     w   CREATE TABLE public.gallery (
    id integer NOT NULL,
    product_id integer,
    thumbnail character varying(500)
);
    DROP TABLE public.gallery;
       public         heap r       postgres    false            �            1259    16549    gallery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.gallery_id_seq;
       public               postgres    false    227            n           0    0    gallery_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.gallery_id_seq OWNED BY public.gallery.id;
          public               postgres    false    226            �            1259    16619 	   inventory    TABLE     f   CREATE TABLE public.inventory (
    product_id integer,
    store_id integer,
    quantity integer
);
    DROP TABLE public.inventory;
       public         heap r       postgres    false            �            1259    16595    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    price integer,
    number integer,
    total integer GENERATED ALWAYS AS ((price * number)) STORED
);
     DROP TABLE public.order_detail;
       public         heap r       postgres    false            �            1259    16594    order_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_detail_id_seq;
       public               postgres    false    233            o           0    0    order_detail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_detail_id_seq OWNED BY public.order_detail.id;
          public               postgres    false    232            �            1259    16578    orders    TABLE     �  CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_name character varying(100),
    email character varying(100),
    phone character varying(20),
    address character varying(100),
    order_date timestamp without time zone DEFAULT now(),
    total_money integer,
    user_id integer,
    shipper_id integer,
    delivery_status character varying(50),
    note character varying(200)
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    16577    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public               postgres    false    231            p           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public               postgres    false    230            �            1259    16536    product    TABLE     ]  CREATE TABLE public.product (
    id integer NOT NULL,
    category_id integer,
    title character varying(350),
    price integer NOT NULL,
    discount integer,
    thumbnail character varying(500),
    description text,
    deleted integer,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);
    DROP TABLE public.product;
       public         heap r       postgres    false            �            1259    16535    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public               postgres    false    225            q           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public               postgres    false    224            �            1259    16494    role    TABLE     d   CREATE TABLE public.role (
    id integer NOT NULL,
    role_name character varying(56) NOT NULL
);
    DROP TABLE public.role;
       public         heap r       postgres    false            �            1259    16493    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public               postgres    false    218            r           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public               postgres    false    217            �            1259    16613    stores    TABLE     �   CREATE TABLE public.stores (
    id integer NOT NULL,
    name character varying(56) NOT NULL,
    address character varying(100) NOT NULL
);
    DROP TABLE public.stores;
       public         heap r       postgres    false            �            1259    16612    stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.stores_id_seq;
       public               postgres    false    235            s           0    0    stores_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;
          public               postgres    false    234            �            1259    16643 	   tech_task    TABLE     �   CREATE TABLE public.tech_task (
    id integer NOT NULL,
    user_id integer,
    task_type text,
    status text,
    note text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);
    DROP TABLE public.tech_task;
       public         heap r       postgres    false            �            1259    16642    tech_task_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tech_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tech_task_id_seq;
       public               postgres    false    238            t           0    0    tech_task_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tech_task_id_seq OWNED BY public.tech_task.id;
          public               postgres    false    237            �            1259    16501    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mail character varying(150) NOT NULL,
    phone character varying(20) NOT NULL,
    address character varying(200) NOT NULL,
    harsh_pass character varying(32) NOT NULL,
    deleted integer,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16500    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    220            u           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    219            �            1259    16515    users_roles    TABLE     O   CREATE TABLE public.users_roles (
    users_id integer,
    role_id integer
);
    DROP TABLE public.users_roles;
       public         heap r       postgres    false            �           2604    16532    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    222    223            �           2604    16567    feedback id    DEFAULT     j   ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);
 :   ALTER TABLE public.feedback ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    229    229            �           2604    16553 
   gallery id    DEFAULT     h   ALTER TABLE ONLY public.gallery ALTER COLUMN id SET DEFAULT nextval('public.gallery_id_seq'::regclass);
 9   ALTER TABLE public.gallery ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    16598    order_detail id    DEFAULT     r   ALTER TABLE ONLY public.order_detail ALTER COLUMN id SET DEFAULT nextval('public.order_detail_id_seq'::regclass);
 >   ALTER TABLE public.order_detail ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    16581 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    16539 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224    225            �           2604    16497    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16616 	   stores id    DEFAULT     f   ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);
 8   ALTER TABLE public.stores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    234    235            �           2604    16646    tech_task id    DEFAULT     l   ALTER TABLE ONLY public.tech_task ALTER COLUMN id SET DEFAULT nextval('public.tech_task_id_seq'::regclass);
 ;   ALTER TABLE public.tech_task ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    16504    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            V          0    16529    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public               postgres    false    223   �i       \          0    16564    feedback 
   TABLE DATA           G   COPY public.feedback (id, product_id, rating, description) FROM stdin;
    public               postgres    false    229   �i       Z          0    16550    gallery 
   TABLE DATA           <   COPY public.gallery (id, product_id, thumbnail) FROM stdin;
    public               postgres    false    227   j       c          0    16619 	   inventory 
   TABLE DATA           C   COPY public.inventory (product_id, store_id, quantity) FROM stdin;
    public               postgres    false    236   2j       `          0    16595    order_detail 
   TABLE DATA           O   COPY public.order_detail (id, order_id, product_id, price, number) FROM stdin;
    public               postgres    false    233   Oj       ^          0    16578    orders 
   TABLE DATA           �   COPY public.orders (id, customer_name, email, phone, address, order_date, total_money, user_id, shipper_id, delivery_status, note) FROM stdin;
    public               postgres    false    231   lj       X          0    16536    product 
   TABLE DATA           �   COPY public.product (id, category_id, title, price, discount, thumbnail, description, deleted, created_at, updated_at) FROM stdin;
    public               postgres    false    225   �j       Q          0    16494    role 
   TABLE DATA           -   COPY public.role (id, role_name) FROM stdin;
    public               postgres    false    218   �j       b          0    16613    stores 
   TABLE DATA           3   COPY public.stores (id, name, address) FROM stdin;
    public               postgres    false    235   *k       e          0    16643 	   tech_task 
   TABLE DATA           a   COPY public.tech_task (id, user_id, task_type, status, note, created_at, updated_at) FROM stdin;
    public               postgres    false    238   Gk       S          0    16501    users 
   TABLE DATA           l   COPY public.users (id, name, mail, phone, address, harsh_pass, deleted, created_at, updated_at) FROM stdin;
    public               postgres    false    220   dk       T          0    16515    users_roles 
   TABLE DATA           8   COPY public.users_roles (users_id, role_id) FROM stdin;
    public               postgres    false    221   �l       v           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public               postgres    false    222            w           0    0    feedback_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.feedback_id_seq', 1, false);
          public               postgres    false    228            x           0    0    gallery_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.gallery_id_seq', 1, false);
          public               postgres    false    226            y           0    0    order_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_detail_id_seq', 1, false);
          public               postgres    false    232            z           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public               postgres    false    230            {           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public               postgres    false    224            |           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 10, true);
          public               postgres    false    217            }           0    0    stores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.stores_id_seq', 1, false);
          public               postgres    false    234            ~           0    0    tech_task_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tech_task_id_seq', 1, false);
          public               postgres    false    237                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 10, true);
          public               postgres    false    219            �           2606    16534    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public                 postgres    false    223            �           2606    16571    feedback feedback_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public                 postgres    false    229            �           2606    16557    gallery gallery_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT gallery_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.gallery DROP CONSTRAINT gallery_pkey;
       public                 postgres    false    227            �           2606    16601    order_detail order_detail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_pkey;
       public                 postgres    false    233            �           2606    16583    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    231            �           2606    16543    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public                 postgres    false    225            �           2606    16499    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public                 postgres    false    218            �           2606    16618    stores stores_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
       public                 postgres    false    235            �           2606    16651    tech_task tech_task_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tech_task
    ADD CONSTRAINT tech_task_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tech_task DROP CONSTRAINT tech_task_pkey;
       public                 postgres    false    238            �           2606    16512    users unique_mail 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_mail UNIQUE (mail);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_mail;
       public                 postgres    false    220            �           2606    16514    users unique_phone 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_phone UNIQUE (phone);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_phone;
       public                 postgres    false    220            �           2606    16506    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    220            �           2606    16572 !   feedback feedback_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_product_id_fkey;
       public               postgres    false    4774    229    225            �           2606    16558    gallery gallery_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT gallery_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 I   ALTER TABLE ONLY public.gallery DROP CONSTRAINT gallery_product_id_fkey;
       public               postgres    false    225    227    4774            �           2606    16622 #   inventory inventory_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 M   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_product_id_fkey;
       public               postgres    false    236    225    4774            �           2606    16627 !   inventory inventory_store_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id);
 K   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_store_id_fkey;
       public               postgres    false    235    236    4784            �           2606    16602 '   order_detail order_detail_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);
 Q   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_order_id_fkey;
       public               postgres    false    233    4780    231            �           2606    16607 )   order_detail order_detail_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 S   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_product_id_fkey;
       public               postgres    false    233    4774    225            �           2606    16632    orders orders_shipper_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_shipper_id_fkey FOREIGN KEY (shipper_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_shipper_id_fkey;
       public               postgres    false    4770    220    231            �           2606    16584    orders orders_user_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fkey;
       public               postgres    false    220    231    4770            �           2606    16544    product product_fkey_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_fkey_category FOREIGN KEY (category_id) REFERENCES public.category(id);
 G   ALTER TABLE ONLY public.product DROP CONSTRAINT product_fkey_category;
       public               postgres    false    223    225    4772            �           2606    16652     tech_task tech_task_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.tech_task
    ADD CONSTRAINT tech_task_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.tech_task DROP CONSTRAINT tech_task_user_id_fkey;
       public               postgres    false    220    4770    238            �           2606    16523 $   users_roles users_roles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 N   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT users_roles_role_id_fkey;
       public               postgres    false    218    4764    221            �           2606    16518 %   users_roles users_roles_users_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT users_roles_users_id_fkey;
       public               postgres    false    4770    221    220            V      x������ � �      \      x������ � �      Z      x������ � �      c      x������ � �      `      x������ � �      ^      x������ � �      X      x������ � �      Q   t   x�M�K�0DמS��B�݅�K�:
uI��=V�7z�����CY�&Ȝ���x���L��6����6��DEc��3�8GÅ^��/GV�q��zVn�����V&]p��?N.�      b      x������ � �      e      x������ � �      S   F  x�m�?K�@����Wq����?�m�F��Bq�r�14i����ܬ\DpI������8\7�/�=A�~Sr�R��G�K�wao�H��*�tôT��+	��%g+Ηl����O�0���	�� ך\�����y�I.┷(MP:Fa�3�L�C���'�I��������	�07�^e���y�݁��,���c��\20,��z�m�1�c���:�7�������%XB�1X�M�)"[X���]5(�.��o�t�����1*���T��Y�#�}:g�]9�`P|��x��öc�¢���s�RUn�#y�?�~�>CU@Ӟ�(a�      T   '   x�3�4�2bs � bCN# 6�2�4�2�4����� U�t     