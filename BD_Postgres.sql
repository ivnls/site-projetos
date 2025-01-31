--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: coordenadores; Type: TABLE; Schema: public; Owner: ivnls
--

CREATE TABLE public.coordenadores (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    criado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    descricao text,
    cargo character varying,
    image_url character varying
);


ALTER TABLE public.coordenadores OWNER TO ivnls;

--
-- Name: coordenadores_id_seq; Type: SEQUENCE; Schema: public; Owner: ivnls
--

CREATE SEQUENCE public.coordenadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.coordenadores_id_seq OWNER TO ivnls;

--
-- Name: coordenadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivnls
--

ALTER SEQUENCE public.coordenadores_id_seq OWNED BY public.coordenadores.id;


--
-- Name: participantes; Type: TABLE; Schema: public; Owner: ivnls
--

CREATE TABLE public.participantes (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    criado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    cargo character varying,
    image_url character varying
);


ALTER TABLE public.participantes OWNER TO ivnls;

--
-- Name: projetos; Type: TABLE; Schema: public; Owner: ivnls
--

CREATE TABLE public.projetos (
    id integer NOT NULL,
    nome character varying(255),
    descricao text,
    data date,
    participantes integer
);


ALTER TABLE public.projetos OWNER TO ivnls;

--
-- Name: projetos_id_seq; Type: SEQUENCE; Schema: public; Owner: ivnls
--

CREATE SEQUENCE public.projetos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projetos_id_seq OWNER TO ivnls;

--
-- Name: projetos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivnls
--

ALTER SEQUENCE public.projetos_id_seq OWNED BY public.projetos.id;


--
-- Name: publicacoes; Type: TABLE; Schema: public; Owner: ivnls
--

CREATE TABLE public.publicacoes (
    titulo character varying,
    data date,
    descricao text,
    texto text,
    id integer NOT NULL
);


ALTER TABLE public.publicacoes OWNER TO ivnls;

--
-- Name: publicacoes_id_seq; Type: SEQUENCE; Schema: public; Owner: ivnls
--

CREATE SEQUENCE public.publicacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publicacoes_id_seq OWNER TO ivnls;

--
-- Name: publicacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivnls
--

ALTER SEQUENCE public.publicacoes_id_seq OWNED BY public.publicacoes.id;


--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: ivnls
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO ivnls;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivnls
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.participantes.id;


--
-- Name: coordenadores id; Type: DEFAULT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.coordenadores ALTER COLUMN id SET DEFAULT nextval('public.coordenadores_id_seq'::regclass);


--
-- Name: participantes id; Type: DEFAULT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.participantes ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Name: projetos id; Type: DEFAULT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.projetos ALTER COLUMN id SET DEFAULT nextval('public.projetos_id_seq'::regclass);


--
-- Name: publicacoes id; Type: DEFAULT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.publicacoes ALTER COLUMN id SET DEFAULT nextval('public.publicacoes_id_seq'::regclass);


--
-- Data for Name: coordenadores; Type: TABLE DATA; Schema: public; Owner: ivnls
--

COPY public.coordenadores (id, nome, email, criado_em, descricao, cargo, image_url) FROM stdin;
1	Carlos Almeida	carlos.almeida@feliz.ifrs.edu.br	2024-12-27 00:15:30.302886	Coordenador de projetos educacionais.	Docente	http://placebeard.it/250/250
2	Fernanda Lima	fernanda.lima@feliz.ifrs.edu.br	2024-12-27 00:15:30.302886	Coordenadora de pesquisa e inovação.	Coordenador	http://placebeard.it/250/250
\.


--
-- Data for Name: participantes; Type: TABLE DATA; Schema: public; Owner: ivnls
--

