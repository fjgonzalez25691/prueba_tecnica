toc.dat                                                                                             0000600 0004000 0002000 00000014737 14426665453 0014472 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                    
        {        	   dbpedidos    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    19032 	   dbpedidos    DATABASE     |   CREATE DATABASE dbpedidos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE dbpedidos;
                postgres    false         �          0    19180    articulo 
   TABLE DATA           r   COPY public.articulo (id, created, modified, referencia, nombre, descripcion, precio_bruto, impuesto) FROM stdin;
    public          fjgaparicio    false    234       3460.dat w          0    19056 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          fjgaparicio    false    221       3447.dat s          0    19042    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          fjgaparicio    false    217       3443.dat u          0    19050    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          fjgaparicio    false    219       3445.dat y          0    19064    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          fjgaparicio    false    223       3449.dat {          0    19070 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          fjgaparicio    false    225       3451.dat }          0    19078    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          fjgaparicio    false    227       3453.dat           0    19084    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          fjgaparicio    false    229       3455.dat �          0    19188    pedido 
   TABLE DATA           n   COPY public.pedido (id, created, modified, fecha_pedido, importe_total_bruto, importe_total_neto) FROM stdin;
    public          fjgaparicio    false    236       3462.dat �          0    19194    detalle_pedido 
   TABLE DATA           e   COPY public.detalle_pedido (id, created, modified, cantidad, articulo_id, num_pedido_id) FROM stdin;
    public          fjgaparicio    false    238       3464.dat �          0    19142    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          fjgaparicio    false    231       3457.dat q          0    19034    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          fjgaparicio    false    215       3441.dat �          0    19170    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          fjgaparicio    false    232       3458.dat �           0    0    articulo_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articulo_id_seq', 10, true);
          public          fjgaparicio    false    233         �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          fjgaparicio    false    220         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          fjgaparicio    false    222         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          fjgaparicio    false    218         �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          fjgaparicio    false    226         �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          fjgaparicio    false    224         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          fjgaparicio    false    228         �           0    0    detalle_pedido_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detalle_pedido_id_seq', 37, true);
          public          fjgaparicio    false    237         �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);
          public          fjgaparicio    false    230         �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          fjgaparicio    false    216         �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          fjgaparicio    false    214         �           0    0    pedido_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pedido_id_seq', 34, true);
          public          fjgaparicio    false    235                                         3460.dat                                                                                            0000600 0004000 0002000 00000005567 14426665453 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2023-05-04 16:01:25.801344+00	2023-05-04 16:01:25.801344+00	1233214	Lapto Minovo top 5.0	quipo de gama alta a un precio asequible. Precio de 700 €. Procesador Intel Core i7 de décima generación y 16 GB de RAM. Pantalla Full HD de 15,6 pulgadas. Tarjeta gráfica dedicada NVIDIA GeForce GTX 1650.	700.000	0.21
