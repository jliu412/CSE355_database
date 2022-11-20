--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: USER; Type: TABLE; Schema: public; Owner: liujinhao
--

CREATE TABLE public."USER" (
    u_user_key integer NOT NULL,
    u_name character(64) NOT NULL,
    u_password character(64) NOT NULL,
    u_email character(64) NOT NULL,
    u_coll_key integer NOT NULL,
    u_comment character varying(128)
);


ALTER TABLE public."USER" OWNER TO liujinhao;

--
-- Name: coll; Type: TABLE; Schema: public; Owner: liujinhao
--

CREATE TABLE public.coll (
    c_coll_key integer NOT NULL,
    c_product_key integer NOT NULL,
    c_comment character varying(128)
);


ALTER TABLE public.coll OWNER TO liujinhao;

--
-- Name: ecommerce; Type: TABLE; Schema: public; Owner: liujinhao
--

CREATE TABLE public.ecommerce (
    e_ecommerce_key integer NOT NULL,
    e_name character(64) NOT NULL,
    e_price double precision NOT NULL,
    e_url character(64) NOT NULL,
    e_comment character varying(128)
);


ALTER TABLE public.ecommerce OWNER TO liujinhao;

--
-- Name: product; Type: TABLE; Schema: public; Owner: liujinhao
--

CREATE TABLE public.product (
    p_product_key integer NOT NULL,
    p_ecommerce_key integer NOT NULL,
    p_name character(64) NOT NULL,
    p_brand character(64) NOT NULL,
    p_image character(64) NOT NULL,
    p_release_date date NOT NULL,
    p_dimension character(64) NOT NULL,
    p_os character(64) NOT NULL,
    p_storage integer NOT NULL,
    p_spec_key integer NOT NULL,
    p_comment character varying(128)
);


ALTER TABLE public.product OWNER TO liujinhao;

--
-- Name: spec; Type: TABLE; Schema: public; Owner: liujinhao
--

CREATE TABLE public.spec (
    s_spec_key integer NOT NULL,
    s_network character(64) NOT NULL,
    s_launch date NOT NULL,
    s_body character(64) NOT NULL,
    s_display character(64) NOT NULL,
    s_platform character(64) NOT NULL,
    s_memory integer NOT NULL,
    s_camera character(64) NOT NULL,
    s_sound character(64) NOT NULL,
    s_comms character(64) NOT NULL,
    s_features character(64) NOT NULL,
    s_battery double precision NOT NULL,
    s_misc character(64) NOT NULL,
    s_comment character varying(128)
);


ALTER TABLE public.spec OWNER TO liujinhao;

--
-- Data for Name: USER; Type: TABLE DATA; Schema: public; Owner: liujinhao
--

COPY public."USER" (u_user_key, u_name, u_password, u_email, u_coll_key, u_comment) FROM stdin;
1	Jinhao                                                          	19970401                                                        	jliu412@asu.edu                                                 	1	com
\.


--
-- Data for Name: coll; Type: TABLE DATA; Schema: public; Owner: liujinhao
--

COPY public.coll (c_coll_key, c_product_key, c_comment) FROM stdin;
1	1	iphone12
1	2	iphone13
1	3	iphone14
\.


--
-- Data for Name: ecommerce; Type: TABLE DATA; Schema: public; Owner: liujinhao
--

