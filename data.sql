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
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2023-07-27 09:46:17.841103	2023-07-27 09:46:17.841103
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.users (id, name, email, password_digest, created_at, updated_at) FROM stdin;
1	John Doe	john@email.com	$2a$12$vWd9/ffGoxo2DQbkBosKwuPiGebW.AsvE65k1taLzYO71QGtSaU5u	2023-07-27 09:48:05.611559	2023-07-27 09:48:05.611559
3	Sascha	sascha@email.com	$2a$12$ZiWBUSet7voxSNiyxoPbK.rp0guz9e498Z0OrhIsHfH603K.Wvj2y	2023-07-27 15:26:17.470037	2023-07-27 15:26:17.470037
2	Fanny	fanny@email.com	$2a$12$tNC57aH4LVA/l310eoZ5veHr3SymKuA7B6uIaCk/GqBIcI8vVo3tC	2023-07-27 09:56:23.499114	2023-07-27 15:30:14.1419
4	elias	elias@email.com	$2a$12$uY9dp2vqx4FyddthcitCkufsevRYgzjgKwXolpbmzC3ggqDHXkmh.	2024-03-06 17:16:48.123804	2024-03-06 17:16:48.123804
5	jeremie	jeremie@email.com	$2a$12$77g1SiJX8f0W4LiLF8OmN.xLqL2gm1BG7e0vf.LeIN8UFlWnhtrLW	2024-03-07 11:40:43.78197	2024-03-07 11:40:43.78197
6	sarah	sarah@email.com	$2a$12$FUFhG.kVwwZB5p4TsD2zFezi/vd8qUtAhJuCcr9EjNQPZ4YrS4/nW	2024-03-07 12:10:28.925417	2024-03-07 12:10:28.925417
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.posts (id, title, description, created_at, updated_at, user_id, slug, image_url) FROM stdin;
33	Limestone on leaves	Looks like limestone on the leaves. What is this? Doesn't wash out with water. Also, what's this plant's name? I increased the contrast in this pic so you can see it better.	2023-07-31 17:18:49.976577	2023-08-04 00:33:43.503502	3	limestone-on-leaves	https://res.cloudinary.com/ds1luhmz0/image/upload/limestone-on-leaves.png
30	Weird indents	What are these weird indents on my monstera lead? It’s only on one singular leaf on the entire plant too.	2023-07-31 17:11:26.28012	2023-08-04 00:33:47.766309	3	weird-indents	https://res.cloudinary.com/ds1luhmz0/image/upload/weird-indents.png
20	CACTUS DOES A FLOP	Why does my cactus has this weird shape? What could I do to make it go straight?	2023-07-31 11:38:13.817274	2023-08-01 10:33:30.978472	1	cactus-does-a-flop	https://res.cloudinary.com/ds1luhmz0/image/upload/cactus-does-a-flop
25	How do I change the pot when the roots look like this?	I bought this clearance Baltic blue pathos 3 days ago, he’s doing great! I was about to report and saw these roots, despite having a ton of plants, I have no idea what I’m doing but they’re growing out of the bottom. Do I just have to cut them? 👀	2023-07-31 15:30:53.129009	2023-07-31 15:30:53.169655	1	how-do-i-change-the-pot-when-the-roots-look-like-this	https://res.cloudinary.com/ds1luhmz0/image/upload/how-do-i-change-the-pot-when-the-roots-look-like-this
21	Inherited a 50 years old cactus!!	Need tips to care for a saguaro this winter indoors	2023-07-31 11:42:59.925864	2023-08-04 00:33:55.524846	3	inherited-a-50-years-old-cactus	https://res.cloudinary.com/ds1luhmz0/image/upload/inherited-a-50-years-old-cactus
24	What are these white things on my frizzle sizzle?	Only 1 of the leaves has it. Plant is outdoor, shaded from morning to noon, and gets direct sunlight for a couple of hours in the evening	2023-07-31 15:21:14.35441	2023-08-04 00:34:00.243382	3	what-are-these-white-things-on-my-frizzle-sizzle	https://res.cloudinary.com/ds1luhmz0/image/upload/what-are-these-white-things-on-my-frizzle-sizzle
34	Panty hose for fungus gnats	It’s works. I had different plants in different watering schedules so they’d always find one to move to. Panty hose isolates each plant, made it easier to wipe them out. Followed by one watering of peroxide mix and a couple heavy dry backs.	2023-08-01 10:56:03.756612	2023-08-04 00:35:35.807778	3	panty-hose-for-fungus-gnats	https://res.cloudinary.com/ds1luhmz0/image/upload/panty-hose-for-fungus-gnats.png
28	Holy luxuriant	I’m sick about this I’ve had this since June 8th. So I think it could just be from lower humidity. ( need to get a cabinet for it) it was from ecuagenera.\n\nJust getting these holes and cracks along the veins of the leaves no root or stem damage at all I even see new growth on roots and growth points.\n\nIt was really close to a window for about a month so im thinking it’s either humidity + sunburnt or both. Is there any way to stop the holes from getting bigger or to prevent this in future?	2023-07-31 16:57:19.357644	2023-08-04 00:35:41.096594	3	holy-luxuriant	https://res.cloudinary.com/ds1luhmz0/image/upload/holy-luxuriant
26	Taking murder to a new level.	Had anyone tried this for gnats?	2023-07-31 16:32:06.597567	2023-08-04 00:35:47.799172	3	taking-murder-to-a-new-level	https://res.cloudinary.com/ds1luhmz0/image/upload/taking-murder-to-a-new-level.png
29	After coming back from vacationing for a week my Peace Lily looks like this. HELP. 	I watered it yesterday, but it still looks wilted.	2023-07-31 17:04:32.795159	2023-08-04 00:35:52.093859	3	after-coming-back-from-vacationing-for-a-week-my-peace-lily-looks-like-this-help	https://res.cloudinary.com/ds1luhmz0/image/upload/after-coming-back-from-vacationing-for-a-week-my-peace-lily-looks-like-this-help.png
19	HELP!	I accidentally watered my plant with WINE... 😑	2023-07-31 11:25:45.533269	2023-08-04 00:38:40.646498	3	help	https://res.cloudinary.com/ds1luhmz0/image/upload/help
15	Some kind of pest?	My fern has become infested by tons of tiny black dots(mites?). Can we save her!?	2023-07-31 10:20:44.13223	2023-08-04 00:40:48.045512	1	some-kind-of-pest	https://res.cloudinary.com/ds1luhmz0/image/upload/some-kind-of-pest
23	Mosaic?	This is a tree on my street. Neighbor thinks it is an elm. Just noticed the weird pixel pattern today. I haven’t parked on this street in over a week. So maybe I just haven’t seen it yet?	2023-07-31 13:26:56.897021	2023-08-04 00:42:21.070759	2	mosaic	https://res.cloudinary.com/ds1luhmz0/image/upload/mosaic
31	My albo is only giving out white leaves	I bought this beautiful monstera albo cutting and it’s been rooting beautifully. The original leaf is the one that is bigger and has green on it. It just opened up a new leaf that is all practically white.\n\nIs there anything I can do to encourage it to grow something more green? I’m really worried that since it’s so white, that as it grows it won’t be able to sustain itself.\n\nCurrently in an indoor greenhouse with a humidifier. With grow lights that are on about 8 hours a day. Growing it in a plastic container with just perlite. And I’m watering it every time it runs the water dry.	2023-07-31 17:13:49.770613	2023-07-31 17:13:49.777239	1	my-albo-is-only-giving-out-white-leaves	https://res.cloudinary.com/ds1luhmz0/image/upload/my-albo-is-only-giving-out-white-leaves.png
27	Is my snake plant reproducing?	My snake plant seems to have produced an adorable little sprout. At what stage should I separate and repot it?	2023-07-31 16:41:36.894082	2023-08-04 00:43:25.301428	2	is-my-snake-plant-reproducing	https://res.cloudinary.com/ds1luhmz0/image/upload/is-my-snake-plant-reproducing
32	Separate plants?	This is two different types of plant, right? Is it possible to separate them?	2023-07-31 17:15:20.950543	2023-08-04 00:45:10.01226	2	separate-plants	https://res.cloudinary.com/ds1luhmz0/image/upload/separate-plants.png
36	What are these bugs on my Creeping Jenny? Is it salvageable?	The infestation hasn't spread to the whole plant yet, just this one particular branch	2023-08-02 23:33:49.896523	2023-08-04 00:46:01.144129	2	what-are-these-bugs-on-my-creeping-jenny-is-it-salvageable	https://res.cloudinary.com/ds1luhmz0/image/upload/what-are-these-bugs-on-my-creeping-jenny-is-it-salvageable
14	7 red, but 1 white	I’m curious about why that happens, otherwise the plant is thriving.	2023-07-31 10:10:12.56889	2023-08-01 10:30:02.212878	1	7-red-but-1-white	https://res.cloudinary.com/ds1luhmz0/image/upload/7-red-but-1-white
22	My PPP is only putting out fully pink leaves...	Should I chop it? The stem is completely pink as well.	2023-07-31 11:45:53.166131	2023-08-01 10:35:22.621088	1	my-ppp-is-only-putting-out-fully-pink-leaves	https://res.cloudinary.com/ds1luhmz0/image/upload/my-ppp-is-only-putting-out-fully-pink-leaves
35	Is it beneficial?	it doesn't seem to harm the plant should i leave it?	2023-08-02 23:28:00.952165	2023-08-02 23:49:33.268888	1	is-it-beneficial	https://res.cloudinary.com/ds1luhmz0/image/upload/is-it-beneficial
37	Plant is flopping over	I have this plant, I am not sure what type it is. I came back from a weekend trip and it was completely flopped over onto the ground. I am assuming this means I am not watering it enough? Anyone know what type of plant this is and how much water it should get?	2023-08-02 23:54:08.975001	2023-08-02 23:54:08.984572	3	plant-is-flopping-over	https://res.cloudinary.com/ds1luhmz0/image/upload/plant-is-flopping-over.png
51	Had this guy in water for 2+ months…no roots	What should my next steps be? The cutting is not soft or rotten so I’d like to still try to propagate	2023-08-03 20:47:44.005254	2023-08-04 00:33:32.801258	3	had-this-guy-in-water-for-2-months-no-roots	https://res.cloudinary.com/ds1luhmz0/image/upload/had-this-guy-in-water-for-2-months-no-roots.png
38	Yellow leaves	This little guy is starting to turn yellow and lose leaves, what's wrong? I have had it for about 5 months now. I was told to treat it similar to a pothos as they are closely related. Since then I have only watered it twice because its soil retains a lot of moisture and is always wet. It lost a leave a couple of days ago, and today I checked on it and it's turning very yellow, has lost a big leaf and is wobbly. I'm confused because this tells me it has too much water, but I'm not watering it often at all. I only water it when it feels dry, and it always feels wet. Any help? I really love this plant.	2023-08-02 23:56:20.436982	2023-08-02 23:56:20.443521	2	yellow-leaves	https://res.cloudinary.com/ds1luhmz0/image/upload/yellow-leaves.png
53	Help for cactus	Can someone help me figure out if there’s any saving my friend’s cactus? It’s supposed to be watered once every 3 weeks, not sure what I did wrong	2023-08-03 21:02:38.466569	2023-08-04 00:35:16.456071	3	help-for-cactus	https://res.cloudinary.com/ds1luhmz0/image/upload/help-for-cactus
39	What’s this brown fiber growing on this?	It’s at my workplace, wondering what’s wrong with it if anything?	2023-08-03 00:09:41.813817	2023-08-03 00:09:41.857475	2	what-s-this-brown-fiber-growing-on-this	https://res.cloudinary.com/ds1luhmz0/image/upload/what-s-this-brown-fiber-growing-on-this.png
50	how do i help my little guy?	he’s suddenly really crispy at the end and dropped all his blossoms. i really want to save it </3\n\ni water it by soaking the plant in a water filled dish and then placing it back into its normal cup. some of the roots are also a bit crispy but it’s been showing new life in the root area so i thought it was doing better.	2023-08-03 20:27:04.885555	2023-08-04 00:35:25.798797	3	how-do-i-help-my-little-guy	https://res.cloudinary.com/ds1luhmz0/image/upload/how-do-i-help-my-little-guy.png
40	wtf happened?	Cactus was fine a month ago...	2023-08-03 00:28:17.638638	2023-08-03 00:28:17.674435	2	wtf-happened	https://res.cloudinary.com/ds1luhmz0/image/upload/wtf-happened.png
48	What is this plant?	Found while walking, what is this and is it possible to propagate?	2023-08-03 20:15:54.996189	2023-08-04 00:37:01.690819	2	what-is-this-plant	https://res.cloudinary.com/ds1luhmz0/image/upload/what-is-this-plant.png
41	It’s seen better days :(	My begonia isn’t doing very well, anyone have any tips?	2023-08-03 00:32:21.03474	2023-08-03 00:32:21.074732	3	it-s-seen-better-days	https://res.cloudinary.com/ds1luhmz0/image/upload/it-s-seen-better-days.png
52	Asiatic lilies have these growing on them	What are they?? I see roots and shoots	2023-08-03 20:57:45.557653	2023-08-04 00:37:07.567974	2	asiatic-lilies-have-these-growing-on-them	https://res.cloudinary.com/ds1luhmz0/image/upload/asiatic-lilies-have-these-growing-on-them.png
43	What Is This and How do I Cure It?	I have some sad little redbuds at my plant. They always seem to be struggling and they have always had this stuff on their trunks. Is there anything I can to about this...stuff? What is it?\n\nThank you very much in advance.	2023-08-03 12:15:28.377391	2023-08-04 00:47:42.919782	1	what-is-this-and-how-do-i-cure-it	https://res.cloudinary.com/ds1luhmz0/image/upload/what-is-this-and-how-do-i-cure-it.png
47	What happened here?	What caused this on these tomatoes?	2023-08-03 16:48:15.304441	2023-08-04 00:37:19.333198	2	what-happened-here	https://res.cloudinary.com/ds1luhmz0/image/upload/what-happened-here.png
42	What is this?	I think they might be flowers 🤨	2023-08-03 12:02:26.653888	2023-08-04 00:47:12.634424	3	what-is-this	https://res.cloudinary.com/ds1luhmz0/image/upload/what-is-this.png
45	What are these? Should I be worried?	Hi, i just got back from vacation and saw my gerbera flower infested with these bugs 😭 i keep the plant on the balcony. I don't know if they are bad or not, but I really don't want to lose the plant, it was a birthday gift from my nephew 🥺 Any ideas what can i do to save it?	2023-08-03 12:39:17.944689	2023-08-03 12:39:17.982337	2	what-are-these-should-i-be-worried	https://res.cloudinary.com/ds1luhmz0/image/upload/what-are-these-should-i-be-worried.png
46	What am I doing wrong with these succulents?	This was a gift after a loved one of mine has passed away and I am watering about every two weeks, however the bottom stems keep getting soft and falling off? What does it need? Thanks!	2023-08-03 13:18:30.887153	2023-08-03 13:18:30.933852	3	what-am-i-doing-wrong-with-these-succulents	https://res.cloudinary.com/ds1luhmz0/image/upload/what-am-i-doing-wrong-with-these-succulents.png
49	Prayer Plant flowering for the first time in 6-7 years??	Rescued this sad excuse for a plant years ago at a grocery store. I repotted it for the first time only about a couple months ago and in that time it got HUGE and is now flowering which I have never seen before? Should I snip them off?	2023-08-03 20:20:24.604884	2023-08-03 20:24:59.083005	3	prayer-plant-flowering-for-the-first-time-in-6-7-years	https://res.cloudinary.com/ds1luhmz0/image/upload/prayer-plant-flowering-for-the-first-time-in-6-7-years
54	What the heck	What the colors on the leave?	2023-08-03 21:24:41.107132	2023-08-03 21:24:41.11467	1	what-the-heck	https://res.cloudinary.com/ds1luhmz0/image/upload/what-the-heck.png
44	What is dripping down the side of my monstera’s pot?	No earthly clue what this brownish liquid is dripping down the side of this pot. Watered it on its regular schedule (once a week ish) about 4 days ago, used filtered water, Miracle-Gro Tropical Houseplant liquid plant food in the water (diluted appropriately), as well as a bit of hydrogen peroxide to aerate and cleanse the soil, which I do most times I water it. Pot is terracotta. Plant is otherwise healthy and strong and I’ve never seen this before, had it about 6 months. It began the day after I watered it, appeared to dry up a little after that, and seems to be dripping more today.\n\nI have a humidifier near it that I run at night, but the humidifier is on the floor and the steam doesn’t reach the plant, so I doubt that’s anything to do with it.\n\nWhat the heck is this and should I be concerned?	2023-08-03 12:31:38.499868	2023-08-04 00:48:16.78561	1	what-is-dripping-down-the-side-of-my-monstera-s-pot	https://res.cloudinary.com/ds1luhmz0/image/upload/what-is-dripping-down-the-side-of-my-monstera-s-pot.png
56	what was wrong with these leaves on my snake plant?	I moved my snake plant for the first time in months and found these two sections falling over, with one quite squidgy with a water sac type thing along the bottom half. The rest of the plant seems fine!	2023-08-03 22:04:54.925685	2023-08-04 00:50:18.647415	3	what-was-wrong-with-these-leaves-on-my-snake-plant	https://res.cloudinary.com/ds1luhmz0/image/upload/what-was-wrong-with-these-leaves-on-my-snake-plant
59	What is this tiny white thing?	Noticed the thing today, and thought that's where an old leaf fell off - I think. Forgot the name of the plant lol. It sort to looks like a bug? Or is it mold? How to get of it? Plant sits on a sunny windowsill, occasional watering.	2023-08-05 01:14:49.68162	2023-08-05 01:14:49.722779	1	what-is-this-tiny-white-thing	https://res.cloudinary.com/ds1luhmz0/image/upload/what-is-this-tiny-white-thing.png
55	pale leaves	rattlesnake plant (calathea lancifolia). symptoms: pale leaves with blotchy discoloration, dry tips that are angled upwards and slightly curling at the edges. too much or too little lighting? humidity problems? i'm finding conflicting advice on the internet. any advice would be appreciated, thanks!	2023-08-03 21:42:52.602135	2023-08-04 00:15:55.825276	1	pale-leaves	https://res.cloudinary.com/ds1luhmz0/image/upload/pale-leaves
57	What’s wrong with my palm?	I’ve had this plant a few months, it’s been big and green until about 2 weeks ago a few leaves started getting brown/yellow starting at the ends down towards the base. I googled it and it said it needed fertilizer so I added a little miracle grow plant food a week ago. It’s potted in miracle grow potting soil and I’ve kept it well watered, about once a week. I know the soil looks dry in the pics but it’s just the very top layer that’s dry, I gave it a quart of water yesterday.	2023-08-03 22:22:15.571618	2023-08-04 00:33:19.740703	3	whats-wrong-with-my-palm	https://res.cloudinary.com/ds1luhmz0/image/upload/whats-wrong-with-my-palm
58	What are these burn marks from?	From what I’ve read online, I’m thinking that this could be from one of two things (or maybe both, who knows). My first thought is the water I’m using is too hard and causing the burn marks. I live in a major city and based on the water quality report, it looks like the water is quite hard. My second thought is maybe some sort of disease.\n\nThe pot has holes on the bottom so the soil drains well. I soak the soil probably once a week and wait until it appears dry before watering again. This plant is typically inside but I try to move it outside frequently so it gets a good amount of sun.	2023-08-03 22:29:36.195071	2023-08-04 00:37:33.806535	2	what-are-these-burn-marks-from	https://res.cloudinary.com/ds1luhmz0/image/upload/what-are-these-burn-marks-from
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.comments (id, content, user_id, post_id, created_at, updated_at) FROM stdin;
1	I am 100% certain these are aphids.	1	15	2023-07-31 10:48:26.925489	2023-07-31 10:48:26.925489
2	Neem oil, mild washing up soap diluted in water and then sprayed over leaves. I used a mixture of black tea, water and washing up soap for my monstera infestation and it cleared up almost instantly.	3	15	2023-07-31 10:49:51.552244	2023-07-31 10:50:21.191722
3	That petal is actually a whole flower of its own, and just so happens to be white due to I assume some kind of sudden genetic mutation. Very cool and I believe pretty rare. Almost certainly 100% healthy otherwise.	2	14	2023-07-31 11:15:32.276443	2023-07-31 11:17:22.096217
4	Lacewing eggs\nSuper cool predator of aphids and everything that harms your plants\nJust be careful if you handle them because they can bite!	1	24	2023-07-31 15:25:14.240231	2023-07-31 15:25:14.240231
5	Yep, that's classic mosaic symptoms. Could be caused by any number of plant viruses but it looks like Hackberry island chlorosis is likely caused by something similar to Grapevine leafroll-associated virus 3.\n\nIt seems like people think there is a specific 'Mosaic Virus' that causes this sort of thing, but there are tons of different viruses that cause mosaic symptoms whether they have “mosaic” in their name or not. It's such a common set of symptoms for a wide variety of viral diseases because it is actually more of a representation of the host plant's response to the virus than the virus itself. I'm sure there's a paper on it out there that I could find if I wasn't being lazy, but based on measurements I've made in my lab, the lighter areas have higher levels of virus compared to the darker ones. The reason for that is pretty interesting in my opinion. It relates to two critical parts of a plant's response to viruses, particularly RNA viruses: RNA silencing and callose deposition.\n\nRNA silencing (or RNA interference, RNAi) involves a network of surveillance systems in the cell that detect RNA molecules that have a high likelihood of being non-plant (non-self, more broadly) in origin. Things like highly structured or otherwise double-stranded RNA. It can also provide a feedback mechanism against RNA species that may be getting overproduced in the cell, whether those be of viral or host origin. The proteins DICER and Drosha can recognize these kinds of RNAs and clip them into little regular pieces (some of them are called small interfering RNAs, siRNAs, others are called microRNAs, and there are even more kinds out there) that other proteins can associate with and use. The RISC protein complex grabs these small RNAs and interferes with the translation of any other RNAs that match the small chopped up ones. There are other proteins called RDRP's that can also recognize those small RNAs and duplicate them over and over, amplifying a given RNA silencing response by giving the RISC complex more ammunition to work with. Many kinds of small RNAs can even move between cells, propagating the immune response, perhaps to cells that haven't been reached by the invading virus yet.\n\nCallose is a kind of sugar polymer that plants use to plug up their plasmodesmata, the windows that join the cytoplasms of neighboring plant cells. This plugging response may be to close up a wound in the plant's epidermis to prevent water loss, seal off a part of the plant as part of normal development, or to wall off a pathogen infection and limit it's spread between cells.\n\nCrucially for many situations in plant pathology, callose is often deposited in response to the detection of pathogen associated molecular patterns (bacterial flagella, fungal or insect chitin, etc.). Viruses don't have many extracellular molecular patterns that plant cells recognize (that we know of so far), but the detection of suspect RNAs by Dicer, Drosha, RISC, or RDRP often feeds into some of the same sorts of immune response cascades that other pathogen molecular patterns induce. So in viral infections, detection of double-stranded RNA by RNAi machinery can lead to the induction of callose deposition. A greater RNAi response would tend to induce a greater walling-off response in addition to actively knocking down the expression of the virus in that cell. A cell that happens to save itself early may make enough small RNAs to send them to it's neighboring cells before walling itself off. There may be some sort of polarity to this walling/immune response propagation that allows for the callose wall to encompass more well-defended cells at once.\n\nMy understanding is that when you're looking at mosaic symptoms like we see in OP's image, you're seeing the result of a stochastic distribution of subpopulations of leaf cells that have mounted a stronger/earlier RNAi response to the infection and efficiently walled themselves off. Different shades of green reflect a continuum of degrees to which that particular group of cells was able to mount an immune response before walling off. The shades are irregular and disjointed because the differences could come down to something as specific as whether or not the first viral genome that enters the cell interacts with a ribosome or Dicer/Drosha first. If it finds its way to a ribosome it might be able to replicate itself and gain the upper hand, but Dicer would chop it up and give that host cell the opportunity to start building up an immunity to the virus in case another one happens to come along.\n\nYellower, less healthy cells are more encumbered with viral load so they aren't able to dedicate resources to maintaining their photosynthetic apparatuses with the inverse situation in the darker cells. This could be due to the virus diverting resources to an extent that it limits the host’s ability to maintain chlorophyll, but it could also be an active process the host is using to cut off the energy supply to cell populations that have been too infected to save. In some cases the host can initiate programmed cell death to really cut the infection off. The borders tend to lie along vascular lines because vascular guard cells are probably even more primed to block themselves off than the average leaf cell.\n\nThe various efficiencies of each piece of this complicated set of responses is dependent on the specific genotypes of the host and the virus. This can lead to idiosyncratic differences in symptom presentation of the same virus between different hosts or in the same host when infected with different strains of the same virus.	1	23	2023-07-31 15:26:38.935065	2023-07-31 15:26:38.935065
6	You don't have to divide them until the pot is completely full. Hell for that matter you don't even have to do it then, the snake plant will happily destroy the pot and bust out on its own.	1	27	2023-07-31 16:54:07.439535	2023-07-31 16:54:07.439535
8	My lux has big gorgeous leaves too but I’ve noticed when I’m too lazy to fill the humidifier, the new leaves will have unfurling issues. Holes, weird shaped leaves etc… so consistent humidity is key.	1	28	2023-07-31 17:03:20.361247	2023-07-31 17:03:20.361247
9	It just looks like baby thaumatophyllum leaves	1	32	2023-07-31 17:15:36.902391	2023-07-31 17:15:36.902391
10	It’s mineral deposits from the water your misting with. Mist with distilled water, though I should add misting doesn’t really help so you don’t have to if you don’t want to. Cool mist humidifier with distilled/RO water would be a much better solution to raise RH.\n\nAs an fyi, if you put tap water in a cool mist humidifier, the minerals will slowly leave a white oily film on everything in your house.	1	33	2023-07-31 17:19:02.84237	2023-07-31 17:19:02.84237
11	Hard to tell, but I’m thinking they’re thrips. Body is too long to be a black aphid, body is too big to be a spider mite. I don’t have much experience with thrips, so hopefully someone else is able to help you on how to combat them.	3	36	2023-08-02 23:38:56.292001	2023-08-02 23:38:56.292001
12	It appears as though you have a support pole already ? It may need to be tied onto the pole a bit better\n\nIt would probably benefit from a larger pot as well	2	37	2023-08-02 23:55:26.538053	2023-08-02 23:55:26.538053
13	This is a fake plant...	1	39	2023-08-03 00:14:57.72441	2023-08-03 00:14:57.72441
14	The plant is a Hoya carnosa, its the compacta/Hindu rope cultivar.\nThe red things are its flowers	1	42	2023-08-03 12:05:18.25958	2023-08-03 12:05:18.25958
15	That's lichen, it is harmless to the tree. Just using it as a surface to grow on :)	2	43	2023-08-03 12:15:57.921436	2023-08-03 12:15:57.921436
16	Peroxide actually does very little to aerate (letting the soil dry out some is far superior) and it kills off all the beneficial organisms in the soil. Totally throws off the ecosystem. It should not be used routinely.	2	44	2023-08-03 12:38:02.417141	2023-08-03 12:38:02.417141
17	Too much water to how much sun it’s getting. I’d leave it alone for a while in full to partial sun to let it dry up.	1	56	2023-08-04 00:29:40.103036	2023-08-04 00:29:40.103036
18	Palms do not make good houseplants, just putting that out there. They thrive in greenhouse house conditions and grow rather quickly so they are cheap at big box stores where people buy them and they die. I am saying this so you don't try to replace it with another palm from a big box store. There are a couple palms that fare much better indoors, the Kentia palm, Howea forsteriana, and the lady palm, Rhapis excelsa. They will also cost considerably more.	1	57	2023-08-04 00:30:29.256984	2023-08-04 00:30:29.256984
19	Did you recently move it from inside to your garden the first time. Looks like sunburn to me!	1	58	2023-08-04 00:31:23.44838	2023-08-04 00:31:23.44838
7	It looks almost like the light focused on those locations causing spot burn	2	28	2023-07-31 17:02:59.275785	2023-08-04 00:44:15.618665
20	Its a Tradescantia pallida and they are very easy to propagate, most people just stick them in soil, but you could water prop or prop box them as well.	1	48	2023-08-04 00:52:40.931102	2023-08-04 00:52:40.931102
21	This plant prefers a soil-less potting mix like a mixture of coco cubes, coco husk and pumice/perlite. I’ve never seen a birkin thrive on a normal soil mix.	1	38	2023-08-04 00:54:11.089423	2023-08-04 00:54:11.089423
22	She’s sad because she’s in a trash can	1	37	2023-08-04 00:55:08.331313	2023-08-04 00:55:08.331313
23	I think if you unpotted it immediately and washed off the wine, it’ll be fine for the most part. Just give it new soil, rinse the pot you had it in and put it back!	2	19	2023-08-04 01:01:27.364872	2023-08-04 01:01:27.364872
24	OH MY GOD WATER THAT MAN	2	53	2023-08-04 01:02:34.032562	2023-08-04 01:02:34.032562
25	That flowering structure is called a peduncle.	2	42	2023-08-04 01:05:25.863153	2023-08-04 01:05:25.863153
26	sunburn	2	54	2023-08-04 01:06:14.651332	2023-08-04 01:06:14.651332
27	Green lynx spider I believe he's a good guy	2	35	2023-08-04 01:06:45.568313	2023-08-04 01:06:45.568313
28	I have doubts, adult fungus gnats have one task -- reproduce. as long as there is space on the top for them they will be fine. the sand trick works because it prevents them from leaving the soil to reproduce.	2	26	2023-08-04 01:07:09.912401	2023-08-04 01:07:09.912401
29	Time to bring out the scissors. Wreck the pot. 😅	2	25	2023-08-04 01:07:37.515627	2023-08-04 01:07:37.515627
30	These are bulbils.\n\nYour lily is trying to form more lilies! Congrats as this means they must be very happy!	3	52	2023-08-04 01:08:42.599138	2023-08-04 01:08:42.599138
31	Looks like scale to me. It's a pest. There's lots of info on treating it online but this infestation is bad and I think your boy is a goner	3	40	2023-08-04 01:09:20.016566	2023-08-04 01:09:20.016566
32	Looks like it could be some type of black aphid	1	45	2023-08-04 18:56:59.66699	2023-08-04 18:56:59.66699
33	Wow! This one looks amazing!! I always wanted one, but have seen photos of ppp who are totally green now, so I skipped.. Yours is stunning!!	1	22	2023-08-04 18:59:40.497878	2023-08-04 18:59:40.497878
34	It seems thirsty. Mine are very dramatic like this when they are thirsty. Unfortunately those types of pots are not good for plants who tend to be thirsty because they are meant to dry quickly. I’d probably change it to a plastic pot or a more normal ceramic one maybe. Or you can attempt to water more as well without the re pot.	1	41	2023-08-05 01:13:00.828076	2023-08-05 01:13:00.828076
35	looks like a mealy bug !! use rubbing alcohol on a cotton swab to remove him. i would thoroughly check every leaf looking for any teeny microscopic ones and then check every other plant you own !! mealy bugs suck	3	59	2023-08-05 01:15:55.766821	2023-08-05 01:15:55.766821
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.likes (id, post_id, user_id, created_at, updated_at) FROM stdin;
1	15	1	2023-07-31 10:48:30.642271	2023-07-31 10:48:30.642271
2	32	1	2023-07-31 17:15:38.67276	2023-07-31 17:15:38.67276
3	39	1	2023-08-03 00:15:00.132371	2023-08-03 00:15:00.132371
4	43	2	2023-08-03 12:16:00.923975	2023-08-03 12:16:00.923975
5	58	1	2023-08-04 00:31:42.512554	2023-08-04 00:31:42.512554
6	48	1	2023-08-04 00:51:40.965923	2023-08-04 00:51:40.965923
7	38	1	2023-08-04 00:57:46.328901	2023-08-04 00:57:46.328901
8	37	1	2023-08-04 00:57:54.447218	2023-08-04 00:57:54.447218
9	44	1	2023-08-04 00:58:06.148627	2023-08-04 00:58:06.148627
10	48	3	2023-08-04 00:59:08.040756	2023-08-04 00:59:08.040756
11	19	3	2023-08-04 01:00:57.980892	2023-08-04 01:00:57.980892
12	23	2	2023-08-04 01:01:39.733461	2023-08-04 01:01:39.733461
13	42	2	2023-08-04 01:05:33.883535	2023-08-04 01:05:33.883535
14	26	2	2023-08-04 01:07:08.542714	2023-08-04 01:07:08.542714
15	25	2	2023-08-04 01:07:39.31157	2023-08-04 01:07:39.31157
16	41	1	2023-08-05 01:13:04.028836	2023-08-05 01:13:04.028836
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: kyohoodnwmtyrb
--

COPY public.schema_migrations (version) FROM stdin;
20230622165651
20230622171403
20230622182107
20230626212745
20230627083508
20230630162235
20230706132521
20230710122457
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.comments_id_seq', 35, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.likes_id_seq', 16, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.posts_id_seq', 59, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyohoodnwmtyrb
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