3	2023-05-04 16:02:05.067092+00	2023-05-04 16:02:05.067092+00	987452	Minovo basic 2.0	Opción asequible para tareas cotidianas. Precio de 400 €. Procesador Intel Celeron N4020 y 4 GB de RAM. Pantalla de 14 pulgadas con resolución HD. Batería de larga duración.	400.000	0.21
4	2023-05-04 16:52:25.156102+00	2023-05-04 16:52:25.156102+00	132164616156	Amstrad 3.0	Presentamos el ordenador de sobremesa de gama media ideal para aquellos que buscan un equipo potente a un precio asequible: la torre Amstrad 3.0. Con un precio de tan solo 545 euros, este ordenador de sobremesa incluye un procesador Intel Core i5 de octava generación y 8 GB de RAM, ofreciendo un rendimiento suave y rápido para todo tipo de aplicaciones y tareas. Además, la torre Amstrad 3.0 cuenta con un amplio espacio de almacenamiento de 1 TB, lo que permite almacenar una gran cantidad de archivos, programas y juegos. La tarjeta gráfica integrada Intel UHD Graphics 630 ofrece un excelente rendimiento gráfico para ver videos y juegos ligeros. Esta torre no incluye un monitor, pero su diseño compacto y elegante la hace fácil de integrar en cualquier espacio de trabajo o sala de estar. ¡Hazte con la torre Amstrad 3.0 y experimenta la potencia y rendimiento que necesitas a un precio inmejorable!	545.000	0.21
1	2023-05-04 15:56:17.829812+00	2023-05-04 17:12:53.576957+00	12345678	Laptop Minovo mid	El portátil Minovo es una excelente opción para aquellos que buscan una alternativa asequible y de gama media. Con un precio de 510 €, este portátil ofrece un rendimiento decente gracias a su procesador Intel Core de octava generación y sus 8 GB de RAM. Además, cuenta con una pantalla de 15,6 pulgadas con resolución HD, suficiente para trabajar y disfrutar de contenido multimedia. Su batería de larga duración garantiza varias horas de uso sin necesidad de cargarla. En resumen, el portátil Minovo es una opción económica y de calidad para aquellos que buscan un equipo funcional sin gastar demasiado.	510.000	0.21
6	2023-05-09 13:30:45.011694+00	2023-05-09 13:30:45.011694+00	NJ-7834M-KL90D	NeonJet	Impresora láser monocromo básica	300.000	0.21
7	2023-05-09 13:33:07.930473+00	2023-05-09 13:33:07.930473+00	PP-4398L-VC21A	PixelPrint	Impresora de inyección de tinta de alta resolución y rapidez	500.000	0.21
8	2023-05-09 13:34:03.492526+00	2023-05-09 13:34:03.492526+00	AV-2179D-BM98F	AuroraView	Monitor LED básico de 24 pulgadas	700.000	0.21
9	2023-05-09 13:34:59.28347+00	2023-05-10 08:32:04.293149+00	HS-3721K-PL87T	HyperSight Elite	Monitor curvo de 34 pulgadas con tecnología de pantalla OLED	900.000	0.21
\.


                                                                                                                                         3447.dat                                                                                            0000600 0004000 0002000 00000000005 14426665453 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3443.dat                                                                                            0000600 0004000 0002000 00000000252 14426665453 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	pedido	detallepedido
8	pedido	pedido
9	articulo	articulo
\.


                                                                                                                                                                                                                                                                                                                                                      3445.dat                                                                                            0000600 0004000 0002000 00000002606 14426665453 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Detalle del pedido	7	add_detallepedido
26	Can change Detalle del pedido	7	change_detallepedido
27	Can delete Detalle del pedido	7	delete_detallepedido
28	Can view Detalle del pedido	7	view_detallepedido
29	Can add Pedido	8	add_pedido
30	Can change Pedido	8	change_pedido
31	Can delete Pedido	8	delete_pedido
32	Can view Pedido	8	view_pedido
33	Can add Artículo	9	add_articulo
34	Can change Artículo	9	change_articulo
35	Can delete Artículo	9	delete_articulo
36	Can view Artículo	9	view_articulo
\.


                                                                                                                          3449.dat                                                                                            0000600 0004000 0002000 00000000005 14426665453 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3451.dat                                                                                            0000600 0004000 0002000 00000000310 14426665453 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$600000$ugvoRlKYPF9ecovCYCwtnu$ldQdKSraW9btwzfZAhJNUxL+yglE1gWRP3ZDRSH3/bo=	2023-05-05 07:39:49.108151+00	t	francisco			fjgonzalez25691@gmail.com	t	t	2023-05-04 14:45:25.981935+00
\.


                                                                                                                                                                                                                                                                                                                        3453.dat                                                                                            0000600 0004000 0002000 00000000005 14426665453 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3455.dat                                                                                            0000600 0004000 0002000 00000000005 14426665453 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3462.dat                                                                                            0000600 0004000 0002000 00000004110 14426665453 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2023-05-05 07:38:38.785869+00	2023-05-05 07:38:38.785869+00	2023-05-05 07:38:38.785869+00	0.00	0.00