COPY public.ecommerce (e_ecommerce_key, e_name, e_price, e_url, e_comment) FROM stdin;
1	Amazon                                                          	410	https://www.amazon.com/s?k=iphone12                             	iphone12,Amazon
2	BestBuy                                                         	629.99	https://www.bestbuy.com/                                        	iphone12,BestBuy
3	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-12                 	iphone12,apple
4	amazon                                                          	785.41	https://www.amazon.com                                          	iphone12pro,amazon
5	Bestbuy                                                         	759.99	https://www.bestbuy.com                                         	iphone12pro,bestbuy
6	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-12                 	iphone12pro,apple
7	amazon                                                          	771.79	https://www.amazon.com                                          	iphone12mini,amazon
8	Bestbuy                                                         	629.64	https://www.bestbuy.com                                         	iphone12mini,bestbuy
9	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-12                 	iphone12mini,apple
10	amazon                                                          	990.1	https://www.amazon.com                                          	iphone12promax,amazon
11	Bestbuy                                                         	899.99	https://www.bestbuy.com                                         	iphone12promax,bestbuy
12	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-12                 	iphone12promax,apple
13	amazon                                                          	645.47	https://www.amazon.com                                          	iphone13,amazon
14	Bestbuy                                                         	999.72	https://www.bestbuy.com                                         	iphone13,bestbuy
15	apple                                                           	699	https://www.apple.com/shop/buy-iphone/iphone-13                 	iphone13,apple
16	amazon                                                          	645.47	https://www.amazon.com                                          	iphone13pro,amazon
17	Bestbuy                                                         	1000.08	https://www.bestbuy.com                                         	iphone13pro,bestbuy
18	apple                                                           	699	https://www.apple.com/shop/buy-iphone/iphone-13                 	iphone13pro,apple
19	amazon                                                          	719.99	https://www.amazon.com                                          	iphone13mini,amazon
20	Bestbuy                                                         	630	https://www.bestbuy.com                                         	iphone13mini,bestbuy
21	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-13                 	iphone13mini,apple
22	amazon                                                          	719.99	https://www.amazon.com                                          	iphone13promax,amazon
23	Bestbuy                                                         	630	https://www.bestbuy.com                                         	iphone13promax,bestbuy
24	apple                                                           	599	https://www.apple.com/shop/buy-iphone/iphone-13                 	iphone13promax,apple
25	amazon                                                          	0	https://www.amazon.com                                          	iphone14,amazon
26	Bestbuy                                                         	799.92	https://www.bestbuy.com                                         	iphone14,bestbuy
27	apple                                                           	799	https://www.apple.com/shop/buy-iphone/iphone-13                 	iphone14,apple
28	amazon                                                          	0	https://www.amazon.com                                          	iphone14pro,amazon
29	Bestbuy                                                         	1100.16	https://www.bestbuy.com                                         	iphone14pro,bestbuy
30	apple                                                           	999	https://www.apple.com/shop/buy-iphone/iphone-14-pro             	iphone14pro,apple
31	amazon                                                          	0	https://www.amazon.com                                          	iphone14promax,amazon
32	Bestbuy                                                         	1200.24	https://www.bestbuy.com                                         	iphone14promax,bestbuy
33	apple                                                           	1099	https://www.apple.com/shop/buy-iphone/iphone-14-pro             	iphone14promax,apple
34	amazon                                                          	0	https://www.amazon.com                                          	iphone14plus,amazon
35	Bestbuy                                                         	900	https://www.bestbuy.com                                         	iphone14plus,bestbuy
36	apple                                                           	899	https://www.apple.com/shop/buy-iphone/iphone-14-pro             	iphone14plus,apple
37	amazon                                                          	429	https://www.amazon.com                                          	iphoneSE,amazon
38	Bestbuy                                                         	645.12	https://www.bestbuy.com                                         	iphoneSE,bestbuy
39	apple                                                           	429	https://www.apple.com/shop/buy-iphone/iphone-se                 	iphoneSE,apple
40	amazon                                                          	592.79	https://www.amazon.com                                          	iphone10,amazon
41	Bestbuy                                                         	399.99	https://www.bestbuy.com                                         	iphone10,bestbuy
42	apple                                                           	0	none                                                            	iphone10,apple
44	Bestbuy                                                         	499.99	https://www.bestbuy.com                                         	iphone10pro,bestbuy
43	amazon                                                          	899.99	https://www.amazon.com                                          	iphone10pro,amazon
45	apple                                                           	0	none                                                            	iphone10pro,apple
46	amazon                                                          	999	https://www.amazon.com                                          	iphone10promax,amazon
47	Bestbuy                                                         	614.99	https://www.bestbuy.com                                         	iphone10promax,bestbuy
48	apple                                                           	0	none                                                            	iphone10promax,apple
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: liujinhao
--

