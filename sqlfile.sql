--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: transactions; Type: TABLE; Schema: public; Owner: eris
--

-- CREATE TABLE public.transactions (
--     id integer NOT NULL,
--     date character varying(40) NOT NULL,
--     balance integer DEFAULT 0,
--     deposit integer DEFAULT 0,
--     withdrawal integer DEFAULT 0,
--     description character varying(30)
-- );


-- ALTER TABLE public.transactions OWNER TO eris;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: eris
--

-- CREATE SEQUENCE public.transactions_id_seq
--     AS integer
--     START WITH 1
--     INCREMENT BY 1
--     NO MINVALUE
--     NO MAXVALUE
--     CACHE 1;


-- ALTER TABLE public.transactions_id_seq OWNER TO eris;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eris
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: eris
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: eris
--

COPY public.transactions (id, date, balance, deposit, withdrawal, description) FROM stdin;
1	1-1-2021	1500	1500	0	pay_day
2	1-1-2021	1395	0	105	retirement_contribution
3	1-1-2021	1386	0	9	payment
4	1-2-2021	1309	0	77	payment
5	1-3-2021	1295	0	14	payment
6	1-4-2021	1197	0	98	payment
7	1-5-2021	1126	0	71	payment
8	1-6-2021	1042	0	84	payment
9	1-7-2021	992	0	50	payment
10	1-8-2021	942	0	50	payment
11	1-9-2021	877	0	65	payment
12	1-10-2021	784	0	93	payment
13	1-11-2021	723	0	61	payment
14	1-12-2021	712	0	11	payment
15	1-13-2021	677	0	35	payment
16	1-14-2021	616	0	61	payment
17	1-15-2021	2116	1500	0	pay_day
18	1-15-2021	2011	0	105	retirement_contribution
19	1-15-2021	1876	0	135	payment
20	1-16-2021	1869	0	7	payment
21	1-17-2021	1722	0	147	payment
22	1-18-2021	1692	0	30	payment
23	1-19-2021	1573	0	119	payment
24	1-20-2021	1464	0	109	payment
25	1-21-2021	1451	0	13	payment
26	1-22-2021	1315	0	136	payment
27	1-23-2021	1189	0	126	payment
28	1-24-2021	1095	0	94	payment
29	1-25-2021	1015	0	80	payment
30	1-26-2021	929	0	86	payment
31	1-27-2021	841	0	88	payment
32	1-28-2021	753	0	88	payment
33	1-29-2021	2253	1500	0	pay_day
34	1-29-2021	2148	0	105	retirement_contribution
35	1-29-2021	2032	0	116	payment
36	1-30-2021	1957	0	75	payment
37	1-31-2021	1947	0	10	payment
38	2-1-2021	1919	0	28	payment
39	2-2-2021	1903	0	16	payment
40	2-3-2021	1884	0	19	payment
41	2-4-2021	1850	0	34	payment
42	2-5-2021	1816	0	34	payment
43	2-6-2021	1734	0	82	payment
44	2-7-2021	1611	0	123	payment
45	2-8-2021	1509	0	102	payment
46	2-9-2021	1483	0	26	payment
47	2-10-2021	1370	0	113	payment
48	2-11-2021	1242	0	128	payment
49	2-12-2021	2742	1500	0	pay_day
50	2-12-2021	2637	0	105	retirement_contribution
51	2-12-2021	2581	0	56	payment
52	2-13-2021	2547	0	34	payment
53	2-14-2021	2511	0	36	payment
54	2-15-2021	2431	0	80	payment
55	2-16-2021	2330	0	101	payment
56	2-17-2021	2197	0	133	payment
57	2-18-2021	2093	0	104	payment
58	2-19-2021	2018	0	75	payment
59	2-20-2021	1986	0	32	payment
60	2-21-2021	1882	0	104	payment
61	2-22-2021	1801	0	81	payment
62	2-23-2021	1714	0	87	payment
63	2-24-2021	1694	0	20	payment
64	2-25-2021	1658	0	36	payment
65	2-26-2021	3158	1500	0	pay_day
66	2-26-2021	3053	0	105	retirement_contribution
67	2-26-2021	2937	0	116	payment
68	2-27-2021	2879	0	58	payment
69	2-28-2021	2853	0	26	payment
70	3-1-2021	2760	0	93	payment
71	3-2-2021	2636	0	124	payment
72	3-3-2021	2529	0	107	payment
73	3-4-2021	2522	0	7	payment
74	3-5-2021	2512	0	10	payment
75	3-6-2021	2474	0	38	payment
76	3-7-2021	2339	0	135	payment
77	3-8-2021	2324	0	15	payment
78	3-9-2021	2213	0	111	payment
79	3-10-2021	2206	0	7	payment
80	3-11-2021	2106	0	100	payment
81	3-12-2021	3606	1500	0	pay_day
82	3-12-2021	3501	0	105	retirement_contribution
83	3-12-2021	3382	0	119	payment
84	3-13-2021	3310	0	72	payment
85	3-14-2021	3308	0	2	payment
86	3-15-2021	3241	0	67	payment
87	3-16-2021	3215	0	26	payment
88	3-17-2021	3111	0	104	payment
89	3-18-2021	2966	0	145	payment
90	3-19-2021	2891	0	75	payment
91	3-20-2021	2813	0	78	payment
92	3-21-2021	2771	0	42	payment
93	3-22-2021	2700	0	71	payment
94	3-23-2021	2623	0	77	payment
95	3-24-2021	2587	0	36	payment
96	3-25-2021	2535	0	52	payment
97	3-26-2021	4035	1500	0	pay_day
98	3-26-2021	3930	0	105	retirement_contribution
99	3-26-2021	3887	0	43	payment
100	3-27-2021	3787	0	100	payment
101	3-28-2021	3714	0	73	payment
102	3-29-2021	3627	0	87	payment
103	3-30-2021	3521	0	106	payment
104	3-31-2021	3458	0	63	payment
105	4-1-2021	3309	0	149	payment
106	4-2-2021	3266	0	43	payment
107	4-3-2021	3162	0	104	payment
108	4-4-2021	3023	0	139	payment
109	4-5-2021	2928	0	95	payment
110	4-6-2021	2787	0	141	payment
111	4-7-2021	2724	0	63	payment
112	4-8-2021	2633	0	91	payment
113	4-9-2021	4133	1500	0	pay_day
114	4-9-2021	4028	0	105	retirement_contribution
115	4-9-2021	3986	0	42	payment
116	4-10-2021	3892	0	94	payment
117	4-11-2021	3751	0	141	payment
118	4-12-2021	3673	0	78	payment
119	4-13-2021	3545	0	128	payment
120	4-14-2021	3451	0	94	payment
121	4-15-2021	3410	0	41	payment
122	4-16-2021	3290	0	120	payment
123	4-17-2021	3193	0	97	payment
124	4-18-2021	3150	0	43	payment
125	4-19-2021	3146	0	4	payment
126	4-20-2021	3067	0	79	payment
127	4-21-2021	3019	0	48	payment
128	4-22-2021	2925	0	94	payment
129	4-23-2021	4425	1500	0	pay_day
130	4-23-2021	4320	0	105	retirement_contribution
131	4-23-2021	4192	0	128	payment
132	4-24-2021	4158	0	34	payment
133	4-25-2021	4132	0	26	payment
134	4-26-2021	4114	0	18	payment
135	4-27-2021	4044	0	70	payment
136	4-28-2021	3919	0	125	payment
137	4-29-2021	3838	0	81	payment
138	4-30-2021	3827	0	11	payment
139	5-1-2021	3811	0	16	payment
140	5-2-2021	3689	0	122	payment
141	5-3-2021	3638	0	51	payment
142	5-4-2021	3540	0	98	payment
143	5-5-2021	3424	0	116	payment
144	5-6-2021	3278	0	146	payment
145	5-7-2021	4778	1500	0	pay_day
146	5-7-2021	4673	0	105	retirement_contribution
147	5-7-2021	4526	0	147	payment
148	5-8-2021	4405	0	121	payment
149	5-9-2021	4323	0	82	payment
150	5-10-2021	4193	0	130	payment
151	5-11-2021	4049	0	144	payment
152	5-12-2021	3999	0	50	payment
153	5-13-2021	3870	0	129	payment
154	5-14-2021	3835	0	35	payment
155	5-15-2021	3774	0	61	payment
156	5-16-2021	3719	0	55	payment
157	5-17-2021	3712	0	7	payment
158	5-18-2021	3566	0	146	payment
159	5-19-2021	3457	0	109	payment
160	5-20-2021	3316	0	141	payment
161	5-21-2021	4816	1500	0	pay_day
162	5-21-2021	4711	0	105	retirement_contribution
163	5-21-2021	4613	0	98	payment
164	5-22-2021	4529	0	84	payment
165	5-23-2021	4503	0	26	payment
166	5-24-2021	4394	0	109	payment
167	5-25-2021	4334	0	60	payment
168	5-26-2021	4220	0	114	payment
169	5-27-2021	4095	0	125	payment
170	5-28-2021	4027	0	68	payment
171	5-29-2021	3975	0	52	payment
172	5-30-2021	3890	0	85	payment
173	5-31-2021	3795	0	95	payment
174	6-1-2021	3734	0	61	payment
175	6-2-2021	3606	0	128	payment
176	6-3-2021	3485	0	121	payment
177	6-4-2021	4985	1500	0	pay_day
178	6-4-2021	4880	0	105	retirement_contribution
179	6-4-2021	4754	0	126	payment
180	6-5-2021	4739	0	15	payment
181	6-6-2021	4675	0	64	payment
182	6-7-2021	4529	0	146	payment
183	6-8-2021	4400	0	129	payment
184	6-9-2021	4305	0	95	payment
185	6-10-2021	4195	0	110	payment
186	6-11-2021	4103	0	92	payment
187	6-12-2021	4100	0	3	payment
188	6-13-2021	4097	0	3	payment
189	6-14-2021	4064	0	33	payment
190	6-15-2021	4042	0	22	payment
191	6-16-2021	3952	0	90	payment
192	6-17-2021	3854	0	98	payment
193	6-18-2021	5354	1500	0	pay_day
194	6-18-2021	5249	0	105	retirement_contribution
195	6-18-2021	5179	0	70	payment
196	6-19-2021	5100	0	79	payment
197	6-20-2021	4986	0	114	payment
198	6-21-2021	4854	0	132	payment
199	6-22-2021	4756	0	98	payment
200	6-23-2021	4626	0	130	payment
201	6-24-2021	4592	0	34	payment
202	6-25-2021	4457	0	135	payment
203	6-26-2021	4358	0	99	payment
204	6-27-2021	4234	0	124	payment
205	6-28-2021	4169	0	65	payment
206	6-29-2021	4048	0	121	payment
207	6-30-2021	4017	0	31	payment
208	7-1-2021	3959	0	58	payment
209	7-2-2021	5459	1500	0	pay_day
210	7-2-2021	5354	0	105	retirement_contribution
211	7-2-2021	5309	0	45	payment
212	7-3-2021	5197	0	112	payment
213	7-4-2021	5124	0	73	payment
214	7-5-2021	5027	0	97	payment
215	7-6-2021	5000	0	27	payment
216	7-7-2021	4857	0	143	payment
217	7-8-2021	4838	0	19	payment
218	7-9-2021	4808	0	30	payment
219	7-10-2021	4668	0	140	payment
220	7-11-2021	4667	0	1	payment
221	7-12-2021	4551	0	116	payment
222	7-13-2021	4479	0	72	payment
223	7-14-2021	4464	0	15	payment
224	7-15-2021	4440	0	24	payment
225	7-16-2021	5940	1500	0	pay_day
226	7-16-2021	5835	0	105	retirement_contribution
227	7-16-2021	5733	0	102	payment
228	7-17-2021	5614	0	119	payment
229	7-18-2021	5581	0	33	payment
230	7-19-2021	5513	0	68	payment
231	7-20-2021	5502	0	11	payment
232	7-21-2021	5396	0	106	payment
233	7-22-2021	5353	0	43	payment
234	7-23-2021	5237	0	116	payment
235	7-24-2021	5190	0	47	payment
236	7-25-2021	5047	0	143	payment
237	7-26-2021	4951	0	96	payment
238	7-27-2021	4950	0	1	payment
239	7-28-2021	4933	0	17	payment
240	7-29-2021	4918	0	15	payment
241	7-30-2021	6418	1500	0	pay_day
242	7-30-2021	6313	0	105	retirement_contribution
243	7-30-2021	6200	0	113	payment
244	7-31-2021	6163	0	37	payment
245	8-1-2021	6083	0	80	payment
246	8-2-2021	5960	0	123	payment
247	8-3-2021	5888	0	72	payment
248	8-4-2021	5869	0	19	payment
249	8-5-2021	5848	0	21	payment
250	8-6-2021	5754	0	94	payment
251	8-7-2021	5631	0	123	payment
252	8-8-2021	5607	0	24	payment
253	8-9-2021	5534	0	73	payment
254	8-10-2021	5408	0	126	payment
255	8-11-2021	5310	0	98	payment
256	8-12-2021	5162	0	148	payment
257	8-13-2021	6662	1500	0	pay_day
258	8-13-2021	6557	0	105	retirement_contribution
259	8-13-2021	6490	0	67	payment
260	8-14-2021	6458	0	32	payment
261	8-15-2021	6396	0	62	payment
262	8-16-2021	6298	0	98	payment
263	8-17-2021	6296	0	2	payment
264	8-18-2021	6226	0	70	payment
265	8-19-2021	6137	0	89	payment
266	8-20-2021	6008	0	129	payment
267	8-21-2021	5997	0	11	payment
268	8-22-2021	5928	0	69	payment
269	8-23-2021	5854	0	74	payment
270	8-24-2021	5793	0	61	payment
271	8-25-2021	5763	0	30	payment
272	8-26-2021	5646	0	117	payment
273	8-27-2021	7146	1500	0	pay_day
274	8-27-2021	7041	0	105	retirement_contribution
275	8-27-2021	6952	0	89	payment
276	8-28-2021	6930	0	22	payment
277	8-29-2021	6875	0	55	payment
278	8-30-2021	6823	0	52	payment
279	8-31-2021	6795	0	28	payment
280	9-1-2021	6739	0	56	payment
281	9-2-2021	6719	0	20	payment
282	9-3-2021	6638	0	81	payment
283	9-4-2021	6587	0	51	payment
284	9-5-2021	6481	0	106	payment
285	9-6-2021	6430	0	51	payment
286	9-7-2021	6390	0	40	payment
287	9-8-2021	6293	0	97	payment
288	9-9-2021	6217	0	76	payment
289	9-10-2021	7717	1500	0	pay_day
290	9-10-2021	7612	0	105	retirement_contribution
291	9-10-2021	7505	0	107	payment
292	9-11-2021	7392	0	113	payment
293	9-12-2021	7257	0	135	payment
294	9-13-2021	7227	0	30	payment
295	9-14-2021	7165	0	62	payment
296	9-15-2021	7112	0	53	payment
297	9-16-2021	6968	0	144	payment
298	9-17-2021	6873	0	95	payment
299	9-18-2021	6765	0	108	payment
300	9-19-2021	6698	0	67	payment
301	9-20-2021	6592	0	106	payment
302	9-21-2021	6552	0	40	payment
303	9-22-2021	6427	0	125	payment
304	9-23-2021	6297	0	130	payment
305	9-24-2021	7797	1500	0	pay_day
306	9-24-2021	7692	0	105	retirement_contribution
307	9-24-2021	7645	0	47	payment
308	9-25-2021	7607	0	38	payment
309	9-26-2021	7575	0	32	payment
310	9-27-2021	7560	0	15	payment
311	9-28-2021	7437	0	123	payment
312	9-29-2021	7339	0	98	payment
313	9-30-2021	7307	0	32	payment
314	10-1-2021	7212	0	95	payment
315	10-2-2021	7180	0	32	payment
316	10-3-2021	7100	0	80	payment
317	10-4-2021	6960	0	140	payment
318	10-5-2021	6958	0	2	payment
319	10-6-2021	6936	0	22	payment
320	10-7-2021	6798	0	138	payment
321	10-8-2021	8298	1500	0	pay_day
322	10-8-2021	8193	0	105	retirement_contribution
323	10-8-2021	8139	0	54	payment
324	10-9-2021	8114	0	25	payment
325	10-10-2021	8018	0	96	payment
326	10-11-2021	7982	0	36	payment
327	10-12-2021	7926	0	56	payment
328	10-13-2021	7817	0	109	payment
329	10-14-2021	7685	0	132	payment
330	10-15-2021	7618	0	67	payment
331	10-16-2021	7497	0	121	payment
332	10-17-2021	7368	0	129	payment
333	10-18-2021	7337	0	31	payment
334	10-19-2021	7233	0	104	payment
335	10-20-2021	7130	0	103	payment
336	10-21-2021	7113	0	17	payment
337	10-22-2021	8613	1500	0	pay_day
338	10-22-2021	8508	0	105	retirement_contribution
339	10-22-2021	8423	0	85	payment
340	10-23-2021	8377	0	46	payment
341	10-24-2021	8374	0	3	payment
342	10-25-2021	8234	0	140	payment
343	10-26-2021	8227	0	7	payment
344	10-27-2021	8208	0	19	payment
345	10-28-2021	8154	0	54	payment
346	10-29-2021	8148	0	6	payment
347	10-30-2021	8018	0	130	payment
348	10-31-2021	7891	0	127	payment
349	11-1-2021	7771	0	120	payment
350	11-2-2021	7760	0	11	payment
351	11-3-2021	7675	0	85	payment
352	11-4-2021	7664	0	11	payment
353	11-5-2021	9164	1500	0	pay_day
354	11-5-2021	9059	0	105	retirement_contribution
355	11-5-2021	8953	0	106	payment
356	11-6-2021	8905	0	48	payment
357	11-7-2021	8835	0	70	payment
358	11-8-2021	8696	0	139	payment
359	11-9-2021	8625	0	71	payment
360	11-10-2021	8522	0	103	payment
361	11-11-2021	8404	0	118	payment
362	11-12-2021	8283	0	121	payment
363	11-13-2021	8157	0	126	payment
364	11-14-2021	8038	0	119	payment
365	11-15-2021	7967	0	71	payment
366	11-16-2021	7910	0	57	payment
367	11-17-2021	7905	0	5	payment
368	11-18-2021	7848	0	57	payment
369	11-19-2021	9348	1500	0	pay_day
370	11-19-2021	9243	0	105	retirement_contribution
371	11-19-2021	9238	0	5	payment
372	11-20-2021	9174	0	64	payment
373	11-21-2021	9109	0	65	payment
374	11-22-2021	9002	0	107	payment
375	11-23-2021	8946	0	56	payment
376	11-24-2021	8847	0	99	payment
377	11-25-2021	8698	0	149	payment
378	11-26-2021	8567	0	131	payment
379	11-27-2021	8562	0	5	payment
380	11-28-2021	8545	0	17	payment
381	11-29-2021	8428	0	117	payment
382	11-30-2021	8399	0	29	payment
383	12-1-2021	8273	0	126	payment
384	12-2-2021	8238	0	35	payment
385	12-3-2021	9738	1500	0	pay_day
386	12-3-2021	9633	0	105	retirement_contribution
387	12-3-2021	9576	0	57	payment
388	12-4-2021	9458	0	118	payment
389	12-5-2021	9450	0	8	payment
390	12-6-2021	9434	0	16	payment
391	12-7-2021	9389	0	45	payment
392	12-8-2021	9305	0	84	payment
393	12-9-2021	9172	0	133	payment
394	12-10-2021	9083	0	89	payment
395	12-11-2021	8971	0	112	payment
396	12-12-2021	8862	0	109	payment
397	12-13-2021	8828	0	34	payment
398	12-14-2021	8744	0	84	payment
399	12-15-2021	8615	0	129	payment
400	12-16-2021	8584	0	31	payment
401	12-17-2021	10084	1500	0	pay_day
402	12-17-2021	9979	0	105	retirement_contribution
403	12-17-2021	9835	0	144	payment
404	12-18-2021	9812	0	23	payment
405	12-19-2021	9735	0	77	payment
406	12-20-2021	9712	0	23	payment
407	12-21-2021	9711	0	1	payment
408	12-22-2021	9561	0	150	payment
409	12-23-2021	9505	0	56	payment
410	12-24-2021	9382	0	123	payment
411	12-25-2021	9268	0	114	payment
412	12-26-2021	9156	0	112	payment
413	12-27-2021	9110	0	46	payment
414	12-28-2021	9104	0	6	payment
415	12-29-2021	8983	0	121	payment
416	12-30-2021	8847	0	136	payment
417	12-31-2021	10347	1500	0	pay_day
418	12-31-2021	10242	0	105	retirement_contribution
419	12-31-2021	10219	0	23	payment
\.


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eris
--

SELECT pg_catalog.setval('public.transactions_id_seq', 419, true);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: eris
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