19	2023-05-09 17:01:24.428513+00	2023-05-09 17:01:24.437491+00	2023-05-09 17:01:24.428513+00	2075.00	2510.75
4	2023-05-05 08:01:46.275446+00	2023-05-05 08:01:46.319328+00	2023-05-05 08:01:46.275446+00	910.00	1101.10
5	2023-05-06 12:35:12.959521+00	2023-05-06 12:35:13.022053+00	2023-05-06 12:35:13.006707+00	3400.00	4114.00
22	2023-05-09 17:23:36.482841+00	2023-05-09 17:23:36.482841+00	2023-05-09 17:23:36.52673+00	0.00	0.00
23	2023-05-09 17:25:08.3895+00	2023-05-09 17:25:08.3895+00	2023-05-09 17:25:08.429394+00	0.00	0.00
24	2023-05-09 17:27:49.242404+00	2023-05-09 17:27:49.242404+00	2023-05-09 17:27:49.287283+00	0.00	0.00
27	2023-05-09 17:43:22.758861+00	2023-05-09 17:43:22.8197+00	2023-05-09 17:43:22.798755+00	1830.00	2214.30
28	2023-05-09 17:43:53.658961+00	2023-05-09 17:43:53.658961+00	2023-05-09 17:43:53.696858+00	0.00	0.00
29	2023-05-09 18:02:30.846066+00	2023-05-09 18:02:31.089454+00	2023-05-09 18:02:30.888951+00	1830.00	2214.30
31	2023-05-09 18:03:41.823841+00	2023-05-09 18:03:41.870688+00	2023-05-09 18:03:41.863707+00	2335.00	2825.35
34	2023-05-10 07:44:31.159434+00	2023-05-10 07:44:31.315988+00	2023-05-10 07:44:31.303021+00	2335.00	2825.35
1	2023-05-05 07:36:52.389621+00	2023-05-09 11:36:21.525512+00	2023-05-05 07:38:43+00	2230.00	2698.30
6	2023-05-09 12:54:16.743697+00	2023-05-09 12:54:16.943163+00	2023-05-09 12:54:16.929224+00	2035.00	2462.35
3	2023-05-05 07:38:43.9414+00	2023-05-09 12:57:18.794409+00	2023-05-05 07:38:43+00	2230.00	2698.30
9	2023-05-09 13:42:56.810829+00	2023-05-09 13:42:56.992344+00	2023-05-09 13:42:56.957436+00	2400.00	2904.00
7	2023-05-09 13:36:22.706059+00	2023-05-09 13:46:01.44579+00	2023-05-09 13:36:22.861643+00	3000.00	3630.00
10	2023-05-09 14:57:23.10395+00	2023-05-10 07:55:14.383989+00	2023-05-09 14:57:23.16379+00	6100.00	7381.00
11	2023-05-09 16:37:42.385852+00	2023-05-10 08:02:27.109397+00	2023-05-09 16:37:42.385852+00	1500.00	1815.00
12	2023-05-09 16:39:58.643691+00	2023-05-09 16:39:58.651641+00	2023-05-09 16:39:58.643691+00	2030.00	2456.30
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                        3464.dat                                                                                            0000600 0004000 0002000 00000004301 14426665453 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	2023-05-05 08:01:46.318331+00	2023-05-05 08:01:46.318331+00	1.00	1	4
4	2023-05-05 08:01:46.319328+00	2023-05-05 08:01:46.319328+00	1.00	3	4
5	2023-05-06 12:35:13.021167+00	2023-05-06 12:35:13.021167+00	2.00	2	5
6	2023-05-06 12:35:13.022053+00	2023-05-06 12:35:13.022053+00	5.00	3	5
7	2023-05-09 09:21:58.908936+00	2023-05-09 11:36:21.520524+00	1.00	2	1
8	2023-05-09 09:21:58.917912+00	2023-05-09 11:36:21.523517+00	3.00	1	1
9	2023-05-09 12:54:16.942179+00	2023-05-09 12:54:16.942179+00	3.00	4	6
10	2023-05-09 12:54:16.943163+00	2023-05-09 12:54:16.943163+00	1.00	3	6
2	2023-05-05 07:38:44.065069+00	2023-05-09 12:57:18.787426+00	1.00	2	3
1	2023-05-05 07:38:44.065069+00	2023-05-09 12:57:18.790393+00	3.00	1	3
15	2023-05-09 13:42:56.986358+00	2023-05-09 13:42:56.986358+00	3.00	2	9
16	2023-05-09 13:42:56.986358+00	2023-05-09 13:42:56.986358+00	1.00	6	9
12	2023-05-09 13:36:22.866629+00	2023-05-09 13:46:01.439805+00	1.00	6	7
11	2023-05-09 13:36:22.865632+00	2023-05-09 13:46:01.442797+00	3.00	9	7
20	2023-05-09 16:39:58.645687+00	2023-05-09 16:39:58.645687+00	3.00	1	12
21	2023-05-09 16:39:58.646681+00	2023-05-09 16:39:58.646681+00	1.00	7	12
24	2023-05-09 17:01:24.431505+00	2023-05-09 17:01:24.431505+00	3.00	1	19
25	2023-05-09 17:01:24.432503+00	2023-05-09 17:01:24.432503+00	1.00	4	19
26	2023-05-09 17:43:22.808728+00	2023-05-09 17:43:22.808728+00	3.00	1	27
27	2023-05-09 17:43:22.809726+00	2023-05-09 17:43:22.809726+00	1.00	6	27
28	2023-05-09 18:02:31.078445+00	2023-05-09 18:02:31.078445+00	3.00	1	29
29	2023-05-09 18:02:31.078445+00	2023-05-09 18:02:31.078445+00	1.00	6	29
30	2023-05-09 18:03:41.86573+00	2023-05-09 18:03:41.86573+00	3.00	4	31
31	2023-05-09 18:03:41.86573+00	2023-05-09 18:03:41.86573+00	1.00	8	31
33	2023-05-10 07:44:31.309035+00	2023-05-10 07:44:31.309035+00	3.00	4	34
34	2023-05-10 07:44:31.309035+00	2023-05-10 07:44:31.309035+00	1.00	8	34
35	2023-05-10 07:54:50.243698+00	2023-05-10 07:54:50.243698+00	5.00	8	10
32	2023-05-10 06:16:48.276412+00	2023-05-10 07:55:14.387007+00	2.00	6	10
18	2023-05-09 14:57:23.169775+00	2023-05-10 07:55:14.388973+00	5.00	3	10
36	2023-05-10 08:02:11.158081+00	2023-05-10 08:02:11.158081+00	3.00	3	11
37	2023-05-10 08:02:11.161073+00	2023-05-10 08:02:27.113387+00	1.00	6	11
\.


                                                                                                                                                                                                                                                                                                                               3457.dat                                                                                            0000600 0004000 0002000 00000001010 14426665453 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-05-04 15:56:17.833801+00	1	portatil lenovo	1	[{"added": {}}]	9	1
