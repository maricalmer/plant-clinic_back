--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Ubuntu 15.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6 (Ubuntu 15.6-1.pgdg22.04+1)

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
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: u7b7f96790uiq3
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO u7b7f96790uiq3;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: kyohoodnwmtyrb
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO kyohoodnwmtyrb;

--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA heroku_ext;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO kyohoodnwmtyrb;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO kyohoodnwmtyrb;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO kyohoodnwmtyrb;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    post_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO kyohoodnwmtyrb;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO kyohoodnwmtyrb;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint,
    slug character varying,
    image_url character varying
);


ALTER TABLE public.posts OWNER TO kyohoodnwmtyrb;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO kyohoodnwmtyrb;

--
-- Name: users; Type: TABLE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    password_digest character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO kyohoodnwmtyrb;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kyohoodnwmtyrb;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_comments_on_post_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_comments_on_post_id ON public.comments USING btree (post_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_likes_on_post_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_likes_on_post_id ON public.likes USING btree (post_id);


--
-- Name: index_likes_on_user_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_likes_on_user_id ON public.likes USING btree (user_id);


--
-- Name: index_posts_on_slug; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE UNIQUE INDEX index_posts_on_slug ON public.posts USING btree (slug);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: kyohoodnwmtyrb
--

CREATE INDEX index_posts_on_user_id ON public.posts USING btree (user_id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: likes fk_rails_1e09b5dabf; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_1e09b5dabf FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments fk_rails_2fd19c0db7; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_2fd19c0db7 FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: posts fk_rails_5b5ddfd518; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_5b5ddfd518 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: likes fk_rails_87a8aac469; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_87a8aac469 FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: kyohoodnwmtyrb
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: SCHEMA heroku_ext; Type: ACL; Schema: -; Owner: u7b7f96790uiq3
--

GRANT USAGE ON SCHEMA heroku_ext TO kyohoodnwmtyrb;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO kyohoodnwmtyrb;


--
-- Name: FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint); Type: ACL; Schema: heroku_ext; Owner: u7b7f96790uiq3
--

GRANT ALL ON FUNCTION heroku_ext.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO kyohoodnwmtyrb;


--
-- PostgreSQL database dump complete
--