COPY public.participantes (id, nome, email, criado_em, cargo, image_url) FROM stdin;
1	João Silva	joao.silva@aluno.feliz.ifrs.edu.br	2024-12-27 00:13:27.487593	bolsista	http://placebeard.it/250/250
2	Maria Oliveira	maria.oliveira@aluno.feliz.ifrs.edu.br	2024-12-27 00:13:27.487593	bolsista	http://placebeard.it/250/250
3	Pedro Souza	pedro.souza@aluno.feliz.ifrs.edu.br	2024-12-27 00:13:27.487593	bolsista	http://placebeard.it/250/250
4	Ana Costa	ana.costa@aluno.feliz.ifrs.edu.br	2024-12-27 00:13:27.487593	bolsista	http://placebeard.it/250/250
5	Lucas Pereira	lucas.pereira@aluno.feliz.ifrs.edu.br	2024-12-27 00:13:27.487593	bolsista	http://placebeard.it/250/250
\.


--
-- Data for Name: projetos; Type: TABLE DATA; Schema: public; Owner: ivnls
--

COPY public.projetos (id, nome, descricao, data, participantes) FROM stdin;
2	Projeto 2	Mauris id faucibus nunc. Maecenas eget arcu mauris.	2024-08-04	4
3	Projeto 3	Donec non dictum urna, in vulputate lorem.	2021-06-12	6
5	Projeto 5	Lorem ipsum dolor sit amet, consectetur adipiscing elit.	2023-03-16	2
1	Projeto 1	 Donec purus odio, viverra vitae risus eget, bibendum luctus eros. Integer at neque at velit convallis dictum. Maecenas rhoncus auctor diam, et consectetur elit tincidunt quis. Nullam congue, purus at imperdiet rhoncus, magna erat mollis odio, id viverra ipsum ligula quis nisl. Quisque quis nunc ut ex eleifend varius non at leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam congue nunc ac turpis tristique, ac pretium ipsum dignissim. Nam non metus eget massa faucibus congue eu quis orci. Nunc vel neque sapien. Vestibulum nulla sem, pellentesque nec posuere et, consequat id nulla. Donec semper justo non scelerisque fringilla. Morbi lectus lorem, venenatis suscipit lacinia ac, blandit vitae felis. Donec dignissim iaculis felis, vel sodales diam scelerisque vel. Curabitur rhoncus dui neque, laoreet gravida tortor consequat in.\n\nUt ligula est, rhoncus id rhoncus eu, feugiat in orci. Duis luctus nunc metus, quis blandit elit tincidunt et. Suspendisse potenti. Morbi id urna egestas, bibendum lorem sit amet, iaculis ipsum. Praesent blandit, massa nec volutpat lobortis, odio nisl lobortis nisi, in sagittis elit lacus eu nulla. Phasellus pharetra nunc nec purus suscipit accumsan. Ut fermentum dolor eget suscipit consectetur. Suspendisse iaculis consequat nulla, a interdum dolor tempus nec. Vestibulum porttitor fringilla tristique. Mauris malesuada luctus odio, eget egestas quam consequat eu. Nullam commodo sapien nec eros egestas, non dictum diam luctus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent porta libero ac tellus vestibulum vestibulum. 	2024-11-23	3
4	Projeto 4	Lorem ipsu2m dolor sit amet, consectetur adipiscing elit.	2022-01-01	5
\.


--
-- Data for Name: publicacoes; Type: TABLE DATA; Schema: public; Owner: ivnls
--