2	2023-05-04 15:56:37.209812+00	1	Laptop Minovo mid	2	[{"changed": {"fields": ["Nombre"]}}]	9	1
3	2023-05-04 16:01:25.802313+00	2	Lapto Minovo top 5.0	1	[{"added": {}}]	9	1
4	2023-05-04 16:02:05.06809+00	3	Minovo basic 2.0	1	[{"added": {}}]	9	1
5	2023-05-04 19:47:17.616468+00	5	prueba  francisco	1	[{"added": {}}]	9	1
6	2023-05-05 07:47:37.82076+00	3	Nº [3] - 2023-05-05 09:38:43+02:00	2	[{"changed": {"fields": ["Precio total neto"]}}]	8	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3441.dat                                                                                            0000600 0004000 0002000 00000003351 14426665453 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2023-05-04 12:43:42.607472+00
2	auth	0001_initial	2023-05-04 12:43:42.731141+00
3	admin	0001_initial	2023-05-04 12:43:42.757072+00
4	admin	0002_logentry_remove_auto_add	2023-05-04 12:43:42.764052+00
5	admin	0003_logentry_add_action_flag_choices	2023-05-04 12:43:42.773029+00
6	contenttypes	0002_remove_content_type_name	2023-05-04 12:43:42.787991+00
7	auth	0002_alter_permission_name_max_length	2023-05-04 12:43:42.794971+00
8	auth	0003_alter_user_email_max_length	2023-05-04 12:43:42.803947+00
9	auth	0004_alter_user_username_opts	2023-05-04 12:43:42.811925+00
10	auth	0005_alter_user_last_login_null	2023-05-04 12:43:42.818906+00
11	auth	0006_require_contenttypes_0002	2023-05-04 12:43:42.821899+00
12	auth	0007_alter_validators_add_error_messages	2023-05-04 12:43:42.82888+00
13	auth	0008_alter_user_username_max_length	2023-05-04 12:43:42.84384+00
14	auth	0009_alter_user_last_name_max_length	2023-05-04 12:43:42.853813+00
15	auth	0010_alter_group_name_max_length	2023-05-04 12:43:42.862789+00
16	auth	0011_update_proxy_permissions	2023-05-04 12:43:42.869772+00
17	auth	0012_alter_user_first_name_max_length	2023-05-04 12:43:42.879744+00
18	sessions	0001_initial	2023-05-04 12:43:42.900716+00
19	articulo	0001_initial	2023-05-04 14:47:15.500585+00
20	pedido	0001_initial	2023-05-04 14:47:15.539481+00
21	articulo	0002_rename_description_articulo_descripcion	2023-05-04 20:43:35.775238+00
22	pedido	0002_rename_precio_total_bruto_pedido_importe_total_bruto_and_more	2023-05-04 20:43:35.787206+00
23	pedido	0003_alter_detallepedido_articulo_and_more	2023-05-05 13:47:15.683709+00
24	pedido	0004_alter_pedido_fecha_pedido	2023-05-06 14:08:19.385958+00
25	pedido	0005_alter_detallepedido_articulo_and_more	2023-05-06 14:12:19.322665+00
\.


                                                                                                                                                                                                                                                                                       3458.dat                                                                                            0000600 0004000 0002000 00000001113 14426665453 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2miqgfn2b315o81hg84lu7x5vje4zjdf	.eJxVjEEOwiAQRe_C2hCYgUBduvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN9aeVXQOWMhk0kJdTFZg0lkE4Ji7cF4mFghOs7sPFLESVmwBsiyLeL9AcHWNwA:1puaDb:IbkjGyWJuhBZo7iOsJ-StBwuBlmxe4q85T7RzUy0vuQ	2023-05-18 14:46:03.112229+00
