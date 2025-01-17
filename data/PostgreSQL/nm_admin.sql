PGDMP     -    !            
    w         
   netmodular    12.1    12.1 O    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    21386 
   netmodular    DATABASE     �   CREATE DATABASE netmodular WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Simplified)_China.936' LC_CTYPE = 'Chinese (Simplified)_China.936';
    DROP DATABASE netmodular;
                postgres    false                        2615    21387    nm_admin    SCHEMA        CREATE SCHEMA nm_admin;
    DROP SCHEMA nm_admin;
                postgres    false            �            1259    21498    account    TABLE     �  CREATE TABLE nm_admin.account (
    id uuid NOT NULL,
    type smallint DEFAULT 0 NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    name character varying(250) NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(300) NOT NULL,
    logintime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    loginip character varying(50) NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    islock boolean DEFAULT false NOT NULL,
    closedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    closedby uuid NOT NULL,
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    deletedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deletedby uuid
);
    DROP TABLE nm_admin.account;
       nm_admin         heap    postgres    false    6            �            1259    21525    account_config    TABLE     �   CREATE TABLE nm_admin.account_config (
    id integer NOT NULL,
    accountid uuid NOT NULL,
    skin character varying(50) NOT NULL,
    theme character varying(50) NOT NULL,
    fontsize character varying(50) NOT NULL
);
 $   DROP TABLE nm_admin.account_config;
       nm_admin         heap    postgres    false    6            �            1259    21523    account_config_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.account_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE nm_admin.account_config_id_seq;
       nm_admin          postgres    false    224    6            �           0    0    account_config_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE nm_admin.account_config_id_seq OWNED BY nm_admin.account_config.id;
          nm_admin          postgres    false    223            �            1259    21517    account_role    TABLE     w   CREATE TABLE nm_admin.account_role (
    id integer NOT NULL,
    accountid uuid NOT NULL,
    roleid uuid NOT NULL
);
 "   DROP TABLE nm_admin.account_role;
       nm_admin         heap    postgres    false    6            �            1259    21515    account_role_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.account_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE nm_admin.account_role_id_seq;
       nm_admin          postgres    false    222    6            �           0    0    account_role_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE nm_admin.account_role_id_seq OWNED BY nm_admin.account_role.id;
          nm_admin          postgres    false    221            �            1259    21486 	   auditinfo    TABLE     W  CREATE TABLE nm_admin.auditinfo (
    id bigint NOT NULL,
    accountid uuid NOT NULL,
    area character varying(50) NOT NULL,
    controller character varying(50) NOT NULL,
    controllerdesc character varying(50),
    action character varying(50) NOT NULL,
    actiondesc character varying(50),
    parameters text,
    result text,
    executiontime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    executionduration bigint DEFAULT 0 NOT NULL,
    browserinfo character varying(500) NOT NULL,
    platform smallint DEFAULT 0 NOT NULL,
    ip character varying(50) NOT NULL
);
    DROP TABLE nm_admin.auditinfo;
       nm_admin         heap    postgres    false    6            �            1259    21484    auditinfo_id_seq    SEQUENCE     {   CREATE SEQUENCE nm_admin.auditinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE nm_admin.auditinfo_id_seq;
       nm_admin          postgres    false    219    6            �           0    0    auditinfo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE nm_admin.auditinfo_id_seq OWNED BY nm_admin.auditinfo.id;
          nm_admin          postgres    false    218            �            1259    21469    button    TABLE     �  CREATE TABLE nm_admin.button (
    id uuid NOT NULL,
    menucode character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    icon character varying(50),
    code character varying(50) NOT NULL,
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL
);
    DROP TABLE nm_admin.button;
       nm_admin         heap    postgres    false    6            �            1259    21478    button_permission    TABLE     �   CREATE TABLE nm_admin.button_permission (
    id integer NOT NULL,
    buttoncode character varying(50) NOT NULL,
    permissioncode character varying(50) NOT NULL
);
 '   DROP TABLE nm_admin.button_permission;
       nm_admin         heap    postgres    false    6            �            1259    21476    button_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.button_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE nm_admin.button_permission_id_seq;
       nm_admin          postgres    false    217    6            �           0    0    button_permission_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE nm_admin.button_permission_id_seq OWNED BY nm_admin.button_permission.id;
          nm_admin          postgres    false    216            �            1259    21458    config    TABLE     �  CREATE TABLE nm_admin.config (
    id integer NOT NULL,
    key character varying(250) NOT NULL,
    value character varying(500) NOT NULL,
    remarks character varying(250) NOT NULL,
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL
);
    DROP TABLE nm_admin.config;
       nm_admin         heap    postgres    false    6            �            1259    21456    config_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE nm_admin.config_id_seq;
       nm_admin          postgres    false    214    6            �           0    0    config_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE nm_admin.config_id_seq OWNED BY nm_admin.config.id;
          nm_admin          postgres    false    213            �            1259    21432    menu    TABLE     �  CREATE TABLE nm_admin.menu (
    id uuid NOT NULL,
    modulecode character varying(50) NOT NULL,
    type smallint DEFAULT 0 NOT NULL,
    parentid uuid NOT NULL,
    name character varying(50) NOT NULL,
    routename character varying(50) NOT NULL,
    routeparams character varying(500) NOT NULL,
    routequery character varying(500) NOT NULL,
    url character varying(300) NOT NULL,
    icon character varying(50) NOT NULL,
    iconcolor character varying(50),
    level integer DEFAULT 0 NOT NULL,
    show boolean DEFAULT false NOT NULL,
    sort integer DEFAULT 0 NOT NULL,
    target smallint DEFAULT 0 NOT NULL,
    dialogwidth character varying(50),
    dialogheight character varying(50),
    dialogfullscreen boolean DEFAULT false NOT NULL,
    remarks character varying(50),
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL
);
    DROP TABLE nm_admin.menu;
       nm_admin         heap    postgres    false    6            �            1259    21450    menu_permission    TABLE     �   CREATE TABLE nm_admin.menu_permission (
    id integer NOT NULL,
    menucode character varying(50) NOT NULL,
    permissioncode character varying(50) NOT NULL
);
 %   DROP TABLE nm_admin.menu_permission;
       nm_admin         heap    postgres    false    6            �            1259    21448    menu_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.menu_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE nm_admin.menu_permission_id_seq;
       nm_admin          postgres    false    6    212            �           0    0    menu_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE nm_admin.menu_permission_id_seq OWNED BY nm_admin.menu_permission.id;
          nm_admin          postgres    false    211            �            1259    21425 
   moduleinfo    TABLE     �  CREATE TABLE nm_admin.moduleinfo (
    id uuid NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(50) NOT NULL,
    version character varying(50) NOT NULL,
    remarks character varying(200),
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL
);
     DROP TABLE nm_admin.moduleinfo;
       nm_admin         heap    postgres    false    6            �            1259    21414 
   permission    TABLE        CREATE TABLE nm_admin.permission (
    id uuid NOT NULL,
    name character varying(250) NOT NULL,
    modulecode character varying(50) NOT NULL,
    controller character varying(50) NOT NULL,
    action character varying(50) NOT NULL,
    httpmethod smallint DEFAULT 0 NOT NULL,
    code character varying(200) NOT NULL,
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL
);
     DROP TABLE nm_admin.permission;
       nm_admin         heap    postgres    false    6            �            1259    21388    role    TABLE     '  CREATE TABLE nm_admin.role (
    id uuid NOT NULL,
    name character varying(50) NOT NULL,
    remarks character varying(300) NOT NULL,
    isspecified boolean DEFAULT false NOT NULL,
    createdtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    createdby uuid NOT NULL,
    modifiedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modifiedby uuid NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    deletedtime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deletedby uuid
);
    DROP TABLE nm_admin.role;
       nm_admin         heap    postgres    false    6            �            1259    21400 	   role_menu    TABLE     q   CREATE TABLE nm_admin.role_menu (
    id integer NOT NULL,
    roleid uuid NOT NULL,
    menuid uuid NOT NULL
);
    DROP TABLE nm_admin.role_menu;
       nm_admin         heap    postgres    false    6            �            1259    21408    role_menu_button    TABLE     �   CREATE TABLE nm_admin.role_menu_button (
    id integer NOT NULL,
    roleid uuid NOT NULL,
    menuid uuid NOT NULL,
    buttonid uuid NOT NULL
);
 &   DROP TABLE nm_admin.role_menu_button;
       nm_admin         heap    postgres    false    6            �            1259    21406    role_menu_button_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.role_menu_button_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE nm_admin.role_menu_button_id_seq;
       nm_admin          postgres    false    207    6            �           0    0    role_menu_button_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE nm_admin.role_menu_button_id_seq OWNED BY nm_admin.role_menu_button.id;
          nm_admin          postgres    false    206            �            1259    21398    role_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE nm_admin.role_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE nm_admin.role_menu_id_seq;
       nm_admin          postgres    false    205    6            �           0    0    role_menu_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE nm_admin.role_menu_id_seq OWNED BY nm_admin.role_menu.id;
          nm_admin          postgres    false    204            �
           2604    21528    account_config id    DEFAULT     z   ALTER TABLE ONLY nm_admin.account_config ALTER COLUMN id SET DEFAULT nextval('nm_admin.account_config_id_seq'::regclass);
 B   ALTER TABLE nm_admin.account_config ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    223    224    224            �
           2604    21520    account_role id    DEFAULT     v   ALTER TABLE ONLY nm_admin.account_role ALTER COLUMN id SET DEFAULT nextval('nm_admin.account_role_id_seq'::regclass);
 @   ALTER TABLE nm_admin.account_role ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    221    222    222            �
           2604    21489    auditinfo id    DEFAULT     p   ALTER TABLE ONLY nm_admin.auditinfo ALTER COLUMN id SET DEFAULT nextval('nm_admin.auditinfo_id_seq'::regclass);
 =   ALTER TABLE nm_admin.auditinfo ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    219    218    219            �
           2604    21481    button_permission id    DEFAULT     �   ALTER TABLE ONLY nm_admin.button_permission ALTER COLUMN id SET DEFAULT nextval('nm_admin.button_permission_id_seq'::regclass);
 E   ALTER TABLE nm_admin.button_permission ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    216    217    217            �
           2604    21461 	   config id    DEFAULT     j   ALTER TABLE ONLY nm_admin.config ALTER COLUMN id SET DEFAULT nextval('nm_admin.config_id_seq'::regclass);
 :   ALTER TABLE nm_admin.config ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    214    213    214            �
           2604    21453    menu_permission id    DEFAULT     |   ALTER TABLE ONLY nm_admin.menu_permission ALTER COLUMN id SET DEFAULT nextval('nm_admin.menu_permission_id_seq'::regclass);
 C   ALTER TABLE nm_admin.menu_permission ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    212    211    212            �
           2604    21403    role_menu id    DEFAULT     p   ALTER TABLE ONLY nm_admin.role_menu ALTER COLUMN id SET DEFAULT nextval('nm_admin.role_menu_id_seq'::regclass);
 =   ALTER TABLE nm_admin.role_menu ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    205    204    205            �
           2604    21411    role_menu_button id    DEFAULT     ~   ALTER TABLE ONLY nm_admin.role_menu_button ALTER COLUMN id SET DEFAULT nextval('nm_admin.role_menu_button_id_seq'::regclass);
 D   ALTER TABLE nm_admin.role_menu_button ALTER COLUMN id DROP DEFAULT;
       nm_admin          postgres    false    206    207    207            �          0    21498    account 
   TABLE DATA           �   COPY nm_admin.account (id, type, username, password, name, phone, email, logintime, loginip, status, islock, closedtime, closedby, createdtime, createdby, modifiedtime, modifiedby, deleted, deletedtime, deletedby) FROM stdin;
    nm_admin          postgres    false    220   �h       �          0    21525    account_config 
   TABLE DATA           P   COPY nm_admin.account_config (id, accountid, skin, theme, fontsize) FROM stdin;
    nm_admin          postgres    false    224   �i       �          0    21517    account_role 
   TABLE DATA           ?   COPY nm_admin.account_role (id, accountid, roleid) FROM stdin;
    nm_admin          postgres    false    222   �i       �          0    21486 	   auditinfo 
   TABLE DATA           �   COPY nm_admin.auditinfo (id, accountid, area, controller, controllerdesc, action, actiondesc, parameters, result, executiontime, executionduration, browserinfo, platform, ip) FROM stdin;
    nm_admin          postgres    false    219   j       �          0    21469    button 
   TABLE DATA           t   COPY nm_admin.button (id, menucode, name, icon, code, createdtime, createdby, modifiedtime, modifiedby) FROM stdin;
    nm_admin          postgres    false    215   3j       �          0    21478    button_permission 
   TABLE DATA           M   COPY nm_admin.button_permission (id, buttoncode, permissioncode) FROM stdin;
    nm_admin          postgres    false    217   n       �          0    21458    config 
   TABLE DATA           m   COPY nm_admin.config (id, key, value, remarks, createdtime, createdby, modifiedtime, modifiedby) FROM stdin;
    nm_admin          postgres    false    214   ^o       �          0    21432    menu 
   TABLE DATA             COPY nm_admin.menu (id, modulecode, type, parentid, name, routename, routeparams, routequery, url, icon, iconcolor, level, show, sort, target, dialogwidth, dialogheight, dialogfullscreen, remarks, createdtime, createdby, modifiedtime, modifiedby) FROM stdin;
    nm_admin          postgres    false    210   {r       �          0    21450    menu_permission 
   TABLE DATA           I   COPY nm_admin.menu_permission (id, menucode, permissioncode) FROM stdin;
    nm_admin          postgres    false    212   v       �          0    21425 
   moduleinfo 
   TABLE DATA           z   COPY nm_admin.moduleinfo (id, name, code, version, remarks, createdtime, createdby, modifiedtime, modifiedby) FROM stdin;
    nm_admin          postgres    false    209   �v       �          0    21414 
   permission 
   TABLE DATA           �   COPY nm_admin.permission (id, name, modulecode, controller, action, httpmethod, code, createdtime, createdby, modifiedtime, modifiedby) FROM stdin;
    nm_admin          postgres    false    208   \w       �          0    21388    role 
   TABLE DATA           �   COPY nm_admin.role (id, name, remarks, isspecified, createdtime, createdby, modifiedtime, modifiedby, deleted, deletedtime, deletedby) FROM stdin;
    nm_admin          postgres    false    203   !       �          0    21400 	   role_menu 
   TABLE DATA           9   COPY nm_admin.role_menu (id, roleid, menuid) FROM stdin;
    nm_admin          postgres    false    205   �       �          0    21408    role_menu_button 
   TABLE DATA           J   COPY nm_admin.role_menu_button (id, roleid, menuid, buttonid) FROM stdin;
    nm_admin          postgres    false    207   �       �           0    0    account_config_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('nm_admin.account_config_id_seq', 1, false);
          nm_admin          postgres    false    223            �           0    0    account_role_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('nm_admin.account_role_id_seq', 1, true);
          nm_admin          postgres    false    221            �           0    0    auditinfo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('nm_admin.auditinfo_id_seq', 1, false);
          nm_admin          postgres    false    218            �           0    0    button_permission_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('nm_admin.button_permission_id_seq', 31, true);
          nm_admin          postgres    false    216            �           0    0    config_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('nm_admin.config_id_seq', 16, true);
          nm_admin          postgres    false    213            �           0    0    menu_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('nm_admin.menu_permission_id_seq', 13, true);
          nm_admin          postgres    false    211            �           0    0    role_menu_button_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('nm_admin.role_menu_button_id_seq', 19, true);
          nm_admin          postgres    false    206            �           0    0    role_menu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('nm_admin.role_menu_id_seq', 40, true);
          nm_admin          postgres    false    204                       2606    21530 "   account_config account_config_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY nm_admin.account_config
    ADD CONSTRAINT account_config_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY nm_admin.account_config DROP CONSTRAINT account_config_pkey;
       nm_admin            postgres    false    224                       2606    21514    account account_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY nm_admin.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY nm_admin.account DROP CONSTRAINT account_pkey;
       nm_admin            postgres    false    220            
           2606    21522    account_role account_role_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY nm_admin.account_role
    ADD CONSTRAINT account_role_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY nm_admin.account_role DROP CONSTRAINT account_role_pkey;
       nm_admin            postgres    false    222                       2606    21497    auditinfo auditinfo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY nm_admin.auditinfo
    ADD CONSTRAINT auditinfo_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY nm_admin.auditinfo DROP CONSTRAINT auditinfo_pkey;
       nm_admin            postgres    false    219                       2606    21483 (   button_permission button_permission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY nm_admin.button_permission
    ADD CONSTRAINT button_permission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY nm_admin.button_permission DROP CONSTRAINT button_permission_pkey;
       nm_admin            postgres    false    217                       2606    21475    button button_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY nm_admin.button
    ADD CONSTRAINT button_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY nm_admin.button DROP CONSTRAINT button_pkey;
       nm_admin            postgres    false    215                        2606    21468    config config_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY nm_admin.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY nm_admin.config DROP CONSTRAINT config_pkey;
       nm_admin            postgres    false    214            �
           2606    21455 $   menu_permission menu_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY nm_admin.menu_permission
    ADD CONSTRAINT menu_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY nm_admin.menu_permission DROP CONSTRAINT menu_permission_pkey;
       nm_admin            postgres    false    212            �
           2606    21447    menu menu_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY nm_admin.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY nm_admin.menu DROP CONSTRAINT menu_pkey;
       nm_admin            postgres    false    210            �
           2606    21431    moduleinfo moduleinfo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY nm_admin.moduleinfo
    ADD CONSTRAINT moduleinfo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY nm_admin.moduleinfo DROP CONSTRAINT moduleinfo_pkey;
       nm_admin            postgres    false    209            �
           2606    21424    permission permission_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY nm_admin.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY nm_admin.permission DROP CONSTRAINT permission_pkey;
       nm_admin            postgres    false    208            �
           2606    21413 &   role_menu_button role_menu_button_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY nm_admin.role_menu_button
    ADD CONSTRAINT role_menu_button_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY nm_admin.role_menu_button DROP CONSTRAINT role_menu_button_pkey;
       nm_admin            postgres    false    207            �
           2606    21405    role_menu role_menu_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY nm_admin.role_menu
    ADD CONSTRAINT role_menu_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY nm_admin.role_menu DROP CONSTRAINT role_menu_pkey;
       nm_admin            postgres    false    205            �
           2606    21397    role role_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY nm_admin.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY nm_admin.role DROP CONSTRAINT role_pkey;
       nm_admin            postgres    false    203            �   �   x���=
�@��Sx�]�O6�m:M�6��=��v�^�[I�!�6b �L5��H�d�$�˹r�*�A��R��ʔ��?�Z%��f�ִ�M��R�	��.a�����q� #EG��D5SM�
q �/���%{D��܏�h����y�䃹��E�.VQ�      �      x������ � �      �   F   x�Mʱ�0�:����]��1�������<M�:g��۫��fA>���l��=f���)�-"zc�      �      x������ � �      �   �  x����n#E�ϓ�������<�՟`)�W�#�!>�X�E	�!������I�-��=��iK3�e����~]��p��&L���@NN�Y��4>]����E��ʳyY4�����f��2�>��OW��c#w�9p��B]r7q�-�Fn�U�/!�!��!'�A��O�� ��|B�	���.��A�(��Wо�}��oM�Wy��d4^�r&�3�Z�	FWRSά@Xt�!���ً����V�ż����9z��0un�:=�D�ip�PY�I�56++����Ms�׻�7�4��F��m?7�F2��%���hNQ&�^[p!&�Y�cn������MN��>��}5��[����N"��X [��#���>K�C-M�=m0N�vπ!��
,��4�3NiI&	<���~����Y-�yy����̙��zZ?l)�X�4(xO�	
|
YzS2��,W��v�����{�[vz7�-D ��p^CQ.�d^�'�������rX{=�[aJZ�{V�1gXD�m�g��呦�6���M�ӏ�>�D@W�+K�A�r��yPb��^o���������0�TZ{�uU5,��b��Ez9�޴���\Ę�.r��f��g7Q��bD�ή�N?6MZb ��H��P��Ep:��r�ӷPTwQ��j`�֏�mZ�5����~)�}a�r��P�HS�KmH�^�"��a=r��
I(��A��$��hsL�������ټ�������[FCy=}�W�O�z!��lc��c}�JY�b�LEЁ1�؋�TpCe�x�~x����_P��~vu<;��*��	���8w���ո��Y�)z2���i�d\m�.�����G����5y�������%S%�x$ܧ��Cv����x)�J�������.�<���o�-��#�0s�X0\Ҏes��SD�0���ԺŎ��,�@��uf��i�k`�}8����rh�      �   7  x��Sю� |>>�"Zm��Kڐ(4��ߟ���\��������b�!�M7Z���v������f�g�_R��)���;�দQ;��A��F�t�2�Rfe��*�}^wW�/^��M����>Α�`TB$^"����:zW���| |�����$U�0$y�Ѵy%�>"�N%>!w�F.�׃v�D������^��-�s�ޚ�M�߶�'�,�O�����!m�10Q�b?�}1n��3r] �����I95�"�ܷ���*�d��.����^�����d���\�&�d�n	 ˥U�'�aU|˭�Z��'c��Kد      �     x���]O�P���S��}�9=m�5��;�4i��Æ�ŵ5�n@�%#*�f��%n!� L������btڑ�4Y��ݯ����9 ��:�kKi{7yﭤ;I��l<ON��p_ʿ⃵��dЫ U�� �"4+k3��A	��������U��Z��VM�X��H��ޯ�4#SP1���2����������,}F�1��[�RAѐg�'~Ӗ�V���f׹0��!�~+6"���0j��"f$�1
��5|c���%i��7��]u��T$�e %�:!�uT2c-
C�3�V�	���G�Ȗ���:���ӷ�<��\ETb�A&�zi��5���c��=!άi��x��^�W.���.�BTṶfn3������Ʋ~w���[G�j���!�K(�HSjy{�}�f��F�A�e�7q��&��숭���z�N:y:��)R��y;[��>�br��/�J�[�b2�T��������fk���cq�$S�H�+V &ؿ�[q��^|q�7�[� c��5�b��d"Zu4��GA�7�A I������=|���)X*�ڏU�Xs�@>暶��<�l�_�=�ʫ=�|do6Y��;\����h���Oo�[S�������G��<�F�����S�7��e��}���^>gk�������s�z�n}e���`��,~���b���@0lP~�~�W>��Ggq���dg�.7�ON��ӫ)T���8"�`Z }ƷfcѨ��}S�|��س���6"tBK��okU��J���<�      �   �  x���ݎ�Dǯ����3g�'w\�<���(�W���k-]T%B@�rH��(O��}��D�VM6�#ed��x�?����LD
�J�`Q�X�A�#����r�a�ڇD#-X��j���&P)�m^.�ϯ�����W�m"?�T~1�4VY�.g���YZ��H�ei�(A���=��#4��*-x-���W.�/c�(xQ��xsV��8��bp
�9Jd4�0�#��_\��t��j�|��pf�r>/�i���0+�CW�p
*r�DR��>���[T��{TZ���途uC�������D�.�x�|�.��}�����L�.=��t �h1��:Zb��������V�C��O�g2��p!z�?�ˎ��*Mi��2����@U!EG���y���ֹj1��y�݇��<��(����L9 �3i��:�E���W��j���u������(���{��(CX�*�-~p��f����w���p�o?r#��iN�/�K�h�u��@"�se ��Xc-5:=+�ֽ�����������Ս���y&�f<��b����y�zD���۷֠�C*u<
Zn8u*M�]������pQ4b���|4^���E��j2,���q9�8�5m��e�t˄I1)}�V=����H��4�
M)0Up�?�.��d��~����٣�����N��:�r�a� }���|c���y,t����4�SA��+QK�:H.��5�Zs\��1G[��5ʩ�Ț��S=R�|"GB�Q�]k�6Ԃ���� P���֬p��ꯗ������P��������%�b�F���݌!�Π�I���g�0�bJ)ލ���7���P��GnG<�6��(���� ��Z�Y+?����w�      �   �   x�}��
!E��cJ���Rьj����}�������p!9ﴍ>�:�q0�`��Sk�?��t���^G���	7�z�Y9h���%�Z=�M���:��d���
����$ې�����F���Z������>�ry�`��!�_C��      �   �   x��̱�0 �ڞ����m�'0A��ߖ(`	$�,�XDlAA�� w4v���s��� �	H5d�j��{�/�ۺ=�zu{;�C��.8"�����B���[,���Ƶ��H$�Is���9x�?�4�      �   �  x����n[������L�·�9M/
$@7w�u4H�*R(|i�N� >�H$m����T� n�y��ޢ�M��k�"7�o(h-�������6S��L���"�m4:���M�fr�������vϟ}2>�r�����ջ���k!�F�7����^걞�m��ƮǍ#��=G=F�J��_P�:c��'���.gAk
Q��[΍��{zux��~��p�%pO%0Ƀ��p�Y�<�����_��9NG7{�A�����t�RDt��x�=���5[kA"��FDl���G'�k1.��b\��2�#J�5���4�`��T�*SŅo0���h��O����ђ�	�	i��iۅ���	���#c�����<�����at��y\-�SSSK��b��3y|�A!9u@���}3!������o������i�����ܨN��l�j�@0_�2�!XFS���K֋?�=������'���a���?��O��l�p��Vi)Y'z)�W:{Ycb�!s&)�*k̙�������ϧ�[O%����Y�g�}\�X���݄6��H��%��PFEl44f�K��o&��^B}3�\o�6�w���:5���n�H� �Q�d��YǙ�M>����٪����h48h��ō���A2�uۉT@6����Ձ�yb\9ѻ�=;��?����� �o48C����݉��T���JEy�@R�"i�V˜u�ଛ��adK�se|��Ugd�������a�ə.1}g��h;�6]�(ѩa���r<�&:|;g��<z�	�K��eZ��i���0C�Q�=��S¶�s�hqL�W�����&��XR6<ӂs�e2�wj���@�Q%�|'k=(�p�sxXS�M��e|�������A�Nǽ���R�}\���1-���gKKY�ePb6������� I!J�y��/��|>=��Z܊tS��ԴkWǷ��:��8�*�ٌyK%N4�p���Z[�+m����Z�m��훦6�"lN�=P�q���λ����]��V�m*�����S���D&l D�3%eQ^+ʢ�V�J����i����(�4�����5:L�$�a^5R�>�Vx��Zn�����|u��'�/ �Hi�#q ����o��{O��M�=������y��rqe��������WWt<�E�^�p&a�;v^��ZR�D�NՎs�}�9����D��]i�^(�K��s������W��o��^Z1s�Wm�NJHKSzu��S���	N��a��JE��wٓv����?ϗ&�}7�{�~��A����{��kD���.�	�_��{����e��L"�"J&�E��dmv�K������Y��J{DG4�Qa�C�-�8O�z���{����V��;�h�?��f�×�Ӛ�ni�6�������Ɠ�n��B2V���z�H���T-��+���E����
Ri|�)K=WA��aV�/TOaJE��/���K=��o�$���z�o��}m�F� � ���
�nv+��f�]'�>��CH#")椥8��J��Ut�T�*>Ju�l_P::�a+���@��T��,�nEY�݊q�٥Dw�6-��p苸C�+"�D�J��W%\q�P�5�n�����WT]&����G��LE`FJm���qnuK_�q|���OWL�����6���=\]���r��>��p �3p��5;�6B)m)<�]!�ag�+\�={�]9�uz�M�����o�8�v8c6Ƃ\��\lT}q�T��V}~��Z��u��0-/����� {& �ul��H�������`�(ce6,�h��	˺y����Ai���Z�עw����g_/*���������(���7}�<�V_ܛ��E_��v����f
�K&��*;A�䑿���G�:ykpcPR�w�7p�Zo�W;{������3����vvv�o�+      �   y   x�3�L3�HM2�MLK��MN46�M�H��M50�464H�067�|��������-|>�����4N#CK]CC]CCC+#+c3=Sss#N(��B� .�������C��2�+F��� ��D      �   /  x��ӹ�X1���eޤzq������
$$�#�G��:S1�,���U��Pte:��M��c`�Taz�u��&�� 	MeLʍ��ɝ�]iJ1�M�g	���u	��4�n�1�s!{$�F�q6�âM�#f��^{f,��΃�E�g�G��{�Ag���Gr�7��X��al�P-�3y)�3��',����՝��cH��5��G���H{�u	)v2{���4?b�M�sx�`��z�ܚ~K@ ����q2H��95���B�b�|	��*�n���}K@a�l�a�Tn��q�i����� e��      �     x���A�:D��wad�|��1��C/Fʲ��M��(p��u���u���ñ\�]cOc�"[����{;(�T]f��)U.{���QÎ�S��o��꼊�����.#�h��
��ɉ#�K\o�P�����5@��q������&ܡ��(s���m�hc�]���3y�����E�[��e���C]���)J�ա�|�9�c	2jӗ@��P"�&��r��?D�'��	F�-_'��0n� �pT�Z��'��2>�֏�u��q.�M�-Be}��"-0��v�ݱ:����8x:�)���ڈ�5�;D�)���5J�Ó��҆���{�C.�nמp�J�2�4|�6_�`��`�^8���Mˆo��[b�[�����}�r��6o&�p�.��IR���S����%��2*����o�K�8hV����:/aE^܆o�K�ֵ���t��Q����������h4�V�����9tj�f�����U�`}��~�Fq����L�}��)�h��i�����     