COPY public.product (p_product_key, p_ecommerce_key, p_name, p_brand, p_image, p_release_date, p_dimension, p_os, p_storage, p_spec_key, p_comment) FROM stdin;
1	1	Iphone12                                                        	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12.jpg         	2020-10-23	164g, 7.4mm thickness                                           	ios 14.1                                                        	64	1	iphone12
1	2	Iphone12                                                        	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12.jpg         	2020-10-23	164g, 7.4mm thickness                                           	ios 14.1                                                        	64	1	iphone12
1	3	Iphone12                                                        	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12.jpg         	2020-10-23	164g, 7.4mm thickness                                           	ios 14.1                                                        	64	1	iphone12
2	4	Iphone 12 pro                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg   	2020-10-24	189g,7.4mm thickness                                            	ios 14.1                                                        	64	2	iphone
2	5	Iphone 12 pro                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg   	2020-10-24	189g,7.4mm thickness                                            	ios 14.1                                                        	64	2	iphone
2	6	Iphone 12 pro                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg   	2020-10-24	189g,7.4mm thickness                                            	ios 14.1                                                        	64	2	iphone
3	7	Iphone 12 mini                                                  	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-mini.jpg    	2020-11-13	135g, 7.4mm thickness                                           	ios 14.1                                                        	64	3	iphone12 mini
3	8	Iphone 12 mini                                                  	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-mini.jpg    	2020-11-13	135g, 7.4mm thickness                                           	ios 14.1                                                        	64	3	iphone12 mini
3	9	Iphone 12 mini                                                  	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-mini.jpg    	2020-11-13	135g, 7.4mm thickness                                           	ios 14.1                                                        	64	3	iphone12 mini
4	10	Iphone 12 pro max                                               	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro-max-.jpg	2020-11-13	228g, 7.4mm thickness                                           	ios 14.1                                                        	128	4	iphone12 pro max
4	11	Iphone 12 pro max                                               	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro-max-.jpg	2020-11-13	228g, 7.4mm thickness                                           	ios 14.1                                                        	128	4	iphone12 pro max
4	12	Iphone 12 pro max                                               	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro-max-.jpg	2020-11-13	228g, 7.4mm thickness                                           	ios 14.1                                                        	128	4	iphone12 pro max
5	13	Iphone 3                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13.jpg         	2021-09-24	174g, 7.7mm thickness                                           	ios 15                                                          	128	5	iphone13
5	14	Iphone 3                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13.jpg         	2021-09-24	174g, 7.7mm thickness                                           	ios 15                                                          	128	5	iphone13
5	15	Iphone 3                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13.jpg         	2021-09-24	174g, 7.7mm thickness                                           	ios 15                                                          	128	5	iphone13
6	16	iphone13 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro.jpg     	2021-09-24	204g, 7.7mm thickness                                           	ios 15                                                          	128	6	iphone13 pro
6	17	iphone13 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro.jpg     	2021-09-24	204g, 7.7mm thickness                                           	ios 15                                                          	128	6	iphone13 pro
6	18	iphone13 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro.jpg     	2021-09-24	204g, 7.7mm thickness                                           	ios 15                                                          	128	6	iphone13 pro
7	19	iphone13 mini                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-mini.jpg    	2021-09-24	141g, 7.7mm thickness                                           	ios 16.1                                                        	128	7	iphone13 mini
7	20	iphone13 mini                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-mini.jpg    	2021-09-24	141g, 7.7mm thickness                                           	ios 16.1                                                        	128	7	iphone13 mini
7	21	iphone13 mini                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-mini.jpg    	2021-09-24	141g, 7.7mm thickness                                           	ios 16.1                                                        	128	7	iphone13 mini
8	22	iphone13 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg 	2021-09-24	240g, 7.7mm thickness                                           	ios 15                                                          	128	8	iphone13 pro max
8	23	iphone13 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg 	2021-09-24	240g, 7.7mm thickness                                           	ios 15                                                          	128	8	iphone13 pro max
8	24	iphone13 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg 	2021-09-24	240g, 7.7mm thickness                                           	ios 15                                                          	128	8	iphone13 pro max
9	25	iphone14                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14.jpg         	2022-09-16	172g, 7.8mm thickness                                           	ios 16                                                          	128	9	iphone14
9	26	iphone14                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14.jpg         	2022-09-16	172g, 7.8mm thickness                                           	ios 16                                                          	128	9	iphone14
9	27	iphone14                                                        	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14.jpg         	2022-09-16	172g, 7.8mm thickness                                           	ios 16                                                          	128	9	iphone14
10	28	iphone14 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro.jpg     	2022-09-16	206g, 7.9mm thickness                                           	ios 16                                                          	128	10	iphone14 pro
10	29	iphone14 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro.jpg     	2022-09-16	206g, 7.9mm thickness                                           	ios 16                                                          	128	10	iphone14 pro
10	30	iphone14 pro                                                    	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro.jpg     	2022-09-16	206g, 7.9mm thickness                                           	ios 16                                                          	128	10	iphone14 pro
11	31	iphone14 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro-max-.jpg	2022-09-16	240g, 7.9mm thickness                                           	ios 16                                                          	128	11	iphone14 pro max
11	32	iphone14 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro-max-.jpg	2022-09-16	240g, 7.9mm thickness                                           	ios 16                                                          	128	11	iphone14 pro max
11	33	iphone14 pro max                                                	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro-max-.jpg	2022-09-16	240g, 7.9mm thickness                                           	ios 16                                                          	128	11	iphone14 pro max
12	34	iphone14 plus                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-plus.jpg    	2022-10-07	203g, 7.8mm thickness\n                                          	ios 16                                                          	128	12	iphone14 plus
12	35	iphone14 plus                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-plus.jpg    	2022-10-07	203g, 7.8mm thickness\n                                          	ios 16                                                          	128	12	iphone14 plus
12	36	iphone14 plus                                                   	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-plus.jpg    	2022-10-07	203g, 7.8mm thickness\n                                          	ios 16                                                          	128	12	iphone14 plus
13	37	Iphone SE                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-se-2022.jpg    	2022-03-08	144g, 7.3mm thickness\n                                          	ios 15.4                                                        	64	13	iphone SE
13	38	iphone SE                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-se-2022.jpg    	2022-03-08	144g, 7.3mm thickness\n                                          	ios 15.4                                                        	64	13	iphone SE
13	39	iphone SE                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-se-2022.jpg    	2022-03-08	144g, 7.3mm thickness\n                                          	ios 15.4                                                        	64	13	iphone SE
14	40	iphone 11                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11.jpg         	2019-09-20	194g, 8.3mm thickness\n                                          	ios 13                                                          	64	14	iphone 10
14	41	iphone 11                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11.jpg         	2019-09-20	194g, 8.3mm thickness\n                                          	ios 13                                                          	64	14	iphone 10
14	42	iphone 11                                                       	Iphone                                                          	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11.jpg         	2019-09-20	194g, 8.3mm thickness\n                                          	ios 13                                                          	64	14	iphone 10
16	46	iphone 11 pro max                                               	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro.jpg     	2019-09-20	226g, 8.1mm thickness\n                                          	ios 13                                                          	64	16	iphone 10 pro max
16	47	iphone 11 pro max                                               	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro.jpg     	2019-09-20	226g, 8.1mm thickness\n                                          	ios 13                                                          	64	16	iphone 10 pro max
16	48	iphone 11 pro max                                               	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro.jpg     	2019-09-20	226g, 8.1mm thickness\n                                          	ios 13                                                          	64	16	iphone 10 pro max
15	43	iphone 11 pro                                                   	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro-max-.jpg	2019-09-20	226g, 8.1mm thickness\n                                          	ios 13                                                          	64	15	iphone 10 pro
15	45	iphone 11 pro                                                   	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro-max-.jpg	2019-09-20	226g, 8.1mm thickness                                           	ios 13                                                          	64	15	iphone 10 pro
15	44	iphone 11 pro                                                   	apple                                                           	https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11-pro-max-.jpg	2019-09-20	226g, 8.1mm thickness                                           	ios 13                                                          	64	15	iphone 10 pro
\.