COPY public.publicacoes (titulo, data, descricao, texto, id) FROM stdin;
Reunião Geral	2023-12-11	Reunião geral dos Coordenadores e Bolsistas	 Nullam tempor id elit quis aliquet. Nam eu ipsum faucibus, porttitor ex eu, laoreet nisi. Curabitur condimentum neque nisl, dapibus porttitor augue ultrices lacinia. Vestibulum pulvinar, turpis consequat accumsan interdum, dui libero bibendum magna, in consectetur libero odio nec ligula. Donec augue lorem, suscipit non mauris non, feugiat fermentum risus. Aenean varius, tortor eu facilisis vulputate, dolor magna pretium ante, in finibus tortor dolor nec dui. Pellentesque libero arcu, viverra id scelerisque non, convallis nec eros. Proin dictum urna a placerat sagittis. In eu lectus lacus. Etiam sodales ipsum a metus tempus, vitae dictum lorem venenatis. Etiam at ornare nunc, sed fringilla nibh. Duis dignissim faucibus dolor, in imperdiet massa mollis eget. Duis ac bibendum nunc, nec ullamcorper quam.\n\nDonec vel felis cursus, congue erat in, dictum sem. Nunc nibh libero, iaculis sit amet diam id, lobortis facilisis libero. Nam in lacus ornare, posuere nibh in, convallis urna. Donec cursus dapibus justo, et vulputate tortor aliquam ac. Nulla neque ante, fermentum sit amet dolor eget, lacinia vestibulum justo. Praesent cursus turpis ante, id varius ex placerat congue. Suspendisse vel tortor sit amet ipsum tempor feugiat consequat a nisl. Aliquam a viverra leo, pharetra ornare risus. Aliquam at fringilla felis. Quisque nibh odio, pretium mattis augue in, vestibulum ultricies neque. Duis non dui est. Phasellus nec justo mi.\n\nVivamus a metus justo. In vitae augue odio. Phasellus sit amet nulla augue. Sed venenatis scelerisque dapibus. Morbi ullamcorper nisi quis scelerisque facilisis. Cras a tortor sem. Sed tincidunt nisl sit amet interdum mollis. Duis laoreet vulputate massa, ut facilisis massa lacinia vitae. Praesent rhoncus ex elementum nunc tempus, quis iaculis urna dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed ipsum lorem.\n\nNulla facilisi. Mauris eu posuere tellus, bibendum viverra augue. Suspendisse quis magna pulvinar, ullamcorper urna non, pulvinar ligula. Fusce viverra sagittis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus, felis nec mattis commodo, eros sem aliquam nisl, at porttitor nisi neque et tellus. Morbi tincidunt sem lorem, nec congue dolor cursus at. Aliquam erat volutpat. Phasellus tempor urna ut metus efficitur ullamcorper volutpat a leo. Morbi tortor nisi, pharetra vel molestie ac, efficitur et magna. Proin vel mollis arcu. Quisque volutpat, dui ut vulputate mattis, dui orci maximus nulla, non luctus justo magna et libero. Sed ultrices ornare sem, sed congue nibh sollicitudin non. In cursus odio at tellus cursus, et sodales lorem convallis. Proin aliquet sit amet felis sed pellentesque.\n\nIn quis turpis in tortor varius sagittis. Integer gravida feugiat sem. Etiam pharetra, dui vel molestie consectetur, risus leo luctus dolor, id consectetur metus neque at lectus. Maecenas elementum hendrerit orci non molestie. Cras tempus nunc eget fringilla aliquam. Donec mattis nisl diam, id suscipit risus eleifend vitae. Mauris pulvinar tempor nisi. Vestibulum maximus porttitor sapien, eget aliquam ex iaculis eu. Etiam pellentesque placerat vulputate. Donec auctor tellus augue, sit amet lobortis dui congue in. Nunc sed tristique lorem. Quisque dignissim sodales libero, id feugiat leo commodo a. 	1
\.


--
-- Name: coordenadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivnls
--

SELECT pg_catalog.setval('public.coordenadores_id_seq', 2, true);


--
-- Name: projetos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivnls
--

SELECT pg_catalog.setval('public.projetos_id_seq', 5, true);


--
-- Name: publicacoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivnls
--

SELECT pg_catalog.setval('public.publicacoes_id_seq', 1, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivnls
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


--
-- Name: coordenadores coordenadores_email_key; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.coordenadores
    ADD CONSTRAINT coordenadores_email_key UNIQUE (email);


--
-- Name: coordenadores coordenadores_pkey; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.coordenadores
    ADD CONSTRAINT coordenadores_pkey PRIMARY KEY (id);


--
-- Name: projetos projetos_pkey; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT projetos_pkey PRIMARY KEY (id);


--
-- Name: publicacoes publicacoes_pk; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.publicacoes
    ADD CONSTRAINT publicacoes_pk PRIMARY KEY (id);


--
-- Name: participantes usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.participantes
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- Name: participantes usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: ivnls
--

ALTER TABLE ONLY public.participantes
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

