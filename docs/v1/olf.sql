PGDMP  +                    }            olf    17.0    17.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    25787    olf    DATABASE     v   CREATE DATABASE olf WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE olf;
                     olf_staging    false                        2615    33616    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     postgres    false                        2615    25794    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
                     postgres    false                        2615    25789    orders    SCHEMA        CREATE SCHEMA orders;
    DROP SCHEMA orders;
                     postgres    false                        2615    25795    payments    SCHEMA        CREATE SCHEMA payments;
    DROP SCHEMA payments;
                     postgres    false            
            2615    25792    queries    SCHEMA        CREATE SCHEMA queries;
    DROP SCHEMA queries;
                     postgres    false                        2615    25788 
   restraunts    SCHEMA        CREATE SCHEMA restraunts;
    DROP SCHEMA restraunts;
                     postgres    false            	            2615    25791    stations    SCHEMA        CREATE SCHEMA stations;
    DROP SCHEMA stations;
                     postgres    false                        2615    25793 	   templates    SCHEMA        CREATE SCHEMA templates;
    DROP SCHEMA templates;
                     postgres    false                        2615    25790    users    SCHEMA        CREATE SCHEMA users;
    DROP SCHEMA users;
                     postgres    false                       1259    33618    permissions    TABLE       CREATE TABLE auth.permissions (
    perm_id integer NOT NULL,
    role_id integer NOT NULL,
    permission character varying(128) NOT NULL,
    read integer DEFAULT 0,
    write integer DEFAULT 0,
    update integer DEFAULT 0,
    delete integer DEFAULT 0
);
    DROP TABLE auth.permissions;
       auth         heap r       postgres    false    14                       1259    33617    permissions_perm_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.permissions_perm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE auth.permissions_perm_id_seq;
       auth               postgres    false    259    14            �           0    0    permissions_perm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE auth.permissions_perm_id_seq OWNED BY auth.permissions.perm_id;
          auth               postgres    false    258                       1259    33630    roles    TABLE     =  CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying(128) NOT NULL,
    parent_role_id integer DEFAULT 0 NOT NULL,
    color character varying(64) DEFAULT '#ffffff'::character varying,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE auth.roles;
       auth         heap r       postgres    false    14                       1259    33629    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE auth.roles_role_id_seq;
       auth               postgres    false    261    14            �           0    0    roles_role_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth.roles_role_id_seq OWNED BY auth.roles.role_id;
          auth               postgres    false    260            �            1259    25871 
   attendence    TABLE       CREATE TABLE hr.attendence (
    att_id integer NOT NULL,
    emp_id integer NOT NULL,
    check_in time without time zone NOT NULL,
    check_out time without time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.attendence;
       hr         heap r       postgres    false    12            �            1259    25870    attendence_att_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.attendence_att_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.attendence_att_id_seq;
       hr               postgres    false    241    12            �           0    0    attendence_att_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.attendence_att_id_seq OWNED BY hr.attendence.att_id;
          hr               postgres    false    240            �            1259    25897    departments    TABLE     �   CREATE TABLE hr.departments (
    dept_id integer NOT NULL,
    name character varying(256) NOT NULL,
    parent_dept_id integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.departments;
       hr         heap r       postgres    false    12            �            1259    25896    departments_dept_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.departments_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hr.departments_dept_id_seq;
       hr               postgres    false    245    12            �           0    0    departments_dept_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hr.departments_dept_id_seq OWNED BY hr.departments.dept_id;
          hr               postgres    false    244            �            1259    25850    employee_profile    TABLE       CREATE TABLE hr.employee_profile (
    profile_id integer NOT NULL,
    emp_id integer NOT NULL,
    profile_url text,
    dob date NOT NULL,
    active_from date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
     DROP TABLE hr.employee_profile;
       hr         heap r       postgres    false    12            �            1259    25849    employee_profile_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employee_profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE hr.employee_profile_profile_id_seq;
       hr               postgres    false    12    237            �           0    0    employee_profile_profile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE hr.employee_profile_profile_id_seq OWNED BY hr.employee_profile.profile_id;
          hr               postgres    false    236            �            1259    25840 	   employees    TABLE     z  CREATE TABLE hr.employees (
    emp_id integer NOT NULL,
    role_id integer NOT NULL,
    department_id integer NOT NULL,
    name character varying(256) NOT NULL,
    email character varying(1024) NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    password text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.employees;
       hr         heap r       postgres    false    12            �            1259    25839    employees_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hr.employees_emp_id_seq;
       hr               postgres    false    12    235            �           0    0    employees_emp_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hr.employees_emp_id_seq OWNED BY hr.employees.emp_id;
          hr               postgres    false    234            �            1259    25859 
   incentives    TABLE     �  CREATE TABLE hr.incentives (
    sal_id integer NOT NULL,
    emp_id integer NOT NULL,
    basic double precision NOT NULL,
    hra double precision DEFAULT 0 NOT NULL,
    da double precision DEFAULT 0 NOT NULL,
    pa double precision DEFAULT 0 NOT NULL,
    pf double precision DEFAULT 0 NOT NULL,
    other_allowence double precision DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.incentives;
       hr         heap r       postgres    false    12            �            1259    25858    incentives_sal_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.incentives_sal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.incentives_sal_id_seq;
       hr               postgres    false    12    239            �           0    0    incentives_sal_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.incentives_sal_id_seq OWNED BY hr.incentives.sal_id;
          hr               postgres    false    238            �            1259    25878    leaves    TABLE       CREATE TABLE hr.leaves (
    leave_id integer NOT NULL,
    emp_id integer NOT NULL,
    casual_leave integer DEFAULT 0 NOT NULL,
    earned_leave integer DEFAULT 0 NOT NULL,
    sick_leave integer DEFAULT 0 NOT NULL,
    short_leave integer DEFAULT 0 NOT NULL
);
    DROP TABLE hr.leaves;
       hr         heap r       postgres    false    12            �            1259    25877    leaves_leave_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.leaves_leave_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE hr.leaves_leave_id_seq;
       hr               postgres    false    243    12            �           0    0    leaves_leave_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE hr.leaves_leave_id_seq OWNED BY hr.leaves.leave_id;
          hr               postgres    false    242            �            1259    25923    dish_category    TABLE     ]   CREATE TABLE orders.dish_category (
    dish_cat integer NOT NULL,
    name text NOT NULL
);
 !   DROP TABLE orders.dish_category;
       orders         heap r       postgres    false    7            �            1259    25922    dish_category_dish_cat_seq    SEQUENCE     �   CREATE SEQUENCE orders.dish_category_dish_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE orders.dish_category_dish_cat_seq;
       orders               postgres    false    251    7            �           0    0    dish_category_dish_cat_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE orders.dish_category_dish_cat_seq OWNED BY orders.dish_category.dish_cat;
          orders               postgres    false    250            �            1259    25914 
   dish_types    TABLE     h   CREATE TABLE orders.dish_types (
    dish_type_id integer NOT NULL,
    dish_type_name text NOT NULL
);
    DROP TABLE orders.dish_types;
       orders         heap r       postgres    false    7            �            1259    25913    dish_types_dish_type_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.dish_types_dish_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE orders.dish_types_dish_type_id_seq;
       orders               postgres    false    7    249            �           0    0    dish_types_dish_type_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE orders.dish_types_dish_type_id_seq OWNED BY orders.dish_types.dish_type_id;
          orders               postgres    false    248            �            1259    25905    menus    TABLE     �  CREATE TABLE orders.menus (
    id integer NOT NULL,
    res_id integer NOT NULL,
    menu_type integer DEFAULT 0 NOT NULL,
    dish_type_id integer NOT NULL,
    dish_cat_id integer NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    media_url text[],
    amount double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    menu_id integer NOT NULL
);
    DROP TABLE orders.menus;
       orders         heap r       postgres    false    7            �            1259    25904    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE orders.menus_id_seq;
       orders               postgres    false    7    247            �           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE orders.menus_id_seq OWNED BY orders.menus.id;
          orders               postgres    false    246            �            1259    25829    orders_master    TABLE     �  CREATE TABLE orders.orders_master (
    oid integer NOT NULL,
    res_id integer NOT NULL,
    station_id integer NOT NULL,
    cid integer NOT NULL,
    menu_items jsonb NOT NULL,
    mode integer DEFAULT 0 NOT NULL,
    amount double precision NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 !   DROP TABLE orders.orders_master;
       orders         heap r       postgres    false    7            �            1259    25828    orders_master_oid_seq    SEQUENCE     �   CREATE SEQUENCE orders.orders_master_oid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE orders.orders_master_oid_seq;
       orders               postgres    false    233    7            �           0    0    orders_master_oid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE orders.orders_master_oid_seq OWNED BY orders.orders_master.oid;
          orders               postgres    false    232            �            1259    33587    payments_master    TABLE     �   CREATE TABLE payments.payments_master (
    pay_id integer NOT NULL,
    transaction_payload text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 %   DROP TABLE payments.payments_master;
       payments         heap r       postgres    false    13            �            1259    33586    payments_master_pay_id_seq    SEQUENCE     �   CREATE SEQUENCE payments.payments_master_pay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE payments.payments_master_pay_id_seq;
       payments               postgres    false    253    13            �           0    0    payments_master_pay_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE payments.payments_master_pay_id_seq OWNED BY payments.payments_master.pay_id;
          payments               postgres    false    252            �            1259    33596    refunds    TABLE     O  CREATE TABLE payments.refunds (
    refund_id integer NOT NULL,
    cid integer NOT NULL,
    oid integer NOT NULL,
    res_id integer NOT NULL,
    refundable_amount double precision NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE payments.refunds;
       payments         heap r       postgres    false    13            �            1259    33595    refunds_refund_id_seq    SEQUENCE     �   CREATE SEQUENCE payments.refunds_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE payments.refunds_refund_id_seq;
       payments               postgres    false    13    255            �           0    0    refunds_refund_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE payments.refunds_refund_id_seq OWNED BY payments.refunds.refund_id;
          payments               postgres    false    254                       1259    33604    queries_master    TABLE     e  CREATE TABLE queries.queries_master (
    qid integer NOT NULL,
    query text NOT NULL,
    cid integer NOT NULL,
    res_id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    media_url text[] NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 #   DROP TABLE queries.queries_master;
       queries         heap r       postgres    false    10                        1259    33603    queries_master_qid_seq    SEQUENCE     �   CREATE SEQUENCE queries.queries_master_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE queries.queries_master_qid_seq;
       queries               postgres    false    257    10            �           0    0    queries_master_qid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE queries.queries_master_qid_seq OWNED BY queries.queries_master.qid;
          queries               postgres    false    256            �            1259    25797    restraunt_master    TABLE     �  CREATE TABLE restraunts.restraunt_master (
    res_id integer NOT NULL,
    name character varying(256) NOT NULL,
    location text NOT NULL,
    opening_time time without time zone NOT NULL,
    closing_time time without time zone NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    verified integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    operating_days boolean[] NOT NULL
);
 (   DROP TABLE restraunts.restraunt_master;
    
   restraunts         heap r       postgres    false    6            �            1259    25796    restraunt_master_res_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.restraunt_master_res_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE restraunts.restraunt_master_res_id_seq;
    
   restraunts               postgres    false    6    227            �           0    0    restraunt_master_res_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE restraunts.restraunt_master_res_id_seq OWNED BY restraunts.restraunt_master.res_id;
       
   restraunts               postgres    false    226            �            1259    25808    reviews    TABLE       CREATE TABLE restraunts.reviews (
    rev_id integer NOT NULL,
    res_id integer NOT NULL,
    rating double precision NOT NULL,
    review text,
    media_urls text[],
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE restraunts.reviews;
    
   restraunts         heap r       postgres    false    6            �            1259    25807    reviews_rev_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.reviews_rev_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE restraunts.reviews_rev_id_seq;
    
   restraunts               postgres    false    6    229            �           0    0    reviews_rev_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE restraunts.reviews_rev_id_seq OWNED BY restraunts.reviews.rev_id;
       
   restraunts               postgres    false    228            �            1259    25816    wallets    TABLE     #  CREATE TABLE restraunts.wallets (
    wallet_id integer NOT NULL,
    res_id integer NOT NULL,
    current_amount double precision DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    udated_at timestamp with time zone NOT NULL
);
    DROP TABLE restraunts.wallets;
    
   restraunts         heap r       postgres    false    6            �            1259    25819    wallets_wallet_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.wallets_wallet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE restraunts.wallets_wallet_id_seq;
    
   restraunts               postgres    false    6    230            �           0    0    wallets_wallet_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE restraunts.wallets_wallet_id_seq OWNED BY restraunts.wallets.wallet_id;
       
   restraunts               postgres    false    231            	           1259    41842    stations_master    TABLE       CREATE TABLE stations.stations_master (
    station_id integer NOT NULL,
    name character varying(1024) NOT NULL,
    code integer,
    location character varying(2048) NOT NULL,
    loc_lat double precision NOT NULL,
    loc_long double precision NOT NULL,
    helpline character varying(128),
    media_url text,
    zone_id integer NOT NULL,
    description text NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 %   DROP TABLE stations.stations_master;
       stations         heap r       postgres    false    9                       1259    41841    stations_master_station_id_seq    SEQUENCE     �   CREATE SEQUENCE stations.stations_master_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE stations.stations_master_station_id_seq;
       stations               postgres    false    9    265            �           0    0    stations_master_station_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE stations.stations_master_station_id_seq OWNED BY stations.stations_master.station_id;
          stations               postgres    false    264                       1259    41851    zones    TABLE     �   CREATE TABLE stations.zones (
    zone_id integer NOT NULL,
    name character varying(256) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE stations.zones;
       stations         heap r       postgres    false    9            
           1259    41850    zones_zone_id_seq    SEQUENCE     �   CREATE SEQUENCE stations.zones_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE stations.zones_zone_id_seq;
       stations               postgres    false    267    9            �           0    0    zones_zone_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE stations.zones_zone_id_seq OWNED BY stations.zones.zone_id;
          stations               postgres    false    266                       1259    33639    users_master    TABLE     �  CREATE TABLE users.users_master (
    user_id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    email character varying(1024) NOT NULL,
    password text NOT NULL,
    profile_picture text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    role_id integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL
);
    DROP TABLE users.users_master;
       users         heap r       postgres    false    8                       1259    33638    users_master_user_id_seq    SEQUENCE     �   CREATE SEQUENCE users.users_master_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE users.users_master_user_id_seq;
       users               postgres    false    263    8            �           0    0    users_master_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE users.users_master_user_id_seq OWNED BY users.users_master.user_id;
          users               postgres    false    262            �           2604    33621    permissions perm_id    DEFAULT     v   ALTER TABLE ONLY auth.permissions ALTER COLUMN perm_id SET DEFAULT nextval('auth.permissions_perm_id_seq'::regclass);
 @   ALTER TABLE auth.permissions ALTER COLUMN perm_id DROP DEFAULT;
       auth               postgres    false    259    258    259            �           2604    33633    roles role_id    DEFAULT     j   ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq'::regclass);
 :   ALTER TABLE auth.roles ALTER COLUMN role_id DROP DEFAULT;
       auth               postgres    false    260    261    261            �           2604    25874    attendence att_id    DEFAULT     n   ALTER TABLE ONLY hr.attendence ALTER COLUMN att_id SET DEFAULT nextval('hr.attendence_att_id_seq'::regclass);
 <   ALTER TABLE hr.attendence ALTER COLUMN att_id DROP DEFAULT;
       hr               postgres    false    240    241    241            �           2604    25900    departments dept_id    DEFAULT     r   ALTER TABLE ONLY hr.departments ALTER COLUMN dept_id SET DEFAULT nextval('hr.departments_dept_id_seq'::regclass);
 >   ALTER TABLE hr.departments ALTER COLUMN dept_id DROP DEFAULT;
       hr               postgres    false    244    245    245            �           2604    25853    employee_profile profile_id    DEFAULT     �   ALTER TABLE ONLY hr.employee_profile ALTER COLUMN profile_id SET DEFAULT nextval('hr.employee_profile_profile_id_seq'::regclass);
 F   ALTER TABLE hr.employee_profile ALTER COLUMN profile_id DROP DEFAULT;
       hr               postgres    false    236    237    237            �           2604    25843    employees emp_id    DEFAULT     l   ALTER TABLE ONLY hr.employees ALTER COLUMN emp_id SET DEFAULT nextval('hr.employees_emp_id_seq'::regclass);
 ;   ALTER TABLE hr.employees ALTER COLUMN emp_id DROP DEFAULT;
       hr               postgres    false    235    234    235            �           2604    25862    incentives sal_id    DEFAULT     n   ALTER TABLE ONLY hr.incentives ALTER COLUMN sal_id SET DEFAULT nextval('hr.incentives_sal_id_seq'::regclass);
 <   ALTER TABLE hr.incentives ALTER COLUMN sal_id DROP DEFAULT;
       hr               postgres    false    238    239    239            �           2604    25881    leaves leave_id    DEFAULT     j   ALTER TABLE ONLY hr.leaves ALTER COLUMN leave_id SET DEFAULT nextval('hr.leaves_leave_id_seq'::regclass);
 :   ALTER TABLE hr.leaves ALTER COLUMN leave_id DROP DEFAULT;
       hr               postgres    false    242    243    243            �           2604    25926    dish_category dish_cat    DEFAULT     �   ALTER TABLE ONLY orders.dish_category ALTER COLUMN dish_cat SET DEFAULT nextval('orders.dish_category_dish_cat_seq'::regclass);
 E   ALTER TABLE orders.dish_category ALTER COLUMN dish_cat DROP DEFAULT;
       orders               postgres    false    251    250    251            �           2604    25917    dish_types dish_type_id    DEFAULT     �   ALTER TABLE ONLY orders.dish_types ALTER COLUMN dish_type_id SET DEFAULT nextval('orders.dish_types_dish_type_id_seq'::regclass);
 F   ALTER TABLE orders.dish_types ALTER COLUMN dish_type_id DROP DEFAULT;
       orders               postgres    false    248    249    249            �           2604    25908    menus id    DEFAULT     d   ALTER TABLE ONLY orders.menus ALTER COLUMN id SET DEFAULT nextval('orders.menus_id_seq'::regclass);
 7   ALTER TABLE orders.menus ALTER COLUMN id DROP DEFAULT;
       orders               postgres    false    247    246    247            �           2604    25832    orders_master oid    DEFAULT     v   ALTER TABLE ONLY orders.orders_master ALTER COLUMN oid SET DEFAULT nextval('orders.orders_master_oid_seq'::regclass);
 @   ALTER TABLE orders.orders_master ALTER COLUMN oid DROP DEFAULT;
       orders               postgres    false    233    232    233            �           2604    33590    payments_master pay_id    DEFAULT     �   ALTER TABLE ONLY payments.payments_master ALTER COLUMN pay_id SET DEFAULT nextval('payments.payments_master_pay_id_seq'::regclass);
 G   ALTER TABLE payments.payments_master ALTER COLUMN pay_id DROP DEFAULT;
       payments               postgres    false    252    253    253            �           2604    33599    refunds refund_id    DEFAULT     z   ALTER TABLE ONLY payments.refunds ALTER COLUMN refund_id SET DEFAULT nextval('payments.refunds_refund_id_seq'::regclass);
 B   ALTER TABLE payments.refunds ALTER COLUMN refund_id DROP DEFAULT;
       payments               postgres    false    254    255    255            �           2604    33607    queries_master qid    DEFAULT     z   ALTER TABLE ONLY queries.queries_master ALTER COLUMN qid SET DEFAULT nextval('queries.queries_master_qid_seq'::regclass);
 B   ALTER TABLE queries.queries_master ALTER COLUMN qid DROP DEFAULT;
       queries               postgres    false    256    257    257            �           2604    25800    restraunt_master res_id    DEFAULT     �   ALTER TABLE ONLY restraunts.restraunt_master ALTER COLUMN res_id SET DEFAULT nextval('restraunts.restraunt_master_res_id_seq'::regclass);
 J   ALTER TABLE restraunts.restraunt_master ALTER COLUMN res_id DROP DEFAULT;
    
   restraunts               postgres    false    227    226    227            �           2604    25811    reviews rev_id    DEFAULT     x   ALTER TABLE ONLY restraunts.reviews ALTER COLUMN rev_id SET DEFAULT nextval('restraunts.reviews_rev_id_seq'::regclass);
 A   ALTER TABLE restraunts.reviews ALTER COLUMN rev_id DROP DEFAULT;
    
   restraunts               postgres    false    229    228    229            �           2604    25820    wallets wallet_id    DEFAULT     ~   ALTER TABLE ONLY restraunts.wallets ALTER COLUMN wallet_id SET DEFAULT nextval('restraunts.wallets_wallet_id_seq'::regclass);
 D   ALTER TABLE restraunts.wallets ALTER COLUMN wallet_id DROP DEFAULT;
    
   restraunts               postgres    false    231    230            �           2604    41845    stations_master station_id    DEFAULT     �   ALTER TABLE ONLY stations.stations_master ALTER COLUMN station_id SET DEFAULT nextval('stations.stations_master_station_id_seq'::regclass);
 K   ALTER TABLE stations.stations_master ALTER COLUMN station_id DROP DEFAULT;
       stations               postgres    false    265    264    265            �           2604    41854    zones zone_id    DEFAULT     r   ALTER TABLE ONLY stations.zones ALTER COLUMN zone_id SET DEFAULT nextval('stations.zones_zone_id_seq'::regclass);
 >   ALTER TABLE stations.zones ALTER COLUMN zone_id DROP DEFAULT;
       stations               postgres    false    266    267    267            �           2604    33642    users_master user_id    DEFAULT     z   ALTER TABLE ONLY users.users_master ALTER COLUMN user_id SET DEFAULT nextval('users.users_master_user_id_seq'::regclass);
 B   ALTER TABLE users.users_master ALTER COLUMN user_id DROP DEFAULT;
       users               postgres    false    263    262    263            �          0    33618    permissions 
   TABLE DATA           ^   COPY auth.permissions (perm_id, role_id, permission, read, write, update, delete) FROM stdin;
    auth               postgres    false    259   ��       �          0    33630    roles 
   TABLE DATA           [   COPY auth.roles (role_id, name, parent_role_id, color, created_at, updated_at) FROM stdin;
    auth               postgres    false    261   ^�       �          0    25871 
   attendence 
   TABLE DATA           ]   COPY hr.attendence (att_id, emp_id, check_in, check_out, created_at, updated_at) FROM stdin;
    hr               postgres    false    241   ��       �          0    25897    departments 
   TABLE DATA           X   COPY hr.departments (dept_id, name, parent_dept_id, created_at, updated_at) FROM stdin;
    hr               postgres    false    245   ��       �          0    25850    employee_profile 
   TABLE DATA           q   COPY hr.employee_profile (profile_id, emp_id, profile_url, dob, active_from, created_at, updated_at) FROM stdin;
    hr               postgres    false    237   �       �          0    25840 	   employees 
   TABLE DATA           v   COPY hr.employees (emp_id, role_id, department_id, name, email, status, password, created_at, updated_at) FROM stdin;
    hr               postgres    false    235   *�       �          0    25859 
   incentives 
   TABLE DATA           q   COPY hr.incentives (sal_id, emp_id, basic, hra, da, pa, pf, other_allowence, created_at, updated_at) FROM stdin;
    hr               postgres    false    239   G�       �          0    25878    leaves 
   TABLE DATA           c   COPY hr.leaves (leave_id, emp_id, casual_leave, earned_leave, sick_leave, short_leave) FROM stdin;
    hr               postgres    false    243   d�       �          0    25923    dish_category 
   TABLE DATA           7   COPY orders.dish_category (dish_cat, name) FROM stdin;
    orders               postgres    false    251   ��       �          0    25914 
   dish_types 
   TABLE DATA           B   COPY orders.dish_types (dish_type_id, dish_type_name) FROM stdin;
    orders               postgres    false    249   ��       �          0    25905    menus 
   TABLE DATA           �   COPY orders.menus (id, res_id, menu_type, dish_type_id, dish_cat_id, status, media_url, amount, created_at, updated_at, menu_id) FROM stdin;
    orders               postgres    false    247   ��       �          0    25829    orders_master 
   TABLE DATA              COPY orders.orders_master (oid, res_id, station_id, cid, menu_items, mode, amount, status, created_at, updated_at) FROM stdin;
    orders               postgres    false    233   ��       �          0    33587    payments_master 
   TABLE DATA           `   COPY payments.payments_master (pay_id, transaction_payload, created_at, updated_at) FROM stdin;
    payments               postgres    false    253   [�       �          0    33596    refunds 
   TABLE DATA           s   COPY payments.refunds (refund_id, cid, oid, res_id, refundable_amount, status, created_at, updated_at) FROM stdin;
    payments               postgres    false    255   x�       �          0    33604    queries_master 
   TABLE DATA           w   COPY queries.queries_master (qid, query, cid, res_id, priority, status, media_url, created_at, updated_at) FROM stdin;
    queries               postgres    false    257   ��       �          0    25797    restraunt_master 
   TABLE DATA           �   COPY restraunts.restraunt_master (res_id, name, location, opening_time, closing_time, status, verified, created_at, updated_at, operating_days) FROM stdin;
 
   restraunts               postgres    false    227   ��       �          0    25808    reviews 
   TABLE DATA           i   COPY restraunts.reviews (rev_id, res_id, rating, review, media_urls, created_at, updated_at) FROM stdin;
 
   restraunts               postgres    false    229   @�       �          0    25816    wallets 
   TABLE DATA           g   COPY restraunts.wallets (wallet_id, res_id, current_amount, status, created_at, udated_at) FROM stdin;
 
   restraunts               postgres    false    230   ]�       �          0    41842    stations_master 
   TABLE DATA           �   COPY stations.stations_master (station_id, name, code, location, loc_lat, loc_long, helpline, media_url, zone_id, description, status, created_at, updated_at) FROM stdin;
    stations               postgres    false    265   z�       �          0    41851    zones 
   TABLE DATA           H   COPY stations.zones (zone_id, name, created_at, updated_at) FROM stdin;
    stations               postgres    false    267   ��       �          0    33639    users_master 
   TABLE DATA           �   COPY users.users_master (user_id, first_name, last_name, email, password, profile_picture, created_at, updated_at, role_id, status) FROM stdin;
    users               postgres    false    263   E�       �           0    0    permissions_perm_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('auth.permissions_perm_id_seq', 7, true);
          auth               postgres    false    258            �           0    0    roles_role_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('auth.roles_role_id_seq', 2, true);
          auth               postgres    false    260            �           0    0    attendence_att_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hr.attendence_att_id_seq', 1, false);
          hr               postgres    false    240            �           0    0    departments_dept_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('hr.departments_dept_id_seq', 1, false);
          hr               postgres    false    244            �           0    0    employee_profile_profile_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('hr.employee_profile_profile_id_seq', 1, false);
          hr               postgres    false    236            �           0    0    employees_emp_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hr.employees_emp_id_seq', 1, false);
          hr               postgres    false    234            �           0    0    incentives_sal_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hr.incentives_sal_id_seq', 1, false);
          hr               postgres    false    238            �           0    0    leaves_leave_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('hr.leaves_leave_id_seq', 1, false);
          hr               postgres    false    242                        0    0    dish_category_dish_cat_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('orders.dish_category_dish_cat_seq', 1, false);
          orders               postgres    false    250                       0    0    dish_types_dish_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('orders.dish_types_dish_type_id_seq', 1, false);
          orders               postgres    false    248                       0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('orders.menus_id_seq', 1, true);
          orders               postgres    false    246                       0    0    orders_master_oid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('orders.orders_master_oid_seq', 1, true);
          orders               postgres    false    232                       0    0    payments_master_pay_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('payments.payments_master_pay_id_seq', 1, false);
          payments               postgres    false    252                       0    0    refunds_refund_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('payments.refunds_refund_id_seq', 1, false);
          payments               postgres    false    254                       0    0    queries_master_qid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('queries.queries_master_qid_seq', 1, false);
          queries               postgres    false    256                       0    0    restraunt_master_res_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('restraunts.restraunt_master_res_id_seq', 6, true);
       
   restraunts               postgres    false    226                       0    0    reviews_rev_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('restraunts.reviews_rev_id_seq', 1, false);
       
   restraunts               postgres    false    228            	           0    0    wallets_wallet_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('restraunts.wallets_wallet_id_seq', 1, false);
       
   restraunts               postgres    false    231            
           0    0    stations_master_station_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('stations.stations_master_station_id_seq', 3, true);
          stations               postgres    false    264                       0    0    zones_zone_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('stations.zones_zone_id_seq', 2, true);
          stations               postgres    false    266                       0    0    users_master_user_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('users.users_master_user_id_seq', 2, true);
          users               postgres    false    262                       2606    33627    permissions permissions_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (perm_id);
 D   ALTER TABLE ONLY auth.permissions DROP CONSTRAINT permissions_pkey;
       auth                 postgres    false    259                       2606    33637    roles roles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY auth.roles DROP CONSTRAINT roles_pkey;
       auth                 postgres    false    261                       2606    25876    attendence attendence_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY hr.attendence
    ADD CONSTRAINT attendence_pkey PRIMARY KEY (att_id);
 @   ALTER TABLE ONLY hr.attendence DROP CONSTRAINT attendence_pkey;
       hr                 postgres    false    241                       2606    25903    departments departments_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id, name);
 B   ALTER TABLE ONLY hr.departments DROP CONSTRAINT departments_pkey;
       hr                 postgres    false    245    245                       2606    25857 &   employee_profile employee_profile_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hr.employee_profile
    ADD CONSTRAINT employee_profile_pkey PRIMARY KEY (profile_id);
 L   ALTER TABLE ONLY hr.employee_profile DROP CONSTRAINT employee_profile_pkey;
       hr                 postgres    false    237                       2606    25848    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);
 >   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_pkey;
       hr                 postgres    false    235                       2606    25869    incentives incentives_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY hr.incentives
    ADD CONSTRAINT incentives_pkey PRIMARY KEY (sal_id);
 @   ALTER TABLE ONLY hr.incentives DROP CONSTRAINT incentives_pkey;
       hr                 postgres    false    239            	           2606    25887    leaves leaves_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hr.leaves
    ADD CONSTRAINT leaves_pkey PRIMARY KEY (leave_id);
 8   ALTER TABLE ONLY hr.leaves DROP CONSTRAINT leaves_pkey;
       hr                 postgres    false    243                       2606    25930     dish_category dish_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY orders.dish_category
    ADD CONSTRAINT dish_category_pkey PRIMARY KEY (dish_cat);
 J   ALTER TABLE ONLY orders.dish_category DROP CONSTRAINT dish_category_pkey;
       orders                 postgres    false    251                       2606    25921    dish_types dish_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY orders.dish_types
    ADD CONSTRAINT dish_types_pkey PRIMARY KEY (dish_type_id);
 D   ALTER TABLE ONLY orders.dish_types DROP CONSTRAINT dish_types_pkey;
       orders                 postgres    false    249                       2606    33615    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY orders.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY orders.menus DROP CONSTRAINT menus_pkey;
       orders                 postgres    false    247            �           2606    25838     orders_master orders_master_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY orders.orders_master
    ADD CONSTRAINT orders_master_pkey PRIMARY KEY (oid);
 J   ALTER TABLE ONLY orders.orders_master DROP CONSTRAINT orders_master_pkey;
       orders                 postgres    false    233                       2606    33594 $   payments_master payments_master_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY payments.payments_master
    ADD CONSTRAINT payments_master_pkey PRIMARY KEY (pay_id);
 P   ALTER TABLE ONLY payments.payments_master DROP CONSTRAINT payments_master_pkey;
       payments                 postgres    false    253                       2606    33602    refunds refunds_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY payments.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (refund_id);
 @   ALTER TABLE ONLY payments.refunds DROP CONSTRAINT refunds_pkey;
       payments                 postgres    false    255                       2606    33613 "   queries_master queries_master_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY queries.queries_master
    ADD CONSTRAINT queries_master_pkey PRIMARY KEY (qid);
 M   ALTER TABLE ONLY queries.queries_master DROP CONSTRAINT queries_master_pkey;
       queries                 postgres    false    257            �           2606    25804 &   restraunt_master restraunt_master_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY restraunts.restraunt_master
    ADD CONSTRAINT restraunt_master_pkey PRIMARY KEY (res_id);
 T   ALTER TABLE ONLY restraunts.restraunt_master DROP CONSTRAINT restraunt_master_pkey;
    
   restraunts                 postgres    false    227            �           2606    25815    reviews reviews_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY restraunts.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (rev_id);
 B   ALTER TABLE ONLY restraunts.reviews DROP CONSTRAINT reviews_pkey;
    
   restraunts                 postgres    false    229            �           2606    25827    wallets wallets_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY restraunts.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (wallet_id);
 B   ALTER TABLE ONLY restraunts.wallets DROP CONSTRAINT wallets_pkey;
    
   restraunts                 postgres    false    230                       2606    41849 $   stations_master stations_master_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY stations.stations_master
    ADD CONSTRAINT stations_master_pkey PRIMARY KEY (station_id);
 P   ALTER TABLE ONLY stations.stations_master DROP CONSTRAINT stations_master_pkey;
       stations                 postgres    false    265            !           2606    41856    zones zones_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY stations.zones
    ADD CONSTRAINT zones_pkey PRIMARY KEY (zone_id);
 <   ALTER TABLE ONLY stations.zones DROP CONSTRAINT zones_pkey;
       stations                 postgres    false    267                       2606    33646    users_master users_master_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY users.users_master
    ADD CONSTRAINT users_master_pkey PRIMARY KEY (user_id);
 G   ALTER TABLE ONLY users.users_master DROP CONSTRAINT users_master_pkey;
       users                 postgres    false    263            �   Y   x�3�4�,H-��,.���+�@Ѐ�H���D���diqjB��&���(�4�!l�i���H�$� �`�e$���l����� �N�      �   e   x�3�.-H-rL����4�TNK30HK�4202�50�52U00�26�2��360765�60�26 ��ˈb�!�L��(Z�����R���������p��qqq �@%$      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   2   x�3�4B#0Y]�id` �F���@�`hjel`e`�m b������� a�      �   N   x�3�4�4�4�V*��M��,I�U�R�p�S+�j9�8��,-�*��Lu�H��������@� ��-����� ��+      �      x������ � �      �      x������ � �      �      x������ � �      �   ~   x�3�ȬJ-�L�442U�M��S.)JM-�Q���LI�4��20 "N##(ÀӐ����T���M��A�� \��@�� E�:MKj��8��sK�6c����fCN�l.A�9��+F��� �95      �      x������ � �      �      x������ � �      �   K  x����n� E��+ا�(�&�>��A7�F6�_�����gѨUg�4w��g��W��9 �Ɩ���B L!��ȑ�`�)����JSP�0L�yhz[����+�E�X�%�}��݄C=�'\�B�CZ�pIG뛳��S���z*�dF����6@�Է�n*F?,r�a2%,%n(5T#�E������.��ɖ�e�ep��R�<��.n�@B �Q|8��5=�T����=��O�h)��S�LCRDn@<��˯@Gׅ�6�k��V��)��y�~�Vy&gT�����a�O�Y�=s�↫����Y�#A�����$�'��]      �   `   x�3��MM-*-Q���K�4202�50�50Q00�24�25�373450�60�26 ��ˈ�%5'#�8S#�R+S=Ccst� ��VF@�`�\1z\\\ �I �      �   �  x��P�j�@|��"&/�ދv%�`RŊ�4R�:uB��������JT���	J_J��a��Ak��Fɔ(���dB��4�8�"8�ٸ��,���Mr�Њ�`~���u������}x�.�<~����2��M��L����B�>껴��J��>� =�-� ��WÊb:��u.]�p	�'x
��� M��:�1g}�Y;�ѿ�`Kzp��D��	H�n���A���S� ��r�űy��t�n��$e�6W"N�7�I�Q�<����a\�ۤt;傦�3��Y"�F��ᵮgoEU�����n @�M(^��ԺJW�8�E��a��]��>�v���;{���Q���|�������탵W�rS�W������d����     