--
-- Data for Name: spec; Type: TABLE DATA; Schema: public; Owner: liujinhao
--

COPY public.spec (s_spec_key, s_network, s_launch, s_body, s_display, s_platform, s_memory, s_camera, s_sound, s_comms, s_features, s_battery, s_misc, s_comment) FROM stdin;
1	GSM/CDMA/HSPA/EVDO/LTE/5G                                       	2020-09-13	146.7x71.5x7.4mm                                                	Super RetinaXDROLED,HDR10,Dolby Vision                          	iOS 14.1, upgrade to iOS 16.1                                   	64	12 MP, f/1.6, 26mm,1.4µm, dualpixel PDAF,12MP,f/2.4,13mm        	4K,1080p, HDR, Dolby Vision HDR (up to 30fps), stereo sound rec.	Wi-Fi 802.11, dual-band, hotspot. Bluetooth 5.0, A2DP, LE       	Face ID, accelerometer, gyro, proximity, compass, barometer     	2815	Black, White, Red, Green, Blue, Purple                          	iphone12
2	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2020-10-13	146.7 x 71.5 x 7.4 mm (5.78 x 2.81 x 0.29in)                    	Super Retina XDR OLED, HDR10, Dolby Vision\n                     	iOS 14.1, upgradable to iOS 16.1\n                               	128	12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF               	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	2815	Silver, Graphite, Gold, Pacific Blue                            	iphone12 pro
3	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2020-10-13	131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29in)                    	Super Retina XDR OLED, HDR10, Dolby Vision\n                     	iOS 14.1, upgradable to iOS 16.1\n                               	128	12 MP, f/1.6, 26mm (wide), 1.4µm, dual pixel PDAF               	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	2227	Black, White, Red, Green, Blue, Purple                          	iphone12 mini
4	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2020-10-13	160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29in)                    	Super Retina XDR OLED, HDR10, Dolby Vision\n                     	iOS 14.1, upgradable to iOS 16.1\n                               	128	12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF               	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	3687	Silver, Graphite, Gold, Pacific Blue                            	iphone12 pro max
5	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2021-09-14	146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)                   	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 15, upgradable to iOS 16.1                                  	128	12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF               	 with stereo speakers.                                          	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\n                  	Dual-LED dual-tone flash, HDR (photo/panorama)                  	3240	Starlight, Midnight, Blue, Pink, Red, Green                     	iphone 13
6	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2021-09-14	146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)                   	Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision               	iOS 15, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide), 1/1.7\\", 1.9µm, dual pixel PDAF      	 with stereo speakers.                                          	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\n                  	Dual-LED dual-tone flash, HDR (photo/panorama)                  	3095	Graphite, Gold, Silver, Sierra Blue, Alpine Green               	iphone 13 pro
7	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2021-09-14	131.5 x 64.2 x 7.7 mm (5.18 x 2.53 x 0.30 in)                   	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 15, upgradable to iOS 16.1                                  	128	12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF               	 with stereo speakers.                                          	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\n                  	Dual-LED dual-tone flash, HDR (photo/panorama)\n                 	2438	Starlight, Midnight, Blue, Pink, Red, Green"                    	iphone 13 mini
8	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2021-09-14	160.8 x 78.1 x 7.7 mm (6.33 x 3.07 x 0.30 in)                   	Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision               	iOS 15, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide), 1/1.7\\", 1.9µm, dual pixel PDAF      	 with stereo speakers.                                          	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\n                  	Dual-LED dual-tone flash, HDR (photo/panorama)                  	4352	Graphite, Gold, Silver, Sierra Blue, Alpine Green               	iphone 13 pro max
9	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2022-09-07	146.7 x 71.5 x 7.8 mm (5.78 x 2.81 x 0.31 in)                   	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 16, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide),  1/1.7\\", 1.9µm, dual pixel PDAF     	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	3279	Midnight, Purple, Starlight, Blue, Red                          	Iphone 14
10	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2022-09-07	147.5 x 71.5 x 7.9 mm (5.81 x 2.81 x 0.31 in)                   	LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision          	iOS 16, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide),  1/1.7\\", 1.9µm, dual pixel PDAF     	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	3200	Space Black, Silver, Gold, Deep Purple                          	Iphone 14 pro
11	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2022-09-07	160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)                   	LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision          	iOS 16, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide),  1/1.7\\", 1.9µm, dual pixel PDAF     	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	4323	Space Black, Silver, Gold, Deep Purple                          	Iphone 14 pro max
12	GSM / CDMA / HSPA / EVDO / LTE / 5G\n                            	2022-09-07	160.8 x 78.1 x 7.8 mm (6.33 x 3.07 x 0.31 in)                   	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 16, upgradable to iOS 16.1                                  	128	12 MP, f/1.5, 26mm (wide),  1/1.7\\", 1.9µm, dual pixel PDAF     	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Dual-LED dual-tone flash, HDR (photo/panorama)                  	4323	Midnight, Purple, Starlight, Blue, Red                          	Iphone 14 plus
13	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2022-03-08	138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)                   	Retina IPS LCD, 625 nits (typ)                                  	iOS 16, upgradable to iOS 16.1                                  	64	12 MP, f/1.8 (wide), PDAF, OIS                                  	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Quad-LED dual-tone flash, HDR, panorama                         	2018	Midnight, Starlight, Red                                        	Iphone SE
14	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2019-09-20	150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)                   	Liquid Retina IPS LCD, 625 nits (typ)                           	iOS 13, upgradable to iOS 16.1                                  	64	12 MP, f/1.8 (wide), PDAF, OIS                                  	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Quad-LED dual-tone flash, HDR, panorama                         	3110	Black, Green, Yellow, Purple, Red, White                        	Iphone 11
15	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2019-09-20	144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)                     	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 13, upgradable to iOS 16.1                                  	64	12 MP, f/1.8 (wide), PDAF, OIS                                  	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Quad-LED dual-tone flash, HDR, panorama                         	3046	Black, Green, Yellow, Purple, Red, White                        	Iphone 11 pro
16	GSM / CDMA / HSPA / EVDO / LTE / 5G                             	2019-09-20	158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)                     	Super Retina XDR OLED, HDR10, Dolby Vision                      	iOS 13, upgradable to iOS 16.1                                  	64	12 MP, f/1.8 (wide), PDAF, OIS                                  	with stereo speakers.                                           	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot                   	Quad-LED dual-tone flash, HDR, panorama                         	3969	Black, Green, Yellow, Purple, Red, White                        	Iphone 11 pro max
\.


--
-- PostgreSQL database dump complete
--

