PGDMP          
    	        }            olf_staging    17.2 (Debian 17.2-1.pgdg120+1)    17.2 �    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            +           1262    25220    olf_staging    DATABASE     v   CREATE DATABASE olf_staging WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE olf_staging;
                     postgres    false                        2615    25221    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     postgres    false                        2615    25222    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
                     postgres    false                        2615    25223    orders    SCHEMA        CREATE SCHEMA orders;
    DROP SCHEMA orders;
                     postgres    false            	            2615    25224    payments    SCHEMA        CREATE SCHEMA payments;
    DROP SCHEMA payments;
                     postgres    false            
            2615    25225    queries    SCHEMA        CREATE SCHEMA queries;
    DROP SCHEMA queries;
                     postgres    false                        2615    25226 
   restraunts    SCHEMA        CREATE SCHEMA restraunts;
    DROP SCHEMA restraunts;
                     postgres    false                        2615    25227    stations    SCHEMA        CREATE SCHEMA stations;
    DROP SCHEMA stations;
                     postgres    false                        2615    25228 	   templates    SCHEMA        CREATE SCHEMA templates;
    DROP SCHEMA templates;
                     postgres    false                        2615    25229    users    SCHEMA        CREATE SCHEMA users;
    DROP SCHEMA users;
                     postgres    false            �            1259    25230    permissions    TABLE       CREATE TABLE auth.permissions (
    perm_id integer NOT NULL,
    role_id integer NOT NULL,
    permission character varying(128) NOT NULL,
    read integer DEFAULT 0,
    write integer DEFAULT 0,
    update integer DEFAULT 0,
    delete integer DEFAULT 0
);
    DROP TABLE auth.permissions;
       auth         heap r       postgres    false    6            �            1259    25237    permissions_perm_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.permissions_perm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE auth.permissions_perm_id_seq;
       auth               postgres    false    6    226            ,           0    0    permissions_perm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE auth.permissions_perm_id_seq OWNED BY auth.permissions.perm_id;
          auth               postgres    false    227            �            1259    25238    roles    TABLE     =  CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying(128) NOT NULL,
    parent_role_id integer DEFAULT 0 NOT NULL,
    color character varying(64) DEFAULT '#ffffff'::character varying,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE auth.roles;
       auth         heap r       postgres    false    6            �            1259    25243    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE auth.roles_role_id_seq;
       auth               postgres    false    228    6            -           0    0    roles_role_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth.roles_role_id_seq OWNED BY auth.roles.role_id;
          auth               postgres    false    229            �            1259    25244 
   attendence    TABLE       CREATE TABLE hr.attendence (
    att_id integer NOT NULL,
    emp_id integer NOT NULL,
    check_in time without time zone NOT NULL,
    check_out time without time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.attendence;
       hr         heap r       postgres    false    7            �            1259    25247    attendence_att_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.attendence_att_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.attendence_att_id_seq;
       hr               postgres    false    7    230            .           0    0    attendence_att_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.attendence_att_id_seq OWNED BY hr.attendence.att_id;
          hr               postgres    false    231            �            1259    25248    departments    TABLE     �   CREATE TABLE hr.departments (
    dept_id integer NOT NULL,
    name character varying(256) NOT NULL,
    parent_dept_id integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE hr.departments;
       hr         heap r       postgres    false    7            �            1259    25252    departments_dept_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.departments_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hr.departments_dept_id_seq;
       hr               postgres    false    7    232            /           0    0    departments_dept_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hr.departments_dept_id_seq OWNED BY hr.departments.dept_id;
          hr               postgres    false    233            �            1259    25253    employee_profile    TABLE       CREATE TABLE hr.employee_profile (
    profile_id integer NOT NULL,
    emp_id integer NOT NULL,
    profile_url text,
    dob date NOT NULL,
    active_from date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
     DROP TABLE hr.employee_profile;
       hr         heap r       postgres    false    7            �            1259    25258    employee_profile_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employee_profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE hr.employee_profile_profile_id_seq;
       hr               postgres    false    234    7            0           0    0    employee_profile_profile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE hr.employee_profile_profile_id_seq OWNED BY hr.employee_profile.profile_id;
          hr               postgres    false    235            �            1259    25259 	   employees    TABLE     z  CREATE TABLE hr.employees (
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
       hr         heap r       postgres    false    7            �            1259    25265    employees_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hr.employees_emp_id_seq;
       hr               postgres    false    7    236            1           0    0    employees_emp_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hr.employees_emp_id_seq OWNED BY hr.employees.emp_id;
          hr               postgres    false    237            �            1259    25266 
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
       hr         heap r       postgres    false    7            �            1259    25274    incentives_sal_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.incentives_sal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.incentives_sal_id_seq;
       hr               postgres    false    238    7            2           0    0    incentives_sal_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.incentives_sal_id_seq OWNED BY hr.incentives.sal_id;
          hr               postgres    false    239            �            1259    25275    leaves    TABLE       CREATE TABLE hr.leaves (
    leave_id integer NOT NULL,
    emp_id integer NOT NULL,
    casual_leave integer DEFAULT 0 NOT NULL,
    earned_leave integer DEFAULT 0 NOT NULL,
    sick_leave integer DEFAULT 0 NOT NULL,
    short_leave integer DEFAULT 0 NOT NULL
);
    DROP TABLE hr.leaves;
       hr         heap r       postgres    false    7            �            1259    25282    leaves_leave_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.leaves_leave_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE hr.leaves_leave_id_seq;
       hr               postgres    false    7    240            3           0    0    leaves_leave_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE hr.leaves_leave_id_seq OWNED BY hr.leaves.leave_id;
          hr               postgres    false    241            �            1259    25283    dish_category    TABLE     ]   CREATE TABLE orders.dish_category (
    dish_cat integer NOT NULL,
    name text NOT NULL
);
 !   DROP TABLE orders.dish_category;
       orders         heap r       postgres    false    8            �            1259    25288    dish_category_dish_cat_seq    SEQUENCE     �   CREATE SEQUENCE orders.dish_category_dish_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE orders.dish_category_dish_cat_seq;
       orders               postgres    false    242    8            4           0    0    dish_category_dish_cat_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE orders.dish_category_dish_cat_seq OWNED BY orders.dish_category.dish_cat;
          orders               postgres    false    243            �            1259    25289 
   dish_types    TABLE     h   CREATE TABLE orders.dish_types (
    dish_type_id integer NOT NULL,
    dish_type_name text NOT NULL
);
    DROP TABLE orders.dish_types;
       orders         heap r       postgres    false    8            �            1259    25294    dish_types_dish_type_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.dish_types_dish_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE orders.dish_types_dish_type_id_seq;
       orders               postgres    false    244    8            5           0    0    dish_types_dish_type_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE orders.dish_types_dish_type_id_seq OWNED BY orders.dish_types.dish_type_id;
          orders               postgres    false    245            �            1259    25295    menus    TABLE     �  CREATE TABLE orders.menus (
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
       orders         heap r       postgres    false    8            �            1259    25302    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE orders.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE orders.menus_id_seq;
       orders               postgres    false    8    246            6           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE orders.menus_id_seq OWNED BY orders.menus.id;
          orders               postgres    false    247            �            1259    25303    orders_master    TABLE     �  CREATE TABLE orders.orders_master (
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
       orders         heap r       postgres    false    8            �            1259    25310    orders_master_oid_seq    SEQUENCE     �   CREATE SEQUENCE orders.orders_master_oid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE orders.orders_master_oid_seq;
       orders               postgres    false    248    8            7           0    0    orders_master_oid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE orders.orders_master_oid_seq OWNED BY orders.orders_master.oid;
          orders               postgres    false    249            �            1259    25311    payments_master    TABLE     �   CREATE TABLE payments.payments_master (
    pay_id integer NOT NULL,
    transaction_payload text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 %   DROP TABLE payments.payments_master;
       payments         heap r       postgres    false    9            �            1259    25316    payments_master_pay_id_seq    SEQUENCE     �   CREATE SEQUENCE payments.payments_master_pay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE payments.payments_master_pay_id_seq;
       payments               postgres    false    9    250            8           0    0    payments_master_pay_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE payments.payments_master_pay_id_seq OWNED BY payments.payments_master.pay_id;
          payments               postgres    false    251            �            1259    25317    refunds    TABLE     O  CREATE TABLE payments.refunds (
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
       payments         heap r       postgres    false    9            �            1259    25321    refunds_refund_id_seq    SEQUENCE     �   CREATE SEQUENCE payments.refunds_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE payments.refunds_refund_id_seq;
       payments               postgres    false    252    9            9           0    0    refunds_refund_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE payments.refunds_refund_id_seq OWNED BY payments.refunds.refund_id;
          payments               postgres    false    253            �            1259    25322    queries_master    TABLE     e  CREATE TABLE queries.queries_master (
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
       queries         heap r       postgres    false    10            �            1259    25329    queries_master_qid_seq    SEQUENCE     �   CREATE SEQUENCE queries.queries_master_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE queries.queries_master_qid_seq;
       queries               postgres    false    254    10            :           0    0    queries_master_qid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE queries.queries_master_qid_seq OWNED BY queries.queries_master.qid;
          queries               postgres    false    255                        1259    25330    dish_cat    TABLE     u   CREATE TABLE restraunts.dish_cat (
    dish_cat_id integer NOT NULL,
    cat_name character varying(128) NOT NULL
);
     DROP TABLE restraunts.dish_cat;
    
   restraunts         heap r       postgres    false    11                       1259    25333    dish_cat_dish_cat_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.dish_cat_dish_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE restraunts.dish_cat_dish_cat_id_seq;
    
   restraunts               postgres    false    11    256            ;           0    0    dish_cat_dish_cat_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE restraunts.dish_cat_dish_cat_id_seq OWNED BY restraunts.dish_cat.dish_cat_id;
       
   restraunts               postgres    false    257                       1259    25334    dish_master    TABLE     �  CREATE TABLE restraunts.dish_master (
    dish_id integer NOT NULL,
    name character varying(256) NOT NULL,
    dish_type integer DEFAULT 1 NOT NULL,
    dish_cat_id integer NOT NULL,
    media_url text,
    stock integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    res_id integer NOT NULL,
    dish_price text[] NOT NULL
);
 #   DROP TABLE restraunts.dish_master;
    
   restraunts         heap r       postgres    false    11                       1259    25341    dish_master_dish_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.dish_master_dish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE restraunts.dish_master_dish_id_seq;
    
   restraunts               postgres    false    11    258            <           0    0    dish_master_dish_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE restraunts.dish_master_dish_id_seq OWNED BY restraunts.dish_master.dish_id;
       
   restraunts               postgres    false    259                       1259    25342    restraunt_master    TABLE       CREATE TABLE restraunts.restraunt_master (
    res_id integer NOT NULL,
    name character varying(256) NOT NULL,
    opening_time time without time zone NOT NULL,
    closing_time time without time zone NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    verified integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    operating_days boolean[] NOT NULL,
    station_id integer,
    del_time integer,
    owner_name text,
    pincode integer,
    city text,
    state text,
    media_url text[],
    email character varying,
    phone text,
    gst text,
    fssai text,
    fssai_exp text,
    id_proof text,
    bank_name text,
    acn text,
    ifsc text,
    res_type text,
    street text,
    distance integer
);
 (   DROP TABLE restraunts.restraunt_master;
    
   restraunts         heap r       postgres    false    11                       1259    25349    restraunt_master_res_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.restraunt_master_res_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE restraunts.restraunt_master_res_id_seq;
    
   restraunts               postgres    false    260    11            =           0    0    restraunt_master_res_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE restraunts.restraunt_master_res_id_seq OWNED BY restraunts.restraunt_master.res_id;
       
   restraunts               postgres    false    261                       1259    25350    reviews    TABLE       CREATE TABLE restraunts.reviews (
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
   restraunts         heap r       postgres    false    11                       1259    25355    reviews_rev_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.reviews_rev_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE restraunts.reviews_rev_id_seq;
    
   restraunts               postgres    false    11    262            >           0    0    reviews_rev_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE restraunts.reviews_rev_id_seq OWNED BY restraunts.reviews.rev_id;
       
   restraunts               postgres    false    263                       1259    25356    wallets    TABLE     #  CREATE TABLE restraunts.wallets (
    wallet_id integer NOT NULL,
    res_id integer NOT NULL,
    current_amount double precision DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    udated_at timestamp with time zone NOT NULL
);
    DROP TABLE restraunts.wallets;
    
   restraunts         heap r       postgres    false    11            	           1259    25361    wallets_wallet_id_seq    SEQUENCE     �   CREATE SEQUENCE restraunts.wallets_wallet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE restraunts.wallets_wallet_id_seq;
    
   restraunts               postgres    false    264    11            ?           0    0    wallets_wallet_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE restraunts.wallets_wallet_id_seq OWNED BY restraunts.wallets.wallet_id;
       
   restraunts               postgres    false    265            
           1259    25362    stations_master    TABLE       CREATE TABLE stations.stations_master (
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
       stations         heap r       postgres    false    12                       1259    25368    stations_master_station_id_seq    SEQUENCE     �   CREATE SEQUENCE stations.stations_master_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE stations.stations_master_station_id_seq;
       stations               postgres    false    266    12            @           0    0    stations_master_station_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE stations.stations_master_station_id_seq OWNED BY stations.stations_master.station_id;
          stations               postgres    false    267                       1259    25369    zones    TABLE     �   CREATE TABLE stations.zones (
    zone_id integer NOT NULL,
    name character varying(256) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE stations.zones;
       stations         heap r       postgres    false    12                       1259    25372    zones_zone_id_seq    SEQUENCE     �   CREATE SEQUENCE stations.zones_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE stations.zones_zone_id_seq;
       stations               postgres    false    12    268            A           0    0    zones_zone_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE stations.zones_zone_id_seq OWNED BY stations.zones.zone_id;
          stations               postgres    false    269                       1259    25373    users_master    TABLE     �  CREATE TABLE users.users_master (
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
       users         heap r       postgres    false    14                       1259    25380    users_master_user_id_seq    SEQUENCE     �   CREATE SEQUENCE users.users_master_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE users.users_master_user_id_seq;
       users               postgres    false    270    14            B           0    0    users_master_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE users.users_master_user_id_seq OWNED BY users.users_master.user_id;
          users               postgres    false    271                       2604    25381    permissions perm_id    DEFAULT     v   ALTER TABLE ONLY auth.permissions ALTER COLUMN perm_id SET DEFAULT nextval('auth.permissions_perm_id_seq'::regclass);
 @   ALTER TABLE auth.permissions ALTER COLUMN perm_id DROP DEFAULT;
       auth               postgres    false    227    226                       2604    25382    roles role_id    DEFAULT     j   ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq'::regclass);
 :   ALTER TABLE auth.roles ALTER COLUMN role_id DROP DEFAULT;
       auth               postgres    false    229    228            	           2604    25383    attendence att_id    DEFAULT     n   ALTER TABLE ONLY hr.attendence ALTER COLUMN att_id SET DEFAULT nextval('hr.attendence_att_id_seq'::regclass);
 <   ALTER TABLE hr.attendence ALTER COLUMN att_id DROP DEFAULT;
       hr               postgres    false    231    230            
           2604    25384    departments dept_id    DEFAULT     r   ALTER TABLE ONLY hr.departments ALTER COLUMN dept_id SET DEFAULT nextval('hr.departments_dept_id_seq'::regclass);
 >   ALTER TABLE hr.departments ALTER COLUMN dept_id DROP DEFAULT;
       hr               postgres    false    233    232                       2604    25385    employee_profile profile_id    DEFAULT     �   ALTER TABLE ONLY hr.employee_profile ALTER COLUMN profile_id SET DEFAULT nextval('hr.employee_profile_profile_id_seq'::regclass);
 F   ALTER TABLE hr.employee_profile ALTER COLUMN profile_id DROP DEFAULT;
       hr               postgres    false    235    234                       2604    25386    employees emp_id    DEFAULT     l   ALTER TABLE ONLY hr.employees ALTER COLUMN emp_id SET DEFAULT nextval('hr.employees_emp_id_seq'::regclass);
 ;   ALTER TABLE hr.employees ALTER COLUMN emp_id DROP DEFAULT;
       hr               postgres    false    237    236                       2604    25387    incentives sal_id    DEFAULT     n   ALTER TABLE ONLY hr.incentives ALTER COLUMN sal_id SET DEFAULT nextval('hr.incentives_sal_id_seq'::regclass);
 <   ALTER TABLE hr.incentives ALTER COLUMN sal_id DROP DEFAULT;
       hr               postgres    false    239    238                       2604    25388    leaves leave_id    DEFAULT     j   ALTER TABLE ONLY hr.leaves ALTER COLUMN leave_id SET DEFAULT nextval('hr.leaves_leave_id_seq'::regclass);
 :   ALTER TABLE hr.leaves ALTER COLUMN leave_id DROP DEFAULT;
       hr               postgres    false    241    240                       2604    25389    dish_category dish_cat    DEFAULT     �   ALTER TABLE ONLY orders.dish_category ALTER COLUMN dish_cat SET DEFAULT nextval('orders.dish_category_dish_cat_seq'::regclass);
 E   ALTER TABLE orders.dish_category ALTER COLUMN dish_cat DROP DEFAULT;
       orders               postgres    false    243    242                       2604    25390    dish_types dish_type_id    DEFAULT     �   ALTER TABLE ONLY orders.dish_types ALTER COLUMN dish_type_id SET DEFAULT nextval('orders.dish_types_dish_type_id_seq'::regclass);
 F   ALTER TABLE orders.dish_types ALTER COLUMN dish_type_id DROP DEFAULT;
       orders               postgres    false    245    244                       2604    25391    menus id    DEFAULT     d   ALTER TABLE ONLY orders.menus ALTER COLUMN id SET DEFAULT nextval('orders.menus_id_seq'::regclass);
 7   ALTER TABLE orders.menus ALTER COLUMN id DROP DEFAULT;
       orders               postgres    false    247    246                       2604    25392    orders_master oid    DEFAULT     v   ALTER TABLE ONLY orders.orders_master ALTER COLUMN oid SET DEFAULT nextval('orders.orders_master_oid_seq'::regclass);
 @   ALTER TABLE orders.orders_master ALTER COLUMN oid DROP DEFAULT;
       orders               postgres    false    249    248            "           2604    25393    payments_master pay_id    DEFAULT     �   ALTER TABLE ONLY payments.payments_master ALTER COLUMN pay_id SET DEFAULT nextval('payments.payments_master_pay_id_seq'::regclass);
 G   ALTER TABLE payments.payments_master ALTER COLUMN pay_id DROP DEFAULT;
       payments               postgres    false    251    250            #           2604    25394    refunds refund_id    DEFAULT     z   ALTER TABLE ONLY payments.refunds ALTER COLUMN refund_id SET DEFAULT nextval('payments.refunds_refund_id_seq'::regclass);
 B   ALTER TABLE payments.refunds ALTER COLUMN refund_id DROP DEFAULT;
       payments               postgres    false    253    252            %           2604    25395    queries_master qid    DEFAULT     z   ALTER TABLE ONLY queries.queries_master ALTER COLUMN qid SET DEFAULT nextval('queries.queries_master_qid_seq'::regclass);
 B   ALTER TABLE queries.queries_master ALTER COLUMN qid DROP DEFAULT;
       queries               postgres    false    255    254            (           2604    25396    dish_cat dish_cat_id    DEFAULT     �   ALTER TABLE ONLY restraunts.dish_cat ALTER COLUMN dish_cat_id SET DEFAULT nextval('restraunts.dish_cat_dish_cat_id_seq'::regclass);
 G   ALTER TABLE restraunts.dish_cat ALTER COLUMN dish_cat_id DROP DEFAULT;
    
   restraunts               postgres    false    257    256            )           2604    25397    dish_master dish_id    DEFAULT     �   ALTER TABLE ONLY restraunts.dish_master ALTER COLUMN dish_id SET DEFAULT nextval('restraunts.dish_master_dish_id_seq'::regclass);
 F   ALTER TABLE restraunts.dish_master ALTER COLUMN dish_id DROP DEFAULT;
    
   restraunts               postgres    false    259    258            ,           2604    25398    restraunt_master res_id    DEFAULT     �   ALTER TABLE ONLY restraunts.restraunt_master ALTER COLUMN res_id SET DEFAULT nextval('restraunts.restraunt_master_res_id_seq'::regclass);
 J   ALTER TABLE restraunts.restraunt_master ALTER COLUMN res_id DROP DEFAULT;
    
   restraunts               postgres    false    261    260            /           2604    25399    reviews rev_id    DEFAULT     x   ALTER TABLE ONLY restraunts.reviews ALTER COLUMN rev_id SET DEFAULT nextval('restraunts.reviews_rev_id_seq'::regclass);
 A   ALTER TABLE restraunts.reviews ALTER COLUMN rev_id DROP DEFAULT;
    
   restraunts               postgres    false    263    262            0           2604    25400    wallets wallet_id    DEFAULT     ~   ALTER TABLE ONLY restraunts.wallets ALTER COLUMN wallet_id SET DEFAULT nextval('restraunts.wallets_wallet_id_seq'::regclass);
 D   ALTER TABLE restraunts.wallets ALTER COLUMN wallet_id DROP DEFAULT;
    
   restraunts               postgres    false    265    264            3           2604    25401    stations_master station_id    DEFAULT     �   ALTER TABLE ONLY stations.stations_master ALTER COLUMN station_id SET DEFAULT nextval('stations.stations_master_station_id_seq'::regclass);
 K   ALTER TABLE stations.stations_master ALTER COLUMN station_id DROP DEFAULT;
       stations               postgres    false    267    266            5           2604    25402    zones zone_id    DEFAULT     r   ALTER TABLE ONLY stations.zones ALTER COLUMN zone_id SET DEFAULT nextval('stations.zones_zone_id_seq'::regclass);
 >   ALTER TABLE stations.zones ALTER COLUMN zone_id DROP DEFAULT;
       stations               postgres    false    269    268            6           2604    25403    users_master user_id    DEFAULT     z   ALTER TABLE ONLY users.users_master ALTER COLUMN user_id SET DEFAULT nextval('users.users_master_user_id_seq'::regclass);
 B   ALTER TABLE users.users_master ALTER COLUMN user_id DROP DEFAULT;
       users               postgres    false    271    270            �          0    25230    permissions 
   TABLE DATA           ^   COPY auth.permissions (perm_id, role_id, permission, read, write, update, delete) FROM stdin;
    auth               postgres    false    226   '�       �          0    25238    roles 
   TABLE DATA           [   COPY auth.roles (role_id, name, parent_role_id, color, created_at, updated_at) FROM stdin;
    auth               postgres    false    228   ��       �          0    25244 
   attendence 
   TABLE DATA           ]   COPY hr.attendence (att_id, emp_id, check_in, check_out, created_at, updated_at) FROM stdin;
    hr               postgres    false    230   �       �          0    25248    departments 
   TABLE DATA           X   COPY hr.departments (dept_id, name, parent_dept_id, created_at, updated_at) FROM stdin;
    hr               postgres    false    232   7�                  0    25253    employee_profile 
   TABLE DATA           q   COPY hr.employee_profile (profile_id, emp_id, profile_url, dob, active_from, created_at, updated_at) FROM stdin;
    hr               postgres    false    234   T�                 0    25259 	   employees 
   TABLE DATA           v   COPY hr.employees (emp_id, role_id, department_id, name, email, status, password, created_at, updated_at) FROM stdin;
    hr               postgres    false    236   q�                 0    25266 
   incentives 
   TABLE DATA           q   COPY hr.incentives (sal_id, emp_id, basic, hra, da, pa, pf, other_allowence, created_at, updated_at) FROM stdin;
    hr               postgres    false    238   ��                 0    25275    leaves 
   TABLE DATA           c   COPY hr.leaves (leave_id, emp_id, casual_leave, earned_leave, sick_leave, short_leave) FROM stdin;
    hr               postgres    false    240   ��                 0    25283    dish_category 
   TABLE DATA           7   COPY orders.dish_category (dish_cat, name) FROM stdin;
    orders               postgres    false    242   ��       
          0    25289 
   dish_types 
   TABLE DATA           B   COPY orders.dish_types (dish_type_id, dish_type_name) FROM stdin;
    orders               postgres    false    244   ��                 0    25295    menus 
   TABLE DATA           �   COPY orders.menus (id, res_id, menu_type, dish_type_id, dish_cat_id, status, media_url, amount, created_at, updated_at, menu_id) FROM stdin;
    orders               postgres    false    246   �                 0    25303    orders_master 
   TABLE DATA              COPY orders.orders_master (oid, res_id, station_id, cid, menu_items, mode, amount, status, created_at, updated_at) FROM stdin;
    orders               postgres    false    248   >�                 0    25311    payments_master 
   TABLE DATA           `   COPY payments.payments_master (pay_id, transaction_payload, created_at, updated_at) FROM stdin;
    payments               postgres    false    250   ��                 0    25317    refunds 
   TABLE DATA           s   COPY payments.refunds (refund_id, cid, oid, res_id, refundable_amount, status, created_at, updated_at) FROM stdin;
    payments               postgres    false    252   ��                 0    25322    queries_master 
   TABLE DATA           w   COPY queries.queries_master (qid, query, cid, res_id, priority, status, media_url, created_at, updated_at) FROM stdin;
    queries               postgres    false    254   ��                 0    25330    dish_cat 
   TABLE DATA           =   COPY restraunts.dish_cat (dish_cat_id, cat_name) FROM stdin;
 
   restraunts               postgres    false    256   ��                 0    25334    dish_master 
   TABLE DATA           �   COPY restraunts.dish_master (dish_id, name, dish_type, dish_cat_id, media_url, stock, created_at, updated_at, res_id, dish_price) FROM stdin;
 
   restraunts               postgres    false    258   A�                 0    25342    restraunt_master 
   TABLE DATA           6  COPY restraunts.restraunt_master (res_id, name, opening_time, closing_time, status, verified, created_at, updated_at, operating_days, station_id, del_time, owner_name, pincode, city, state, media_url, email, phone, gst, fssai, fssai_exp, id_proof, bank_name, acn, ifsc, res_type, street, distance) FROM stdin;
 
   restraunts               postgres    false    260   ��                 0    25350    reviews 
   TABLE DATA           i   COPY restraunts.reviews (rev_id, res_id, rating, review, media_urls, created_at, updated_at) FROM stdin;
 
   restraunts               postgres    false    262   ��                 0    25356    wallets 
   TABLE DATA           g   COPY restraunts.wallets (wallet_id, res_id, current_amount, status, created_at, udated_at) FROM stdin;
 
   restraunts               postgres    false    264   ��                  0    25362    stations_master 
   TABLE DATA           �   COPY stations.stations_master (station_id, name, code, location, loc_lat, loc_long, helpline, media_url, zone_id, description, status, created_at, updated_at) FROM stdin;
    stations               postgres    false    266   ��       "          0    25369    zones 
   TABLE DATA           H   COPY stations.zones (zone_id, name, created_at, updated_at) FROM stdin;
    stations               postgres    false    268   L�       $          0    25373    users_master 
   TABLE DATA           �   COPY users.users_master (user_id, first_name, last_name, email, password, profile_picture, created_at, updated_at, role_id, status) FROM stdin;
    users               postgres    false    270   ��       C           0    0    permissions_perm_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('auth.permissions_perm_id_seq', 10, true);
          auth               postgres    false    227            D           0    0    roles_role_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('auth.roles_role_id_seq', 2, true);
          auth               postgres    false    229            E           0    0    attendence_att_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hr.attendence_att_id_seq', 1, false);
          hr               postgres    false    231            F           0    0    departments_dept_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('hr.departments_dept_id_seq', 1, false);
          hr               postgres    false    233            G           0    0    employee_profile_profile_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('hr.employee_profile_profile_id_seq', 1, false);
          hr               postgres    false    235            H           0    0    employees_emp_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hr.employees_emp_id_seq', 1, false);
          hr               postgres    false    237            I           0    0    incentives_sal_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hr.incentives_sal_id_seq', 1, false);
          hr               postgres    false    239            J           0    0    leaves_leave_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('hr.leaves_leave_id_seq', 1, false);
          hr               postgres    false    241            K           0    0    dish_category_dish_cat_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('orders.dish_category_dish_cat_seq', 1, false);
          orders               postgres    false    243            L           0    0    dish_types_dish_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('orders.dish_types_dish_type_id_seq', 1, false);
          orders               postgres    false    245            M           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('orders.menus_id_seq', 1, true);
          orders               postgres    false    247            N           0    0    orders_master_oid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('orders.orders_master_oid_seq', 1, true);
          orders               postgres    false    249            O           0    0    payments_master_pay_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('payments.payments_master_pay_id_seq', 1, false);
          payments               postgres    false    251            P           0    0    refunds_refund_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('payments.refunds_refund_id_seq', 1, false);
          payments               postgres    false    253            Q           0    0    queries_master_qid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('queries.queries_master_qid_seq', 1, false);
          queries               postgres    false    255            R           0    0    dish_cat_dish_cat_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('restraunts.dish_cat_dish_cat_id_seq', 5, true);
       
   restraunts               postgres    false    257            S           0    0    dish_master_dish_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('restraunts.dish_master_dish_id_seq', 7, true);
       
   restraunts               postgres    false    259            T           0    0    restraunt_master_res_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('restraunts.restraunt_master_res_id_seq', 8, true);
       
   restraunts               postgres    false    261            U           0    0    reviews_rev_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('restraunts.reviews_rev_id_seq', 1, false);
       
   restraunts               postgres    false    263            V           0    0    wallets_wallet_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('restraunts.wallets_wallet_id_seq', 1, false);
       
   restraunts               postgres    false    265            W           0    0    stations_master_station_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('stations.stations_master_station_id_seq', 3, true);
          stations               postgres    false    267            X           0    0    zones_zone_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('stations.zones_zone_id_seq', 4, true);
          stations               postgres    false    269            Y           0    0    users_master_user_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('users.users_master_user_id_seq', 2, true);
          users               postgres    false    271            :           2606    25405    permissions permissions_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (perm_id);
 D   ALTER TABLE ONLY auth.permissions DROP CONSTRAINT permissions_pkey;
       auth                 postgres    false    226            <           2606    25407    roles roles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY auth.roles DROP CONSTRAINT roles_pkey;
       auth                 postgres    false    228            >           2606    25409    attendence attendence_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY hr.attendence
    ADD CONSTRAINT attendence_pkey PRIMARY KEY (att_id);
 @   ALTER TABLE ONLY hr.attendence DROP CONSTRAINT attendence_pkey;
       hr                 postgres    false    230            @           2606    25411    departments departments_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id, name);
 B   ALTER TABLE ONLY hr.departments DROP CONSTRAINT departments_pkey;
       hr                 postgres    false    232    232            B           2606    25413 &   employee_profile employee_profile_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hr.employee_profile
    ADD CONSTRAINT employee_profile_pkey PRIMARY KEY (profile_id);
 L   ALTER TABLE ONLY hr.employee_profile DROP CONSTRAINT employee_profile_pkey;
       hr                 postgres    false    234            D           2606    25415    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);
 >   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_pkey;
       hr                 postgres    false    236            F           2606    25417    incentives incentives_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY hr.incentives
    ADD CONSTRAINT incentives_pkey PRIMARY KEY (sal_id);
 @   ALTER TABLE ONLY hr.incentives DROP CONSTRAINT incentives_pkey;
       hr                 postgres    false    238            H           2606    25419    leaves leaves_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hr.leaves
    ADD CONSTRAINT leaves_pkey PRIMARY KEY (leave_id);
 8   ALTER TABLE ONLY hr.leaves DROP CONSTRAINT leaves_pkey;
       hr                 postgres    false    240            J           2606    25421     dish_category dish_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY orders.dish_category
    ADD CONSTRAINT dish_category_pkey PRIMARY KEY (dish_cat);
 J   ALTER TABLE ONLY orders.dish_category DROP CONSTRAINT dish_category_pkey;
       orders                 postgres    false    242            L           2606    25423    dish_types dish_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY orders.dish_types
    ADD CONSTRAINT dish_types_pkey PRIMARY KEY (dish_type_id);
 D   ALTER TABLE ONLY orders.dish_types DROP CONSTRAINT dish_types_pkey;
       orders                 postgres    false    244            N           2606    25425    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY orders.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY orders.menus DROP CONSTRAINT menus_pkey;
       orders                 postgres    false    246            P           2606    25427     orders_master orders_master_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY orders.orders_master
    ADD CONSTRAINT orders_master_pkey PRIMARY KEY (oid);
 J   ALTER TABLE ONLY orders.orders_master DROP CONSTRAINT orders_master_pkey;
       orders                 postgres    false    248            R           2606    25429 $   payments_master payments_master_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY payments.payments_master
    ADD CONSTRAINT payments_master_pkey PRIMARY KEY (pay_id);
 P   ALTER TABLE ONLY payments.payments_master DROP CONSTRAINT payments_master_pkey;
       payments                 postgres    false    250            T           2606    25431    refunds refunds_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY payments.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (refund_id);
 @   ALTER TABLE ONLY payments.refunds DROP CONSTRAINT refunds_pkey;
       payments                 postgres    false    252            V           2606    25433 "   queries_master queries_master_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY queries.queries_master
    ADD CONSTRAINT queries_master_pkey PRIMARY KEY (qid);
 M   ALTER TABLE ONLY queries.queries_master DROP CONSTRAINT queries_master_pkey;
       queries                 postgres    false    254            X           2606    25435    dish_cat dish_cat_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY restraunts.dish_cat
    ADD CONSTRAINT dish_cat_pkey PRIMARY KEY (dish_cat_id);
 D   ALTER TABLE ONLY restraunts.dish_cat DROP CONSTRAINT dish_cat_pkey;
    
   restraunts                 postgres    false    256            Z           2606    25437    dish_master dish_master_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY restraunts.dish_master
    ADD CONSTRAINT dish_master_pkey PRIMARY KEY (dish_id);
 J   ALTER TABLE ONLY restraunts.dish_master DROP CONSTRAINT dish_master_pkey;
    
   restraunts                 postgres    false    258            \           2606    25439 &   restraunt_master restraunt_master_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY restraunts.restraunt_master
    ADD CONSTRAINT restraunt_master_pkey PRIMARY KEY (res_id);
 T   ALTER TABLE ONLY restraunts.restraunt_master DROP CONSTRAINT restraunt_master_pkey;
    
   restraunts                 postgres    false    260            ^           2606    25441    reviews reviews_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY restraunts.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (rev_id);
 B   ALTER TABLE ONLY restraunts.reviews DROP CONSTRAINT reviews_pkey;
    
   restraunts                 postgres    false    262            `           2606    25443    wallets wallets_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY restraunts.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (wallet_id);
 B   ALTER TABLE ONLY restraunts.wallets DROP CONSTRAINT wallets_pkey;
    
   restraunts                 postgres    false    264            b           2606    25445 $   stations_master stations_master_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY stations.stations_master
    ADD CONSTRAINT stations_master_pkey PRIMARY KEY (station_id);
 P   ALTER TABLE ONLY stations.stations_master DROP CONSTRAINT stations_master_pkey;
       stations                 postgres    false    266            d           2606    25447    zones zones_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY stations.zones
    ADD CONSTRAINT zones_pkey PRIMARY KEY (zone_id);
 <   ALTER TABLE ONLY stations.zones DROP CONSTRAINT zones_pkey;
       stations                 postgres    false    268            f           2606    25449    users_master users_master_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY users.users_master
    ADD CONSTRAINT users_master_pkey PRIMARY KEY (user_id);
 G   ALTER TABLE ONLY users.users_master DROP CONSTRAINT users_master_pkey;
       users                 postgres    false    270            �   r   x�]�K
�0D��],���%�bh�"ɛ�>2��)�'�10�н�_I$�,��yF.O����
�a��C�k�C_\�+ތ�Q���q+�[�K��S�G�Q���K?1 ��),Y      �   a   x�3�.-H-rL����4�TNK30HK�4202�50�52Q02�20�2��360765�60�/�e�	1�d�<4��FVF�z&��f����r��qqq ��"�      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �         ,   x�3�4B#0Y]�id` �F���@�`h`e B�x��b���� ��:         K   x�3�4�4�4�V*��M��,I�U�R�p�S+�j9�8��,-�*��Lu�H���� ��ps��qqq n��            x������ � �            x������ � �            x������ � �         A   x�3�L���K-N�2��,I��L��2�,.I,*I-�2��M��L��r�&f�)$����qqq /�         }  x�}�]o�0��ɯ�e�����.�u��iZ�j�ͤ�n�Zl��j�}�I45��8p���9���F��U;v��vn����6���F�fж/MW�}��������qhzUX�c�\�d��'C�?��rWx;T�|�a��9I2F3��L�!��!<P�`d���(���u��x�ca��ŝ��sZ������2���ŶS��-^תU*vYo�}����QH�s�@�N�"qp� �EG�Oc�N�/Jm\m^w��.�Uc�������3�B��������J��hyp1:�7����׺�I���9��vu��7Wկͷ+��E�s�>U?��"!.D�#e�4d�Y�/����g�Y��i{��q�Y�1�����9~�ј�$E��Еo����]^~�x�����݄��e��jRƊ)S�hɩf����n�$�eH9}��QH�e%��J�/����_����ˏ�ڍRWkոzzl�Ku&1^�B�q�A�K�H�����N�OCPa���~d@,�}��Q?�8��V;ڭ��i?X�G���(.�e�[;-�%�/��oۥw�ޭ��4�д��b�"�H�H��d�K!�E`'`uz�(�S��"a*��"hW�|~�����a�         �  x�͓Ko�6���O�S�J��C[�Q���5�S �1���w��Dyכ��w��m�z+Df8���ƾ���;�i1!//���B�\�\ ;�;0���w�k��;H"������S���L�b��P�s�Z��ٳ�{�a��M5�\{?L�8΢s����M���MqC�MjLg<���8#��fe����(�Ԁ{(.A�Ó��j����`%(�v�$)PY� K�we�op����(�����c?�\���n߾\��j�9,���'
�a�<�pG	Y���Ul�v8�r��YD�!��6p<���y����u��J�æ��eS����AƠ9?��ǈE�c�cQ6Z�G	�K����(e���| m��%���j�T����"��2��A_TU��LI��,��I�e���q���l��A־v#��Ӵ.\؍eS�<Tq���W0�`J�S*�Z|�XC �����I���a��sCW�B�u��<xW�>�xT-�7�*�b�wܐgw{_�?���C~~����q������〿~�0wwwwms�n�LW0����cA��<�Okb�C\՗�⃊9�p:���8\���%NP�jv�"���a�-��X�S�a6W8��5mH�{��U?�/�f���:�5�����cWz�� jSk����t�X�=y�B�����&�g�x�w���k�H�����;$�w�AMM���t��2��S��l����            x������ � �            x������ � �          K  x����n� E��+�O͌(�&�R��b#��Ɩ���__pR��:�һx���NK dյ�Ƈ ��R^B��V��P�EQJE@�8k���LO����vS�R5�
UC�~F�]�#�P%ХC^�p�'㺓9�s0�>�����k��6@�<�6��\MnLv�(�"�4�,�Ds�����P[��N7ܝk;������W�J�K����ǹ �s@�Ob�]K�+OkM�|�C���3\h�u<H��B��S(�H(ܶ�ͭ(��d��U��H>PD�JkY���dY�(Q���Z������h4�w�Rc���c�h��%�'�'��l�NI��      "   �   x�}�=�0��9�+�K��%iڛ]u�M\:R(-����5H8?//�C�y-���Q1�o���I�gZ�H;��
��qJ��ȽRf�!6�٧��&�꼬%�<��0N����;M(��[��UN�\R}�5A�M���"� x .�>�      $   ~  x��P�N�@|v�����*ًwm)�Tņ�Z_w��K�U��K�D��Js�3�#��Ak��Fɔ(~�WyɄ��uiLq4Epz�v�Y$c1қd�5���*�����������]xx�Q?��Ua\릻 �L����B�>껴��J��>� =�-� �ڗÒb:��g^��@�)#x��h���ވ9������[҃��'��/�@*t�,��l�_B0L��,ͫ��;t|f(�D��qR}�N����)0��M���z�$��)4m�	���5���u=�x+����4�t�lB��t��e�Ĉ��1-b��(��\/����n����������T?g�l�o������?����'��/�Z�D     