9his1cbg2642b3fhqleiyz0x0pylrzbp	.eJxVjEEOwiAQRe_C2hCYgUBduvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN9aeVXQOWMhk0kJdTFZg0lkE4Ji7cF4mFghOs7sPFLESVmwBsiyLeL9AcHWNwA:1puq2f:t2z29KvG1x_UmbZo3xgpqlvCnWYEiHbbP3TrER4X5To	2023-05-19 07:39:49.110147+00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000015634 14426665453 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE dbpedidos;
--
-- Name: dbpedidos; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dbpedidos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE dbpedidos OWNER TO postgres;

\connect dbpedidos

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
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.articulo (id, created, modified, referencia, nombre, descripcion, precio_bruto, impuesto) FROM stdin;
\.
COPY public.articulo (id, created, modified, referencia, nombre, descripcion, precio_bruto, impuesto) FROM '$$PATH$$/3460.dat';

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3447.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3443.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3445.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3449.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3451.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3453.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3455.dat';

--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.pedido (id, created, modified, fecha_pedido, importe_total_bruto, importe_total_neto) FROM stdin;
\.
COPY public.pedido (id, created, modified, fecha_pedido, importe_total_bruto, importe_total_neto) FROM '$$PATH$$/3462.dat';

--
-- Data for Name: detalle_pedido; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.detalle_pedido (id, created, modified, cantidad, articulo_id, num_pedido_id) FROM stdin;
\.
COPY public.detalle_pedido (id, created, modified, cantidad, articulo_id, num_pedido_id) FROM '$$PATH$$/3464.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3457.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3441.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: fjgaparicio
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3458.dat';

--
-- Name: articulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.articulo_id_seq', 10, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: detalle_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.detalle_pedido_id_seq', 37, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fjgaparicio
--

SELECT pg_catalog.setval('public.pedido_id_seq', 34, true);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    