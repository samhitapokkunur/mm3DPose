CREATE TABLE IF NOT EXISTS Metadata (name, value);
INSERT INTO "Metadata" VALUES('db_version',2);
CREATE TABLE IF NOT EXISTS LastUpdate (LastUpdateTime);
INSERT INTO "LastUpdate" VALUES(1386865622225.0);
CREATE TABLE IF NOT EXISTS User_ShoppingListItem (UserID INTEGER, ListID INTEGER, Name, DisplayOrder INTEGER, isChecked INTEGER, Quantity, created DATE);
CREATE TABLE IF NOT EXISTS User_DietPreference (UserID, DietPreferenceID);
CREATE TABLE IF NOT EXISTS User_DepartmentPreference (UserID, ItemType, DepartmentID, DisplayOrder, IsHidden);
CREATE TABLE IF NOT EXISTS User_Favorite_Recipe (UserID INTEGER, RecipeID INTEGER unique, created DATE);
CREATE TABLE IF NOT EXISTS User_Favorite_Product (UserID INTEGER, ProductID INTEGER unique, created DATE);
CREATE TABLE IF NOT EXISTS User_ShoppingList (UserID INTEGER, ID unique, created DATE);
CREATE TABLE IF NOT EXISTS User_RewardAction (UserID INTEGER, RewardID, ActionID, ActionType, ActionDate DATE);
CREATE TABLE IF NOT EXISTS User_Filters (UserID INTEGER, ItemType,TagID,TagLabel,Status);
CREATE TABLE IF NOT EXISTS AssetFile (assetId Primary Key, filepath, assetspath, isDownloaded INTEGER);
INSERT INTO "AssetFile" VALUES(21.0,'/dietpreferencesicons/na_low-sodium.png','',0);
INSERT INTO "AssetFile" VALUES(20.0,'/dietpreferencesicons/v_vegetarian.png','',0);
INSERT INTO "AssetFile" VALUES(19.0,'/dietpreferencesicons/vplus_vegan.png','',0);
INSERT INTO "AssetFile" VALUES(23.0,'/dietpreferencesicons/k_kosher.png','',0);
INSERT INTO "AssetFile" VALUES(22.0,'/dietpreferencesicons/lf_low-fat.png','',0);
INSERT INTO "AssetFile" VALUES(18.0,'/dietpreferencesicons/w_wheat-free.png','',0);
INSERT INTO "AssetFile" VALUES(24.0,'/dietpreferencesicons/hf_high-fiber.png','',0);
INSERT INTO "AssetFile" VALUES(26.0,'/dietpreferencesicons/f_fat-free.png','',0);
INSERT INTO "AssetFile" VALUES(104.0,'/products/detail/dijon_mustard_00008_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(103.0,'/products/detail/chanterelle-mushroom-istock_000016108777large-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(101.0,'/products/detail/cabot_clothbound_cheddar_00023_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(99.0,'/products/detail/baby_artichokes_istock_000007028251medium_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(116.0,'/products/detail/italian-dolce-gorgonzola_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(112.0,'/products/detail/green_danjou_pear_istock_000015723785large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(105.0,'/products/detail/fennel-istock_000015212536large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(122.0,'/products/detail/mina_harissa_00003_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(110.0,'/products/detail/girelle_00004_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(114.0,'/products/detail/gruyere_swiss_cave_aged_00021_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(120.0,'/products/detail/leek_istock_000013043978large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(131.0,'/products/detail/white_wine_vinegar_00021_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(132.0,'/products/landing-mosaic/large/aceto_balsamico_di_modena_00019_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(121.0,'/products/detail/maccheroni_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(143.0,'/products/landing-mosaic/large/fruit-and-chocolate-bars_00016_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(151.0,'/products/landing-mosaic/large/italian_eggplant_istock_000013426033large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(133.0,'/products/landing-mosaic/large/baby_artichokes_istock_000007028251medium_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(152.0,'/products/landing-mosaic/large/italian_saba_00013-1_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(129.0,'/products/detail/strozzapreti_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(118.0,'/products/detail/italian_saba_00013-1_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(140.0,'/products/landing-mosaic/large/fingerling_potatoes_istock_000010799494large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(147.0,'/products/landing-mosaic/large/green_olives_00009_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(157.0,'/products/landing-mosaic/large/mozzarella_fresh_handmade_salted_00006_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(148.0,'/products/landing-mosaic/large/gruyere_swiss_cave_aged_00021_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(138.0,'/products/landing-mosaic/large/dijon_mustard_00008_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(162.0,'/products/landing-mosaic/large/rogue-river-smokey-blue_00018_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(146.0,'/products/landing-mosaic/large/green_danjou_pear_istock_000015723785large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(153.0,'/products/landing-mosaic/large/italian_sweet_rstd_red_peppers_00009_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(127.0,'/products/detail/riccioli_00040_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(161.0,'/products/landing-mosaic/large/riccioli_00040_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(142.0,'/products/landing-mosaic/large/french-lentils_00007_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(174.0,'/products/landing-mosaic/small/fingerling_potatoes_istock_000010799494large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(160.0,'/products/landing-mosaic/large/puttanesca_pasta_sauce_00051_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(145.0,'/products/landing-mosaic/large/golden_honey_00014_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(154.0,'/products/landing-mosaic/large/leek_istock_000013043978large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(176.0,'/products/landing-mosaic/small/french-lentils_00007_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(167.0,'/products/landing-mosaic/small/baby_artichokes_istock_000007028251medium_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(178.0,'/products/landing-mosaic/small/girelle_00004_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(171.0,'/products/landing-mosaic/small/chanterelle-mushroom-istock_000016108777large-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(144.0,'/products/landing-mosaic/large/girelle_00004_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(149.0,'/products/landing-mosaic/large/israeli-couscous_00026_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(182.0,'/products/landing-mosaic/small/gruyere_swiss_cave_aged_00021_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(169.0,'/products/landing-mosaic/small/cabot_clothbound_cheddar_00023_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(156.0,'/products/landing-mosaic/large/mina_harissa_00003_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(27.0,'/dietpreferencesicons/g_gluten-free.png','',0);
INSERT INTO "AssetFile" VALUES(186.0,'/products/landing-mosaic/small/italian_saba_00013-1_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(155.0,'/products/landing-mosaic/large/maccheroni_00009_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(150.0,'/products/landing-mosaic/large/italian-dolce-gorgonzola_00009_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(194.0,'/products/landing-mosaic/small/puttanesca_pasta_sauce_00051_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(187.0,'/products/landing-mosaic/small/italian_sweet_rstd_red_peppers_00009_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(192.0,'/products/landing-mosaic/small/orecchiette_00018_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(25.0,'/dietpreferencesicons/df_dairy-free.png','',0);
INSERT INTO "AssetFile" VALUES(163.0,'/products/landing-mosaic/large/strozzapreti_00009_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(196.0,'/products/landing-mosaic/small/rogue-river-smokey-blue_00018_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(189.0,'/products/landing-mosaic/small/maccheroni_00009_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(159.0,'/products/landing-mosaic/large/pesto_fairway_00018_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(158.0,'/products/landing-mosaic/large/orecchiette_00018_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(202.0,'/products/landing-mosaic/small/parmigiano-reggiano_00002_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(166.0,'/products/landing-mosaic/small/aceto_balsamico_di_modena_00019_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(172.0,'/products/landing-mosaic/small/dijon_mustard_00008_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(197.0,'/products/landing-mosaic/small/strozzapreti_00009_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(165.0,'/products/landing-mosaic/large/white_wine_vinegar_00021_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(170.0,'/products/landing-mosaic/small/cara_cucina_artichoke-_00016_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(206.0,'/products/landing-mosaic/large/parmigiano-reggiano_00002_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(173.0,'/products/landing-mosaic/small/fennel-istock_000015212536large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(164.0,'/products/landing-mosaic/large/walnut_light_halves_00002_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(168.0,'/products/landing-mosaic/small/blood-orange-istock_000020053436large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(209.0,'/products/detail/extra-virgin-olive-oil_dsc_9051-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(180.0,'/products/landing-mosaic/small/green_danjou_pear_istock_000015723785large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(185.0,'/products/landing-mosaic/small/italian_eggplant_istock_000013426033large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(175.0,'/products/landing-mosaic/small/foglie_d-ulivo_00022_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(214.0,'/products/landing-mosaic/small/vanilla-beans_dsc_6644-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(188.0,'/products/landing-mosaic/small/leek_istock_000013043978large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(177.0,'/products/landing-mosaic/small/fruit-and-chocolate-bars_00016_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(184.0,'/products/landing-mosaic/small/italian-dolce-gorgonzola_00009_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(190.0,'/products/landing-mosaic/small/mina_harissa_00003_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(181.0,'/products/landing-mosaic/small/green_olives_00009_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(211.0,'/products/detail/sun_dried_tomatos_00013_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(199.0,'/products/landing-mosaic/small/white_wine_vinegar_00021_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(179.0,'/products/landing-mosaic/small/golden_honey_00014_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(183.0,'/products/landing-mosaic/small/israeli-couscous_00026_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(191.0,'/products/landing-mosaic/small/mozzarella_fresh_handmade_salted_00006_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(195.0,'/products/landing-mosaic/small/riccioli_00040_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(234.0,'/recipes/detail/gruyere-fritatta_dsc_0418-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(233.0,'/recipes/detail/girelle-zucchini_dsc_9840-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(193.0,'/products/landing-mosaic/small/pesto_fairway_00018_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(198.0,'/products/landing-mosaic/small/walnut_light_halves_00002_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(219.0,'/recipes/detail/beet-gorgonzola-salad_dsc_9370-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(205.0,'/products/landing-mosaic/large/extra-virgin-olive-oil_dsc_9051-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(218.0,'/recipes/detail/beef-carpaccio-artichoke_dsc_9215-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(100.0,'/products/detail/blood-orange-istock_000020053436large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(238.0,'/recipes/detail/lamb-with-mint-yogurt-sauce_dsc_6859-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(227.0,'/recipes/detail/cod-chanterelle_bds_7011-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(210.0,'/products/detail/gata-hurdes-olive-oil_dsc_9169-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(224.0,'/recipes/detail/cheddar-corn-muffins_dsc_0160-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(207.0,'/products/landing-mosaic/large/sun-dried-tomatos_00013_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(98.0,'/products/detail/aceto_balsamico_di_modena_00019_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(231.0,'/recipes/detail/foglie-dulivo-chicken-peppers_dsc_9805-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(102.0,'/products/detail/cara_cucina_artichoke-_00016_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(201.0,'/products/landing-mosaic/small/extra-virgin-olive-oil_dsc_9051-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(200.0,'/products/landing-mosaic/small/cabeco-olive-oil_dsc_9299-edit_2137x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(229.0,'/recipes/detail/enchiladas_dsc_9349-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(244.0,'/recipes/detail/pea-lemon-soup_bds_7055-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(220.0,'/recipes/detail/blackberry-glazed-lamb-chops_dsc_6844-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(243.0,'/recipes/detail/orecchiete-peas-pancetta_bds_7086-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(226.0,'/recipes/detail/chicken-parm_dsc_9331-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(208.0,'/products/detail/cabeco-olive-oil_dsc_9299-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(251.0,'/recipes/detail/salade-aux-lardons_dsc_9382-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(250.0,'/recipes/detail/riccioli-sundried-tomato_bds_7135-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(248.0,'/recipes/detail/potatoes-au-gratin_dsc_9923-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(230.0,'/recipes/detail/flank-steak-herbs_dsc_6930-edit-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(216.0,'/recipes/detail/artichokes-fingerlings_dsc_9954-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(240.0,'/recipes/detail/mushroom-risotto_bds_7033-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(212.0,'/products/detail/vanilla-beans_dsc_6644-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(235.0,'/recipes/detail/hazelnut-cookies_dsc_0262-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(255.0,'/recipes/detail/scallops-wine-reduction-wilted-spinach_dsc_6983-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(204.0,'/products/landing-mosaic/large/cabeco-olive-oil_dsc_9299-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(203.0,'/products/landing-mosaic/small/sun-dried-tomatos_00013_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(267.0,'/recipes/detail/white-bean-soup-olive-toasts_dsc_9847-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(217.0,'/recipes/detail/asian-vegetable-stir-fry_dsc_0206-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(242.0,'/recipes/detail/orecchiete-broccoli-rabe-sausage_bds_7070-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(249.0,'/recipes/detail/prosciutto-scallops_dsc_6954-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(213.0,'/products/landing-mosaic/large/vanilla-beans_dsc_6644-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(221.0,'/recipes/detail/caesar-salad_dsc_9262-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(252.0,'/recipes/detail/salmon-lentils_dsc_9658-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(239.0,'/recipes/detail/maccheroni-eggplant-mozz_bds_7043-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(264.0,'/recipes/detail/tournadeos-of-beef-herbs-garlic_dsc_6888-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(260.0,'/recipes/detail/strozzapreti-pesto-chicken_dsc_9861-edit-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(254.0,'/recipes/detail/sausage-lentils-fennel_bds_7111-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(268.0,'/recipes/detail/wonton-soup_dsc_0127-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(225.0,'/recipes/detail/chicken-fennel-blood-orange_dsc_9881-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(222.0,'/recipes/detail/carrots-lemon-spiced_bds_7121-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(274.0,'/recipes/landing-mosaic/large/blackberry-glazed-lamb-chops_dsc_6844-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(261.0,'/recipes/detail/strozzapreti-walnuts_dsc_0024-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(278.0,'/recipes/landing-mosaic/large/cheddar-corn-muffins_dsc_0160-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(259.0,'/recipes/detail/steak-parmesan-butter-balsamic-glaze_dsc_6943-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(270.0,'/recipes/landing-mosaic/large/artichokes-fingerlings_dsc_9954-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(289.0,'/recipes/landing-mosaic/large/hazelnut-cookies_dsc_0262-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(269.0,'/recipes/landing-mosaic/large/apple-cheddar-pie_dsc_0105-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(228.0,'/recipes/detail/cornbread-sausage-stuffing_dsc_0280-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(272.0,'/recipes/landing-mosaic/large/beef-carpaccio-artichoke_dsc_9215-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(281.0,'/recipes/landing-mosaic/large/cod-chanterelle_bds_7011-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(223.0,'/recipes/detail/cheddar-corn-chowder_dsc_0375-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(275.0,'/recipes/landing-mosaic/large/caesar-salad_dsc_9262-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(300.0,'/recipes/landing-mosaic/large/pork-fig-sauce_dsc_9959-edit-edit_427x300_2.jpg','',0);
INSERT INTO "AssetFile" VALUES(280.0,'/recipes/landing-mosaic/large/chicken-parm_dsc_9331-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(282.0,'/recipes/landing-mosaic/large/cornbread-sausage-stuffing_dsc_0280-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(276.0,'/recipes/landing-mosaic/large/carrots-lemon-spiced_bds_7121-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(290.0,'/recipes/landing-mosaic/large/italian-stew_dsc_9891-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(236.0,'/recipes/detail/italian-stew_dsc_9891-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(285.0,'/recipes/landing-mosaic/large/foglie-dulivo-chicken-peppers_dsc_9805-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(232.0,'/recipes/detail/french-toast-gruyere-pear_dsc_0231-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(107.0,'/products/detail/foglie_d-ulivo_00022_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(283.0,'/recipes/landing-mosaic/large/enchiladas_dsc_9349-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(106.0,'/products/detail/fingerling_potatoes_istock_000010799494large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(303.0,'/recipes/landing-mosaic/large/prosciutto-scallops_dsc_6954-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(256.0,'/recipes/detail/shakshuka-eggs_dsc_0141-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(304.0,'/recipes/landing-mosaic/large/riccioli-sundried-tomato_bds_7135-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(296.0,'/recipes/landing-mosaic/large/orecchiete-broccoli-rabe-sausage_bds_7070-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(310.0,'/recipes/landing-mosaic/large/spiced-couscous_dsc_9977-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(237.0,'/recipes/detail/lamb-ragu_dsc_69091-as-smart-object-2-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(294.0,'/recipes/landing-mosaic/large/mushroom-risotto_bds_7033-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(299.0,'/recipes/landing-mosaic/large/poached-pear_bds_7145-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(315.0,'/recipes/landing-mosaic/large/tilapia-provencal_dsc_9720-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(292.0,'/recipes/landing-mosaic/large/lamb-with-mint-yogurt-sauce_dsc_6859-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(311.0,'/recipes/landing-mosaic/large/spinach-lamb-pear-salad_dsc_6839-edit-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(247.0,'/recipes/detail/pork-pears-blue-cheese_dsc_0088-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(246.0,'/recipes/detail/pork-fig-sauce_dsc_9959-edit-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(305.0,'/recipes/landing-mosaic/large/salmon-lentils_dsc_9658-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(117.0,'/products/detail/italian_eggplant_istock_000013426033large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(334.0,'/recipes/landing-mosaic/small/cheddar-corn-muffins_dsc_0160-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(313.0,'/recipes/landing-mosaic/large/strozzapreti-pesto-chicken_dsc_9861-edit-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(316.0,'/recipes/landing-mosaic/large/tomato-cheddar-pie_bds_7159-edit-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(320.0,'/recipes/landing-mosaic/large/walnut-arugula-flatbread_dsc_0173-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(245.0,'/recipes/detail/poached-pear_bds_7145-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(108.0,'/products/detail/french-lentils_00007_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(308.0,'/recipes/landing-mosaic/large/scallops-wine-reduction-wilted-spinach_dsc_6983-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(317.0,'/recipes/landing-mosaic/large/tournadeos-of-beef-herbs-garlic_dsc_6888-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(257.0,'/recipes/detail/spiced-couscous_dsc_9977-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(322.0,'/recipes/landing-mosaic/large/wonton-soup_dsc_0127-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(309.0,'/recipes/landing-mosaic/large/shakshuka-eggs_dsc_0141-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(319.0,'/recipes/landing-mosaic/large/veg-tagine-couscous_dsc_9991-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(330.0,'/recipes/landing-mosaic/small/blackberry-glazed-lamb-chops_dsc_6844-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(336.0,'/recipes/landing-mosaic/small/chicken-parm_dsc_9331-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(342.0,'/recipes/landing-mosaic/small/french-toast-gruyere-pear_dsc_0231-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(343.0,'/recipes/landing-mosaic/small/girelle-zucchini_dsc_9840-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(339.0,'/recipes/landing-mosaic/small/enchiladas_dsc_9349-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(258.0,'/recipes/detail/spinach-lamb-pear-salad_dsc_6839-edit-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(345.0,'/recipes/landing-mosaic/small/hazelnut-cookies_dsc_0262-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(111.0,'/products/detail/golden_honey_00014_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(335.0,'/recipes/landing-mosaic/small/chicken-fennel-blood-orange_dsc_9881-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(328.0,'/recipes/landing-mosaic/small/beef-carpaccio-artichoke_dsc_9215-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(340.0,'/recipes/landing-mosaic/small/flank-steak-herbs_dsc_6930-edit-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(329.0,'/recipes/landing-mosaic/small/beet-gorgonzola-salad_dsc_9370-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(325.0,'/recipes/landing-mosaic/small/apple-cheddar-pie_dsc_0105-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(265.0,'/recipes/detail/veg-tagine-couscous_dsc_9991-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(348.0,'/recipes/landing-mosaic/small/lamb-with-mint-yogurt-sauce_dsc_6859-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(350.0,'/recipes/landing-mosaic/small/mushroom-risotto_bds_7033-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(354.0,'/recipes/landing-mosaic/small/pea-lemon-soup_bds_7055-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(357.0,'/recipes/landing-mosaic/small/pork-pears-blue-cheese_dsc_0088-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(353.0,'/recipes/landing-mosaic/small/orecchiete-peas-pancetta_bds_7086-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(253.0,'/recipes/detail/salmon-puttanesca_dsc_9665-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(365.0,'/recipes/landing-mosaic/small/sausage-lentils-fennel_bds_7111-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(352.0,'/recipes/landing-mosaic/small/orecchiete-broccoli-rabe-sausage_bds_7070-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(377.0,'/recipes/landing-mosaic/small/walnut-arugula-flatbread_dsc_0173-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(403.0,'/recipes/landing-mosaic/large/asparagus-parmigiano-istock_000001835751large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(262.0,'/recipes/detail/tilapia-provencal_dsc_9720-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(379.0,'/recipes/landing-mosaic/small/wonton-soup_dsc_0127-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(119.0,'/products/detail/italian_sweet_rstd_red_peppers_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(273.0,'/recipes/landing-mosaic/large/beet-gorgonzola-salad_dsc_9370-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(372.0,'/recipes/landing-mosaic/small/strozzapreti-walnuts_dsc_0024-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(337.0,'/recipes/landing-mosaic/small/cod-chanterelle_bds_7011-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(395.0,'/departments/fairway_label_jm19468.jpg','',0);
INSERT INTO "AssetFile" VALUES(327.0,'/recipes/landing-mosaic/small/asian-vegetable-stir-fry_dsc_0206-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(277.0,'/recipes/landing-mosaic/large/cheddar-corn-chowder_dsc_0375-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(370.0,'/recipes/landing-mosaic/small/steak-parmesan-butter-balsamic-glaze_dsc_6943-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(364.0,'/recipes/landing-mosaic/small/salmon-puttanesca_dsc_9665-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(385.0,'/products/landing-mosaic/large/gaeta-olives_dsc_6449-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(263.0,'/recipes/detail/tomato-cheddar-pie_bds_7159-edit-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(404.0,'/recipes/landing-mosaic/small/asparagus-parmigiano-istock_000001835751large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(363.0,'/recipes/landing-mosaic/small/salmon-lentils_dsc_9658-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(286.0,'/recipes/landing-mosaic/large/french-toast-gruyere-pear_dsc_0231-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(284.0,'/recipes/landing-mosaic/large/flank-steak-herbs_dsc_6930-edit-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(266.0,'/recipes/detail/walnut-arugula-flatbread_dsc_0173-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(402.0,'/recipes/detail/asparagus-parmigiano-istock_000001835751large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(297.0,'/recipes/landing-mosaic/large/orecchiete-peas-pancetta_bds_7086-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(279.0,'/recipes/landing-mosaic/large/chicken-fennel-blood-orange_dsc_9881-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(401.0,'/departments/traditional_grocery_dsc8890-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(406.0,'/recipes/landing-mosaic/large/ratatouille-istock_000009794272large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(302.0,'/recipes/landing-mosaic/large/potatoes-au-gratin_dsc_9923-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(287.0,'/recipes/landing-mosaic/large/girelle-zucchini_dsc_9840-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(349.0,'/recipes/landing-mosaic/small/maccheroni-eggplant-mozz_bds_7043-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(301.0,'/recipes/landing-mosaic/large/pork-pears-blue-cheese_dsc_0088-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(291.0,'/recipes/landing-mosaic/large/lamb-ragu_dsc_69091-as-smart-object-2-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(382.0,'/products/landing-mosaic/large/oil-cured-black-olives_dsc_9013-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(306.0,'/recipes/landing-mosaic/large/salmon-puttanesca_dsc_9665-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(293.0,'/recipes/landing-mosaic/large/maccheroni-eggplant-mozz_bds_7043-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(307.0,'/recipes/landing-mosaic/large/sausage-lentils-fennel_bds_7111-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(383.0,'/products/detail/oil-cured-black-olives_dsc_9013-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(298.0,'/recipes/landing-mosaic/large/pea-lemon-soup_bds_7055-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(288.0,'/recipes/landing-mosaic/large/gruyere-fritatta_dsc_0418-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(433.0,'/recipes/detail/scallops-herb-sauce_istock_000026530403large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(271.0,'/recipes/landing-mosaic/large/asian-vegetable-stir-fry_dsc_0206-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(109.0,'/products/detail/fruit-and-chocolate-bars_00016_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(318.0,'/recipes/landing-mosaic/large/vanilla-beans_dsc_6644-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(331.0,'/recipes/landing-mosaic/small/caesar-salad_dsc_9262-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(440.0,'/departments/kosher_dsc_0218-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(323.0,'/recipes/landing-mosaic/large/pumpkin_pie_bourbon_whipped_cream_istock_000004638417large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(124.0,'/products/detail/orecchiette_00018_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(115.0,'/products/detail/israeli-couscous_00026_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(436.0,'/recipes/landing-mosaic/large/scallops-herb-sauce_istock_000026530403large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(312.0,'/recipes/landing-mosaic/large/steak-parmesan-butter-balsamic-glaze_dsc_6943-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(314.0,'/recipes/landing-mosaic/large/strozzapreti-walnuts_dsc_0024-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(453.0,'/curator-posts/detail/parmesan-w-rind--640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(326.0,'/recipes/landing-mosaic/small/artichokes-fingerlings_dsc_9954-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(384.0,'/products/detail/gaeta-olives_dsc_6449-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(321.0,'/recipes/landing-mosaic/large/white-bean-soup-olive-toasts_dsc_9847-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(333.0,'/recipes/landing-mosaic/small/cheddar-corn-chowder_dsc_0375-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(431.0,'/store/floor-plans/plainviewfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(137.0,'/products/landing-mosaic/large/chanterelle-mushroom-istock_000016108777large-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(346.0,'/recipes/landing-mosaic/small/italian-stew_dsc_9891-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(347.0,'/recipes/landing-mosaic/small/lamb-ragu_dsc_69091-as-smart-object-2-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(324.0,'/recipes/landing-mosaic/small/pumpkin_pie_bourbon_whipped_cream_istock_000004638417large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(390.0,'/recipes/landing-mosaic/large/salade-aux-lardons_dsc_9382-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(455.0,'/curator-posts/detail/fairway-mozz-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(344.0,'/recipes/landing-mosaic/small/gruyere-fritatta_dsc_0418-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(361.0,'/recipes/landing-mosaic/small/salade-aux-lardons_dsc_9382-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(356.0,'/recipes/landing-mosaic/small/pork-fig-sauce_dsc_9959-edit-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(359.0,'/recipes/landing-mosaic/small/prosciutto-scallops_dsc_6954-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(450.0,'/curator-posts/detail/strozzapreti---640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(125.0,'/products/detail/pesto_fairway_00018_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(474.0,'/curator-posts/landing-mosaic/large/fairway-mozz-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(482.0,'/curator-posts/landing-mosaic/small/salmonfilet-213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(468.0,'/curator-posts/detail/obe-steak-640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(483.0,'/curator-posts/landing-mosaic/large/espellete-peppers-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(396.0,'/departments/meat_dsc3139-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(498.0,'/curator-posts/landing-mosaic/small/olive-oil-olives-4-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(469.0,'/curator-posts/landing-mosaic/large/strozzapreti--427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(418.0,'/rewards/detail/puttanesca-pasta-sauce_00051_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(466.0,'/curator-posts/landing-mosaic/large/cheese-group-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(380.0,'/recipes/detail/pumpkin_pie_bourbon_whipped_cream_istock_000004638417large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(484.0,'/curator-posts/landing-mosaic/small/strozzapreti---213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(113.0,'/products/detail/green_olives_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(489.0,'/curator-posts/landing-mosaic/small/parmesan-w-rind-213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(487.0,'/curator-posts/landing-mosaic/small/odetogarlic---213-x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(338.0,'/recipes/landing-mosaic/small/cornbread-sausage-stuffing_dsc_0280-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(378.0,'/recipes/landing-mosaic/small/white-bean-soup-olive-toasts_dsc_9847-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(497.0,'/curator-posts/landing-mosaic/small/hazelnuts-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(341.0,'/recipes/landing-mosaic/small/foglie-dulivo-chicken-peppers_dsc_9805-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(130.0,'/products/detail/walnut_light_halves_00002_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(400.0,'/departments/specialty_dsc1308-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(494.0,'/curator-posts/landing-mosaic/small/longan-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(470.0,'/curator-posts/landing-mosaic/large/manchego-427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(332.0,'/recipes/landing-mosaic/small/carrots-lemon-spiced_bds_7121-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(427.0,'/store/floor-plans/douglastonfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(500.0,'/curator-posts/landing-mosaic/small/espellete-peppers-213x200.jpg','',0);
INSERT INTO "AssetFile" VALUES(355.0,'/recipes/landing-mosaic/small/poached-pear_bds_7145-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(139.0,'/products/landing-mosaic/large/fennel-istock_000015212536large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(398.0,'/departments/produce_1_dsc8425-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(360.0,'/recipes/landing-mosaic/small/riccioli-sundried-tomato_bds_7135-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(387.0,'/products/landing-mosaic/large/gata-hurdes-olive-oil_dsc_9169-edit_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(376.0,'/recipes/landing-mosaic/small/veg-tagine-couscous_dsc_9991-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(358.0,'/recipes/landing-mosaic/small/potatoes-au-gratin_dsc_9923-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(393.0,'/departments/coffee_jm19900.jpg','',0);
INSERT INTO "AssetFile" VALUES(367.0,'/recipes/landing-mosaic/small/shakshuka-eggs_dsc_0141-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(457.0,'/curator-posts/detail/rainbow-chard-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(475.0,'/curator-posts/landing-mosaic/large/longan-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(371.0,'/recipes/landing-mosaic/small/strozzapreti-pesto-chicken_dsc_9861-edit-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(381.0,'/products/landing-mosaic/small/oil-cured-black-olives_dsc_9013-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(407.0,'/recipes/landing-mosaic/small/ratatouille-istock_000009794272large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(486.0,'/curator-posts/landing-mosaic/large/fairway-organics-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(374.0,'/recipes/landing-mosaic/small/tomato-cheddar-pie_bds_7159-edit-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(425.0,'/store/floor-plans/woodlandpark_floorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(375.0,'/recipes/landing-mosaic/small/tournadeos-of-beef-herbs-garlic_dsc_6888-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(369.0,'/recipes/landing-mosaic/small/spinach-lamb-pear-salad_dsc_6839-edit-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(368.0,'/recipes/landing-mosaic/small/spiced-couscous_dsc_9977-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(391.0,'/departments/bakery_dsc_0389-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(499.0,'/curator-posts/landing-mosaic/small/mushrom-basket-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(397.0,'/departments/organic_natural_2-103-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(373.0,'/recipes/landing-mosaic/small/tilapia-provencal_dsc_9720-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(442.0,'/store/floor-plans/harlemfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(408.0,'/rewards/barcode/placeholder_barcode.jpg','',0);
INSERT INTO "AssetFile" VALUES(435.0,'/recipes/landing-mosaic/large/orange-cranberry-sauce-istock_000014872643large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(392.0,'/departments/cheese_olives_pasta_2_dsc0518-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(439.0,'/departments/seafood_dsc_0654-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(432.0,'/store/floor-plans/74thfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(438.0,'/recipes/landing-mosaic/small/orange-cranberry-sauce-istock_000014872643large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(394.0,'/departments/dried_fruits_nuts_dsc_0172-edit.jpg','',0);
INSERT INTO "AssetFile" VALUES(366.0,'/recipes/landing-mosaic/small/scallops-wine-reduction-wilted-spinach_dsc_6983-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(451.0,'/curator-posts/detail/manchego---640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(434.0,'/recipes/detail/orange-cranberry-sauce-istock_000014872643large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(454.0,'/curator-posts/detail/fairway-onecup-640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(437.0,'/recipes/landing-mosaic/small/scallops-herb-sauce_istock_000026530403large_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(430.0,'/store/floor-plans/redhookfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(388.0,'/products/landing-mosaic/small/gata-hurdes-olive-oil_dsc_9169-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(441.0,'/store/floor-plans/paramusfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(452.0,'/curator-posts/detail/odetogarlic--640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(126.0,'/products/detail/puttanesca-pasta-sauce_00051_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(460.0,'/curator-posts/detail/olive-oil-olives-4-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(465.0,'/curator-posts/detail/beef-stew-640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(456.0,'/curator-posts/detail/longan-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(449.0,'/curator-posts/detail/salmonfilet-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(135.0,'/products/landing-mosaic/large/cabot_clothbound_cheddar_00023_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(472.0,'/curator-posts/landing-mosaic/large/parmesan-w-rind-427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(471.0,'/curator-posts/landing-mosaic/large/odetogarlic---427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(448.0,'/curator-posts/detail/cheese-group-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(477.0,'/curator-posts/landing-mosaic/large/fairway-pate-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(488.0,'/curator-posts/landing-mosaic/large/dry-aged-beef--427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(478.0,'/curator-posts/landing-mosaic/large/hazelnuts-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(458.0,'/curator-posts/detail/fairway-pate-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(123.0,'/products/detail/mozzarella_fresh_handmade_salted_00006_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(462.0,'/curator-posts/detail/espellete-peppers-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(492.0,'/curator-posts/landing-mosaic/large/obe-steak--427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(459.0,'/curator-posts/detail/hazelnuts-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(495.0,'/curator-posts/landing-mosaic/small/rainbow-chard-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(136.0,'/products/landing-mosaic/large/cara_cucina_artichoke-_00016_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(141.0,'/products/landing-mosaic/large/foglie_d-ulivo_00022_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(491.0,'/curator-posts/landing-mosaic/small/fairway-onecup-213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(424.0,'/store/floor-plans/westbury_floorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(493.0,'/curator-posts/landing-mosaic/small/fairway-mozz-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(128.0,'/products/detail/rogue-river-smokey-blue_00018_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(422.0,'/store/floor-plans/chelseafloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(496.0,'/curator-posts/landing-mosaic/small/fairway-pate-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(479.0,'/curator-posts/landing-mosaic/large/olive-oil-olives-4-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(389.0,'/products/detail/parmigiano-reggiano_00002_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(429.0,'/store/floor-plans/pelhammanorfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(503.0,'/curator-posts/landing-mosaic/small/beef-stew-213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(134.0,'/products/landing-mosaic/large/blood-orange-istock_000020053436large_427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(463.0,'/curator-posts/detail/fairway-organics-640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(501.0,'/curator-posts/landing-mosaic/small/fairway-organics-213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(405.0,'/recipes/detail/ratatouille-istock_000009794272large_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(473.0,'/curator-posts/landing-mosaic/large/fairway-onecup-427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(461.0,'/curator-posts/detail/mushrom-basket-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(485.0,'/curator-posts/landing-mosaic/small/manchego--213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(481.0,'/curator-posts/landing-mosaic/large/mushrom-basket-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(464.0,'/curator-posts/detail/dry-aged-beef---640-x-1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(490.0,'/curator-posts/landing-mosaic/large/beef-stew-427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(386.0,'/products/landing-mosaic/small/gaeta-olives_dsc_6449-edit_213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(476.0,'/curator-posts/landing-mosaic/large/rainbow-chard-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(426.0,'/store/floor-plans/uesfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(428.0,'/store/floor-plans/stamfordfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(423.0,'/store/floor-plans/kipsbayfloorplan.jpg','',0);
INSERT INTO "AssetFile" VALUES(502.0,'/curator-posts/landing-mosaic/small/dry-aged-beef-213-x-200.jpg','',0);
INSERT INTO "AssetFile" VALUES(467.0,'/curator-posts/landing-mosaic/large/salmonfilet-427-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(504.0,'/curator-posts/landing-mosaic/small/obe-steak--213-x-300.jpg','',0);
INSERT INTO "AssetFile" VALUES(480.0,'/curator-posts/landing-mosaic/small/cheese-group-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(90.0,'/rewards/detail/rewards-landing3.jpg','',0);
INSERT INTO "AssetFile" VALUES(412.0,'/rewards/detail/hazelnutspread_2_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(415.0,'/rewards/landing/cabeco-olive-oil_dsc_9299-edit_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(417.0,'/rewards/landing/hazelnutspread_2_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(411.0,'/rewards/detail/dark_chocolate_00006_ii_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(410.0,'/rewards/detail/cabeco-olive-oil_dsc_9299-edit_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(416.0,'/rewards/landing/dark_chocolate_00006_ii_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(413.0,'/rewards/detail/puttanesca-pasta-sauce_00051_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(508.0,'/rewards/landing/puttanesca-pasta-sauce_00051_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(414.0,'/rewards/detail/strozzapreti_00009_640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(419.0,'/rewards/landing/strozzapreti_00009_640x286.jpg','',0);
INSERT INTO "AssetFile" VALUES(509.0,'/store/floor-plans/map---nanuet.jpg','',0);
INSERT INTO "AssetFile" VALUES(512.0,'/pumpkinseedssized-213x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(510.0,'/pumpkinseedssized-427x300.jpg','',0);
INSERT INTO "AssetFile" VALUES(515.0,'/turkey-carving427x300.gif','',0);
INSERT INTO "AssetFile" VALUES(514.0,'/turkey-carving640x1136.gif','',0);
INSERT INTO "AssetFile" VALUES(511.0,'/pumpkinseedssized-640x1136.jpg','',0);
INSERT INTO "AssetFile" VALUES(516.0,'/turkey-carving213x300.gif','',0);
INSERT INTO "AssetFile" VALUES(215.0,'/recipes/detail/apple-cheddar-pie_dsc_0105-edit_640x1136.jpg','',0);
CREATE TABLE IF NOT EXISTS User (UserID, FW_CustomerID, FirstName, LastName, EmailAddress, PostalCode, Phone, ImagePathBarCode, AgreedToTerms);
INSERT INTO "User" SELECT'40','','','','','','','','false' WHERE NOT EXISTS (SELECT 1 from User);
CREATE TABLE IF NOT EXISTS User_StorePreference (UserID,StoreID,CREATED);
CREATE TABLE IF NOT EXISTS DietPreference (DietPreferenceID INTEGER, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass);
INSERT INTO "DietPreference" VALUES(45,'Dairy Free','D',1.0,NULL,25.0,'icon-dairyfree');
INSERT INTO "DietPreference" VALUES(46,'Fat Free','F',2.0,NULL,26.0,'icon-fatfree');
INSERT INTO "DietPreference" VALUES(47,'Gluten Free','G',3.0,NULL,27.0,'icon-glutenfree');
INSERT INTO "DietPreference" VALUES(62,'High Fiber','HF',4.0,NULL,24.0,'icon-highfiber');
INSERT INTO "DietPreference" VALUES(63,'Low Fat','LF',5.0,NULL,22.0,'icon-lowfat');
INSERT INTO "DietPreference" VALUES(64,'Low Sodium','Na',6.0,NULL,21.0,'icon-lowsodium');
INSERT INTO "DietPreference" VALUES(65,'Sugar Conscious','S',7.0,NULL,NULL,'icon-sugarconscious');
INSERT INTO "DietPreference" VALUES(66,'Vegetarian','V',8.0,NULL,20.0,'icon-vegetarian');
INSERT INTO "DietPreference" VALUES(67,'Vegan','V+',9.0,NULL,19.0,'icon-vegan');
INSERT INTO "DietPreference" VALUES(68,'Wheat Free','W',10.0,NULL,18.0,'icon-wheatfree');
INSERT INTO "DietPreference" VALUES(69,'Kosher','K',11.0,NULL,NULL,'icon-kosher');
CREATE TABLE IF NOT EXISTS ProductDietPreference (ProductID,DietPreferenceID);
INSERT INTO "ProductDietPreference" VALUES(233.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,62.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(233.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(234.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(235.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(235.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(235.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(235.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(236.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(236.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(236.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(236.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(237.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(238.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(239.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(239.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(239.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(239.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(240.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(241.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(242.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(243.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(244.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(245.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,62.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(246.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(247.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(247.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(248.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(249.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(250.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(251.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(251.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(251.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(251.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(252.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(253.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(254.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(255.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(256.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(257.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(258.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(258.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(258.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(259.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(260.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(261.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,62.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(262.0,69.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,62.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(263.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(264.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(265.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(266.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(267.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(268.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(268.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(268.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(268.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(269.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(270.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,63.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,64.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(271.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,45.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,46.0);
INSERT INTO "ProductDietPreference" VALUES(272.0,67.0);
INSERT INTO "ProductDietPreference" VALUES(273.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(273.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(273.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(273.0,66.0);
INSERT INTO "ProductDietPreference" VALUES(274.0,47.0);
INSERT INTO "ProductDietPreference" VALUES(274.0,65.0);
INSERT INTO "ProductDietPreference" VALUES(274.0,68.0);
INSERT INTO "ProductDietPreference" VALUES(274.0,66.0);
CREATE TABLE IF NOT EXISTS RecipeDietPreference (RecipeID,DietPreferenceID);
INSERT INTO "RecipeDietPreference" VALUES(275.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(275.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(276.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(277.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(278.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(278.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(278.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(279.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(279.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(280.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(280.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(280.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(281.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(281.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(281.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(281.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(281.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(283.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(283.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(283.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(283.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(284.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(284.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(286.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(286.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(286.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(287.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(287.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(287.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(288.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(288.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(288.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(288.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(289.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(289.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(289.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(289.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(291.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(291.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(291.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(292.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(292.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(292.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(292.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(293.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(293.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(293.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(294.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(294.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(294.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(294.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(295.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(295.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(295.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(296.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(297.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(298.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(298.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(298.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(299.0,62.0);
INSERT INTO "RecipeDietPreference" VALUES(299.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(301.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(301.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(301.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(301.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(302.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(302.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(302.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(303.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(305.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(307.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(307.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(307.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(307.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(308.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(308.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(309.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(310.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(310.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(310.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(311.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(311.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(311.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(311.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(311.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(312.0,62.0);
INSERT INTO "RecipeDietPreference" VALUES(313.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(313.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(314.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(314.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(314.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(314.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(314.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(315.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(315.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(315.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(315.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(316.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(316.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(316.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(316.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(317.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(317.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(318.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(318.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(318.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(318.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(319.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(320.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(321.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(321.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(321.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(322.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(322.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(322.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(322.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(322.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,62.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(323.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(324.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(324.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(324.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(324.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(325.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(326.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(327.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(328.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(328.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(328.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(328.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(328.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,62.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(329.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(330.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(330.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(330.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(330.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(330.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,46.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(331.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(332.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,45.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,67.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,64.0);
INSERT INTO "RecipeDietPreference" VALUES(333.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,47.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,65.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,68.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,63.0);
INSERT INTO "RecipeDietPreference" VALUES(334.0,69.0);
INSERT INTO "RecipeDietPreference" VALUES(335.0,66.0);
INSERT INTO "RecipeDietPreference" VALUES(335.0,69.0);
CREATE TABLE IF NOT EXISTS TagType (TagID, TagLabel, TagValue, TagType);
INSERT INTO "TagType" VALUES(49.0,'Category','Meat','');
INSERT INTO "TagType" VALUES(53.0,'Season','Winter','');
INSERT INTO "TagType" VALUES(54.0,'Season','Summer','');
INSERT INTO "TagType" VALUES(55.0,'Cusine','Asian','');
INSERT INTO "TagType" VALUES(56.0,'Cusine','Mexican','');
INSERT INTO "TagType" VALUES(57.0,'Course','Breakfast','');
INSERT INTO "TagType" VALUES(58.0,'Course','Dinner','');
INSERT INTO "TagType" VALUES(59.0,'Category','Poultry','');
INSERT INTO "TagType" VALUES(72.0,'Course','Lunch','');
INSERT INTO "TagType" VALUES(73.0,'Course','Dessert','');
INSERT INTO "TagType" VALUES(74.0,'Course','Appetizer','');
INSERT INTO "TagType" VALUES(78.0,'Course','Side Dish','');
INSERT INTO "TagType" VALUES(79.0,'Course','Snack','');
INSERT INTO "TagType" VALUES(80.0,'Course','Brunch','');
INSERT INTO "TagType" VALUES(81.0,'Cusine','Italian','');
INSERT INTO "TagType" VALUES(82.0,'Cusine','French','');
INSERT INTO "TagType" VALUES(83.0,'Cusine','German','');
INSERT INTO "TagType" VALUES(84.0,'Cusine','Indian','');
INSERT INTO "TagType" VALUES(85.0,'Cusine','Spanish','');
INSERT INTO "TagType" VALUES(86.0,'Cusine','African','');
INSERT INTO "TagType" VALUES(87.0,'Season','Spring','');
INSERT INTO "TagType" VALUES(88.0,'Season','Fall','');
INSERT INTO "TagType" VALUES(89.0,'Category','Pasta','');
INSERT INTO "TagType" VALUES(90.0,'Category','Pizza','');
INSERT INTO "TagType" VALUES(91.0,'Category','Soup','');
INSERT INTO "TagType" VALUES(92.0,'Category','Seafood','');
INSERT INTO "TagType" VALUES(93.0,'Category','Salad','');
INSERT INTO "TagType" VALUES(95.0,'Category','Vegetable','');
INSERT INTO "TagType" VALUES(96.0,'Category','Sandwich','');
INSERT INTO "TagType" VALUES(109.0,'Cusine','American','');
INSERT INTO "TagType" VALUES(216.0,'Occasion','Birthday','');
INSERT INTO "TagType" VALUES(218.0,'Occasion','Christmas','');
INSERT INTO "TagType" VALUES(220.0,'Occasion','Holiday','');
INSERT INTO "TagType" VALUES(221.0,'Occasion','Quick Family Meal','');
INSERT INTO "TagType" VALUES(222.0,'Occasion','Hannukah','');
INSERT INTO "TagType" VALUES(223.0,'Occasion','Party','');
INSERT INTO "TagType" VALUES(224.0,'Occasion','Easter','');
INSERT INTO "TagType" VALUES(225.0,'Occasion','Thanksgiving','');
INSERT INTO "TagType" VALUES(336.0,'Occasion','Fourth of July','');
CREATE TABLE IF NOT EXISTS Product (ProductID unique, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified);
INSERT INTO "Product" VALUES(233.0,'Baby Artichokes','','<p>In Europe in the mid 1500&rsquo;s, consumption of the artichoke by women was considered scandalous because it was reputed to be an aphrodisiac. Baby artichokes are tender, delicious, and&mdash;because they&#39;re missing the fibrous center known as the choke&mdash;easy to cook and eat.&nbsp;</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','9306',99.0,133.0,167.0,0.0,0.0,1384963756.0);
INSERT INTO "Product" VALUES(234.0,'Blood Orange','','<p>Slice one open and marvel at its deep, deep red flesh. These crimson&nbsp;stunners have a lush sweetness and slightly bitter, totally&nbsp;satisfying&nbsp;aftertaste. The wild color is the result of&nbsp;anthocyanin&nbsp;pigments, which act as antioxidants&ndash;so they&rsquo;re not just pretty, they&rsquo;re great for you.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','9590',100.0,134.0,168.0,0.0,0.0,1384791814.0);
INSERT INTO "Product" VALUES(235.0,'Cabot Cloth Bound Cheddar','','<p>Great cheddar is encased in layers of cloth and aged, allowing caramel-y, savory, nutty flavors to come into their delicious own. The cheese is bound and aged until the cheddar gets fantastically rich, earthy, horseradish-y&nbsp;and ethereal. Crumbly. Awesome.</p>
','262591',101.0,135.0,169.0,0.0,0.0,1386861187.0);
INSERT INTO "Product" VALUES(236.0,'Cara Cucina Garlic & Artichoke Cream','','<p>Truly decadent, this luscious, creamy spread is an absolute luxury. Silky smooth and rich, the artichokes and garlic meld perfectly to boast a velvety texture and almost a buttery flavor that will have you reaching for more.</p>
','8031403002201',102.0,136.0,170.0,0.0,0.0,1386859993.0);
INSERT INTO "Product" VALUES(237.0,'Chanterelle Mushroom','','<p>Wild mushrooms? Oregon and Washington State chanterelles and morels, Italian Piedmont porcini, fresh white Piedmont truffles, live Italian snails (bobbolucci), even khat, the chewable, mildly narcotic leaf &ndash; all of these things made their debut at Fairway.</p>
','411',103.0,137.0,171.0,0.0,0.0,1386860008.0);
INSERT INTO "Product" VALUES(238.0,'D''Anjou Green Pear','','<p>A hint of cloves and tart pineapple. Juicy as a honeydew. The milky white flesh of the D&rsquo;Anjou pear is buttery soft and gleefully sweet. The charming aroma is an indicator of the deliciousness that is to come &ndash; be sure to have a napkin nearby!</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','9930',112.0,146.0,180.0,0.0,0.0,1384791811.0);
INSERT INTO "Product" VALUES(239.0,'Cave Aged Gruyere','','<p>Aged for at least one year in sandstone caves, this cheese develops an oily, rustic rind and a smooth paste with a lusty, big flavor. Gruyere is a brilliant cheese, the ultimate melter, the ultimate salad cheese, sandwich cheese, snack cheese, dessert cheese.</p>
','227099',114.0,148.0,182.0,0.0,0.0,1386860002.0);
INSERT INTO "Product" VALUES(240.0,'Fairway Aceto Balsamico di Modena IGP','','<p>While Americans typically enjoy this sweet and slightly piquant vinegar on salads and in vinaigrettes, Italians prefer using it for cooking with beef, veal, pork, lamb&nbsp;and poultry.</p>
','758940626308',98.0,132.0,166.0,0.0,0.0,1386860312.0);
INSERT INTO "Product" VALUES(241.0,'Fairway Aceto di Vino Bianco (White Wine Vinegar)','','<p>A fragrantly complex and rich vinegar. Grapes are simmered slowly and reduced to a liquid which rests in oak barrels for three years, absorbing delicate flavor and aroma as it gradually thickens into this exquisite, beautifully pale-colored, white wine vinegar.</p>
','477968',131.0,165.0,199.0,0.0,0.0,1386860316.0);
INSERT INTO "Product" VALUES(242.0,'Fairway Bourbon Vanilla Beans','','<p>A wonderfully exotic spice, these long and slender vanilla beans grow sweet and potent with concentrated flavor. Applying heat gives vanilla a heady and entrancing aroma that&rsquo;s irresistible in entrees.</p>
','4015583081007',212.0,213.0,214.0,0.0,0.0,1386860328.0);
INSERT INTO "Product" VALUES(243.0,'Fairway Cabeco Das Nogueiras Olive Oil','','<p>The greenish golden oil is thick and sweet, which yields a markedly fruity oil, with obvious fragrances and flavors of ripe fruit, tomato, wild herbs, cooked artichoke, and green apple. It has a long, yet delicate finish.</p>
','758940590593',208.0,204.0,200.0,0.0,0.0,1386860345.0);
INSERT INTO "Product" VALUES(244.0,'Fairway Dijon Mustard','','<p>Our fine French mustards have been made by the experts at Charbonneaux in the Champagne region of France. They are powerful, vivid. Dijon is the utterly perfect expression of authentic Moutarde De Dijon. Creamy and bright, this will be a staple in your kitchen for everything from snacks to the finest cuisines.</p>
','758940626032',104.0,138.0,172.0,0.0,0.0,1386860368.0);
INSERT INTO "Product" VALUES(245.0,'Fairway Foglie D''Ulivo Artisanal Pasta','','<p>Can pasta get more beautiful? Foglie D&rsquo;Ulivo is crafted in the shape of olive leaves, with spinach and durum wheat.&nbsp;Unlike other brands, each piece of Fairway pasta is cut with bronze dies (stamps) resulting in fabulously scratchy and well-defined ridges.&nbsp;These ridges help cook the pasta evenly, giving you a good &lsquo;al dente,&#39; as well as absorbing more sauce.</p>
','480301',107.0,141.0,175.0,0.0,0.0,1386860362.0);
INSERT INTO "Product" VALUES(246.0,'Fairway French Lentils','','<p>The most prized and delicate lentils are the peppery yet mild French green lentils. They have a subtle, earthy taste that pairs beautifully with more assertive flavors. They&#39;re a go-to, healthy ingredient for a quick weeknight meal.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','50409',108.0,142.0,176.0,0.0,0.0,1384791427.0);
INSERT INTO "Product" VALUES(247.0,'Fairway Fruit & Nuts Chocolate Bars','','<p>We set the bar HIGH on chocolate bar quality. Fine, small-batch chocolate, made by hand in Burlington, Vermont, with all-natural ingredients and super-rich, single-origin Belgian chocolate. Find chocolate happiness here.</p>
','769933095025',109.0,143.0,177.0,0.0,0.0,1386864581.0);
INSERT INTO "Product" VALUES(248.0,'Fairway Gata Hurdes Barrel Oil','','<p>This smooth and slightly sweet olive oil sings with pronounced fruity notes and startles with a sudden, biting piquancy that culminates in a rich riot of flavor. Derived from closely-guarded olive trees grown in western Spain, this oil has never before been imported to the U.S.</p>

<p>&nbsp;</p>

<p>The olives are nurtured by gentle sun, abundant rain, and balmy temperatures, and then picked by hand using a precise method that preserves their characteristics. The result is an oil with immense nutty character and hints at flavors and fragrances of preserved lemon, almond, and green tomato.</p>

<p>This rich, sumptuous olive oil boasts a luxurious texture and long finish, making&nbsp;us feel as if we&rsquo;ve captured a bit of heaven in a bottle.</p>
','758940624076',210.0,387.0,388.0,0.0,0.0,1386864597.0);
INSERT INTO "Product" VALUES(249.0,'Fairway Girelle Artisanal Pasta','','<p>Curly-cued, too cute, this pasta cut is named for spinning tops. Unlike other brands, each piece of Fairway pasta is cut with bronze dies (stamps) resulting in fabulously scratchy and well-defined ridges.&nbsp;These ridges help cook the pasta evenly, giving you a good &lsquo;al dente,&#39; as well as absorbing more sauce.</p>
','480319',110.0,144.0,178.0,0.0,0.0,1386864608.0);
INSERT INTO "Product" VALUES(250.0,'Fairway Golden Honey','','<p>Our sweet, amber-colored honey is really something to buzz about. The luscious, thick&nbsp;texture and an ambrosial flowery flavor make this delicious treat the perfect&nbsp;accompaniment to foods that need just a touch of rich sweetness. An easy-squeeze,&nbsp;no-drip bottle makes it a cinch to pour without worrying about a sticky mess.</p>
','477687',111.0,145.0,179.0,0.0,0.0,1386864617.0);
INSERT INTO "Product" VALUES(251.0,'Fairway Homemade Mozzarella','','<p>You haven&rsquo;t truly tasted mozzarella until you&rsquo;ve eaten it fresh out of the cheesemakers hands, minutes old. Life changing.&nbsp;Living, breathing, warm, weeping with fresh milk, tender, supple, sweet, salty and delicious!&nbsp;Like EATING a glass of milk!</p>
','262881',123.0,157.0,191.0,0.0,0.0,1386865099.0);
INSERT INTO "Product" VALUES(252.0,'Fairway Israeli Couscous','','<p>Israeli couscous is larger than regular couscous, lending a more substantial and satisfying bite. These pearly grains are made from wheat flour, and have a nutty, pasta-like taste. Our brand cooks up fluffy and light, giving you the opportunity to use these grains as a blank canvas on which to create a meal masterpiece. One easy way to make an inspired dish is to add some spice to your couscous with harissa.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','50210',115.0,149.0,183.0,0.0,0.0,1384791406.0);
INSERT INTO "Product" VALUES(253.0,'Fairway Italian Saba Vinegar','','<p>This vinegar is deep, dark, thickish, and intensely sweet substance billowing with nuance. Saba immediately found favor among the Italian people of early days who hungered for an ingredient with which to make pastries and other dishes requiring a sweetener.</p>
','758940626094',118.0,152.0,186.0,0.0,0.0,1386865354.0);
INSERT INTO "Product" VALUES(254.0,'Fairway Italian Sweet Roasted Peppers','','<p>A healthy and succulent snack, these mouthwatering peppers should be a pantry staple in your kitchen. We choose only the sweetest, ripest, meatiest red bell peppers, and pack them simply with water and salt. Flavorful enough to stand on their own, they easily bring tons of flavor to almost any meal.</p>
','758940620245',119.0,153.0,187.0,0.0,0.0,1386865359.0);
INSERT INTO "Product" VALUES(255.0,'Fairway Maccheroni Artisanal Pasta','','<p>Unlike other brands, each piece of Fairway pasta is cut with bronze dies (stamps) resulting in fabulously scratchy and well-defined ridges.&nbsp;These ridges help cook the pasta evenly, giving you a good &lsquo;al dente,&#39; as well as absorbing more sauce.</p>
','480327',121.0,155.0,189.0,0.0,0.0,1386865367.0);
INSERT INTO "Product" VALUES(256.0,'Fairway Orecchiette Artisanal Pasta','','<p>Listen up, pasta lovers! Orecchiette, or &quot;little ears&quot; in Italian, is perfect for scooping up chunky sauces. Unlike other brands, each piece of Fairway pasta is cut with bronze dies (stamps) resulting in fabulously scratchy and well-defined ridges.&nbsp;These ridges help cook the pasta evenly, giving you a good &lsquo;al dente,&#39;, as well as absorbing more sauce.</p>
','480335',124.0,158.0,192.0,0.0,0.0,1386865374.0);
INSERT INTO "Product" VALUES(257.0,'Fairway Organic Extra Virgin Olive Oil','','<p>This oil is a blend of Moraiolo olives, lightly bitter and pungent, and Coratina olives, vibrantly verdant, fruity, peppery and slightly sweet. Together, it&rsquo;s a beautifully balanced oil with a grassy undertone with hints of sweet almond and cooked artichoke before succumbing to a piquant, pepper finish.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','758940623031',209.0,205.0,201.0,0.0,0.0,1384793278.0);
INSERT INTO "Product" VALUES(258.0,'Fairway Pesto','','<p>Yeah, yeah. Pesto. Now listen. This is not your ordinary pesto. This is the most powerful pesto made, and it is made where it was invented-Genoa, the pesto capitol of the world. Just a dab tossed with pasta or dollopped into a minestrone or garbure will launch each to the ionosphere.</p>
','758940620078',125.0,159.0,193.0,0.0,0.0,1386865546.0);
INSERT INTO "Product" VALUES(259.0,'Fairway Puttanesca Sauce','','<p>Unlike other jarred brands, no preservatives, additives, or nonsense go into our mouthwatering tomato sauce. &nbsp;Juicy, vine ripe tomatoes, high-quality olive oil, zesty spices, and verdant herbs simmer slowly to create a rich and redolent sauce, with tantalizingly delicate bursts of flavor.</p>
','477810',126.0,160.0,194.0,0.0,0.0,1386865552.0);
INSERT INTO "Product" VALUES(260.0,'Fairway Riccioli Artisanal Pasta','','<p>Italian chefs and mamas make this spiral pasta wrapping dough around knitting needles or spoon handles. Unlike other brands, each piece of Fairway pasta is cut with bronze dies (stamps) resulting in fabulously scratchy and well-defined ridges.&nbsp; These ridges help cook the pasta evenly, giving you a good &lsquo;al dente&rsquo;, as well as absorbing more sauce.</p>
','480343',127.0,161.0,195.0,0.0,0.0,1386861006.0);
INSERT INTO "Product" VALUES(261.0,'Fairway Sun-Dried Tomatoes','','<p>Vine-ripe tomatoes are dehydrated to carefully preserve flavor, packed in a blend of high-quality oil to maintain freshness, and seasoned with herbs and spices for tantalizing flavors and vinegar for a pleasantly startling piquancy.</p>
','477570',211.0,207.0,203.0,0.0,0.0,1386861018.0);
INSERT INTO "Product" VALUES(262.0,'Fairway Walnuts','','<p>Walnuts are the oldest known tree food, dating back to 7000 BC, where Persians feasted on the nuts. Uniquely delicious and incredibly healthy: bursting with Vitamin E, great-for-you Omega 3&rsquo;s, phenolic acids, tannins, and flavonoids.</p>
','34325000063',130.0,164.0,198.0,0.0,0.0,1386861348.0);
INSERT INTO "Product" VALUES(263.0,'Fairway Whole Wheat Strozzapreti Artisanal Pasta','','<p>A delightful pasta with a bizarre name (in Italian, Strozzapreti means &quot;priest choker&quot;). According to legend, when Strozzapreti was first created and served to a group of priests, it was so good they choked! Like all of Fairway&#39;s pasta, our whole wheat Strozzapreti pasta is bronze die-cut, making it cling beautifully to sauce.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','480368',129.0,163.0,197.0,0.0,0.0,1384964184.0);
INSERT INTO "Product" VALUES(264.0,'Fennel','','<p>Fennel is a crunchy vegetable with a taste that is similar to licorice and anise.&nbsp; Fennel packs a flavorful aromatic taste, and contains a unique combination of healthy phytonutrients that give it strong antioxidant activity. This veggie is closely related to parsley, carrots, dill&nbsp;and coriander.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','',105.0,139.0,173.0,0.0,0.0,1384964219.0);
INSERT INTO "Product" VALUES(265.0,'Fingerling Potatoes','','<p>Fingerling potatoes are a family of heritage potatoes that naturally grow smaller and elongated like a finger. Often mistaken for &ldquo;new&rdquo; potatoes which are young potatoes harvested before they fully mature. The difference is that fingerling potatoes have a more complex flavor.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','487',106.0,140.0,174.0,0.0,0.0,1384964251.0);
INSERT INTO "Product" VALUES(266.0,'Gaeta Olives','','<p>An Italian favorite, Gaeta olives will entice you with their impossibly purple color made even more vivid with the strips of yellow lemon zest and the creamy beige of the smashed garlic cloves. Each nugget of flesh glinting from the sheen of Fairway Extra Virgin Olive Oil.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','',384.0,385.0,386.0,0.0,0.0,1384790327.0);
INSERT INTO "Product" VALUES(267.0,'Green Cracked Sicilian Olives','','<p>Cracked Sicilians in a soothing hue of army green with the creamy beige of the smashed garlic cloves and the vivid green and vermilion of the smashed fresh hot chiles, each sparkling from the Fairway Extra Virgin Olive Oil in which they are bathing.</p>
','',113.0,147.0,181.0,0.0,0.0,1386859468.0);
INSERT INTO "Product" VALUES(268.0,'Italian Dolce Gorgonzola','','<p>DOLCE, that is, young, creamy, oozing, glistening Gorgonzola, which is why it&rsquo;s also known as sweet or creamy gorgonzola. So smooth and sumptuous, this gorgonzola favorite melts into your dishes for a rich flavor that accentuates natural ingredients.</p>
','262033',116.0,150.0,184.0,0.0,0.0,1386859463.0);
INSERT INTO "Product" VALUES(269.0,'Italian Eggplant','','<p>The familiar symmetrical dark purple eggplants with a uniformly colored satin-smooth skin, are young, sweet&nbsp;and tender. A perfect veggie to toss in your favorite Italian meals.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','9131',117.0,151.0,185.0,0.0,0.0,1384964432.0);
INSERT INTO "Product" VALUES(270.0,'Leeks','','<p>Leeks are gentle veggies, with a fresh, grassy, clean flavor. They get along great with pretty much whatever herbs, spices, and flavors come their way. Full of flavonoids, vitamins A and K, fiber, and vitamin C.</p>

<p>&nbsp;</p>

<p>This product is organic.</p>
','9959',120.0,154.0,188.0,0.0,0.0,1384791967.0);
INSERT INTO "Product" VALUES(271.0,'Mina Harissa Mild Traditional Moroccan Red Pepper Sauce','','<p>Mina Harissa is a traditional Moroccan pepper sauce. Only 6 all-natural ingredients make their way into this jar: red chili pepper, red bell pepper, garlic, extra virgin olive oil, vinegar and sea salt. It will work in harmony with any meat, vegetable, egg, rice, pasta or simply as a sauce or spread.</p>
','',122.0,156.0,190.0,0.0,0.0,1386860776.0);
INSERT INTO "Product" VALUES(272.0,'Oil-Cured Black Provençal Olives','','<p>Jet-black and faceted with wrinkles, each oil-cured Proven&ccedil;al olive, rendered crepuscular by the soothing bone-color of the smashed garlic cloves and the evergreen spikes of bruised fresh rosemary. The olives&#39; juicy flesh marries perfectly with the rosemary,</p>
','',383.0,382.0,381.0,0.0,0.0,1386860025.0);
INSERT INTO "Product" VALUES(273.0,'Parmigiano Reggiano','','<p>An enormously flavorful, important cheese. During its creation, the cheese adopts a remarkable complexity of flavors&mdash;at once spicy, salty, briny, black-walnutty and lavishly piquant. Will melt in your mouth and tingle your tongue, or make the flavors in your cooking sing.</p>
','262047',389.0,206.0,202.0,0.0,0.0,1386860019.0);
INSERT INTO "Product" VALUES(274.0,'Rogue River Smokey Blue','','<p>Made at the Rogue Creamery in Rogue River, Oregon that&nbsp;also makes the award winning Rogue River Blue Cheese, the first American blue to have been exported to Europe.&nbsp;This&nbsp;raw cow&rsquo;s milk blue cheese&nbsp;has been smoked with Oregon hazelnut shells. The divinely creamy and intense flavor will make your knees buckle.</p>
','262045',128.0,162.0,196.0,0.0,0.0,1386860013.0);
CREATE TABLE IF NOT EXISTS ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder);
INSERT INTO "ProductAttributeValue" VALUES(233.0,'Tips','Preparation Tips','It offers a subtle flavor that can be generously dressed with salt, oil, and/or vinegar. Artichokes also contain essential nutrients such as fiber, potassium, and vitamin C. Choosing globes that are bright green, heavy, and have tight leaves will yield the best results for your meal.','1');
INSERT INTO "ProductAttributeValue" VALUES(234.0,'Overview','Origin','Blood oranges are believed to be the happy accident of a Sicilian variety that mutated, probably during the 17th century. Today, blood oranges are grown in Italy, Spain, and Malta, as well as California, Texas, and Florida.','1');
INSERT INTO "ProductAttributeValue" VALUES(234.0,'Tips','Preparation Tips','Blood oranges add vivid color and flavor to drinks, salads, and desserts. Their sweet-tartness is a great match for duck breast, poultry or pork.','1');
INSERT INTO "ProductAttributeValue" VALUES(235.0,'Overview','Origin','Vermont cheddar producer, Cabot Creamery, teams up with the Kehler brothers at Jasper Hill Farm to create what might be the best American cheddar ever: Cabot Clothbound. The baby 40 lb. wheels are sent over to the Cellars at Jasper Hill, where they are bandaged and aged for about a year.','1');
INSERT INTO "ProductAttributeValue" VALUES(235.0,'Overview','Wine Pairing','Mud House Pinot Noir 2009','2');
INSERT INTO "ProductAttributeValue" VALUES(235.0,'Tips','Serving Tips','Cabot Cheddar is great melted in gooey grilled cheese, atop broccoli or cauliflower, or folded into grits or mashed potatoes. It’s worthy of your cheese plate—serve with soft-dried figs, crusty bread, and Pinot Noir or sparkling rosé. ','1');
INSERT INTO "ProductAttributeValue" VALUES(236.0,'Overview','Origin','Imported from Italy, this is a true Mediterranean culinary delight with subtle flavors and a fresh fragrance.','1');
INSERT INTO "ProductAttributeValue" VALUES(236.0,'Tips','Preparation Tips','Spread this on toast and enjoy plain, or add scallions, tomatoes, and slices of sweet peppers. Use it as a dip for veggies and crunchy breadsticks, or smear it on sandwiches instead of mayo for a gourmet touch at lunchtime; add it to pasta, and mix it into tuna or potato salad.','1');
INSERT INTO "ProductAttributeValue" VALUES(237.0,'Tips','Preparation Tips','Gorgeous enough to sauté simply in butter and call it a day. Their light, slightly floral flavor works well beside fish or seafood; or in pasta and risotto. Show off chanterelles in a tart, or sautéed and topped with goat cheese on crostini. ','1');
INSERT INTO "ProductAttributeValue" VALUES(238.0,'Overview','Origin','With the Beurre D’Anjou, it’s all in the name. Translated from French, “beurre d’Anjou” means butter of Anjou (the French dairy region of Anjou).','1');
INSERT INTO "ProductAttributeValue" VALUES(238.0,'Tips','Preparation Tips','This all-purpose pear holds up well when cooked, but it''s just as good right off the tree.','1');
INSERT INTO "ProductAttributeValue" VALUES(239.0,'Overview','Origin','A rich, unpasteurized alpine cow’s milk cheese from Lucerne, Switzerland.','1');
INSERT INTO "ProductAttributeValue" VALUES(239.0,'Overview','Wine Pairing','Vinosia Primitivo 2011','2');
INSERT INTO "ProductAttributeValue" VALUES(239.0,'Tips','Serving Tips','Gruyere melts effortlessly, making it a classic ingredient in fondues, soups, and gratins. Gruyere and sliced tomato on sourdough makes a game-changing grilled cheese. Serve slivered on salads, or with a crunchy apple for a spot-on snack. ','1');
INSERT INTO "ProductAttributeValue" VALUES(240.0,'Overview','Origin','Balsamic vinegar has been a specialty of Modena, in central Italy, since the 11th century, so we know we’re bringing you beautifully crafted vinegar, yielded from a tradition of excellence.','1');
INSERT INTO "ProductAttributeValue" VALUES(240.0,'Tips','Preparation Tips','Balsamic vinegar heightens the flavors of fruits and vegetables, whether braised, steamed, stewed, marinated, roasted, or reduced for sauce. We love it splashed over berries or drizzled on crumbly nuggets of salty Parmesan as an easy and unique appetizer.','1');
INSERT INTO "ProductAttributeValue" VALUES(241.0,'Overview','Origin','The Italian region of Tuscany is famous for producing excellent wines, and that’s why we went there in search of a vino that would age perfectly to yield this flavorful and versatile vinegar.','1');
INSERT INTO "ProductAttributeValue" VALUES(241.0,'Tips','Preparation Tips','"Ideal for any recipe calling for white wine vinegar, you can also mix up fabulous vinaigrettes and piquant sauces, or try it as a pan deglazing liquid, and in marinades for seafood, meat, and poultry. "','1');
INSERT INTO "ProductAttributeValue" VALUES(242.0,'Overview','Origin','These delicious beans originate in the tropical island of Madagascar where hot rainy winds blow inland from the Indian Ocean.','1');
INSERT INTO "ProductAttributeValue" VALUES(242.0,'Tips','Preparation Tips','"Vanilla is traditionally used in baked goods and desserts, but we love how this exotic spice adds depth and complexity to mouthwatering cream sauces and sides for pasta, fish, pork, and chicken. Try making a rich vanilla curry sauce with coconut to generously pour over chicken.
"','1');
INSERT INTO "ProductAttributeValue" VALUES(243.0,'Overview','Origin','Thick, sweet, fragrant, and fruity, our brilliant Portuguese extra-virgin olive oil is from the Ribatejo region of northern Portugal.','1');
INSERT INTO "ProductAttributeValue" VALUES(243.0,'Tips','Preparation Tips','"An outstanding and diverse Portuguese oil, it delivers big flavor to all your cooked meats and seafood, and is just dazzling as a salad oil or ready-made sauce. We recommend it for any usage whatsoever, because it is so delicious -- one of the most impressive olive oils we''ve ever encountered."','1');
INSERT INTO "ProductAttributeValue" VALUES(244.0,'Tips','Serving Tips','This natural, flavorful kitchen staple goes with everything. Use to make better salad dressings with Fairway specialty olive oils and vinegars, add to marinades for chicken, beef and pork, dip French garlic sausage in for a savory bite, smear on country bread for a mouthwatering gruyere grilled cheese.','1');
INSERT INTO "ProductAttributeValue" VALUES(245.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(245.0,'Tips','Preparation Tips','Serve with fresh pesto, or parmesan, peas, and a good glug of EVOO.','1');
INSERT INTO "ProductAttributeValue" VALUES(246.0,'Tips','Preparation Tips','Cook with spinach and masala sauce; or make a colorful lentil salad with herbs, chopped veggies, and walnuts. Lentil soup warms the soul. Serve salmon or roasted beets atop a bed of warm French lentils.','1');
INSERT INTO "ProductAttributeValue" VALUES(247.0,'Tips','Serving Tips','Serve with Fairway Walnuts for quick dessert or snack. Perfect for kids.','1');
INSERT INTO "ProductAttributeValue" VALUES(248.0,'Tips','Serving Tips','Make a stunning vinaigrette and dress an arugula salad. Drizzle on sheep’s milk cheeses. Anoint your appetizers—Iberico ham and olives are fabulous with this oil. Use for a ready-made dressing for bean dishes, roasted meats, and seafood. ','1');
INSERT INTO "ProductAttributeValue" VALUES(249.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(249.0,'Tips','Preparation Tips','The short twists have plenty of surface area to soak up a garlic cream sauce; or toss with artichoke hearts and a big handful of herbs.','1');
INSERT INTO "ProductAttributeValue" VALUES(250.0,'Tips','Preparation Tips','Drizzle this honey on oatmeal or yogurt. Use it as a dipping sauce for savory dishes like fried chicken and hush puppies. Add honey to tea for an alternative to sugar. Try baking pastries with honey like baklava or pound cake to make festive and fun desserts.','1');
INSERT INTO "ProductAttributeValue" VALUES(251.0,'Overview','Origin','Right in our stores, our own curd, made from the milk of New York dairy cows, is transformed into the most delicious, freshest, most handmade ‘fior di latte’ on the planet.','1');
INSERT INTO "ProductAttributeValue" VALUES(251.0,'Tips','Serving Tips','Salted mozz is best for snacking and salads; unsalted, for cooking and recipes.','1');
INSERT INTO "ProductAttributeValue" VALUES(252.0,'Tips','Preparation Tips','A very versatile dish, you can sauté these with onions and garlic and eat simply with a dash of salt, or you can get creative by simmering Israeli couscous in a tomato sauce with garbanzo beans. Use it as a substitute for risotto and drown it cheese with sliced asparagus and white wine. Try a lamb, spinach and feta dish, or if you’re in the mood for a sweeter meal, add apple slices, cranberries, cinnamon, and allspice. For breakfast, try it with coconut milk, apricots, almonds, coconut slivers, and agave nectar for a power punch that helps you greet the day.','1');
INSERT INTO "ProductAttributeValue" VALUES(253.0,'Overview','Origin','Saba (or ‘vincotto’, or ‘mosto cotto’) was handed down from medieval times in Central Italy, Emilia Romagna. It was the original sweetener used by the masses who had neither access to nor means to acquire cane sugar. Saba came about via the long, slow-cooking of the liquid accrued from re-pressing the detritus from crushed wine grapes.','1');
INSERT INTO "ProductAttributeValue" VALUES(253.0,'Tips','Preparation Tips','We love to use saba as did they: As a key ingredient to give stews and sauces a deeper and more complex flavor, as a de-glazing medium to pour over scallops and other seafood, chicken, duck, veal and lamb, as a digestif beverage with sparkling water and ice, as a sauce for sorbets and ice cream.','1');
INSERT INTO "ProductAttributeValue" VALUES(254.0,'Tips','Preparation Tips','Throw sweet, roasted peppers in pesto sauce or mixed in with bruschetta, or chop them into salsas and sauces. Add them to sandwiches and grilled veggie or chicken salads. Top pizza and huevos rancheros with these peppers that pair particularly well with goat or mozzarella cheese. Or add to a simple grain, like Fairway Whole Wheat Couscous.','1');
INSERT INTO "ProductAttributeValue" VALUES(255.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(255.0,'Tips','Preparation Tips','These coils are made for mac ''n cheese. Or with a long-simmered Sunday sauce and meatballs.','1');
INSERT INTO "ProductAttributeValue" VALUES(256.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(256.0,'Tips','Preparation Tips','These little ears are perfect with sausage and broccoli rabe, or roasted broccoli and walnuts.','1');
INSERT INTO "ProductAttributeValue" VALUES(257.0,'Overview','Origin','This continuous, cold-extraction oil is crafted in Italy, a country known for its excellent olive oil production.','1');
INSERT INTO "ProductAttributeValue" VALUES(257.0,'Tips','Preparation Tips','This is a fantastic all-purpose olive oil, excellent for sautéing, frying, and braising, or just drizzle it on salads, slather it on bread, and pour it on pasta.','1');
INSERT INTO "ProductAttributeValue" VALUES(258.0,'Tips','Preparation Tips','Pesto belongs in many places: on your pizza, enlivening a bowl of pasta, slathered on your sandwich. Use to adorn chicken breasts or salmon. Add some to your salad dressing for a wonderful herbed touch.','1');
INSERT INTO "ProductAttributeValue" VALUES(259.0,'Tips','Preparation Tips','Puttanesca sauce is a perfect accompaniment for pasta and lasagna, but you can make a baked vegetable dish using cauliflower or zucchini slathered in this luscious sauce. Try pouring it on grilled fish or chicken to add a tangy depth of flavor to your cuisine.','1');
INSERT INTO "ProductAttributeValue" VALUES(260.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(260.0,'Tips','Preparation Tips','Awesome with sweet caramelized corn and shallots, or fresh ricotta and sautéed zucchini.','1');
INSERT INTO "ProductAttributeValue" VALUES(261.0,'Tips','Serving Tips','Stack these sun-dried tomatoes on sandwiches or chop and toss into salads. Try mixing them into pastas or stir fries, too. We love baking these into cornbread and whipping up savory tarts. Try toasting them on Italian bread with feta cheese, olives and a drizzle of olive oil.','1');
INSERT INTO "ProductAttributeValue" VALUES(262.0,'Tips','Serving Tips','Delicious candied and tossed in a salad with blue cheese, pureed with pumpkin in ravioli or herbs in pesto, and added to granola, yogurt, and cereal.','1');
INSERT INTO "ProductAttributeValue" VALUES(263.0,'Overview','Origin','Fairway Pasta originates in the sunny southern province of Puglia, Italy.','1');
INSERT INTO "ProductAttributeValue" VALUES(263.0,'Tips','Preparation Tips','Pugliese cuts are the quintessential, timeless pasta shapes — classic Southern Italian recipes demand them. Try it with some fava beans, peas and prosciutto.','1');
INSERT INTO "ProductAttributeValue" VALUES(264.0,'Overview','Seasonality','The vegetable is widely available from autumn through early spring.','1');
INSERT INTO "ProductAttributeValue" VALUES(264.0,'Tips','Preparation Tips','The stalks can be used for soups, stocks, and stews, and the leaves for herbal seasonings. Sautéed fennel and onions can be a delicious side dish.','1');
INSERT INTO "ProductAttributeValue" VALUES(265.0,'Tips','Preparation Tips','This flavorful variety can be used just like regular potatoes in an assortment of roasted, broiled, baked, grilled or boiled dishes.','1');
INSERT INTO "ProductAttributeValue" VALUES(266.0,'Tips','Serving Tips','Serve Gaeta olives with a tuna salad and fresh, steamed vegetables, or even make your own puttanesca sauce.','1');
INSERT INTO "ProductAttributeValue" VALUES(267.0,'Tips','Serving Tips','These Sicilian treasures pair nicely with any table cheese, particlarly Parmigiano Reggiano, or salami.','1');
INSERT INTO "ProductAttributeValue" VALUES(268.0,'Overview','Wine Pairing','Vinosia Primitivo 2011','1');
INSERT INTO "ProductAttributeValue" VALUES(268.0,'Tips','Serving Tips','Pair with country pate or coppa ham, spread atop a crusty baguette or smear a touch on Tournadeos of Beef with Garlic & Thyme.','1');
INSERT INTO "ProductAttributeValue" VALUES(269.0,'Tips','Preparation Tips','Broiling or grilling sliced eggplant is a good alternative to frying, as it tenderizes the vegetable without using lots of fat. You can prepare eggplant slices this way when serving it on its own, or before using it in casseroles, such as Eggplant Parmesan or Moussaka.','1');
INSERT INTO "ProductAttributeValue" VALUES(270.0,'Tips','Preparation Tips','We like leeks in our risotto, our sautéed with chickpeas, or in a tart with plenty of Gruyere. A good leek and potato soup is always ethereal.','1');
INSERT INTO "ProductAttributeValue" VALUES(271.0,'Tips','Serving Tips','Mina Harissa goes as well with lamb as it does with Southern barbecued chicken, scallops Provençal or a vegetable tagine with couscous. Add to scrambled eggs, use as a dip for fries, or marinate chicken breasts in yogurt and Harissa for a super-flavorful dinner.','1');
INSERT INTO "ProductAttributeValue" VALUES(272.0,'Tips','Preparation Tips','Provençal olives are great to flavor pasta or garnish chicken, fish or any other dish. If you choose not to pit them, don''t forget to tell your guests!','1');
INSERT INTO "ProductAttributeValue" VALUES(273.0,'Overview','Seasonality','Italian law dictates that Parmigiano Reggiano can be made only between April and November so that the cows graze on fresh, verdant pastures rather than dry hay.','1');
INSERT INTO "ProductAttributeValue" VALUES(273.0,'Overview','Wine Pairing','Monsanto Chianti Classico Riserva 2008','2');
INSERT INTO "ProductAttributeValue" VALUES(273.0,'Tips','Serving Tips','Serve with everything and anything—pasta, risotto, eggs, veggies, meat dishes, salads, soups. Break out a big, bad Italian red, like Barbaresco, Barbera, Barolo, Brunello or Chianti, to complement the flavor.','1');
INSERT INTO "ProductAttributeValue" VALUES(274.0,'Overview','Origin','Rogue River Smokey Blue cheese is made at the Rogue Creamery in Rogue River, Oregon.','1');
INSERT INTO "ProductAttributeValue" VALUES(274.0,'Overview','Wine Pairing','Justin Cabernet Paso Robles 2010','2');
INSERT INTO "ProductAttributeValue" VALUES(274.0,'Tips','Serving Tips','Pair with ale or stout on a cozy night in. The smoky flavor is wondrous melted atop a burger or steak. Great in a salad with figs, pecans, and arugula, or crumbled on pizza. Stuff dates with Smokey Blue and wrap in prosciutto for an elegant appetizer. ','1');
CREATE TABLE IF NOT EXISTS ProductDepartment (ProductID, DepartmentID);
INSERT INTO "ProductDepartment" VALUES(233.0,24.0);
INSERT INTO "ProductDepartment" VALUES(234.0,24.0);
INSERT INTO "ProductDepartment" VALUES(235.0,127.0);
INSERT INTO "ProductDepartment" VALUES(236.0,134.0);
INSERT INTO "ProductDepartment" VALUES(237.0,24.0);
INSERT INTO "ProductDepartment" VALUES(238.0,24.0);
INSERT INTO "ProductDepartment" VALUES(239.0,127.0);
INSERT INTO "ProductDepartment" VALUES(240.0,134.0);
INSERT INTO "ProductDepartment" VALUES(241.0,134.0);
INSERT INTO "ProductDepartment" VALUES(242.0,134.0);
INSERT INTO "ProductDepartment" VALUES(243.0,134.0);
INSERT INTO "ProductDepartment" VALUES(244.0,134.0);
INSERT INTO "ProductDepartment" VALUES(245.0,127.0);
INSERT INTO "ProductDepartment" VALUES(246.0,133.0);
INSERT INTO "ProductDepartment" VALUES(247.0,134.0);
INSERT INTO "ProductDepartment" VALUES(248.0,134.0);
INSERT INTO "ProductDepartment" VALUES(249.0,127.0);
INSERT INTO "ProductDepartment" VALUES(250.0,134.0);
INSERT INTO "ProductDepartment" VALUES(251.0,127.0);
INSERT INTO "ProductDepartment" VALUES(252.0,133.0);
INSERT INTO "ProductDepartment" VALUES(253.0,134.0);
INSERT INTO "ProductDepartment" VALUES(254.0,134.0);
INSERT INTO "ProductDepartment" VALUES(255.0,127.0);
INSERT INTO "ProductDepartment" VALUES(256.0,127.0);
INSERT INTO "ProductDepartment" VALUES(257.0,134.0);
INSERT INTO "ProductDepartment" VALUES(258.0,134.0);
INSERT INTO "ProductDepartment" VALUES(259.0,134.0);
INSERT INTO "ProductDepartment" VALUES(260.0,127.0);
INSERT INTO "ProductDepartment" VALUES(261.0,134.0);
INSERT INTO "ProductDepartment" VALUES(262.0,130.0);
INSERT INTO "ProductDepartment" VALUES(263.0,127.0);
INSERT INTO "ProductDepartment" VALUES(264.0,24.0);
INSERT INTO "ProductDepartment" VALUES(265.0,24.0);
INSERT INTO "ProductDepartment" VALUES(266.0,127.0);
INSERT INTO "ProductDepartment" VALUES(267.0,127.0);
INSERT INTO "ProductDepartment" VALUES(268.0,127.0);
INSERT INTO "ProductDepartment" VALUES(269.0,24.0);
INSERT INTO "ProductDepartment" VALUES(270.0,24.0);
INSERT INTO "ProductDepartment" VALUES(271.0,134.0);
INSERT INTO "ProductDepartment" VALUES(272.0,127.0);
INSERT INTO "ProductDepartment" VALUES(273.0,127.0);
INSERT INTO "ProductDepartment" VALUES(274.0,127.0);
CREATE TABLE IF NOT EXISTS ProductTag (ProductID, TagID);
INSERT INTO "ProductTag" VALUES(233.0,95.0);
INSERT INTO "ProductTag" VALUES(245.0,89.0);
INSERT INTO "ProductTag" VALUES(249.0,89.0);
INSERT INTO "ProductTag" VALUES(254.0,95.0);
INSERT INTO "ProductTag" VALUES(255.0,89.0);
INSERT INTO "ProductTag" VALUES(256.0,89.0);
INSERT INTO "ProductTag" VALUES(260.0,89.0);
INSERT INTO "ProductTag" VALUES(263.0,89.0);
INSERT INTO "ProductTag" VALUES(264.0,95.0);
INSERT INTO "ProductTag" VALUES(265.0,95.0);
INSERT INTO "ProductTag" VALUES(269.0,95.0);
CREATE TABLE IF NOT EXISTS RecipeTag (RecipeID, TagID);
INSERT INTO "RecipeTag" VALUES(275.0,57.0);
INSERT INTO "RecipeTag" VALUES(275.0,88.0);
INSERT INTO "RecipeTag" VALUES(275.0,53.0);
INSERT INTO "RecipeTag" VALUES(276.0,57.0);
INSERT INTO "RecipeTag" VALUES(276.0,88.0);
INSERT INTO "RecipeTag" VALUES(276.0,87.0);
INSERT INTO "RecipeTag" VALUES(276.0,54.0);
INSERT INTO "RecipeTag" VALUES(276.0,53.0);
INSERT INTO "RecipeTag" VALUES(277.0,49.0);
INSERT INTO "RecipeTag" VALUES(277.0,57.0);
INSERT INTO "RecipeTag" VALUES(277.0,88.0);
INSERT INTO "RecipeTag" VALUES(277.0,87.0);
INSERT INTO "RecipeTag" VALUES(277.0,54.0);
INSERT INTO "RecipeTag" VALUES(277.0,53.0);
INSERT INTO "RecipeTag" VALUES(278.0,57.0);
INSERT INTO "RecipeTag" VALUES(278.0,88.0);
INSERT INTO "RecipeTag" VALUES(278.0,87.0);
INSERT INTO "RecipeTag" VALUES(278.0,54.0);
INSERT INTO "RecipeTag" VALUES(278.0,53.0);
INSERT INTO "RecipeTag" VALUES(278.0,336.0);
INSERT INTO "RecipeTag" VALUES(279.0,80.0);
INSERT INTO "RecipeTag" VALUES(279.0,73.0);
INSERT INTO "RecipeTag" VALUES(279.0,88.0);
INSERT INTO "RecipeTag" VALUES(279.0,87.0);
INSERT INTO "RecipeTag" VALUES(279.0,54.0);
INSERT INTO "RecipeTag" VALUES(279.0,53.0);
INSERT INTO "RecipeTag" VALUES(279.0,336.0);
INSERT INTO "RecipeTag" VALUES(280.0,73.0);
INSERT INTO "RecipeTag" VALUES(280.0,88.0);
INSERT INTO "RecipeTag" VALUES(280.0,87.0);
INSERT INTO "RecipeTag" VALUES(280.0,54.0);
INSERT INTO "RecipeTag" VALUES(280.0,53.0);
INSERT INTO "RecipeTag" VALUES(280.0,220.0);
INSERT INTO "RecipeTag" VALUES(280.0,223.0);
INSERT INTO "RecipeTag" VALUES(280.0,336.0);
INSERT INTO "RecipeTag" VALUES(281.0,73.0);
INSERT INTO "RecipeTag" VALUES(281.0,88.0);
INSERT INTO "RecipeTag" VALUES(281.0,87.0);
INSERT INTO "RecipeTag" VALUES(281.0,54.0);
INSERT INTO "RecipeTag" VALUES(281.0,53.0);
INSERT INTO "RecipeTag" VALUES(282.0,49.0);
INSERT INTO "RecipeTag" VALUES(282.0,58.0);
INSERT INTO "RecipeTag" VALUES(282.0,88.0);
INSERT INTO "RecipeTag" VALUES(282.0,87.0);
INSERT INTO "RecipeTag" VALUES(282.0,54.0);
INSERT INTO "RecipeTag" VALUES(282.0,53.0);
INSERT INTO "RecipeTag" VALUES(283.0,49.0);
INSERT INTO "RecipeTag" VALUES(283.0,58.0);
INSERT INTO "RecipeTag" VALUES(283.0,88.0);
INSERT INTO "RecipeTag" VALUES(283.0,87.0);
INSERT INTO "RecipeTag" VALUES(283.0,54.0);
INSERT INTO "RecipeTag" VALUES(283.0,53.0);
INSERT INTO "RecipeTag" VALUES(283.0,220.0);
INSERT INTO "RecipeTag" VALUES(283.0,218.0);
INSERT INTO "RecipeTag" VALUES(283.0,224.0);
INSERT INTO "RecipeTag" VALUES(283.0,225.0);
INSERT INTO "RecipeTag" VALUES(284.0,49.0);
INSERT INTO "RecipeTag" VALUES(284.0,58.0);
INSERT INTO "RecipeTag" VALUES(284.0,88.0);
INSERT INTO "RecipeTag" VALUES(284.0,53.0);
INSERT INTO "RecipeTag" VALUES(284.0,89.0);
INSERT INTO "RecipeTag" VALUES(286.0,49.0);
INSERT INTO "RecipeTag" VALUES(286.0,58.0);
INSERT INTO "RecipeTag" VALUES(286.0,88.0);
INSERT INTO "RecipeTag" VALUES(286.0,87.0);
INSERT INTO "RecipeTag" VALUES(286.0,54.0);
INSERT INTO "RecipeTag" VALUES(286.0,53.0);
INSERT INTO "RecipeTag" VALUES(286.0,221.0);
INSERT INTO "RecipeTag" VALUES(287.0,49.0);
INSERT INTO "RecipeTag" VALUES(287.0,58.0);
INSERT INTO "RecipeTag" VALUES(287.0,88.0);
INSERT INTO "RecipeTag" VALUES(287.0,87.0);
INSERT INTO "RecipeTag" VALUES(287.0,54.0);
INSERT INTO "RecipeTag" VALUES(287.0,53.0);
INSERT INTO "RecipeTag" VALUES(288.0,49.0);
INSERT INTO "RecipeTag" VALUES(288.0,58.0);
INSERT INTO "RecipeTag" VALUES(288.0,88.0);
INSERT INTO "RecipeTag" VALUES(288.0,87.0);
INSERT INTO "RecipeTag" VALUES(288.0,54.0);
INSERT INTO "RecipeTag" VALUES(288.0,53.0);
INSERT INTO "RecipeTag" VALUES(288.0,220.0);
INSERT INTO "RecipeTag" VALUES(288.0,218.0);
INSERT INTO "RecipeTag" VALUES(288.0,225.0);
INSERT INTO "RecipeTag" VALUES(289.0,49.0);
INSERT INTO "RecipeTag" VALUES(289.0,58.0);
INSERT INTO "RecipeTag" VALUES(289.0,88.0);
INSERT INTO "RecipeTag" VALUES(289.0,87.0);
INSERT INTO "RecipeTag" VALUES(289.0,54.0);
INSERT INTO "RecipeTag" VALUES(289.0,53.0);
INSERT INTO "RecipeTag" VALUES(289.0,221.0);
INSERT INTO "RecipeTag" VALUES(290.0,220.0);
INSERT INTO "RecipeTag" VALUES(290.0,218.0);
INSERT INTO "RecipeTag" VALUES(290.0,225.0);
INSERT INTO "RecipeTag" VALUES(290.0,88.0);
INSERT INTO "RecipeTag" VALUES(290.0,87.0);
INSERT INTO "RecipeTag" VALUES(290.0,54.0);
INSERT INTO "RecipeTag" VALUES(290.0,53.0);
INSERT INTO "RecipeTag" VALUES(290.0,49.0);
INSERT INTO "RecipeTag" VALUES(290.0,78.0);
INSERT INTO "RecipeTag" VALUES(291.0,49.0);
INSERT INTO "RecipeTag" VALUES(291.0,58.0);
INSERT INTO "RecipeTag" VALUES(291.0,88.0);
INSERT INTO "RecipeTag" VALUES(291.0,87.0);
INSERT INTO "RecipeTag" VALUES(291.0,54.0);
INSERT INTO "RecipeTag" VALUES(291.0,53.0);
INSERT INTO "RecipeTag" VALUES(292.0,49.0);
INSERT INTO "RecipeTag" VALUES(292.0,72.0);
INSERT INTO "RecipeTag" VALUES(292.0,58.0);
INSERT INTO "RecipeTag" VALUES(292.0,88.0);
INSERT INTO "RecipeTag" VALUES(292.0,87.0);
INSERT INTO "RecipeTag" VALUES(292.0,54.0);
INSERT INTO "RecipeTag" VALUES(292.0,53.0);
INSERT INTO "RecipeTag" VALUES(293.0,221.0);
INSERT INTO "RecipeTag" VALUES(293.0,88.0);
INSERT INTO "RecipeTag" VALUES(293.0,87.0);
INSERT INTO "RecipeTag" VALUES(293.0,54.0);
INSERT INTO "RecipeTag" VALUES(293.0,53.0);
INSERT INTO "RecipeTag" VALUES(293.0,89.0);
INSERT INTO "RecipeTag" VALUES(293.0,59.0);
INSERT INTO "RecipeTag" VALUES(293.0,72.0);
INSERT INTO "RecipeTag" VALUES(293.0,58.0);
INSERT INTO "RecipeTag" VALUES(294.0,89.0);
INSERT INTO "RecipeTag" VALUES(294.0,72.0);
INSERT INTO "RecipeTag" VALUES(294.0,58.0);
INSERT INTO "RecipeTag" VALUES(294.0,88.0);
INSERT INTO "RecipeTag" VALUES(294.0,87.0);
INSERT INTO "RecipeTag" VALUES(294.0,54.0);
INSERT INTO "RecipeTag" VALUES(294.0,53.0);
INSERT INTO "RecipeTag" VALUES(294.0,221.0);
INSERT INTO "RecipeTag" VALUES(295.0,72.0);
INSERT INTO "RecipeTag" VALUES(295.0,58.0);
INSERT INTO "RecipeTag" VALUES(295.0,88.0);
INSERT INTO "RecipeTag" VALUES(295.0,87.0);
INSERT INTO "RecipeTag" VALUES(295.0,54.0);
INSERT INTO "RecipeTag" VALUES(295.0,53.0);
INSERT INTO "RecipeTag" VALUES(295.0,221.0);
INSERT INTO "RecipeTag" VALUES(295.0,89.0);
INSERT INTO "RecipeTag" VALUES(296.0,49.0);
INSERT INTO "RecipeTag" VALUES(296.0,72.0);
INSERT INTO "RecipeTag" VALUES(296.0,58.0);
INSERT INTO "RecipeTag" VALUES(296.0,88.0);
INSERT INTO "RecipeTag" VALUES(296.0,87.0);
INSERT INTO "RecipeTag" VALUES(296.0,54.0);
INSERT INTO "RecipeTag" VALUES(296.0,53.0);
INSERT INTO "RecipeTag" VALUES(296.0,221.0);
INSERT INTO "RecipeTag" VALUES(296.0,89.0);
INSERT INTO "RecipeTag" VALUES(297.0,49.0);
INSERT INTO "RecipeTag" VALUES(297.0,89.0);
INSERT INTO "RecipeTag" VALUES(297.0,72.0);
INSERT INTO "RecipeTag" VALUES(297.0,58.0);
INSERT INTO "RecipeTag" VALUES(297.0,88.0);
INSERT INTO "RecipeTag" VALUES(297.0,87.0);
INSERT INTO "RecipeTag" VALUES(297.0,54.0);
INSERT INTO "RecipeTag" VALUES(297.0,53.0);
INSERT INTO "RecipeTag" VALUES(298.0,72.0);
INSERT INTO "RecipeTag" VALUES(298.0,58.0);
INSERT INTO "RecipeTag" VALUES(298.0,78.0);
INSERT INTO "RecipeTag" VALUES(298.0,89.0);
INSERT INTO "RecipeTag" VALUES(298.0,88.0);
INSERT INTO "RecipeTag" VALUES(298.0,87.0);
INSERT INTO "RecipeTag" VALUES(298.0,54.0);
INSERT INTO "RecipeTag" VALUES(298.0,53.0);
INSERT INTO "RecipeTag" VALUES(298.0,221.0);
INSERT INTO "RecipeTag" VALUES(299.0,59.0);
INSERT INTO "RecipeTag" VALUES(299.0,89.0);
INSERT INTO "RecipeTag" VALUES(299.0,72.0);
INSERT INTO "RecipeTag" VALUES(299.0,58.0);
INSERT INTO "RecipeTag" VALUES(299.0,88.0);
INSERT INTO "RecipeTag" VALUES(299.0,87.0);
INSERT INTO "RecipeTag" VALUES(299.0,54.0);
INSERT INTO "RecipeTag" VALUES(299.0,53.0);
INSERT INTO "RecipeTag" VALUES(299.0,221.0);
INSERT INTO "RecipeTag" VALUES(301.0,89.0);
INSERT INTO "RecipeTag" VALUES(301.0,72.0);
INSERT INTO "RecipeTag" VALUES(301.0,58.0);
INSERT INTO "RecipeTag" VALUES(301.0,221.0);
INSERT INTO "RecipeTag" VALUES(301.0,88.0);
INSERT INTO "RecipeTag" VALUES(301.0,87.0);
INSERT INTO "RecipeTag" VALUES(301.0,54.0);
INSERT INTO "RecipeTag" VALUES(301.0,53.0);
INSERT INTO "RecipeTag" VALUES(302.0,221.0);
INSERT INTO "RecipeTag" VALUES(302.0,88.0);
INSERT INTO "RecipeTag" VALUES(302.0,87.0);
INSERT INTO "RecipeTag" VALUES(302.0,54.0);
INSERT INTO "RecipeTag" VALUES(302.0,53.0);
INSERT INTO "RecipeTag" VALUES(302.0,90.0);
INSERT INTO "RecipeTag" VALUES(302.0,74.0);
INSERT INTO "RecipeTag" VALUES(302.0,72.0);
INSERT INTO "RecipeTag" VALUES(302.0,58.0);
INSERT INTO "RecipeTag" VALUES(303.0,88.0);
INSERT INTO "RecipeTag" VALUES(303.0,53.0);
INSERT INTO "RecipeTag" VALUES(303.0,221.0);
INSERT INTO "RecipeTag" VALUES(303.0,59.0);
INSERT INTO "RecipeTag" VALUES(303.0,72.0);
INSERT INTO "RecipeTag" VALUES(303.0,58.0);
INSERT INTO "RecipeTag" VALUES(304.0,59.0);
INSERT INTO "RecipeTag" VALUES(304.0,58.0);
INSERT INTO "RecipeTag" VALUES(304.0,88.0);
INSERT INTO "RecipeTag" VALUES(304.0,87.0);
INSERT INTO "RecipeTag" VALUES(304.0,54.0);
INSERT INTO "RecipeTag" VALUES(304.0,53.0);
INSERT INTO "RecipeTag" VALUES(305.0,59.0);
INSERT INTO "RecipeTag" VALUES(305.0,58.0);
INSERT INTO "RecipeTag" VALUES(305.0,221.0);
INSERT INTO "RecipeTag" VALUES(305.0,88.0);
INSERT INTO "RecipeTag" VALUES(305.0,87.0);
INSERT INTO "RecipeTag" VALUES(305.0,54.0);
INSERT INTO "RecipeTag" VALUES(305.0,53.0);
INSERT INTO "RecipeTag" VALUES(307.0,93.0);
INSERT INTO "RecipeTag" VALUES(307.0,72.0);
INSERT INTO "RecipeTag" VALUES(307.0,58.0);
INSERT INTO "RecipeTag" VALUES(307.0,74.0);
INSERT INTO "RecipeTag" VALUES(307.0,88.0);
INSERT INTO "RecipeTag" VALUES(307.0,53.0);
INSERT INTO "RecipeTag" VALUES(308.0,88.0);
INSERT INTO "RecipeTag" VALUES(308.0,87.0);
INSERT INTO "RecipeTag" VALUES(308.0,54.0);
INSERT INTO "RecipeTag" VALUES(308.0,53.0);
INSERT INTO "RecipeTag" VALUES(308.0,93.0);
INSERT INTO "RecipeTag" VALUES(308.0,74.0);
INSERT INTO "RecipeTag" VALUES(308.0,72.0);
INSERT INTO "RecipeTag" VALUES(308.0,58.0);
INSERT INTO "RecipeTag" VALUES(309.0,93.0);
INSERT INTO "RecipeTag" VALUES(309.0,72.0);
INSERT INTO "RecipeTag" VALUES(309.0,58.0);
INSERT INTO "RecipeTag" VALUES(309.0,74.0);
INSERT INTO "RecipeTag" VALUES(309.0,88.0);
INSERT INTO "RecipeTag" VALUES(309.0,87.0);
INSERT INTO "RecipeTag" VALUES(309.0,54.0);
INSERT INTO "RecipeTag" VALUES(309.0,53.0);
INSERT INTO "RecipeTag" VALUES(310.0,49.0);
INSERT INTO "RecipeTag" VALUES(310.0,93.0);
INSERT INTO "RecipeTag" VALUES(310.0,72.0);
INSERT INTO "RecipeTag" VALUES(310.0,74.0);
INSERT INTO "RecipeTag" VALUES(310.0,58.0);
INSERT INTO "RecipeTag" VALUES(310.0,88.0);
INSERT INTO "RecipeTag" VALUES(310.0,53.0);
INSERT INTO "RecipeTag" VALUES(311.0,49.0);
INSERT INTO "RecipeTag" VALUES(311.0,93.0);
INSERT INTO "RecipeTag" VALUES(311.0,74.0);
INSERT INTO "RecipeTag" VALUES(311.0,72.0);
INSERT INTO "RecipeTag" VALUES(311.0,58.0);
INSERT INTO "RecipeTag" VALUES(311.0,88.0);
INSERT INTO "RecipeTag" VALUES(311.0,87.0);
INSERT INTO "RecipeTag" VALUES(311.0,54.0);
INSERT INTO "RecipeTag" VALUES(311.0,53.0);
INSERT INTO "RecipeTag" VALUES(312.0,88.0);
INSERT INTO "RecipeTag" VALUES(312.0,87.0);
INSERT INTO "RecipeTag" VALUES(312.0,54.0);
INSERT INTO "RecipeTag" VALUES(312.0,53.0);
INSERT INTO "RecipeTag" VALUES(312.0,92.0);
INSERT INTO "RecipeTag" VALUES(312.0,72.0);
INSERT INTO "RecipeTag" VALUES(312.0,58.0);
INSERT INTO "RecipeTag" VALUES(313.0,92.0);
INSERT INTO "RecipeTag" VALUES(313.0,58.0);
INSERT INTO "RecipeTag" VALUES(313.0,88.0);
INSERT INTO "RecipeTag" VALUES(313.0,53.0);
INSERT INTO "RecipeTag" VALUES(314.0,92.0);
INSERT INTO "RecipeTag" VALUES(314.0,72.0);
INSERT INTO "RecipeTag" VALUES(314.0,58.0);
INSERT INTO "RecipeTag" VALUES(314.0,88.0);
INSERT INTO "RecipeTag" VALUES(314.0,87.0);
INSERT INTO "RecipeTag" VALUES(314.0,54.0);
INSERT INTO "RecipeTag" VALUES(314.0,53.0);
INSERT INTO "RecipeTag" VALUES(314.0,221.0);
INSERT INTO "RecipeTag" VALUES(315.0,92.0);
INSERT INTO "RecipeTag" VALUES(315.0,72.0);
INSERT INTO "RecipeTag" VALUES(315.0,58.0);
INSERT INTO "RecipeTag" VALUES(315.0,74.0);
INSERT INTO "RecipeTag" VALUES(315.0,88.0);
INSERT INTO "RecipeTag" VALUES(315.0,87.0);
INSERT INTO "RecipeTag" VALUES(315.0,54.0);
INSERT INTO "RecipeTag" VALUES(315.0,53.0);
INSERT INTO "RecipeTag" VALUES(316.0,92.0);
INSERT INTO "RecipeTag" VALUES(316.0,72.0);
INSERT INTO "RecipeTag" VALUES(316.0,58.0);
INSERT INTO "RecipeTag" VALUES(316.0,88.0);
INSERT INTO "RecipeTag" VALUES(316.0,87.0);
INSERT INTO "RecipeTag" VALUES(316.0,54.0);
INSERT INTO "RecipeTag" VALUES(316.0,53.0);
INSERT INTO "RecipeTag" VALUES(316.0,221.0);
INSERT INTO "RecipeTag" VALUES(317.0,92.0);
INSERT INTO "RecipeTag" VALUES(317.0,72.0);
INSERT INTO "RecipeTag" VALUES(317.0,58.0);
INSERT INTO "RecipeTag" VALUES(317.0,74.0);
INSERT INTO "RecipeTag" VALUES(317.0,88.0);
INSERT INTO "RecipeTag" VALUES(317.0,87.0);
INSERT INTO "RecipeTag" VALUES(317.0,54.0);
INSERT INTO "RecipeTag" VALUES(317.0,53.0);
INSERT INTO "RecipeTag" VALUES(318.0,92.0);
INSERT INTO "RecipeTag" VALUES(318.0,74.0);
INSERT INTO "RecipeTag" VALUES(318.0,58.0);
INSERT INTO "RecipeTag" VALUES(318.0,72.0);
INSERT INTO "RecipeTag" VALUES(318.0,88.0);
INSERT INTO "RecipeTag" VALUES(318.0,87.0);
INSERT INTO "RecipeTag" VALUES(318.0,54.0);
INSERT INTO "RecipeTag" VALUES(318.0,53.0);
INSERT INTO "RecipeTag" VALUES(318.0,221.0);
INSERT INTO "RecipeTag" VALUES(319.0,88.0);
INSERT INTO "RecipeTag" VALUES(319.0,53.0);
INSERT INTO "RecipeTag" VALUES(319.0,95.0);
INSERT INTO "RecipeTag" VALUES(319.0,72.0);
INSERT INTO "RecipeTag" VALUES(319.0,58.0);
INSERT INTO "RecipeTag" VALUES(319.0,74.0);
INSERT INTO "RecipeTag" VALUES(320.0,95.0);
INSERT INTO "RecipeTag" VALUES(320.0,78.0);
INSERT INTO "RecipeTag" VALUES(320.0,88.0);
INSERT INTO "RecipeTag" VALUES(320.0,87.0);
INSERT INTO "RecipeTag" VALUES(320.0,54.0);
INSERT INTO "RecipeTag" VALUES(320.0,53.0);
INSERT INTO "RecipeTag" VALUES(321.0,95.0);
INSERT INTO "RecipeTag" VALUES(321.0,80.0);
INSERT INTO "RecipeTag" VALUES(321.0,78.0);
INSERT INTO "RecipeTag" VALUES(321.0,88.0);
INSERT INTO "RecipeTag" VALUES(321.0,53.0);
INSERT INTO "RecipeTag" VALUES(322.0,95.0);
INSERT INTO "RecipeTag" VALUES(322.0,78.0);
INSERT INTO "RecipeTag" VALUES(322.0,88.0);
INSERT INTO "RecipeTag" VALUES(322.0,53.0);
INSERT INTO "RecipeTag" VALUES(323.0,95.0);
INSERT INTO "RecipeTag" VALUES(323.0,78.0);
INSERT INTO "RecipeTag" VALUES(323.0,88.0);
INSERT INTO "RecipeTag" VALUES(323.0,87.0);
INSERT INTO "RecipeTag" VALUES(323.0,54.0);
INSERT INTO "RecipeTag" VALUES(323.0,53.0);
INSERT INTO "RecipeTag" VALUES(324.0,95.0);
INSERT INTO "RecipeTag" VALUES(324.0,72.0);
INSERT INTO "RecipeTag" VALUES(324.0,58.0);
INSERT INTO "RecipeTag" VALUES(324.0,78.0);
INSERT INTO "RecipeTag" VALUES(324.0,88.0);
INSERT INTO "RecipeTag" VALUES(324.0,87.0);
INSERT INTO "RecipeTag" VALUES(324.0,54.0);
INSERT INTO "RecipeTag" VALUES(324.0,53.0);
INSERT INTO "RecipeTag" VALUES(325.0,95.0);
INSERT INTO "RecipeTag" VALUES(325.0,72.0);
INSERT INTO "RecipeTag" VALUES(325.0,58.0);
INSERT INTO "RecipeTag" VALUES(325.0,78.0);
INSERT INTO "RecipeTag" VALUES(325.0,88.0);
INSERT INTO "RecipeTag" VALUES(325.0,87.0);
INSERT INTO "RecipeTag" VALUES(325.0,54.0);
INSERT INTO "RecipeTag" VALUES(325.0,53.0);
INSERT INTO "RecipeTag" VALUES(326.0,91.0);
INSERT INTO "RecipeTag" VALUES(326.0,72.0);
INSERT INTO "RecipeTag" VALUES(326.0,58.0);
INSERT INTO "RecipeTag" VALUES(326.0,74.0);
INSERT INTO "RecipeTag" VALUES(326.0,88.0);
INSERT INTO "RecipeTag" VALUES(326.0,53.0);
INSERT INTO "RecipeTag" VALUES(327.0,91.0);
INSERT INTO "RecipeTag" VALUES(327.0,72.0);
INSERT INTO "RecipeTag" VALUES(327.0,58.0);
INSERT INTO "RecipeTag" VALUES(327.0,74.0);
INSERT INTO "RecipeTag" VALUES(327.0,88.0);
INSERT INTO "RecipeTag" VALUES(327.0,53.0);
INSERT INTO "RecipeTag" VALUES(328.0,91.0);
INSERT INTO "RecipeTag" VALUES(328.0,72.0);
INSERT INTO "RecipeTag" VALUES(328.0,58.0);
INSERT INTO "RecipeTag" VALUES(328.0,74.0);
INSERT INTO "RecipeTag" VALUES(328.0,88.0);
INSERT INTO "RecipeTag" VALUES(328.0,53.0);
INSERT INTO "RecipeTag" VALUES(329.0,91.0);
INSERT INTO "RecipeTag" VALUES(329.0,74.0);
INSERT INTO "RecipeTag" VALUES(329.0,58.0);
INSERT INTO "RecipeTag" VALUES(329.0,72.0);
INSERT INTO "RecipeTag" VALUES(329.0,88.0);
INSERT INTO "RecipeTag" VALUES(329.0,53.0);
INSERT INTO "RecipeTag" VALUES(330.0,91.0);
INSERT INTO "RecipeTag" VALUES(330.0,72.0);
INSERT INTO "RecipeTag" VALUES(330.0,58.0);
INSERT INTO "RecipeTag" VALUES(330.0,74.0);
INSERT INTO "RecipeTag" VALUES(330.0,88.0);
INSERT INTO "RecipeTag" VALUES(330.0,53.0);
INSERT INTO "RecipeTag" VALUES(331.0,78.0);
INSERT INTO "RecipeTag" VALUES(331.0,95.0);
INSERT INTO "RecipeTag" VALUES(331.0,88.0);
INSERT INTO "RecipeTag" VALUES(331.0,53.0);
INSERT INTO "RecipeTag" VALUES(331.0,220.0);
INSERT INTO "RecipeTag" VALUES(331.0,218.0);
INSERT INTO "RecipeTag" VALUES(331.0,225.0);
INSERT INTO "RecipeTag" VALUES(332.0,95.0);
INSERT INTO "RecipeTag" VALUES(332.0,72.0);
INSERT INTO "RecipeTag" VALUES(332.0,58.0);
INSERT INTO "RecipeTag" VALUES(332.0,78.0);
INSERT INTO "RecipeTag" VALUES(333.0,95.0);
INSERT INTO "RecipeTag" VALUES(333.0,72.0);
INSERT INTO "RecipeTag" VALUES(333.0,58.0);
INSERT INTO "RecipeTag" VALUES(333.0,78.0);
INSERT INTO "RecipeTag" VALUES(333.0,88.0);
INSERT INTO "RecipeTag" VALUES(333.0,87.0);
INSERT INTO "RecipeTag" VALUES(333.0,54.0);
INSERT INTO "RecipeTag" VALUES(333.0,53.0);
INSERT INTO "RecipeTag" VALUES(334.0,95.0);
INSERT INTO "RecipeTag" VALUES(334.0,74.0);
INSERT INTO "RecipeTag" VALUES(334.0,78.0);
INSERT INTO "RecipeTag" VALUES(334.0,88.0);
INSERT INTO "RecipeTag" VALUES(334.0,87.0);
INSERT INTO "RecipeTag" VALUES(334.0,54.0);
INSERT INTO "RecipeTag" VALUES(334.0,53.0);
INSERT INTO "RecipeTag" VALUES(335.0,73.0);
INSERT INTO "RecipeTag" VALUES(335.0,109.0);
INSERT INTO "RecipeTag" VALUES(335.0,225.0);
INSERT INTO "RecipeTag" VALUES(335.0,220.0);
INSERT INTO "RecipeTag" VALUES(335.0,88.0);
INSERT INTO "RecipeTag" VALUES(335.0,53.0);
INSERT INTO "RecipeTag" VALUES(335.0,218.0);
CREATE TABLE IF NOT EXISTS Department (DepartmentID unique, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass);
INSERT INTO "Department" VALUES(24.0,'Produce','','','<p>We&rsquo;ve come a long way from being a fruit and vegetable single storefront on the corner, but top quality produce is still our priority. We are rooted with values of supporting local growers and providing the freshest and the best selection of produce items.</p>

<p>Today, we are able to scale our produce operations to be the biggest per store in the industry without sacrificing either freshness or quality. We buy direct from the source and local-grown, as well as source from all over the world and follow the growing seasons of every region to offer you only the best produce year-round.</p>

<p>When you choose Fairway for all your fruits and vegetables, you&rsquo;ve made the right choice&mdash;the choice to have the freshest, the tastiest, the best.</p>
','',NULL,NULL,398.0,'','','',NULL,'icon-produce');
INSERT INTO "Department" VALUES(43.0,'Bakery','','','<p>As you travel through your Fairway Market, you come across an irresistibly fabulous aroma&mdash;the smell of fresh-baked bagels, breads and baguettes. All our baked goods are handcrafted to perfection, each with care and skillful attention. Born from a European tradition, our breads, bagels, and baguettes are not par-baked like so many other stores.</p>

<p>When you toss that baguette into your basket, or wrap up those bagels, you know they are straight from a cooling rack, fresh out of the oven and baked on premises. (They may still even be warm!) Our cookies, shortbreads, tarts, pastries and cheesecakes will delight you, and our signature pies are legendary. We&rsquo;ll also create the cake of your dreams for any occasion, and decorate it to the nines!</p>
','',NULL,NULL,391.0,NULL,NULL,NULL,NULL,'icon-bakedgoods');
INSERT INTO "Department" VALUES(102.0,'Seafood','','','<p>Our seafood department is an area where we really stand out from the rest. We only have the highest standards for selecting our seafood, and seafood experts at the helm of our selection process.</p>

<p>We&rsquo;re the first ones down at the docks every morning to pick out the best fish. We know that a day off means the fish will be less fresh, so we don&rsquo;t take any days off!</p>

<p>We receive every fish whole and fillet it in our stores, reminiscent of the way you would get fish from an outdoor fresh fish market in Europe or an old-time fish market in New York City. We offer 50 to 80 different species of fresh fish and seafood in each store every day&mdash;over 75% of which are wild. (Now THAT is wild!)</p>

<p>If it&rsquo;s frozen seafood you are after, rest assured that we have paid attention to the origin of the product, checking the weather of where it came from and keeping up on any advisories about the area.</p>

<p>We have a wide kosher seafood selection available as well, under strict rabbinical supervision.</p>
','',NULL,NULL,439.0,'','','',NULL,'icon-seafood');
INSERT INTO "Department" VALUES(127.0,'Cheese, Olives & Pasta','','','<p>Cheese lovers rejoice! Our inventory hovers around <strong>650 different cheeses</strong> from <strong>12 countries</strong> at any time. Most of the world&rsquo;s greatest cheeses were first sold here at Fairway starting in 1980.</p>

<p>Under the expert guidance of Steve Jenkins, Fairway&rsquo;s master cheesemonger and America&rsquo;s first French-certified &ldquo;ma&icirc;tre-fromager,&rdquo; Fairway&rsquo;s cheese operations&nbsp;are considered a beacon of success to food retailers the world over. His book, <em>Cheese Primer</em> (Workman, 1996), is considered the cheese bible among professionals and amateurs alike,&nbsp;won the James Beard Award and has sold over 300,000 copies.</p>

<p>Fairway has also thrown its weight behind the efforts of new cheese makers, particularly those here in the U.S., to develop outstanding emerging brands from local cheese artisans as passionate as we are about their craft.&nbsp;</p>

<p>Fairway offers an array of stunning imported olives dressed in the authentic preparations of their native region. Try our favorites, including Italian Gaeta, Oil-Cured Black Proven&ccedil;al and Green Cracked Sicilian olives.</p>

<p>Pasta is the heart and soul of the Italian kitchen.&nbsp;Fairway&rsquo;s fresh, artisanal pastas are imported from Italy for authentic, traditional taste that is unparalleled.&nbsp;</p>
','',NULL,NULL,392.0,'',NULL,NULL,NULL,'icon-cheese');
INSERT INTO "Department" VALUES(128.0,'Coffee','','','<p>We offer fresh coffee roasted on the premises and a practice of using only superior beans. The journey of the coffee bean is arduous, but to achieve the high standards we have, it is a necessary voyage to make it into our stores.</p>

<p>Our number one rule: our beans are treated with respect and care. This means we stay away from mainstream commercial coffee&mdash;including corner-cutters and companies that clearly put quantity over quality.</p>

<p>This means we buy directly from small farms and estates where we have personal connections because we know they care about the quality, flavor and taste of every one of their coffee beans as much as we do.</p>

<p>We test and test and then test again before any bean makes it to our stores.</p>
','',NULL,NULL,393.0,NULL,NULL,NULL,NULL,'icon-coffee');
INSERT INTO "Department" VALUES(130.0,'Dried Fruits & Nuts','','','<p>Fairway&rsquo;s own Dried Fruits and Nuts department goes way beyond fruits and nuts, and is a labor of love for Avanelle Rivera. She sources the best dried fruits exclusive to Fairway from France, the largest top-grade almonds from Spain, bulk chocolate, over 20 types, from Belgium, Venezuela, and Ecuador for baking or cravings, Garbanzo beans from Spain, unprocessed Black Barley from Montana, Gooseberries from Columbia, over 30 varieties of trail mixes to die for, and granolas that will intensely satisfy for breakfast.</p>

<p>Our almond, peanut, and honey-roasted peanut butters are made fresh on demand and are preservative-free. Fairway candies are the sweetest treats, with dark chocolate almonds, dark chocolate malted milk balls, sea-salted caramels, almond brittle and more. Our exquisite French dried fruits are the perfect accompaniment to all great cheeses and charcuterie, stuffings, stews and toppings on salads.</p>

<p>Explore the multitude of natural foods at Fairway, and experience gourmet healthy living at a price that can&rsquo;t be beat.</p>
','',NULL,NULL,394.0,NULL,NULL,NULL,NULL,'icon-driedfruits');
INSERT INTO "Department" VALUES(131.0,'Fairway Private Label','','','<p>If Fairway Market is on the label, you are in for a treat. &nbsp;</p>

<p>Everything that comes out of the Fairway kitchens and into yours is either a Fairway original recipe or a treasured &ldquo;secret&rdquo; family recipe from a team member (most likely unbeknownst to their family!).</p>

<p>We nurture close relationships with our producers, from the Italian families who make our incredible balsamic to our olive growers in Mexico, Australia, France, Portugal and beyond who craft our world-renowned barrel oils, to the Lancaster family farmers who supply our organic milk and eggs.</p>

<p>Look for Fairway on the label and taste the world. You&rsquo;ll find Fairway Golden Honey, Organic Maple Syrup, Organic Jams in five flavors, chocolates produced by a small artisanal chocolate maker, every spice you can imagine, olive, artichoke and sundried tomato pastes, as well as pasta and pizza sauces that are the best of the best.</p>
','',NULL,NULL,395.0,NULL,NULL,NULL,NULL,'icon-fw');
INSERT INTO "Department" VALUES(132.0,'Meat','','','<p>Our meat department is an area where we really go the extra mile to give you the opportunity to shine. We only source and put out meat that we ourselves would buy for our families. All of our meat is cut and packaged in-house by a trained Fairway team member. This ensures peak freshness of the meat, proper packaging and approval of someone who knows what a superior cut of meat looks like.</p>

<p>All of the meat in every Fairway Market store is USDA inspected. Our team scrutinizes over the details of selecting the meat that comes into the stores seven days a week, 365 days a year. Our specialty meats include grass-fed OBE organic beef, which is beef from a dedicated group of ranchers in Australia, and is USDA inspected organic and 100% grass-fed.</p>

<p>Our kosher meat undergoes strict rabbinical supervision. In fact, we cut and package our kosher meat in-house and offer the same custom-cutting option for our kosher customers.</p>

<p>A true lover of food is going to want the best, and the best is the freshest and tastiest. That&rsquo;s exactly what we offer at Fairway. You&rsquo;re getting a great value and expert service.</p>
','',NULL,NULL,396.0,NULL,NULL,NULL,NULL,'icon-meat');
INSERT INTO "Department" VALUES(133.0,'Organic & Natural','','','<p>Eating naturally, organically and healthfully is a way of life.</p>

<p>At Fairway, you can make great choices for your body, your family and the environment without having to spend a fortune.</p>

<p>Our extensive organic and natural selection includes fruits and veggies, natural and fresh juices, organic beef, chicken, and meats, nut butters, dried fruits and nuts, cheeses and cold cuts, breads and groceries, health and beauty products, dairy (including Fairway&rsquo;s own organic milk) and more.</p>

<p>Our wide array of over 2,000 gluten-free products from over 250 leading brands will make you feel like you&rsquo;re shopping a store within a store!</p>

<p>In fact, you could say sourcing new natural, gluten-free and organic products is part of our DNA.</p>

<p><a href="http://www.youtube.com/watch?v=L0XBW10ZiiM" target="_blank">Watch this&nbsp;tour</a> of all the incredible goodies Fairway Organics has to offer with the passionate man at the helm of the Organic and Natural Foods Department,&nbsp;Paul Weiner.</p>
','',NULL,NULL,397.0,NULL,NULL,NULL,NULL,'icon-organic');
INSERT INTO "Department" VALUES(134.0,'Speciality Grocery','','','<p>Take a trip around the world without ever leaving our store. This is the part of Fairway that truly makes us a one-stop shop and an extraordinary food shopping experience. Our Specialty Imports and Specialty Grocery departments transform food shopping from a ho-hum chore into an exciting excursion into the new and delicious.</p>

<p>We import the best of the best, directly, from over 100 producers in Europe. While much of our goods are imported, some of them are made right here in the U.S. Most important is the fact that many of the European foodstuffs that we carry are exclusive to Fairway.</p>

<p>We have a particular passion for our exclusives. They&rsquo;re the reason we&rsquo;re in the newspapers and magazines all the time, and of utmost importance to the best chefs and most passionate foodies. You will love them. And the beauty of it all is that since Fairway is the importer, nobody exists between the producers and us. What does that mean? It means the prices are as low as they can possibly be.</p>

<p>Enjoy Lapalisse pure and virgin nut oils used by France&rsquo;s top gastronomic chefs; authentic artisanal Sicilian foodstuffs; Burgundy&rsquo;s organic La Trinquelinette fruit preserves made in small batches using only unrefined raw cane sugar; ready-to-eat vacuum-packed beets from the Loire Valley; L&#39;Herbier de Milly La For&ecirc;t verbena, hibiscus, peppermint and linden blossom infusions (exclusively at Fairway in the U.S.) and so much more&mdash;all personally selected by experts at Fairway and directly imported straight to you.</p>
','',NULL,NULL,400.0,NULL,NULL,NULL,NULL,'icon-specialtygrocery');
INSERT INTO "Department" VALUES(135.0,'Traditional Grocery','','','<p>Have your shopping list at hand and gear-up with your cart ready to cruise through the aisles when you come into your local Fairway Market. We&rsquo;ve been told it&rsquo;s like an amusement park of food, so you&rsquo;re in for a good time. Whether you&rsquo;re coming in for those hard-to-find specialty items on your list or traditional groceries, our selection of the brand names you love, combined with our expertise in specialty foods, makes us truly unique as your one-stop shop for everything from cereal to caviar.</p>

<p>Our grocery aisles are filled floor to ceiling with the national and traditional brand names you know and trust&mdash;Tide, Bounty, Kleenex, Charmin, Lysol, Poland Spring, Oreo, Cheerios, Lipton, Wonder, Hershey&rsquo;s, Coke, Green Giant, and so many more. You grew up with those household names, and now, you&rsquo;re shopping for yourself and your family, and you see those same items here. You don&rsquo;t have to wonder if they&rsquo;re just as good as when you were young, because you know Fairway only carries the best.</p>

<p>You don&rsquo;t have to wonder if prices have gone up too high for you to continue to enjoy your life-long favorites, because you know Fairway has hundreds of unadvertised specials and everyday low prices. So, what are you waiting for?</p>
','',NULL,NULL,401.0,NULL,NULL,NULL,NULL,'icon-traditionalgrocery');
INSERT INTO "Department" VALUES(300.0,'Kosher','','','<p>Fairway kosher is a kosher food lover&rsquo;s paradise. We&rsquo;ve long been one of the largest purveyors of food in the country that is not only kosher, but is absolutely delicious.</p>

<p>Under the direction of &ldquo;KOF-K&rdquo; Kosher Supervision and Rabbi Avrohom Marmorstein, director of Mehadrin Kashrus (the kosher supervision service in Manhattan), Fairway offers thousands of kosher foods, including meat, poultry, cheese and bakery items, to coffees, teas and traditional packaged goods, as well as specialty products.</p>

<p>It&rsquo;s important to us that our kosher customers enjoy the best of Fairway&mdash;from our hand-rolled bagels and famous freshly-baked breads, coffees roasted on the premises from around the world, Murray&rsquo;s all-natural, veggie-fed and antibiotic-free chickens, Fairway&rsquo;s beloved olive oils and vinegars, and that&#39;s just the beginning&hellip;</p>
','',NULL,NULL,440.0,NULL,NULL,NULL,NULL,'icon-kosher');
CREATE TABLE IF NOT EXISTS Recipe(RecipeID unique, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook, CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, ImagePathStepsGrid, IsFeatured, IsPopular,URLPathPlayList,LastModified);
INSERT INTO "Recipe" VALUES(275.0,'Challah French Toast with Pear, Gruyere & Red Onion','Ultimate Sweet & Savory Breakfast','<p>Take Challah French Toast to the new level with fresh, sweet pear and nutty Gruyere. The pears become caramelized and sugar-sweet and the cheese gets fantastically&nbsp;oozy and melt-y. This is soon to be a favorite special breakfast.</p>
','2','Easy','25','10','15',NULL,232.0,286.0,342.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386863152.0);
INSERT INTO "Recipe" VALUES(276.0,'“Shakshuka” Eggs','Spice Up Your Scrambled Eggs!','<p>This recipe is so very simple, but it might very well change your life. Kicky, just-spicy-enough Moroccan harissa brings oomph to a simple breakfast favorite. Or switch it up and serve for a light lunch or a late-night snack. Move over, ketchup!</p>
','4','Easy','20','5','15',NULL,256.0,309.0,367.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149604.0);
INSERT INTO "Recipe" VALUES(277.0,'Smoked Ham, Gruyere and Caramelized Onion Frittata','','<p>An incredibly tasty dish elegant enough for entertaining (brunch!),&nbsp;and simple and satisfying enough for a quick dinner. Plenty of fiber and protein to start your day right&mdash;plus, a dash of cream and ham for splurge factor.</p>
','4 - 6','Easy','30','10','20',NULL,234.0,288.0,344.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159570.0);
INSERT INTO "Recipe" VALUES(278.0,'Tomato and Cheddar Pie','','<p>Eat your veggies baked in a pie! This savory pie is pure, melt-y tomato goodness, mixed with sharp, fruity cheddar and stuffed into a biscuit-y buttermilk crust. Serve beside a big green salad; or cut small slices for a mouthwatering app.</p>
','8','Intermediate','105','25','80',NULL,263.0,316.0,374.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149702.0);
INSERT INTO "Recipe" VALUES(279.0,'Cheddar-Crusted Apple Pie','','<p>If you&#39;ve never tried apple pie with a cheddar crust, now is the time! This rustic pie is classic for good reason. Sweet-tart apples and nutty, sharp cheddar are even more fantastic together. Ice cream optional, or pair with slices of good quality cheddar.</p>
','10','Intermediate','105','25','80',NULL,215.0,269.0,325.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386861806.0);
INSERT INTO "Recipe" VALUES(280.0,'Fairway Hazelnut Spread Cookies','Easy and Incredible','<p>Smooth, rich Italian hazelnut spread in delicious, gooey, fudgy cookies&hellip;danger alert! These are incredibly addictive. With only six&nbsp;ingredients, they&rsquo;re super easy to whip up. Your house will smell phenomenal. Share a batch for instant friends.</p>
','18','Easy','20','10','10',NULL,235.0,289.0,345.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386861794.0);
INSERT INTO "Recipe" VALUES(281.0,'Honey-Poached Pears with Crème Fraîche','Elegant, Simple & Delicious','<p>Perfume the whole house with gently simmered poached pears in silky sweet honey and fragrant star anise. Your new dinner party go-to.</p>
','6','Intermediate','160','10','30',NULL,245.0,299.0,355.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386861847.0);
INSERT INTO "Recipe" VALUES(282.0,'Blackberry-Glazed Lamb Chops','','<p>Sweet berries and rich, flavorful lamb make perfect partners. A gorgeous, fancy-restaurant meal&hellip;deceptively simple, and even better in your own home. A pitch-perfect romantic meal guaranteed to win your loved one&rsquo;s heart and stomach.</p>
','2','Intermediate','60','30','30',NULL,220.0,274.0,330.0,NULL,0.0,0.0,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384355413.0);
INSERT INTO "Recipe" VALUES(283.0,'Butterflied Leg of Lamb with Mint & Yogurt Sauce',NULL,'<p>A Mediterranean revelation. Rich, meaty, tender lamb marinated in citrus and herbs, tart yogurt, and fresh mint create a soaring symphony of flavor. Break out this show-stopping dish for special occasions and holidays.</p>
','6 - 8','Intermediate','95','45','50',NULL,238.0,292.0,348.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386861839.0);
INSERT INTO "Recipe" VALUES(284.0,'Lamb Ragu','Soul-Satisfying','<p>There is nothing better than rich, meaty ragu &mdash; especially during the colder months. It&#39;s a treat spooned over fresh pasta, polenta, or fragrant rice. Long, slow cooking allows for the tender lamb to develop layers upon layers of flavor.</p>
','4','Intermediate','85','15','70',NULL,237.0,291.0,347.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384355340.0);
INSERT INTO "Recipe" VALUES(286.0,'Tournedos of Beef with Garlic & Thyme','Stunning Steak Dinner','<p>Tender filet mignon gets even more flavorful and wonderful infused with garlic and thyme. The golden-brown sear from your hot pan will accentuate the fabulous flavor of the beef itself, letting it shine. Who needs a steakhouse? Pair with our gourmet Potatoes au Gratin.</p>
','2','Easy','30','10','20',NULL,264.0,317.0,375.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159639.0);
INSERT INTO "Recipe" VALUES(287.0,'Pork with Pears, Blue Cheese & Red Onion','','<p>Transform pork chops into an unforgettable, juicy, flavor-packed dinner with lovely pears, woodsy rosemary&nbsp;and killer smokey blue cheese. Plus, your happy diners will never guess how quick and simple this gorgeous dish is to prepare.</p>
','4','Easy','35','20','15',NULL,247.0,301.0,357.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149503.0);
INSERT INTO "Recipe" VALUES(288.0,'Pork Loin with Fig & Apricot Sauce','A Treat for Any Holiday','<p>Pork loin soars to new heights of deliciousness stuffed with nature&rsquo;s candy: sweet figs and apricots. The tender, juicy&nbsp;pork gets roasted to perfection; the sweet compote becomes bubbly, sticky-sweet&nbsp;and perfect. Asparagus Parmigiano makes a nice, light and slightly salty side.</p>
','4 - 6','Intermediate','60','15','45',NULL,246.0,300.0,356.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159581.0);
INSERT INTO "Recipe" VALUES(289.0,'Sausage with French Lentils & Fennel','','<p>A classic French favorite, starring Fairway&rsquo;s handmade, beloved savory sausage, satisfying lentils, and the surprising fresh crunch of fennel. Full of protein, fiber, and soul.</p>
','4','Easy','45','10','35',NULL,254.0,307.0,365.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149624.0);
INSERT INTO "Recipe" VALUES(290.0,'Cornbread Sausage Stuffing with Toasted Pecans','Stuffing Worthy of Your Holiday Table','<p>You&#39;ll want to serve this savory stuffing year after year for the holidays. Great beside Fairway&rsquo;s Farm-Fresh Turkey and Asparagus Parmigiano. Your guests will want seconds; plan accordingly.</p>
','10','Easy','34','10','35',NULL,228.0,282.0,338.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159459.0);
INSERT INTO "Recipe" VALUES(291.0,'Steak with Parmesan Butter & Balsamic Glaze','Thrill Everyone with Delicious Steak for Dinner','<p>Give steak the royal treatment with Fairway&rsquo;s ethereal&nbsp;aged balsamic and creamy Parmesan butter. Arugula, steak and balsamic vinegar are a beloved, winning formula for happiness. Endlessly elegant, guaranteed to impress anyone.</p>
','4','Intermediate','30','10','20',NULL,259.0,312.0,370.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159628.0);
INSERT INTO "Recipe" VALUES(292.0,'Flank Steak with Aromatic Herbs','','<p>We love flank steak! It&#39;s got a robust, beefy flavor and a lovely, tender texture. Juicy beef, fragrant garlic, and perfume-y fresh rosemary make for a wonderful torrent of flavor; served atop a bed of peppery arugula. Dinner is served!</p>
','4','Easy','30','10','20',NULL,230.0,284.0,340.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383167862.0);
INSERT INTO "Recipe" VALUES(293.0,'Foglie d''Ulivo Pasta with Spinach, Chicken & Peppers','Your New Family Favorite','<p>Dinner is ready in a flash with Fairway&rsquo;s imported Puglian pasta, tasty veggies and tender chicken. A drizzle of highest-quality EVOO and a handful of bright basil seal the deal. Pack leftovers for lunch!</p>
','4','Easy','35','10','25',NULL,231.0,285.0,341.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384287785.0);
INSERT INTO "Recipe" VALUES(294.0,'Girelle Pasta with Zucchini & Gorgonzola','Perfect Pasta with Pizzazz ','<p>These short, beautiful pasta twists are ideal for collecting the goodies in this simple, satisfying dish: garlicky zucchini and luscious, melt-y gorgonzola. A squeeze of fresh lemon lends a welcome brightness.</p>
','2','Easy','35','10','25',NULL,233.0,287.0,343.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159354.0);
INSERT INTO "Recipe" VALUES(295.0,'Maccheroni Pasta with Eggplant & Mozzarella','','<p>Fairway artisanal, coil-y maccheroni, Italian eggplant and milky, sumptuous homemade mozz make this meal easy and delightful for any night of the week. The eggplant softens, the mozzarella melts into gooey splendor&hellip;perfection!&nbsp;&nbsp;</p>
','4','Easy','95','60','35',NULL,239.0,293.0,349.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159291.0);
INSERT INTO "Recipe" VALUES(296.0,'Orecchiette Pasta with Broccoli Rabe & Sweet Italian Sausage','Italian Comfort Food at Its Finest ','<p>Al dente, handmade Fairway orecchiette is the perfect vehicle for sweet, flavorful Italian sausage and tangy broccoli rabe. Red pepper flakes for pizzazz and garlic for fragrant flavor round out the classic dish.</p>
','4','Easy','30','10','20',NULL,242.0,296.0,352.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159270.0);
INSERT INTO "Recipe" VALUES(297.0,'Orecchiette Pasta with Peas, Pancetta & Cream','','<p>These &quot;little ears&quot; are experts at scooping crispy, rich pancetta&nbsp;and luscious cream with every happy bite. The peas lend a welcome sweetness. Sprinkle with Parmesan and dig in!</p>
','4','Intermediate','45','10','35',NULL,243.0,297.0,353.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159597.0);
INSERT INTO "Recipe" VALUES(298.0,'Riccioli Pasta with Sun-Dried Tomatoes & Mozzarella','Simple and Divine ','<p>Spirals of pasta wrap their way around Proven&ccedil;al olives, sun-dried tomatoes (taste the sunshine!), and Fairways life-changing hand-pulled mozzarella. Sweet basil and earthy Spanish olive oil work tasty wonders.</p>
','6 - 8','Easy','30','15','15',NULL,250.0,304.0,360.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149654.0);
INSERT INTO "Recipe" VALUES(299.0,'Whole Wheat Strozzapreti Pasta with Pesto, Spinach & Chicken','A Simple Dish That’s Very Hard Not to Love ','<p>Whole wheat pasta adores Fairway&rsquo;s pesto from Genoa, the pesto capitol of the world. Tender chicken breasts, pungent Portuguese olive oil and Parmesan turn the dish into a company-worthy dinner.</p>
','4','Easy','30','10','20',NULL,260.0,313.0,371.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384366268.0);
INSERT INTO "Recipe" VALUES(301.0,'Whole Wheat Strozzapreti Pasta with Toasted Walnut Pesto',NULL,'<p>Toasted walnut pesto is a perfect foil to nutty, whole wheat artisanal pasta. Make an extra batch of the walnut pesto to spread on sandwiches, spoon on crostini, and stir into scrambled eggs. Walnuts deliver plenty of healthy Omega 3s and warm, toasty flavor.</p>
','6','Easy','30','10','20',NULL,261.0,314.0,372.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159626.0);
INSERT INTO "Recipe" VALUES(302.0,'Gorgonzola, Walnut & Arugula Flatbread','Fabulous Flatbread','<p>This just might become a staple&mdash;something to revisit again and again. Spicy-sweet gorgonzola, crunchy walnuts, and pepper arugula make the perfect toppings, but feel free to add what you love. Slice for hors d&#39;oeuvres; serve for lunch.</p>
','4','Intermediate','60','15','45',NULL,266.0,320.0,377.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159361.0);
INSERT INTO "Recipe" VALUES(303.0,'Chicken with Fennel & Orange Salad',NULL,'<p>Golden brown, pan-fried chicken cutlets shine beside a fresh and beautiful salad. Slightly sweet, crunchy fennel and deep crimson blood oranges sing simply dressed with Portuguese olive oil and bright, tangy white wine vinegar.</p>
','4','Easy','25','5','20',NULL,225.0,279.0,335.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384287729.0);
INSERT INTO "Recipe" VALUES(304.0,'Chicken Parmesan','Perfect Rendition of a Lovable Classic','<p>Nothing can warm a cold night and satisfy a hungry stomach like a great chicken parm&mdash;lightly breaded chicken breasts, nestled in homemade, fragrant tomato sauce and oozy, melt-y parmesan and mozzarella. Life is good.</p>
','4','Intermediate','65','25','40',NULL,226.0,280.0,336.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384287649.0);
INSERT INTO "Recipe" VALUES(305.0,'Gourmet Chicken Enchiladas',NULL,'<p>Enchiladas may not be an essential part of your cooking repertoire, but this recipe just might change that! We are evangelical about these creamy, dreamy, healthy, tasty chicken enchiladas. They&rsquo;re comforting, hearty, easy&hellip;a win.</p>
','4','Easy','45','10','35',NULL,229.0,283.0,339.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384287831.0);
INSERT INTO "Recipe" VALUES(307.0,'Beef Carpaccio and Artichoke Salad',NULL,'<p>Company coming over? Impress with this light, lovely starter. Carpaccio is raw meat or fish, thinly sliced and pounded thin. Filet mignon shines with arugula, artichoke, citrus and EVOO. Wildly beautiful, deceptively simple.</p>
','6','Intermediate','30','5','25',NULL,218.0,272.0,328.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383180265.0);
INSERT INTO "Recipe" VALUES(308.0,'Classic Caesar Salad','Crunchy, Classic & Fabulous','<p>There&rsquo;s nothing like a spot-on Caesar. The refreshing crunch of romaine becomes otherworldly, dressed up in super-flavorful, just-salty-enough anchovies, tangy Dijon and creamy dressing. Homemade croutons? Yes, please!</p>
','6','Intermediate','45','15','30',NULL,221.0,275.0,331.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384287789.0);
INSERT INTO "Recipe" VALUES(309.0,'Roasted Beets with Walnut Gorgonzola Dressing','Sweet Beet Symphony ','<p>Roasting beets is a magical endeavor. The heat coaxes out their natural,&nbsp;sweet flavors. (Or skip the fuss and buy pre-roasted beets at Fairway!)&nbsp;Walnut gorgonzola adds a welcome, rich creaminess. This recipe promises minimum&nbsp;fuss and an abundance of earthy, enticing flavor.</p>
','4 -6 ','Easy','60','10','50',NULL,219.0,273.0,329.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149643.0);
INSERT INTO "Recipe" VALUES(310.0,'Salade aux Lardons','French Salad at Its Finest','<p>Genius. Light fris&eacute;e gets the royal treatment with umami-laden pancetta or bacon and bright vinegar. The best part is breaking open the luscious poached egg on top, and stirring in the fabulously creamy yolk.</p>
','4','Intermediate','20','5','15',NULL,251.0,390.0,361.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149636.0);
INSERT INTO "Recipe" VALUES(311.0,'Spinach & Pear Salad with Lamb',NULL,'<p>This salad just might become one of your go-to favorites. In no time at all, you have a gorgeous and healthy meal. Rich, meaty lamb shines atop a bed of fresh spinach and juicy, ripe pears.</p>
','4','Intermediate','30','5','25',NULL,258.0,311.0,369.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384355487.0);
INSERT INTO "Recipe" VALUES(312.0,'Fairway’s Tilapia “Provençal”',NULL,'<p>Tilapia gets a touch of Provence with artichokes, olives and fresh thyme. Add whole grain dinner rolls or a baguette, a fresh spinach salad with mustard vinaigrette and a Fairway Market Triple Berry pie for a complete meal.</p>
','2','Easy','35','15','20',NULL,262.0,315.0,373.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384528453.0);
INSERT INTO "Recipe" VALUES(313.0,'Baked Cod with Chanterelles','Heady, Elegant Fish to Impress','<p>Tender cod becomes rich and flaky in the oven. Chanterelles are delicate, a treasure&mdash;they cry out for the saut&eacute; pan, where their flavors become alive with butter and parsley. Bright lemon, fragrant garlic&mdash;a truly stunning dish.</p>
','6','Easy','45','10','35',NULL,227.0,281.0,337.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383180174.0);
INSERT INTO "Recipe" VALUES(314.0,'Sockeye Salmon with French Green Lentils','Wonderfully Healthy, Tasty & Gorgeous','<p>Sockeye, or red salmon, is prized for its brilliant, orange-red, rich-tasting meat. The combination of the hearty legumes and the tender fish is buttery and indulgent in a soul-warming, very healthy way.</p>
','4','Easy','55','10','45',NULL,252.0,305.0,363.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149774.0);
INSERT INTO "Recipe" VALUES(315.0,'Prosciutto-Wrapped Scallops',NULL,'<p>Heaven. Sweet, tender scallops melt in your mouth. Dressed up with sun-dried tomatoes and wrapped with salty, meaty prosciutto, which crisps up to perfection in the oven&hellip;now they&rsquo;re a phenomenon. They shine on a bed of fresh arugula.</p>
','4','Intermediate','45','30','15',NULL,249.0,303.0,359.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384529120.0);
INSERT INTO "Recipe" VALUES(316.0,'Salmon Puttanesca','Healthy Meal in a Flash','<p>Fairway&rsquo;s own Puttanesca Sauce is spiked with olives, capers and tomatoes. This&nbsp;just-spicy-enough Mediterranean sauce plays beautifully with flaky, rich fish. So healthy, so quick, so good.</p>
','2','Easy','30','10','20',NULL,253.0,306.0,364.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159572.0);
INSERT INTO "Recipe" VALUES(317.0,'Scallops with Herb Sauce',NULL,'<p>Scallops are simple and quick to cook, yet always feel like a sophisticated, extravagant treat&hellip;especially with fresh, bright herbs. Juicy, sweet scallops sear up beautifully in clarified butter; be careful not to overcook!</p>
','4','Easy','40','15','25',NULL,433.0,436.0,437.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384529045.0);
INSERT INTO "Recipe" VALUES(318.0,'Seared Sea Scallops with Italian Saba Reduction',NULL,'<p>Looking for a dish that&#39;s incredibly easy and undeniably romantic? Look no further. We believe great food and great love are closely intertwined. Sweet, juicy scallops get even tastier and richer with the flavor-bomb of sweet saba.&nbsp;</p>
','4','Easy','35','10','25',NULL,255.0,308.0,366.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1384529072.0);
INSERT INTO "Recipe" VALUES(319.0,'Wild Mushroom Risotto','Lush, Creamy, Decadent Risotto to Impress','<p>Myth: risotto is impossibly difficult to cook. Fact: this is a surprisingly approachable, stunning dish. What better way to showcase earthy, umami-packed, rich mushrooms than with creamy risotto?</p>
','6','Easy','60','15','45',NULL,240.0,294.0,350.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149878.0);
INSERT INTO "Recipe" VALUES(320.0,'Carrots With Spicy Olive-Lemon Oil',NULL,'<p>Give super-healthy steamed carrots the Mediterranean treatment with lemon, olives, crushed red pepper, and earthy Spanish extra-virgin olive oil. Serve as a side on your holiday table, or add grilled chicken breasts for a lovely lunch.</p>
','6','Easy','20','5','15',NULL,222.0,276.0,332.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862624.0);
INSERT INTO "Recipe" VALUES(321.0,'Cheddar Corn Muffins with Jalapeno Butter',NULL,'<p>Need something easy and tasty to go with dinner? Sharp cheddar and a smattering of fiery jalapenos make already wonderful corn muffins a total treat. Awesome with an extra smear of jalapeno butter! Serve beside eggs, or solo, for breakfast.</p>
','12','Easy','45','20','25',NULL,224.0,278.0,334.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862654.0);
INSERT INTO "Recipe" VALUES(322.0,'Potato Gratin with Mushrooms and Gruyere',NULL,'<p>It&#39;s pretty hard to beat this gratin. It&rsquo;s elegant, easy&nbsp;and chock-full of crowd-pleasing ingredients like melt-y, nutty gruyere, creamy potatoes&nbsp;and earthy &lsquo;shrooms. Serve this for brunch&nbsp;or as a standout side dish.</p>
','8 - 10','Easy','120','60','60',NULL,248.0,302.0,358.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149497.0);
INSERT INTO "Recipe" VALUES(323.0,'Roasted Artichokes, Fingerlings & Purple Potatoes',NULL,'<p>Throw fall/ winter veggies in a hot oven with a glug of olive oil, a sprinkle of salt, and a grind of black pepper. They&rsquo;ll come out delicious every time. Fingerlings and purple potatoes are beautiful; artichokes lend a lovely nuttiness.</p>
','4','Easy','65','10','55',NULL,216.0,270.0,326.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862436.0);
INSERT INTO "Recipe" VALUES(324.0,'Spiced Couscous with Fennel, Roasted Red Peppers & Garlic',NULL,'<p>Couscous is the culinary equivalent of a blank canvas. It soaks up and showcases whatever flavors&mdash;spicy, sweet, savory&mdash;are added to it. For our rendition, fennel serves as the aromatic base for this fragrant side dish.</p>
','4 -6','Easy','30','10','20',NULL,257.0,310.0,368.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149744.0);
INSERT INTO "Recipe" VALUES(325.0,'Vegetable Tagine with Couscous',NULL,'<p>Named after the vessels in which they&#39;re traditionally cooked, tagines are stews, cooked on low and slow to let flavors meld and develop. This Moroccan-inspired dish is tantalizing and fragrant with cinnamon, cumin and cilantro.</p>
','4','Easy','50','10','40',NULL,265.0,319.0,376.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383149913.0);
INSERT INTO "Recipe" VALUES(326.0,'Cheddar Corn Chowder',NULL,'<p>Rich, creamy corn chowder is made extra luscious with cheddar cheese. This hearty, comforting soup brimming with potatoes, corn, onions and sharp white cheddar cheese is guaranteed to ignite smiles and warrant second helpings.</p>
','10 - 12','Intermediate','60','20','40',NULL,223.0,277.0,333.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159388.0);
INSERT INTO "Recipe" VALUES(327.0,'Italian Vegetable Stew',NULL,'<p>A ratatouille-like stew chock-full of veggies, and a great way to make use of day-old bread. The chunks of sourdough become plump sponges, thickening up the beans and greens. A perfect, satisfying vegetarian meal, or you can add in saut&eacute;ed Fairway Spicy Italian Sausage for a meat-lover&rsquo;s kick.</p>
','6 - 8','Intermediate','120','20','100',NULL,236.0,290.0,346.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159322.0);
INSERT INTO "Recipe" VALUES(328.0,'Pea Soup with Lemon & Parmigiano',NULL,'<p>This pretty, pale green pea soup is surprisingly light. Sweet peas keep their fresh flavor with the bright addition of lemon and mint. A handful of Parmesan at the end adds a welcome touch of salt and creaminess.</p>
','2 - 3','Easy','30','15','15',NULL,244.0,298.0,354.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862600.0);
INSERT INTO "Recipe" VALUES(329.0,'White Bean Soup with Green Olive Toasts',NULL,'<p>These beloved beans are ideally suited to the slow cooked goodness of a hearty soup. The m&eacute;lange of fragrant seasonings mingle with the mild but sturdy beans and with very little effort, you have a fantastic, hearty, delicious bowl.</p>
','4','Intermediate','150','30','120',NULL,267.0,321.0,378.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1383159619.0);
INSERT INTO "Recipe" VALUES(330.0,'Vegetable Wonton Soup with Homemade Garlic Chili Sauce','Soup to Warm Heart & Soul','<p>Wrapping chili garlic-spiked mushrooms into wonton packages is fun&mdash;and more importantly, the result is delicious. An ambrosial, delectable soup&mdash;make a big pot to serve to guests, or stash in your fridge so you have great lunch on hand!</p>
','4','Intermediate','50','15','35',NULL,268.0,322.0,379.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862523.0);
INSERT INTO "Recipe" VALUES(331.0,'Orange Cranberry Sauce','Nothing Could Be Simpler','<p>All cranberries need is a sprinkling of sugar, a grating of fragrant orange zest, and a splash of orange juice to transform into a perfect cranberry sauce. You&rsquo;ll never need to resort to canned sauce again!</p>
','3 1/2 cups','Easy','30','5','25',NULL,434.0,435.0,438.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862677.0);
INSERT INTO "Recipe" VALUES(332.0,'Broccoli Stir Fry with Ginger & Sesame','Fall in Love with Broccoli','<p>Super-healthy broccoli florets are quickly stir-fried, then steamed in a savory, aromatic sauce of stock, sesame oil, and soy sauce. Sesame seeds lend a great crunch. You&rsquo;ll make a broccoli&nbsp;lover out of anyone!</p>
','4','Easy','25','10','15',NULL,217.0,271.0,327.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862741.0);
INSERT INTO "Recipe" VALUES(333.0,'Fairway Classic Ratatouille','A French Provençal Veggie Celebration','<p>Zucchinis, sweet peppers, onions, and eggplant are great&mdash;but melded together, their flavors become otherworldly. A great side dish, or spoon atop pasta or French lentils and make it a lovely meal. Serve warm, or at room temperature.</p>
','4','Easy','85','10','75',NULL,405.0,406.0,407.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862734.0);
INSERT INTO "Recipe" VALUES(334.0,'Asparagus Parmigiano','A Simple, Satisfying Side','<p>An impressive, yet simple side dish to complement your meal, or top with an egg and serve as a vegetarian main. Nutty, woodsy asparagus roasts up to perfection&mdash;shaved parmesan adds melty, rich dimension.</p>
','2','Easy','25','10','15',NULL,402.0,403.0,404.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862776.0);
INSERT INTO "Recipe" VALUES(335.0,'Homemade Pumpkin Pie with Bourbon Whipped Cream','A Homemade Holiday Favorite','<p>The smooth, rich flavor of homemade pumpkin pie, the sweet taste of whipped cream with a twang of bourbon&mdash;this is what the holidays are all about! Fresh pumpkin pur&eacute;e is easier to make than you may think.</p>
','8','Intermediate','180','30','150',NULL,380.0,323.0,324.0,NULL,NULL,NULL,'http://www.live365.com/mplayer/fairwaymixtape2013?bg=http://halopowered.com/stage0/fairway/portrait.jpg#playerTab',1386862769.0);
CREATE TABLE IF NOT EXISTS RecipeAttributeValue (RecipeID, DataGroup, Label, DataGroupValue, GroupDisplayOrder);
INSERT INTO "RecipeAttributeValue" VALUES(275,'Summary','Wine Pairing','Off-dry sparkling wine (like an Extra-dry Prosecco)','1');
INSERT INTO "RecipeAttributeValue" VALUES(276,'Summary','Wine Pairing','Dry sparkling wine (like a Spanish Brut Cava)','1');
INSERT INTO "RecipeAttributeValue" VALUES(277,'Summary','Wine Pairing','Off-dry, light-bodied Riesling (like a Mosel Riesling QbA)','1');
INSERT INTO "RecipeAttributeValue" VALUES(278,'Summary','Wine Pairing','Semi-sweet, medium-bodied Riesling (like a Rheinpfalz Riesling Spatlese)','1');
INSERT INTO "RecipeAttributeValue" VALUES(279,'Summary','Wine Pairing','Semi-sweet, medium-bodied Riesling (like a Rheinpfalz Riesling Spatlese)','1');
INSERT INTO "RecipeAttributeValue" VALUES(280,'Summary','Wine Pairing','Passito dessert wine (like a Vin Santo)','1');
INSERT INTO "RecipeAttributeValue" VALUES(281,'Summary','Wine Pairing','Sparkling Muscat (like a Moscato d’Asti)','1');
INSERT INTO "RecipeAttributeValue" VALUES(282,'Summary','Wine Pairing','Fruity, medium-bodied red wine (like a Sonoma County Merlot)','1');
INSERT INTO "RecipeAttributeValue" VALUES(283,'Summary','Wine Pairing','Dry, full-bodied red wine (like a Greek Agiorgitiko)','1');
INSERT INTO "RecipeAttributeValue" VALUES(284,'Summary','Wine Pairing','Dry, medium-bodied red wine (like a Nero d’Avola)','1');
INSERT INTO "RecipeAttributeValue" VALUES(286,'Summary','Wine Pairing','Dry, full-bodied red wine (like a Napa Valley Cabernet Sauvignon)','1');
INSERT INTO "RecipeAttributeValue" VALUES(287,'Summary','Wine Pairing','Off-dry, medium-bodied white wine (like a Demi-sec Vouvray)','1');
INSERT INTO "RecipeAttributeValue" VALUES(288,'Summary','Wine Pairing','Off-dry, medium-bodied white wine (like a Rheingau Riesling Kabinett)','1');
INSERT INTO "RecipeAttributeValue" VALUES(289,'Summary','Wine Pairing','Spicy, medium-bodied red wine (like a red Cotes-du-Rhone)','1');
INSERT INTO "RecipeAttributeValue" VALUES(290,'Summary','Wine Pairing','Fruity, medium-bodied rose (like a Spanish Garnacha Rosado)','1');
INSERT INTO "RecipeAttributeValue" VALUES(291,'Summary','Wine Pairing','Fruity, medium-bodied red wine (like a Primitivo di Salento)','1');
INSERT INTO "RecipeAttributeValue" VALUES(292,'Summary','Wine Pairing','Herbal, medium-bodied red wine (like a St. Emilion)','1');
INSERT INTO "RecipeAttributeValue" VALUES(293,'Summary','Wine Pairing','Zesty, medium-bodied red wine (like a Barbera d’Alba)','1');
INSERT INTO "RecipeAttributeValue" VALUES(294,'Summary','Wine Pairing','Fruity, but dry, medium-bodied white wine (like a Vermentino di Sardegna)','1');
INSERT INTO "RecipeAttributeValue" VALUES(295,'Summary','Wine Pairing','Fruity, but dry, medium-bodied rose (like a Tuscan Rosato di Sangiovese)','1');
INSERT INTO "RecipeAttributeValue" VALUES(296,'Summary','Wine Pairing','Dry, sparkling red wine (like a Lambrusco Secco)','1');
INSERT INTO "RecipeAttributeValue" VALUES(297,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a New Zealand Sauvignon Blanc)','1');
INSERT INTO "RecipeAttributeValue" VALUES(298,'Summary','Wine Pairing','Zesty, medium-bodied red wine (like a Dolcetto d’Alba)','1');
INSERT INTO "RecipeAttributeValue" VALUES(299,'Summary','Wine Pairing','Zesty, medium-bodied white wine (like a Gavi)','1');
INSERT INTO "RecipeAttributeValue" VALUES(301,'Summary','Wine Pairing','Zesty, light-bodied white wine (like a Pinot Grigio)','1');
INSERT INTO "RecipeAttributeValue" VALUES(303,'Summary','Wine Pairing','Off-dry, medium-bodied white wine (like a Finger Lakes Riesling)','1');
INSERT INTO "RecipeAttributeValue" VALUES(304,'Summary','Wine Pairing','Zesty, medium-bodied red wine (like a Valpolicella Ripasso)','1');
INSERT INTO "RecipeAttributeValue" VALUES(305,'Summary','Wine Pairing','Spicy, medium-bodied red wine (like an Australian Shiraz)','1');
INSERT INTO "RecipeAttributeValue" VALUES(307,'Summary','Wine Pairing','Fruity, light-bodied white wine (like a Vinho Verde)','1');
INSERT INTO "RecipeAttributeValue" VALUES(308,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a Sancerre)','1');
INSERT INTO "RecipeAttributeValue" VALUES(309,'Summary','Wine Pairing','Off-dry, light-bodied white wine (like a WA State Riesling)','1');
INSERT INTO "RecipeAttributeValue" VALUES(310,'Summary','Wine Pairing','Fruity, but dry, sparkling wine (like a Cremant d’Alsace)','1');
INSERT INTO "RecipeAttributeValue" VALUES(311,'Summary','Wine Pairing','Fruity, sparkling rose (like a Spanish Cava Rosado)','1');
INSERT INTO "RecipeAttributeValue" VALUES(312,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a Pouilly-Fume)','1');
INSERT INTO "RecipeAttributeValue" VALUES(313,'Summary','Wine Pairing','Toasty, medium-bodied Chardonnay (like an oak-aged Central Coast Chardonnay)','1');
INSERT INTO "RecipeAttributeValue" VALUES(314,'Summary','Wine Pairing','Fruity, medium-bodied Chardonnay (like an unoaked New Zealand Chardonnay)','1');
INSERT INTO "RecipeAttributeValue" VALUES(315,'Summary','Wine Pairing','Off-dry, medium-bodied white wine (like a Demi-sec Vouvray)','1');
INSERT INTO "RecipeAttributeValue" VALUES(316,'Summary','Wine Pairing','Fruity, but dry, medium-bodied rose (like an Argentinean Malbec Rose)','1');
INSERT INTO "RecipeAttributeValue" VALUES(317,'Summary','Wine Pairing','Unoaked, medium-bodied Chardonnay (like a Petit Chabis)','1');
INSERT INTO "RecipeAttributeValue" VALUES(318,'Summary','Wine Pairing','Fruity, but dry, white wine (like an Albarino)','1');
INSERT INTO "RecipeAttributeValue" VALUES(319,'Summary','Wine Pairing','Toasty, medium-bodied Chardonnay (like a Meursault)','1');
INSERT INTO "RecipeAttributeValue" VALUES(320,'Summary','Wine Pairing','Fruity, but dry sparkling wine (like a California Brut)','1');
INSERT INTO "RecipeAttributeValue" VALUES(321,'Summary','Wine Pairing','Off-dry, light-bodied white wine (like a Mosel Riesling QbA)','1');
INSERT INTO "RecipeAttributeValue" VALUES(322,'Summary','Wine Pairing','Earthy, medium-bodied red wine (like an Oregon Pinot Noir)','1');
INSERT INTO "RecipeAttributeValue" VALUES(323,'Summary','Wine Pairing','Fruity, but dry, light-bodied red wine (like a Beaujolais)','1');
INSERT INTO "RecipeAttributeValue" VALUES(324,'Summary','Wine Pairing','Fruity, light-bodied white wine (like a Pinot Grigio)','1');
INSERT INTO "RecipeAttributeValue" VALUES(325,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a South African Sauvignon Blanc)','1');
INSERT INTO "RecipeAttributeValue" VALUES(326,'Summary','Wine Pairing','Off-dry sparkling wine (like an Extra-dry German Sekt)','1');
INSERT INTO "RecipeAttributeValue" VALUES(327,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a Chilean Sauvignon Blanc)','1');
INSERT INTO "RecipeAttributeValue" VALUES(328,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a WA State Sauvignon Blanc)','1');
INSERT INTO "RecipeAttributeValue" VALUES(329,'Summary','Wine Pairing','Dry, medium-bodied white wine (like an Oregon Pinot Gris)','1');
INSERT INTO "RecipeAttributeValue" VALUES(330,'Summary','Wine Pairing','Fruity, but dry, light-bodied white wine (like Vinho Verde)','1');
INSERT INTO "RecipeAttributeValue" VALUES(332,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a New Zealand Sauvignon Blanc)','1');
INSERT INTO "RecipeAttributeValue" VALUES(333,'Summary','Wine Pairing','Fruity, but dry, medium-bodied rose (like a Rose de Provence)','1');
INSERT INTO "RecipeAttributeValue" VALUES(334,'Summary','Wine Pairing','Herbal, medium-bodied white wine (like a Sauvignon de Touraine)','1');
CREATE TABLE IF NOT EXISTS RecipeIngredient (RecipeID, Name, DisplayOrder, IsMainIngredient, Quantity, GroupHeading, ProductID);
INSERT INTO "RecipeIngredient" VALUES(275.0,'thick slices Fairway Challah Bread from middle of loaf','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'grated Cave Aged Gruyere cheese (about 3/4 cup)','','[object Object]','3 oz ','',239.0);
INSERT INTO "RecipeIngredient" VALUES(275.0,'small red onion, very thinly sliced','','','1/4','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'Fairway Organic Eggs, lightly beaten','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'whole milk','','','3/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'Fairway Kosher Salt','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'Fairway Freshly Ground Black Peppercorns','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(275.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(275.0,'green d’Anjou pear, quartered and thinly sliced','','[object Object]','1','',238.0);
INSERT INTO "RecipeIngredient" VALUES(275.0,'Additional eggs for serving (optional)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/2 tsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(276.0,'minced red onion','','','tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'canned tomatoes','','','14.5 oz','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'prepared Mina Harissa Red Pepper Sauce ','','[object Object]','2 tbsp','',271.0);
INSERT INTO "RecipeIngredient" VALUES(276.0,'Fairway Organic Eggs','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'Malden Sea Salt and Fairway Freshly Ground Black Peppercorns, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'fresh chopped parsley or chives','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(276.0,'Tabasco (optional)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'Fairway Organic Eggs','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'heavy cream','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'grated Cave Aged Gruyere cheese','','[object Object]','1 cup','',239.0);
INSERT INTO "RecipeIngredient" VALUES(277.0,'Fairway Kosher Salt and Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'unsalted butter','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'small onion, diced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'small fully cooked red bliss potatoes, diced','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'diced smoked ham or Canadian bacon','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'grated Parmigiano Reggiano, for finishing on top','','[object Object]','1 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(277.0,'sour cream','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(277.0,'bunch chives, chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'all-purpose flour','','','2 cups','Crust: (makes 1 11-inch crust, or buy premade)','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'baking powder','','','1 1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'baking soda','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'Fairway Kosher Salt','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'unsalted butter, cut into 1/2-inch cubes','','','6 tbsp (3/4 stick)','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'buttermilk','','','1 cup','Filling:','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'large ripe tomatoes, cored and cut into 1/4-inch slices','','','2 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'coarsely grated Cabot Cloth Bound Cheddar or similar (8–9 ounces)','','[object Object]','2 1/2 cups','',235.0);
INSERT INTO "RecipeIngredient" VALUES(278.0,'finely grated Parmigiano Reggiano (1/2 ounce)','','[object Object]','1/4 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(278.0,'scallion, trimmed, chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'mayonnaise','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'fresh dill, chopped','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'apple cider vinegar','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'sugar','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'Fairway Kosher Salt','','','3/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'Fairway Freshly Ground Black Pepper','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(278.0,'cornmeal','','','1 1/2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'all-purpose flour, with a bit more for rolling','','','2 1/2 cups','Crust: (makes 2 9-inch crusts)','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'Fairway Sea Salt','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'sugar','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'cold unsalted butter, cut into pieces','','','3/4 cup (1 1/2 sticks)','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'shredded Cabot Cloth Bound Cheddar (6 ounces) or other sharp cheddar','','[object Object]','1 1/2 cups','',235.0);
INSERT INTO "RecipeIngredient" VALUES(279.0,'ice water','','','1/4 to 1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'all-purpose flour, with a bit more for rolling','','','4 tbsp','Pie:','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'fresh lemon juice','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'Granny Smith apples','','','4 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'sugar','','','3/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'Fairway Ground Cinnamon','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(279.0,'Fairway Sea Salt','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'thick slices Fairway Challah Bread from middle of loaf','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'Fairway Graham Cracker Crumbs','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'baking soda','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'salt','','','1 pinch','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'egg','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'vanilla extract','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(280.0,'Fairway Hazelnut Spread ','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(281.0,'Fairway Golden Honey','','[object Object]','1 cup','',250.0);
INSERT INTO "RecipeIngredient" VALUES(281.0,'whole star anise','','','5 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(281.0,'fresh lemon juice','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(281.0,'Pinch of Fairway Sea Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(281.0,'medium firm, ripe pears (about 2 1/2 lbs), peeled, quartered, cored','','[object Object]','6','',238.0);
INSERT INTO "RecipeIngredient" VALUES(281.0,'crème fraîche or Greek yogurt','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'shallot, minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(282.0,'heavy cream','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'cloves garlic, minced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'fresh thyme','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'anchovies, minced','','','3','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'Fairway Dijon Mustard','','[object Object]','1 tbsp','',244.0);
INSERT INTO "RecipeIngredient" VALUES(282.0,'Chopped flat-leaf parsley','','','','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'La Trinquelinette Blackberry Jam','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'Worcestershire sauce','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'limejuice','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'single bone-in Fairway American lamb rib chops','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(282.0,'Fairway Sea Salt and Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'leg of Fairway American lamb, boned and butterflied by a Fairway butcher (will yield about 5 lbs of meat)','','','6 to 7 lb','Lamb:','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Fairway Extra Virgin Olive Oil, plus extra for vegetables','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(283.0,'lemons, juiced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Zest of 1 lemon','','','','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Fairway dried thyme','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'boiled potatoes per person, halved','','','2 to 3','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'bunches asparagus tips ','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'fennel bulb, sliced','','[object Object]','1','',264.0);
INSERT INTO "RecipeIngredient" VALUES(283.0,'bunch of carrots, quartered','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Mint and yogurt sauce','','','','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'sprigs of mint','','','3','Mint and Yogurt Sauce:','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'sprigs of Italian parsley','','','3','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Greek yogurt','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(283.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(284.0,'Fairway American Lamb, cut into 1/4 inch cubes','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'Fairway Sea Salt and Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'flour','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'shallots, finely diced','','','3','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'clove garlic, peeled and crushed','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'leeks, medium diced','','[object Object]','3','',270.0);
INSERT INTO "RecipeIngredient" VALUES(284.0,'sprig thyme','','','','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'crimini mushrooms, sliced','','','1/4 lb','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'chanterelle mushrooms','','[object Object]','1/4 lb','',237.0);
INSERT INTO "RecipeIngredient" VALUES(284.0,'white wine','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'veal or chicken stock','','','3 cups','','');
INSERT INTO "RecipeIngredient" VALUES(284.0,'Fairway Maccheroni Artisanal Pasta','','[object Object]','2/3 lb','',255.0);
INSERT INTO "RecipeIngredient" VALUES(286.0,'filet mignon steaks, 2-inch thick each','','','2','Tournedos of Beef:','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'Fairway Mediterranean Sea Salt and Tellicherry Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'of clarified butter (recipe below)','','','4 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'whole head of garlic, cloves separated and smashed, skin left on','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'flat leaf parsley, coarsely chopped for garnish','','','','','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'sprigs fresh thyme','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(286.0,'yields 6 tbsp of clarified butter','','','8 tbsp (I stick)','Clarified Butter:','');
INSERT INTO "RecipeIngredient" VALUES(287.0,'grapeseed oil','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(287.0,'red onions','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(287.0,'large green d’Anjou pears, cored and quartered ','','[object Object]','2','',238.0);
INSERT INTO "RecipeIngredient" VALUES(287.0,'Few sprigs rosemary, leaves roughly chopped','','','','','');
INSERT INTO "RecipeIngredient" VALUES(287.0,'pork steaks, about 6 oz each, trimmed of excess fat','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(287.0,'Rogue River Smokey Blue cheese, cubed','','[object Object]','1/4 oz','',274.0);
INSERT INTO "RecipeIngredient" VALUES(288.0,'boneless pork loin (2-2 1/2 lbs), butterflied','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'dried black Mission figs, halved','','','1 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'dried pitted prunes, halved','','','1 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'Fairway Dried Apricots','','','1 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'Fairway Red Wine Vinegar','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'Fairway Golden Honey','','[object Object]','2 tablespoons','',250.0);
INSERT INTO "RecipeIngredient" VALUES(288.0,'leaves rosemary, chopped','','','10','','');
INSERT INTO "RecipeIngredient" VALUES(288.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1-2 tablespoons','',257.0);
INSERT INTO "RecipeIngredient" VALUES(289.0,'French green dried lentils ','','[object Object]','1 cup','',246.0);
INSERT INTO "RecipeIngredient" VALUES(289.0,'cold water','','','4 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Sea Salt','','','1 1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'fennel, stalks discarded, keep fronds','','[object Object]','1 medium (3/4-lb)','',264.0);
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Extra Virgin Olive Oil','','[object Object]','3 1/2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(289.0,'medium onion, finely chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'carrot, cut into 1/4-inch dice','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Sweet Italian Sausage or French garlic sausage','','','1 1/4 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'chopped fresh flat-leaf parsley','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'minced garlic','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Bay Leaf','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Freshly Ground Black Pepper','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Red Wine vinegar, or to taste','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(289.0,'Fairway Dijon Mustard, on the side for dipping','','[object Object]','','',244.0);
INSERT INTO "RecipeIngredient" VALUES(290.0,'cornbread, cut into small cubes','','','4 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'ribs celery, cleaned and chopped into small dice','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'medium Spanish onions, peeled and chopped into small dice','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'Fairway Hot Pork Sausage or Fairway Sweet Italian Sausage','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'cremini or button mushrooms, thinly sliced','','','2 lb','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'sprigs thyme','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'pecans, toasted (recipe below)','','','4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(290.0,'butter for onions (substitute with olive oil, if desired)','','','4 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'melted butter for cornbread (substitute with olive oil, if desired)','','','8 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'Fairway Sea Salt, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(290.0,'Fairway Tellicherry Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'grated Parmigiano Reggiano cheese and Parmesan shavings','','[object Object]','4 tbsp','',273.0);
INSERT INTO "RecipeIngredient" VALUES(291.0,'butter','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'rib-eye steak','','','2 12-ounce','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(291.0,'Fairway Balsamic Vinegar of Modena','','[object Object]','1/4 cup','',240.0);
INSERT INTO "RecipeIngredient" VALUES(291.0,'finely chopped shallots','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'(packed) dark brown sugar','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'(lightly packed) arugula','','','4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(291.0,'large lemon wedges','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'piece flank steak, approximately 2 to 2½ lbs','','','1','Flank Steak with Herbs:','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/3 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(292.0,'clove garlic, skin removed and sliced paper thin','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'sprig rosemary','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'arugula','','','1/2 lb','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'red onion slices, sliced paper thin','','','3-4','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'Fairway Sea Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'Rosemary flavored olive oil to dress the arugula (recipe below)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'fresh rosemary, chopped','','','1 1/2 tbsp','Rosemary-Flavored Olive Oil:','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'fresh rosemary, chopped','','','1 1/2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'clove garlic, skin removed and sliced paper thin','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(292.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(293.0,'Fairway Foglie d’Ulivo Artisanal Pasta ','','[object Object]','3/4 lb','',245.0);
INSERT INTO "RecipeIngredient" VALUES(293.0,'spinach, chopped coarsely','','','9 oz','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'scallion or half onion, chopped finely','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'medium red bell peppers, seeded and diced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'Fairway Antibiotic-Free Chicken, diced','','','7 oz','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'bunch of basil, chopped','','','','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'white wine','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(293.0,'Fairway Extra Virgin Olive Oil','','[object Object]','','',257.0);
INSERT INTO "RecipeIngredient" VALUES(293.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'medium zucchini ','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'butter','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(294.0,'medium shallot, finely chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'large celery, finely chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'clove garlic, minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'Fairway Girelle Artisanal Pasta','','[object Object]','1/2 lb','',249.0);
INSERT INTO "RecipeIngredient" VALUES(294.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'freshly squeezed lemon juice','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'Italian Dolce Gorgonzola','','[object Object]','4 ounces','',268.0);
INSERT INTO "RecipeIngredient" VALUES(294.0,'parsley, minced','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'large sprigs basil, julienned','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(294.0,'Grated Parmigiano Reggiano for topping if desired','','[object Object]','','',273.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'Fairway Maccheroni Artisanal Pasta','','[object Object]','2/3 lb','',255.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'medium-sized Italian eggplant','','[object Object]','3','',269.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'plum tomatoes, blanched, peeled, seeded, and chopped','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(295.0,'A small onion, thinly sliced','','','','','');
INSERT INTO "RecipeIngredient" VALUES(295.0,'Fairway Homemade Mozzarella, diced','','[object Object]','1/4 lb','',251.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'basil leaves, shredded','','','10','','');
INSERT INTO "RecipeIngredient" VALUES(295.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/3 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'freshly grated Parmigiano Reggiano ','','[object Object]','1/2 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(295.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'Fairway Sweet Italian Sausages (about 1 lb), casing removed and crumbled','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'Fairway Orecchiette Artisanal Pasta','','[object Object]','1 lb','',256.0);
INSERT INTO "RecipeIngredient" VALUES(296.0,'broccoli rabe, washed, trimmed, and cut into 3-inch pieces','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'cloves garlic, coarsely chopped','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'Fairway Crushed Red Pepper Flakes','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/2 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(296.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(296.0,'Freshly grated Parmigiano Reggiano cheese, for serving','','[object Object]','','',273.0);
INSERT INTO "RecipeIngredient" VALUES(297.0,'package Fairway Orecchiette Artisanal Pasta','','[object Object]','1 (1-lb)','',256.0);
INSERT INTO "RecipeIngredient" VALUES(297.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(297.0,'Fairway Pancetta, cut 1/4-inch thick, then cubed into small pieces','','','1/2 lb','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'clove garlic, finely minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'butter','','','4 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'small white onion, finely diced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'chicken stock or water','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'light cream','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'frozen peas, thawed','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(297.0,'grated Parmigiano Reggiano Cheese','','[object Object]','1/4 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Riccioli Artisanal Pasta','','[object Object]','1/2 lb','',260.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Kosher salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Extra Virgin Olive Oil','','[object Object]','','',257.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'ripe tomatoes, medium-diced','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Oil-Cured Black Provençal Olives, pitted and diced','','[object Object]','3/4 cup','',272.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Homemade Fresh Mozzarella, medium-diced','','[object Object]','1 lb','',251.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Sun-Dried Tomatoes, drained and chopped','','[object Object]','6','',261.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Sun-Dried Tomatoes, drained','','[object Object]','5','Sauce:',261.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Red Wine Vinegar','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Gata-Hurdes Olive Oil','','[object Object]','6 tbsp','',248.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'garlic clove, diced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'capers, drained','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Kosher Salt','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'Fairway Freshly Ground Black Pepper','','','3/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(298.0,'freshly grated Parmigiano Reggiano','','[object Object]','1 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(298.0,'packed basil leaves, julienned','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Whole Wheat Strozzapreti Artisanal Pasta ','','[object Object]','1 lb','',263.0);
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Antibiotic-Free chicken breasts, grilled and cut into strips or cubes 2 pounds','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Pesto','','[object Object]','6 oz','',258.0);
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Extra Virgin Olive Oil','','[object Object]','6 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Cabeço Das Nogueiras Olive Oil for drizzling','','[object Object]','','',243.0);
INSERT INTO "RecipeIngredient" VALUES(299.0,'Parmigiano Reggiano','','[object Object]','2 oz','',273.0);
INSERT INTO "RecipeIngredient" VALUES(299.0,'Fairway Sea Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(301.0,'Fairway Whole Wheat Strozzapreti Artisanal Pasta','','[object Object]','1 lb','',249.0);
INSERT INTO "RecipeIngredient" VALUES(301.0,'Fairway Walnuts','','[object Object]','3/4 cup','',262.0);
INSERT INTO "RecipeIngredient" VALUES(301.0,'clove garlic, peeled, germ removed if garlic sprouted','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(301.0,'Fairway Sea Salt ','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(301.0,'Fairway Extra Virgin Olive Oil ','','[object Object]','2/3 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(301.0,'marjoram, chopped','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(301.0,'parsley, chopped','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(301.0,'Parmigiano Reggiano, grated','','[object Object]','1/2 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(301.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Crushed Red Pepper Flakes ','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Sea Salt ','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Freshly Ground Black Pepper','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'pizza dough','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Homemade Mozzarella, shredded','','[object Object]','1 cup','',251.0);
INSERT INTO "RecipeIngredient" VALUES(302.0,'crumbled Italian Dolce Gorgonzola','','[object Object]','1/2 cup','',268.0);
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Walnuts','','[object Object]','1/2 cup','',262.0);
INSERT INTO "RecipeIngredient" VALUES(302.0,'arugula','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(302.0,'Fairway Gata-Hurdes Olive Oil for drizzling','','[object Object]','','',248.0);
INSERT INTO "RecipeIngredient" VALUES(303.0,'Fairway Antibiotic-Free Chicken, small cutlets (1 1/2 lbs total)','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(303.0,'ground coriander','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(303.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(303.0,'Fairway Cabeço Das Nogueiras Olive Oil ','','[object Object]','4 tbsp','',243.0);
INSERT INTO "RecipeIngredient" VALUES(303.0,'fennel bulb, thinly sliced','','[object Object]','1','',264.0);
INSERT INTO "RecipeIngredient" VALUES(303.0,'fresh flat-leaf parsley leaves','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(303.0,'Fairway White Wine Vinegar','','[object Object]','1 tbsp','',241.0);
INSERT INTO "RecipeIngredient" VALUES(303.0,'blood oranges, segmented','','[object Object]','2','',234.0);
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(304.0,'medium onion, chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'garlic cloves, minced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'bay leaves','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Gaeta olives, pitted','','[object Object]','1/2 cup','',266.0);
INSERT INTO "RecipeIngredient" VALUES(304.0,'bunch fresh basil leaves','','','1/2','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'cans whole peeled tomatoes, drained and hand-crushed','','','2 (28-ounce)','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Pinch sugar','','','','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Antibiotic-Free Chicken skinless, boneless breasts (about 1 1/2 lbs)','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'all-purpose flour','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Organic Eggs, lightly beaten','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'water','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'dried bread crumbs','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Homemade Mozzarella','','[object Object]','1 (8-ounce)','',251.0);
INSERT INTO "RecipeIngredient" VALUES(304.0,'Freshly grated Parmigiano Reggiano','','[object Object]','','',273.0);
INSERT INTO "RecipeIngredient" VALUES(304.0,'Fairway Maccheroni Artisanal Pasta','','[object Object]','1 lb','',255.0);
INSERT INTO "RecipeIngredient" VALUES(305.0,'corn tortillas, 6 inches each','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'canola oil','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'Fairway Antibiotic-Free Chicken, shredded, cooked, skin removed','','','12 oz','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'small onion, finely chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'shredded Monterey Jack cheese (4 loosely packed cups)','','','12 oz','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'clove garlic, minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'pickled jalapenos, minced (optional)','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'jalapeno pepper, finely chopped (remove seeds for milder flavor if desired)','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'whole peeled tomatoes, pureed','','','1 can (28 ounces)','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'fresh lime juice','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'chili powder','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'Fresh cilantro leaves, for serving (optional)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'Sour cream, for serving (optional)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(305.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'filet mignon steak cut into 1-ounce slices','','','4 ounces','Carpaccio and artichoke salad:','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(307.0,'lemon','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'Fairway Sea Salt and Freshly Ground Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'baby artichoke hearts, quartered','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'minced garlic','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'Fairway Extra Virgin Olive Oil','','[object Object]','3 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(307.0,'arugula','','','4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'Cara Cucina Garlic & Artichoke Cream (to taste)','','[object Object]','1 tsp','',236.0);
INSERT INTO "RecipeIngredient" VALUES(307.0,'Fairway Sea Salt and Freshly Ground Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'piece of Parmigiano Reggiano cheese','','[object Object]','3 ounces','Garnish:',273.0);
INSERT INTO "RecipeIngredient" VALUES(307.0,'chopped parsley','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(307.0,'Fairway Freshly Ground Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'anchovy fillets packed in oil','','','6','Salad and Dressing:','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'small garlic clove','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'Pinch Fairway Kosher Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'large egg yolks','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'fresh lemon juice','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'Fairway Dijon Mustard','','[object Object]','3/4 tsp','',244.0);
INSERT INTO "RecipeIngredient" VALUES(308.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(308.0,'vegetable oil','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'finely grated Parmigiano Reggiano','','[object Object]','3 tbsp','',273.0);
INSERT INTO "RecipeIngredient" VALUES(308.0,'Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'torn 1-inch pieces Fairway Baguette ','','','3 cups','Croutons:','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'olive oil','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'Fairway Extra Virgin Olive Oil','','[object Object]','','',257.0);
INSERT INTO "RecipeIngredient" VALUES(308.0,'Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'romaine hearts','','','3','Salad:','');
INSERT INTO "RecipeIngredient" VALUES(308.0,'Thinly shaved Parmigiano Reggiano','','[object Object]','','',273.0);
INSERT INTO "RecipeIngredient" VALUES(309.0,'beets, trimmed and halved (or use Rocal vacuum-sealed pre-roasted beets)','','','1 1/2 to 1 3/4 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'olive oil','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'coarse salt','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'black pepper','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'bunch arugula, well washed and torn apart','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','Walnut Gorgonzola Dressing:',257.0);
INSERT INTO "RecipeIngredient" VALUES(309.0,'chopped Fairway Walnuts','','[object Object]','1/4 cup','',262.0);
INSERT INTO "RecipeIngredient" VALUES(309.0,'red onion, thinly sliced','','','1/4','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'chopped fresh basil leaves','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'Fairway Balsamic Vinegar of Modena ','','[object Object]','1 tbsp','',240.0);
INSERT INTO "RecipeIngredient" VALUES(309.0,'coarse salt','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(309.0,'Italian Dolce Gorgonzola','','[object Object]','3 ounces','',268.0);
INSERT INTO "RecipeIngredient" VALUES(309.0,'light or heavy cream','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'large head frisée, torn into pieces','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'pancetta or thick-cut bacon, cut into 1/4-inch thick ribbons','','','4 slices','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'shallot, minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'French green beans','','','1/4 lb','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'Fairway Red Wine Vinegar','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'Fairway Organic Eggs','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(310.0,'Fairway Sea Salt and Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'fresh lemon juice ','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'minced shallot ','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'Fairway Extra Virgin Olive Oil ','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(311.0,'Fairway Sea Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'Fairway American lamb shoulder chops (3/4-inch thick; about 1 1/2 lbs total) ','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'baby spinach, washed ','','','5 ounces','','');
INSERT INTO "RecipeIngredient" VALUES(311.0,'ripe green d’Anjou pears thinly sliced lengthwise','','[object Object]','2','',238.0);
INSERT INTO "RecipeIngredient" VALUES(312.0,'fillets of Fairway''s Fresh Tilapia','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'can of cannellini beans','','','1 15.5 oz','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'container Fairway’s Marinated Artichokes','','','1 12 oz','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'grape tomatoes, sliced in half','','','1/4 pint','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'mix of favorite olives, such as Gaeta olives or Oil-Cured Black Provençal olives','','[object Object],[object Object]','2 oz','',266.0);
INSERT INTO "RecipeIngredient" VALUES(312.0,'sprigs of fresh thyme','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'fresh lemon','','','1/2','','');
INSERT INTO "RecipeIngredient" VALUES(312.0,'Fairway Extra Virgin Olive Oil','','[object Object]','','',257.0);
INSERT INTO "RecipeIngredient" VALUES(312.0,'Fairway Sea Salt and Tellicherry Pepper to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'unsalted butter','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'Fairway Extra Virgin Olive Oil, divided','','[object Object]','4 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(313.0,'fresh chanterelle mushrooms, cleaned, cut into 1/3-inch-thick slices','','[object Object]','1 lb','',237.0);
INSERT INTO "RecipeIngredient" VALUES(313.0,'large garlic cloves, finely chopped','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'chopped fresh Italian parsley','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'dry white wine','','','1/3 cup','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'grated lemon peel','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'fresh lemon juice','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'large black cod fillets with skin (about 2 lbs)','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'dry unseasoned breadcrumbs','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(313.0,'freshly grated Parmigiano Reggiano','','[object Object]','2 tbsp','',273.0);
INSERT INTO "RecipeIngredient" VALUES(314.0,'Fairway Gata-Hurdes Olive Oil','','[object Object]','2 tbsp','Lentils:',248.0);
INSERT INTO "RecipeIngredient" VALUES(314.0,'medium carrots, peeled, shredded on a box grater','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'medium celery root, peeled, shredded on box grater','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'medium onion, shredded on a box grater','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'Fairway Kosher Salt plus more for seasoning','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'French green lentils','','[object Object]','1 1/4 cups','',246.0);
INSERT INTO "RecipeIngredient" VALUES(314.0,'fillets wild sockeye salmon with skin','','','4 6 oz','Salmon:','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'Fairway Kosher Salt','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(314.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(315.0,'chopped Fairway Sun-Dried Tomatoes','','[object Object]','1/4 cup','',261.0);
INSERT INTO "RecipeIngredient" VALUES(315.0,'chopped fresh basil leaves','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'chopped pitted Oil-Cured Black Provençal olives (about 10 olives), pitted','','[object Object]','2 tbsp','',272.0);
INSERT INTO "RecipeIngredient" VALUES(315.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(315.0,'medium dry sea scallops','','','12','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'Fairway Sea Salt','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'Fairway Freshly Ground Black Pepper','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'prosciutto','','','12 slices','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'arugula','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(315.0,'Fairway Balsamic Vinegar of Modena','','[object Object]','1 1/2 tbsp','',240.0);
INSERT INTO "RecipeIngredient" VALUES(316.0,'salmon fillets','','','2 half lb','','');
INSERT INTO "RecipeIngredient" VALUES(316.0,'Fairway Sea Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(316.0,'Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(316.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(316.0,'Fairway Puttanesca Sauce','','[object Object]','1 pint','',259.0);
INSERT INTO "RecipeIngredient" VALUES(316.0,'lemon','','','1/2','','');
INSERT INTO "RecipeIngredient" VALUES(316.0,'parsley, chopped','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'dry sea scallops','','','32','Scallops with Herb Sauce:','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'shallot, chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'rosemary leaves, chopped','','','6','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'bunch chervil leaves, chopped','','','1/2','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'sprig tarragon','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'sprigs flat parsley leaves, chopped','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'clarified butter (recipe below)','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'flour','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'cold butter','','','4 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'Fairway Sea Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'Fairway Tellicherry Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(317.0,'(I stick) yields 6 tbsp of clarified butter','','','8 tbsp','Clarified Butter:','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'big dry sea scallops','','','16','Scallops with Red Wine Reduction:','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Extra Virgin Olive Oil','','[object Object]','3 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Italian Saba Vinegar ','','[object Object]','½ cup','',253.0);
INSERT INTO "RecipeIngredient" VALUES(318.0,'of whatever wine you''re drinking','','','1 glug','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'garlic cloves, thinly sliced lengthwise','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'baby spinach (about 10 cups)','','','7 ounces','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'baby arugula (about 10 cups)','','','7 ounces','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Cabeço Das Nogueiras Olive Oil, for drizzling','','[object Object]','','',243.0);
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Sea Salt and Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Extra Virgin Olive Oil ','','[object Object]','1 tbsp','Wilted Spinach with Garlic:',257.0);
INSERT INTO "RecipeIngredient" VALUES(318.0,'clove garlic, finely chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'spinach, washed and stemmed','','','1 pound','','');
INSERT INTO "RecipeIngredient" VALUES(318.0,'Fairway Sea Salt Freshly Ground Black Pepper, to taste','','','','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'butter, divided','','','9 1/2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'fresh wild mushrooms (such as porcini, hen of the woods and chanterelle); large mushrooms sliced, small mushrooms halved or quartered','','[object Object]','1 1/2 lbs','',237.0);
INSERT INTO "RecipeIngredient" VALUES(319.0,'low-sodium chicken broth','','','6-7 cups','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(319.0,'finely chopped leeks (white and pale green parts only)','','[object Object]','3/4 cup','',270.0);
INSERT INTO "RecipeIngredient" VALUES(319.0,'Arborio (Italian short-grain) rice (8 to 9 ounces)','','','1 1/4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'dry white wine','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'dry white vermouth','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(319.0,'grated Parmigiano Reggiano, plus additional for serving (optional)','','[object Object]','1/4 cup','',273.0);
INSERT INTO "RecipeIngredient" VALUES(320.0,'carrots, peeled, cut into 2-inch pieces, and halved cut lengthwise if thick','','','3 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(320.0,'lemon, very thinly sliced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'fresh lemon juice','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'pitted Gaeta olives, halved','','[object Object]','1/2 cup','',266.0);
INSERT INTO "RecipeIngredient" VALUES(320.0,'Fairway Crushed Red Pepper Flakes','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'chopped fresh flat-leaf parsley','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(320.0,'Fairway Gata Hurdes Olive Oil for drizzling','','[object Object]','','',248.0);
INSERT INTO "RecipeIngredient" VALUES(321.0,'unsalted butter, melted and cooled, plus 1 tbsp, softened, for brushing muffin cups','','','5 tbsp','Muffins:','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'cornmeal (preferably stone-ground)','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'salt','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'baking powder','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'baking soda','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'corn, thawed if frozen','','','3/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'well-shaken buttermilk (not powdered)','','','1 1/4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'large egg','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'grated sharp Cheddar (5 1/4 ounces), divided','','','1 3/4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'(Equipment: a muffin pan with 12 (1/2-cup) muffin cups)','','','','','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'unsalted butter, softened','','','1 stick','Jalapeno Butter:','');
INSERT INTO "RecipeIngredient" VALUES(321.0,'fresh jalapeno, finely chopped, including seeds','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'olive oil','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'finely chopped leeks (white and pale green parts only; about 3 large)','','[object Object]','4 cups','',270.0);
INSERT INTO "RecipeIngredient" VALUES(322.0,'1/2-inch cubes assorted mushrooms (such as chantarelle, cremini, porcini, morel and stemmed shiitake; about 10 cups)','','[object Object]','1 1/2 lbs','',237.0);
INSERT INTO "RecipeIngredient" VALUES(322.0,'garlic cloves, minced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'Yukon Gold potatoes, peeled, cut into 1/8-inch-thick slices','','','3 lbs','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'heavy whipping cream','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'(or more) salt','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'(or more) freshly ground black pepper','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(322.0,'coarsely grated Gruyere cheese','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(323.0,'lemons','','','3','','');
INSERT INTO "RecipeIngredient" VALUES(323.0,'baby artichokes','','[object Object]','12','',233.0);
INSERT INTO "RecipeIngredient" VALUES(323.0,'purple potatoes, (1 1/2 lbs), scrubbed and sliced 1/4-inch thick','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(323.0,'Fingerling potatoes, (1 3/4 lbs), scrubbed and halved lengthwise','','[object Object]','','',265.0);
INSERT INTO "RecipeIngredient" VALUES(323.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(323.0,'chopped fresh rosemary, plus sprigs for garnish','','','4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(323.0,'Fairway Sea Salt','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(323.0,'Fairway Freshly Ground Black Pepper','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Extra Virgin Olive Oil','','[object Object]','3 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(324.0,'medium bulb fennel, trimmed, cored, and cut into 1/2-inch dice (1-1/2 cups)','','[object Object]','1','',264.0);
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Kosher Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'medium clove garlic, minced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Ground Cumin','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Chipotle Chili Powder','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Ground Cinnamon','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Roasted Red Peppers, cut into 1/2-inch dice (1-1/4 cups)','','[object Object]','2','',254.0);
INSERT INTO "RecipeIngredient" VALUES(324.0,'low-sodium chicken broth','','','1-1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(324.0,'Fairway Israeli Couscous','','[object Object]','1-1/2 cups','',252.0);
INSERT INTO "RecipeIngredient" VALUES(324.0,'coarsely chopped fresh cilantro','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(325.0,'medium onion, chopped','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'medium garlic cloves, minced','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'large carrots, scrubbed and cut into 1-inch pieces','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'medium red bell pepper, cored and cut into thin strips','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'vegetable stock or canned broth','','','2 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'turmeric','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'small Fairway Cinnamon Stick','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'Fairway Curry Powder','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'Fairway Ground Cumin','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'large zucchini, cut into 1-inch pieces','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'medium Italian eggplant, cut into 1-inch pieces','','[object Object]','1','',269.0);
INSERT INTO "RecipeIngredient" VALUES(325.0,'golden raisins','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'chopped fresh cilantro','','','3 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(325.0,'Fairway Israeli Couscous','','[object Object]','1 cup','',252.0);
INSERT INTO "RecipeIngredient" VALUES(325.0,'Mina Harissa Red Pepper Sauce (optional)','','[object Object]','','',271.0);
INSERT INTO "RecipeIngredient" VALUES(326.0,'bacon, chopped','','','8 oz','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/4 cu','',257.0);
INSERT INTO "RecipeIngredient" VALUES(326.0,'large onions (6 cups chopped) ','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'unsalted butter','','','4 tbsp (1/2 stick)','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'flour','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'Fairway Kosher Salt','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'Fairway Freshly Ground Black Pepper','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'ground turmeric','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'low-sodium chicken stock','','','12 cups','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'medium-diced white boiling potatoes, unpeeled','','','6 cups','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'corn kernels, fresh (10 ears) or frozen (3 lbs)','','','10 cups','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'half-and-half','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(326.0,'sharp Cabot Cloth Bound Cheddar, grated','','[object Object]','1/2 lb','',235.0);
INSERT INTO "RecipeIngredient" VALUES(327.0,'collard greens, center ribs and stems removed','','','1 bunch','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'kale, center ribs and stems removed','','','1 bunch','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'olive oil, divided, plus more for serving','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'medium carrots, peeled, finely chopped','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'celery stalks, finely chopped','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'leek, white and pale-green parts only, chopped','','[object Object]','1','',270.0);
INSERT INTO "RecipeIngredient" VALUES(327.0,'garlic cloves, chopped','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Fairway Crushed Red Pepper Flakes','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'can whole peeled tomatoes, drained','','','1 28 oz','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'low-sodium vegetable broth','','','8 cups','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'cannellini beans (or 3 15-ounce cans), rinsed and drained','','','5 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'sprigs thyme','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'sprig marjoram or oregano','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Fairway Bay Leaf','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Fairway Sourdough bread cubes, crusts removed ','','','4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Fairway Kosher Salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(327.0,'Shaved Parmigiano Reggiano (for serving)','','[object Object]','','',273.0);
INSERT INTO "RecipeIngredient" VALUES(328.0,'Rind of 1/2 lemon, pith removed','','','','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'unsalted butter','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'small onion, finely chopped (about 3/4 cup)','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'medium shallot, minced (about 1/4 cup)','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'Kosher salt','','','','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'fresh or frozen sweet peas','','','10 ounces (about 1 1/2 cups)','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'homemade or store-bought low-sodium chicken or vegetable stock','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'roughly chopped fresh mint ','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'grated Parmesan or Grana Padano','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(328.0,'Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'large dried white beans','','','1 cup','White Bean Soup:','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Fairway Extra Virgin Olive Oil','','[object Object]','2 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(329.0,'cloves garlic, minced','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Fairway Bay Leaf','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'dried thyme','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'vegetable stock, preferably homemade','','','6 cups','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'large leek, sliced','','[object Object]','1','',270.0);
INSERT INTO "RecipeIngredient" VALUES(329.0,'medium russet potato, peeled & diced','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'chopped fresh rosemary','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Fairway Kosher Salt and Fresh Ground Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Fairway Green Olive Oil Paste','','','4 tbsp','Fairway Green Olive Toasts:','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Drizzle of extra virgin olive oil','','','','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'lemon juice, or more, to taste','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'lemon zest','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'chopped Italian parsley','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(329.0,'Fairway French baguette, toasted and rubbed with garlic','','','8 slices','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'Fairway Extra Virgin Olive Oil, divided','','[object Object]','4 tbsp','Vegetable Wonton Soup:',257.0);
INSERT INTO "RecipeIngredient" VALUES(330.0,'cloves garlic, chopped','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'diced button mushrooms','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'gluten-free soy sauce','','','2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'chili garlic sauce (store-bought or see recipe below)','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'wonton wrappers','','','12','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'small carrots, julienned','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'green onions, sliced','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'shredded cabbage','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'vegetable broth','','','4 cups','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'water','','','2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'Fairway Sea Salt','','','1 teaspoon','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'hot chilies (e.g. jalapeno, serrano, or a combination, stemmed and coarsely chopped)','','','6 oz','Garlic Chili Sauce:','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'cloves garlic, coarsely chopped','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'Fairway Sea Salt','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(330.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(330.0,'Fairway Red Wine Vinegar','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(331.0,'fresh cranberries ','','','12 oz','','');
INSERT INTO "RecipeIngredient" VALUES(331.0,'sugar ','','','1 1/2 cups','','');
INSERT INTO "RecipeIngredient" VALUES(331.0,'wide strips orange zest, plus 1 cup fresh orange juice ','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(331.0,'Coarse salt and Fairway Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'broccoli florets, rinsed, patted dry, cut into bite-sized pieces','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'mushrooms, sliced thin','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'snow peas','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'Napa (Chinese) cabbage (about 1/2 head), shredded or carrots, peeled and cut diagonally ¼ in thick ','','','1 lb','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'peanut, canola, or grapeseed oil','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'vegetable stock ','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'cloves of garlic, minced ','','','3','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'gluten-free soy sauce, such as San-J','','','2 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'dark sesame oil','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'sesame seeds','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'minced fresh ginger','','','1 tbsp','','');
INSERT INTO "RecipeIngredient" VALUES(332.0,'Fairway Crushed Red Pepper Flakes','','','','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'Spanish onions','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'small green zucchini','','','2','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'small yellow zucchini','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'green bell pepper','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'red bell pepper','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'large eggplant','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'plum tomatoes, seeded','','','8','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'Fairway Extra Virgin Olive Oil','','[object Object]','1/4 cup','',257.0);
INSERT INTO "RecipeIngredient" VALUES(333.0,'garlic cloves, peeled and crushed (crushed)','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(333.0,'flat leaf parsley','','','1/2 bunch','','');
INSERT INTO "RecipeIngredient" VALUES(334.0,'asparagus, woodsy ends trimmed','','','1 bunch','','');
INSERT INTO "RecipeIngredient" VALUES(334.0,'Fairway Extra Virgin Olive Oil, divided','','[object Object]','3 tbsp','',257.0);
INSERT INTO "RecipeIngredient" VALUES(334.0,'Fairway Kosher Salt and Freshly Ground Black Pepper','','','','','');
INSERT INTO "RecipeIngredient" VALUES(334.0,'Parmigiano Reggiano, shaved','','[object Object]','4 tbsp','',273.0);
INSERT INTO "RecipeIngredient" VALUES(335.0,'large Fairway eggs, lightly beaten','','','4','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'milk','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'unbaked 9-inch, deep-dish pie shell ','','','1','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'small pie pumpkins','','','1-2','Pumpkin Pie Filling: (or use 2 cups premade pumpkin pie filling)','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'dark brown sugar','','','1/2 cup','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'granulated sugar','','','1/4 cup','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'Fairway Kosher Salt','','','1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'Fairway Ground Cinnamon','','','1 1/4 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'ground ginger','','','1 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'Fairway Pure Vanilla Extract','','','1 teaspoon','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'Fairway Ground Nutmeg','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'ground cloves','','','1/2 tsp','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'heavy cream','','','2 cups','Bourbon Whipped Cream:','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'powdered sugar','','','1 cup','','');
INSERT INTO "RecipeIngredient" VALUES(335.0,'good-quality bourbon','','','2 tbsp','','');
CREATE TABLE IF NOT EXISTS RecipeStep (RecipeID, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage);
INSERT INTO "RecipeStep" VALUES(275.0,'','','1','<p>Make a pocket from Fairway&rsquo;s Challah Bread by cutting into the crust of one slice of bread almost to the bottom. Insert half the Gruyere and onion slices inside the pocket. Repeat with other slice of bread.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(275.0,'','','2','<p>In a bowl, whisk together the eggs, milk, salt and pepper. Pour the egg mixture into a shallow dish. Soak the stuffed bread in the egg mixture, turning once halfway through, until most of the liquid has been absorbed.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(275.0,'','','3','<p>Heat oil over medium heat in a skillet. Add half the pear slices in a single layer and cook for 1 minute. Place bread pockets in pan, covering pears. Place remaining pear slices on top of bread; cook 1 minute more.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(275.0,'','','4','<p>Cover and cook for 5 minutes on medium low heat. Uncover and increase heat to medium; cook until bottoms are golden brown, about 2 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(275.0,'','','5','<p>Flip bread pockets and pears and cook until bread is golden brown and cheese is melted, 3 to 5 minutes. Serve with fried eggs on top or with eggs cooked as desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(276.0,'','','1','<p>Mince the red onion. Heat a large skillet over medium heat. Add the oil then the onion and saut&eacute; until golden brown, about 2 to 3 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(276.0,'','','2','<p>Add the tomatoes, harissa, salt and pepper. Increase the heat to medium high and simmer 4 minutes until the liquid reduces slightly.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(276.0,'','','3','<p>Reduce the heat to medium low. Crack the eggs in a separate bowl and carefully add to the pan, add salt and pepper and cover.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(276.0,'','','4','<p>Cook the eggs to your liking or until the top of the eggs set, about 4 to 5 minutes. Top with chopped fresh parsley or chives, Tabasco (if desired) and serve.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','1','<p>Preheat the oven to 400&ordm;F. In a bowl, whisk together eggs, cream, Gruyere cheese, salt and pepper. Mix until foamy.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','2','<p>Melt butter in a pan over medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','3','<p>Add the onion and potatoes to the pan. Cook thoroughly, then pour the egg mixture on top. Using a spatula, pull the edges of the mixture away from the sides of the pan so the eggs flow to the bottom.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','4','<p>When the frittata is half set, add the ham or bacon.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','5','<p>Transfer the pan to the heated oven. Bake for 10 minutes until puffed and golden.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(277.0,'','','6','<p>Shower with grated Parmigiano Reggiano. Garnish with sour cream and chives.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','Crust:','','<p>Combine flour, baking powder, baking soda and salt in a bowl and whisk. Rub in butter with your fingers until the meal is lumpy. Stir in buttermilk and knead gently with your hands until dough forms. Wrap dough in plastic and press to shape into a 1-inch thick disk and chill for 1 hour.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','Filling:','','<p>Preheat oven to 425&deg;F. Roll out dough between 2 sheets of plastic wrap to fit pie dish. Remove top layer of plastic wrap. Invert dough onto pie dish. Peel off plastic wrap.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','','','<p>Drain tomatoes by laying them in a single layer on a large plate or baking dish lined with 2 paper towels. Place another 2 layers of paper towels on top of first layer. Let tomatoes drain for 30 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','','','<p>Combine both cheeses in a medium bowl until well mixed. Put aside 1/4 cup of cheese mixture. Whisk scallion, mayonnaise, dill, vinegar, sugar, salt, and pepper in a small bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','','','<p>Dust cornmeal evenly over bottom of crust, then add 1/2 cup of the mixed cheeses. Arrange 1/3 of tomatoes over the cheese, overlapping as needed. Spread half of mayonnaise blend (about 1/3 cup) over tomatoes. Repeat layering with mixed cheeses, tomato slices and mayonnaise blend. Sprinkle the top with the cheese mixture set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(278.0,'','','','<p>Bake pie until crust is golden and cheese is golden brown, 35-40 minutes. If rim browns too quickly, cover it with aluminum foil. Let pie cool at least 1 hour before serving.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','Crust:','1','<p>Pulse in a food processor the flour, salt and sugar. Add butter and cheddar; pulse until mixture becomes a coarse meal, with a few visible lumps remaining. Pour in 2 tbsp ice water. Pulse until dough is crumbly but holds together when squeezed (add more water if needed, but do not over mix).</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','','2','<p>Divide dough into two disks. Wrap dough in plastic and press to shape into a 1-inch thick disk. Refrigerate until firm, at least 1 hour.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','Pie:','1','<p>Preheat oven to 425&deg;F. Roll out each disk of dough between 2 sheets of plastic wrap to fit pie dish (approx. 14-inch). Remove top layer of plastic wrap. Invert dough onto pie dish. Gently fit into bottom and up sides of plate.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','','2','<p>Pour lemon juice in a large bowl. Core, quarter and thinly slice apples. Add to bowl and toss with lemon juice. Add sugar, flour, cinnamon and salt to bowl; toss to combine.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','','3','<p>Fill bottom crust with apple mixture; lightly brush edge of crust with water. Place top crust over filling; press all around edge to seal with bottom crust.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','','4','<p>Trim edges, leaving a 1/2-inch overhang. Press edges together to seal, then fold under. Using thumb and forefinger, crimp rim.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(279.0,'','','5','<p>Cut five 1-inch long vents in the center of pie and brush top crust with butter; place pie plate on a rimmed baking sheet. Bake 20 minutes; reduce heat to 375&deg;F, then bake 45 to 60 minutes more until crust is golden brown. If rim browns too quickly, cover it with aluminum foil. Let cool completely at least a few hours (or up to overnight) before serving.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','1','<p>Preheat an oven to 350&ordm;F.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','2','<p>Combine the graham cracker crumbs, baking soda, and salt in a large bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','3','<p>Add the egg, vanilla, and Fairway Hazelnut Spread and mix by hand until well blended.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','4','<p>Using your hands, form the mixture into 1 1/2-inch dough balls.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','5','<p>Place dough balls on a baking sheet 2-inch apart.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','6','<p>Bake in until crispy on the outside, 8 to 10 minutes. Remove from oven. Allow cookies to rest on cookie sheet several minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(280.0,'','','7','<p>Top cookies with a dollop of Fairway Hazelnut Spread and dust with graham cracker crumbs. Move cookies to a wire rack to cool.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','1','<p>Combine 2 1/2 cups water, honey, star anise, lemon juice, and sea salt in large saucepan. Bring to boil over medium heat, stirring occasionally.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','2','<p>Add pears; reduce heat to simmer. Turn pears occasionally for 4 to 6 minutes, depending on ripeness, until tender. Using a slotted spoon, transfer pears to medium bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','3','<p>Boil liquid and star anise until reduced to 1 cup syrup, about 20 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','4','<p>Pour syrup with star anise over pears. Cover and chill until cold, about 2 hours.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','5','<p>Remove star anise from syrup. Divide each pear with syrup among bowls. Top each pear with a dollop of cr&egrave;me fra&icirc;che or Greek yogurt and serve.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(281.0,'','','7','<p>Top cookies with a dollop of Fairway Hazelnut Spread and dust with graham cracker crumbs. Move cookies to a wire rack to cool.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(282.0,'','','1','<p>Make the sauce by first saut&eacute;ing the shallots in olive oil until tender. Add the cream, garlic, thyme, anchovies and mustard.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(282.0,'','','2','<p>Simmer until the anchovies have melted into the cream and the sauce is thick. Remove from heat. Add a handful of chopped parsley.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(282.0,'','','3','<p>Prepare the chops by first heating a grill or grill pan. Combine the blackberry jam, Worcestershire, and limejuice in a small bowl to make the glaze. Season the lamb chops with salt and pepper and brush both sides with the glaze.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(282.0,'','','4','<p>Grill chops for 1 to 2 minutes on each side for medium-rare (depending on the thickness). Serve with the sauce.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','Lamb:','1','<p>Score the fatty side of the lamb by cutting 1/2-inch deep slits all over the lamb, using the tip of a paring knife.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','2','<p>In a bowl, mix the olive oil, lemon juice, lemon zest, thyme, salt, and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','3','<p>Then rub that marinade into the lamb, and work it into the slits, too.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','4','<p>Let it marinate for at least 24 hours in the fridge.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','5','<p>When ready, cook the meat by putting the fatty side down on a large, hot pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','6','<p>Mix the vegetables with a little olive oil, and season with salt and pepper to taste. Surround the meat with the potatoes, asparagus tips, fennel, and carrots. (If there isn&#39;t room in the pan, put the vegetables in a separate pan, and follow the steps below, as if they were being cooked with the meat.)</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','7','<p>Cook everything for 5 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','8','<p>Turn the meat (and stir the vegetables, as needed), and cook for another 5 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','9','<p>Then put the pan in 450&ordm;F oven, and cook on the middle rack for 15 minutes or longer until the meat is medium rare (and reaches a 145-degree internal temperature when measured with a meat thermometer). Cook longer, if desired. (For this step, if the vegetables are in a separate pan, and if they&#39;re not tender enough yet, put them in the oven, too, until they&#39;re as tender as you like.)</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','10','<p>When done, put the meat on a carving board, and let it rest for 15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','11','<p>Then slice the meat into thin slices, and place on warm plates with the vegetables. Top the meat with the mint and yogurt sauce (see recipe, below).</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','Mint and Yogurt Sauce:','1','<p>Pull the leaves from the sprigs of mint and parsley, and coarsely chop them.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','2','<p>Mix with Greek yogurt.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','3','<p>Add salt and pepper to taste, and mix again.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(283.0,'','','4','<p>Serve with the butterflied lamb, either on top of the meat or on the side of it.</p>
',NULL,'','Chef''s Note:','<p>To cook the lamb on your grill, put on medium heat, and grill on both sides for a total of about 20 to 25 minutes. Let it rest on a carving board for 15 minutes, then slice and serve with the mint and yogurt sauce.</p>
');
INSERT INTO "RecipeStep" VALUES(284.0,'','','1','<p>In a heavy pan, heat 2 tbsp olive oil over a medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','2','<p>Season the lamb with salt and pepper then lightly dust it with flour, shaking off any excess. Place in the hot pan and brown on each side for over medium heat, for about 10 minutes total. Remove from the pan and place in a large oven-safe pot.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','3','<p>Add the shallots and garlic to the pan, and saut&eacute; for ten minutes over medium heat. Add the leeks and thyme and saut&eacute; for 5 more minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','4','<p>Take vegetables of the pan and add to a large oven-safe pot, with the lamb.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','5','<p>Add the mushrooms to the pan and saut&eacute; for 3-4 minutes. Remove the mushrooms from the pan and place in the pot with lamb and veggies.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','6','<p>Pour the white wine into the pan and reduce for 4-5 minutes, by half. Pour the wine and stock into the pot. The liquid should almost cover the lamb. Cover with a lid and place in a 350&ordm;F oven for 30 minutes, or on stove over low heat for 30-45 minutes, until cooked to your liking. Season with salt and pepper, to taste.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','7','<p>Leave cooked meat and veggies in the pot, and strain the liquid into the pan. Reduce by half for about 5 minutes over high heat, skimming the fat that comes to the surface. Place everything back into the pot and mix well.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','8','<p>While preparing the lamb ragu, heat pasta water to a boil, salt it, and cook the pasta (approx. 8 to 12 minutes).</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(284.0,'','','9','<p>Serve lamb ragu over pasta.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','Tournedos of Beef:','','<p>Season the filets with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Heat the clarified butter in a cast-iron pan or another heavy-bottomed pan over medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>When the butter is hot, add the 2 filets and sear them on each side until golden brown, about 3 to 5 minutes per side. This will result in a medium-rare temperature - the meat should feel just slightly resilient when pressed.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Halfway through the cooking, add the garlic and thyme to the pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Transfer the filets to warmed dinner plates.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Top with the pan-roasted garlic and thyme. Pour the butter from the pan over the filets. Sprinkle with parsley and season with additional salt, if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','Clarified Butter:','','<p>In a saucepan, melt the butter slowly.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Let it sit for a bit to separate.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Skim off the foam that rises to the top</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(286.0,'','','','<p>Gently pour the butter off of the milk solids that have settled to the bottom.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(287.0,'','','1','<p>Peel onion and cut into eighths. Heat the grapeseed oil in a large saut&eacute; pan, then add the onions, pears, most of the rosemary and seasoning. Saut&eacute; for 3 to 5 minutes or until just starting to caramelize.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(287.0,'','','2','<p>Season the pork, then arrange among the pears and onions and saut&eacute; on high heat for 5 minutes. Turn the pork halfway until golden and cooked through.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(287.0,'','','3','<p>Scatter pork, pears and onions with the remaining rosemary and blue cheese.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(287.0,'','','4','<p>Grill until the cheese starts to melt, then serve.</p>
',NULL,'','Chef’s Note:','<p>Image shows onions and pears further sliced, depending on your serving preference.</p>
');
INSERT INTO "RecipeStep" VALUES(288.0,'','','1','<p>Fill a pot with 2 cups of water and place on stove over a medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','2','<p>Add dried fruit and heat for 20 minutes, mixing every few minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','3','<p>When the fruits have started to meld together and turn into a compote, add the red wine vinegar and honey. Mix well.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','4','<p>Remove the compote from the pot and place in a bowl. Add the rosemary and salt and pepper to taste and mix.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','5','<p>Season the inside of the pork loin with salt and pepper and generously stuff the loin with the compote, reserving the extra. Close and tie with kitchen twine.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','6','<p>Add the olive oil to a heavy pan and place on stove over a medium heat. Brown the pork well for 2 minutes on each side.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','7','<p>Place the pan in a preheated 400&ordm;F oven for 20-25 minutes. Remove from oven and let rest for 10-15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(288.0,'','','8','<p>Slice and serve with the rest of the fruit compote on the side.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(289.0,'','','1','<p>Boil lentils in a medium saucepan with water and 1/2 tsp salt. Reduce heat and simmer uncovered until lentils are tender, approx. 12 to 20 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(289.0,'','','2','<p>While lentils simmer, cut fennel bulb into 1/4-inch cubes and chop 2 tbsp of fennel fronds. Heat 3 tbsp oil in a separate saucepan over moderate heat, then stir in onion, carrot, fennel bulb and 1 tsp salt. Add the garlic and bay leaf and saut&eacute; until fragrant, about 30 seconds. Cover pan stirring occasionally until vegetables are tender, about 10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(289.0,'','','3','<p>Lightly prick sausages and cook in 1/2 tbsp oil in a 10-inch nonstick skillet over moderately high heat, turning occasionally, until golden and cooked through, approx. 12 to 15 minutes. Transfer to a cutting board.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(289.0,'','','4','<p>Drain cooked lentils in a strainer set over a bowl to reserve the cooking water. Stir lentils into vegetables with 1/4 cup cooking water and a drizzle of olive oil to coat and soften the mixture. Cook over moderate heat, stirring occasionally, until fully cooked through. Stir in parsley, pepper, vinegar and 1 tbsp fennel fronds. Season with 1 tbsp Red Wine Vinegar and salt.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(289.0,'','','5','<p>Cut sausages diagonally into 1-inch thick slices. Spoon lentils and vegetables onto plate and top with sausages. Sprinkle remaining fennel fronds for garnish. Serve with Fairway Dijon mustard on the side for dipping.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','Cornbread Sausage Stuffing:','','<p>Brush the cornbread cubes generously with melted butter or olive oil and place them in the oven until they are nicely toasted. Let cool.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>In a large skillet, crumble and brown the sausage over medium-high heat. Remove the sausage from the skillet and set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Saut&eacute; the onions in 4 tbsp of butter or olive oil for 5 minutes, do not brown them. Add the celery to the pan and continue to cook for 10 more minutes, but do not brown.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>In a separate saut&eacute; pan add 2 tbsp olive oil and allow it to get smoking hot.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Add the mushrooms and cook over high heat keeping the mushrooms jumping for 1 minute. The edges of the mushrooms should become slightly charred.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Place all of the cooked vegetables and the toasted pecans into a large bowl along with the two sprigs of thyme.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Add the cornbread while the vegetables are still hot and gently fold together being careful not to break the corn bread up too much.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Let it sit 5 to 10 minutes. If you add the cornbread while the vegetables are still hot the cornbread will absorb more of their flavors.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','Toasted Pecans:','','<p>Preheat the oven to 350&ordm;F.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Chop half of the pecans and keep the other half whole.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Place the pecans on a cookie sheet in a single layer.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(290.0,'','','','<p>Toast them in the oven for 5 minutes or until you start to smell them roasting. Be very careful not to burn them.</p>
',NULL,'','Chef’s Note:','<p>If you reheat the stuffing in the oven loosely cover it with aluminum foil. If you have done this correctly you should be able to taste everything in the stuffing.</p>
');
INSERT INTO "RecipeStep" VALUES(291.0,'','','1','<p>Mix grated Parmesan cheese and butter in small bowl. Season generously with salt and pepper; set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(291.0,'','','2','<p>Sprinkle steak generously with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(291.0,'','','3','<p>Heat oil in medium skillet over medium-high heat. Add steak; cook to desired doneness, about 4 minutes per side for medium-rare. Transfer to plate.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(291.0,'','','4','<p>Add vinegar, shallots, and sugar to skillet; boil until reduced to glaze, stirring constantly, about 1 minute.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(291.0,'','','5','<p>Divide arugula and Parmesan shavings between 2 plates. Squeeze lemon over. Slice steak; place atop arugula.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(291.0,'','','6','<p>Top steak with Parmesan butter. Drizzle lightly with glaze.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','Flank Steak with Herbs:','','<p>Mix olive oil, garlic, and rosemary and marinate meat in the refrigerator for 24 hours.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Prepare your grill. If you are cooking indoors, heat a heavy pan or skillet over high heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Reduce heat to medium, place the flank steak on the grill or pan and cook for 2 minutes over medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Pick up the steak with tongs and return it to the pan at an angle, so that the cooked side of the steak will have crisscross grill marks. Cook an additional minute, cooking the steak for a total of 3 minutes on the first side.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Flip the steak over and cook for another 4 minutes. Flank steak is best served rare to medium rare; past that temperature, the meat starts to get tough.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>When the meat is done, let it sit for 5 minutes, then slice thinly across the grain.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Wash and dry the arugula, then spread it on a platter.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Place the sliced meat on the platter over the arugula.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Place onions on top of the meat and drizzle with rosemary-flavored olive oil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Season with sea salt and cracked pepper to taste.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','Rosemary-Flavored Olive Oil:','','<p>Heat olive oil in a pan until barely warm.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Add garlic and rosemary.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(292.0,'','','','<p>Heat for a minute over medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(293.0,'','','1','<p>Boil water in a cooking pot for the pasta. When it boils, add salt and follow the number of minutes the pasta should cook.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(293.0,'','','2','<p>Saut&eacute; scallion in saucepan with extra virgin olive oil. When it colors, after about a couple of minutes, add bell pepper and chicken. Saut&eacute; until pepper becomes tender and chicken starts to toast, about 8 - 10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(293.0,'','','3','<p>Add white wine and let evaporate with high flame for a couple of minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(293.0,'','','4','<p>Add the spinach and cook for another 5 minutes. Season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(293.0,'','','5','<p>Add the basil and the cooked pasta with the chicken. Toss for about a couple of minutes before turning off the fire. Drizzle with extra virgin olive oil before serving.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','1','<p>Add water to a large pot, season with salt and bring to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','2','<p>Wash the zucchini and trim the ends. Grate zucchini into large shreds and set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','3','<p>In a large pan, heat the oil and butter. Add the shallot and celery, saut&eacute; over medium heat, stirring, until the vegetables soften and begin to turn translucent. Add the minced garlic and continue cooking for another minute. Add the zucchini to the pan and saut&eacute; until the zucchini begins to soften and wilt.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','4','<p>In the meantime, add the pasta to the boiling water and stir occasionally as the pasta cooks.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','5','<p>Season the vegetables with salt and pepper. When the pasta is nearly al dente, add the lemon juice, 1/4 of a cup of the pasta cooking water and the cheese to the pan with vegetables, stirring to melt the cheese. Stir in the parsley and basil and let the mixture simmer gently for 5 seconds.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(294.0,'','','6','<p>Drain the pasta (reserve some of the cooking water in case it is needed). Add the pasta to the pan with the sauce and toss to coat it completely. Let the pasta cook in the pan for a minute. Add cooking water if needed. Top with grated Parmigiano Reggiano, if desired. Serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(295.0,'','','1','<p>Peel and slice&nbsp;the eggplant; lightly&nbsp;salt the slices and put them in a colander in the sink for about&nbsp;an hour, so&nbsp;the salt draws out their bitter juices. Rinse them, pat them dry, and cut them into small cubes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(295.0,'','','2','<p>Heat the olive oil in a large skillet and saut&eacute; the onion until it becomes golden and translucent. Add the eggplant and cook,&nbsp;while stirring,&nbsp;for 5 minutes. Add the tomatoes and the basil.&nbsp;Cook the sauce for 15 minutes. Add additional salt and pepper to taste.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(295.0,'','','3','<p><span class="s1">Meanwhile, cook the pasta in salted water and&nbsp;drain.&nbsp;Add the pasta&nbsp;to the sauce pan with the onions, eggplant and tomato sauce&nbsp;or combine all the ingredients in a large bowl.</span></p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(295.0,'','','4','<p>Top with the&nbsp;mozzarella and freshly grated Parmigiano. Serve at once, with more Parmigiano for those who want it.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(296.0,'','','1','<p>Place sausage in a large pan over medium-high heat. Cook, stirring, until browned, 5 to 8 minutes. Using a slotted spoon, transfer the sausage to a bowl; set sausage and pan&nbsp;aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(296.0,'','','2','<p>Bring 4 quarts water to a boil in a large pot. Add salt, return to a boil. Add broccoli rabe. Cook 1 minute and drain, reserving some of the cooking liquid; set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(296.0,'','','3','<p>Bring a second large pot of water to a boil. Add salt, return to a boil and add pasta. Cook until al dente, 5 to 8 minutes; drain.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(296.0,'','','4','<p>Place reserved pan over medium-high heat and add oil, broccoli rabe, garlic, and red pepper flakes. Cook, stirring, about 30 seconds.&nbsp;</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(296.0,'','','5','<p>Return sausage to the skillet along with the orecchiette. Stir to mix all ingredients, adding reserved cooking liquid if pasta seems&nbsp;dry; sprinkle with freshly grated Parmigiano Reggiano. Serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(297.0,'','','1','<p>Bring a large pot of water to a boil, add salt, then add the pasta. Cook until al dente. Drain in a colander.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(297.0,'','','2','<p>Meanwhile, in a small pan heat the olive oil and garlic, add the pancetta when hot and cook until golden brown. Set aside in a dish.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(297.0,'','','3','<p>In the same pan, melt the butter over medium heat until it begins to foam. Add the onions and cook until soft. Add in the chicken stock or water,&nbsp;season with salt and pepper to taste. Stir in the pancetta and cook for about 2 minutes. Add in the cream; bring to a low simmer and cook 5 minutes until the sauce begins to thicken.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(297.0,'','','4','<p>Pour the cooked pasta into the saucepan. Mix well to coat the pasta evenly with the sauce.&nbsp;</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(297.0,'','','5','<p>Lastly, stir in the peas and cheese. Top with freshly grated Parmigiano Reggiano. Serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(298.0,'','','1','<p>Cook the pasta in a large pot of boiling salted water with a splash of oil to keep it from sticking together. Boil for 12 minutes, or according to the directions on the package. Drain well and allow to cool. Place the pasta in a bowl and add the tomatoes, olives, mozzarella, and chopped sun-dried tomatoes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(298.0,'','','2','<p>For the sauce, combine the sun-dried tomatoes, vinegar, olive oil, garlic, capers, salt, and pepper in a food processor until almost smooth.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(298.0,'','','3','<p>Pour the sauce over the pasta, sprinkle with the Parmesan and basil, and toss well.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(299.0,'','','1','<p>Bring a large pot of well-salted water to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(299.0,'','','2','<p>Cook the pasta in the boiling water until al dente. Reserving 1/4 cup of the cooking liquid, drain the pasta, then add it back to the pot off the heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(299.0,'','','3','<p>Immediately add the pesto and chicken, and stir to combine thoroughly. Moisten with 2 tbsp of the pasta cooking liquid, or more, if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(299.0,'','','4','<p>Drizzle with Fairway Cabe&ccedil;o Das Nogueiras olive oil for added flavor.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(301.0,'','','1','<p>Heat and salt water for pasta, bringing it to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(301.0,'','','2','<p>In the meantime, toast the walnuts in a 350&ordm;F degree oven until they are golden, 8-10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(301.0,'','','3','<p>Place the garlic and salt in a mortar and pestle, and pound to a fine paste. Add the walnuts to the mortar and pestle and pound into a paste. Alternately, you can do this in a food processor.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(301.0,'','','4','<p>Transfer the nut mixture to a bowl. Stir in the olive oil, then add most of the herbs. Stir in the Parmesan, taste, and adjust the seasoning.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(301.0,'','','5','<p>Salt the pasta water generously, and cook the pasta al dente. Drain and reserve a big cup of the pasta water. Toss the walnut pesto with the pasta, and thin out the sauce with the reserved water. Serve topped with a sprinkling of the remaining herbs.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(302.0,'','','1','<p>Toast the walnuts in a 350&ordm;F degree oven until they are golden, 8-10 minutes. Remove from oven.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(302.0,'','','2','<p>Increase the oven temperature to 375&ordm;F. Roll out the pizza dough on a flour-dusted piece of parchment paper to a 13-inch diameter. Place the pizza and the parchment paper on a baking sheet.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(302.0,'','','3','<p>Sprinkle the mozzarella and the Gorgonzola cheeses on the pizza dough. Bake in the oven until golden and cooked through, about 25 to 30 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(302.0,'','','4','<p>Top with arugula, toasted walnuts and the remaining 1/4 tsp salt and pepper. Drizzle with Fairway Gata-Hurdes Olive Oil. Slice and serve.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(303.0,'','','1','<p>Season the chicken with the coriander, 1/2&nbsp;tsp salt, and 1/4&nbsp;tsp pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(303.0,'','','2','<p>Heat 2 tbsp of the oil in a skillet over medium-high heat. Cook the chicken in batches until golden brown and cooked through, about 2 minutes per side.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(303.0,'','','3','<p>In a bowl, toss the fennel, parsley, vinegar, remaining 2 tbsp of oil, and 1/4&nbsp;tsp each salt and pepper. Fold in the oranges. Serve with the chicken.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','1','<p>Coat a saut&eacute; pan with olive oil and place over medium heat. When the oil gets hazy, add the onions, garlic, and bay leaves; cook and stir for 5 minutes until fragrant and soft.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','2','<p>Add the olives and julienned basil. Carefully add the tomatoes, cook and stir until the liquid is cooked down and the sauce is thick, about 15 minutes; season with sugar, salt and pepper. Lower the heat, cover, and keep warm.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','3','<p>Preheat the oven to 450 &ordm;F. Place the chicken breasts next to each other on a cutting board. Lay a piece of plastic wrap over them. Pound the chicken breasts with a flat meat mallet, until they are about 1/2-inch thick.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','4','<p>Line up shallow bowls. In one, put the flour and season with a fair amount of salt and pepper mixed with a fork. In another, combine the eggs and water and beat until frothy. In the third, mix the bread crumbs with salt and pepper to season.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','5','<p>Heat 3 tbsp of olive oil over medium-high heat in a large oven-proof skillet. Lightly dredge both sides of the chicken cutlets in the seasoned flour, and then dip them in the egg wash to coat completely, letting the excess drip off, then dredge in the bread crumbs. When the oil is nice and hot, add the cutlets and pan fry for 4 to 5 minutes on each side until golden and crusty, turning once.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','6','<p>Ladle the tomato and olive sauce over the chicken and sprinkle with mozzarella, Parmesan, and basil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(304.0,'','','7','<p>Bake the Chicken Parmesan for 15 minutes or until the cheese is bubbly. Serve hot with pasta, such as Fairway Maccheroni Artisanal Pasta (follow preparation instructions on pasta to cook).</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','Sauce:','','<p>In a medium saucepan, warm oil over medium low heat. Add onion, garlic, jalapeno and chili powder. Cook until onions are translucent, about 8 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','','','<p>Add tomatoes and 1/2 cup water. Season with salt and pepper. Bring to a boil, reduce heat, and simmer, crushing tomatoes lightly with the back of a spoon. Cook until tomatoes are tender and sauce is slightly chunky, 15 to 20 minutes. Add lime juice and season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','Enchiladas','','<p>Preheat oven to 450&ordm;F. In a medium skillet over medium high heat, warm tortillas, 10 to 15 seconds per side.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','','','<p>Working with one tortilla at a time, fill&nbsp;with 2 ounces of chicken, 1 ounce of cheese, and pickled jalapenos&nbsp;(if using).&nbsp;Roll tightly. Place enchiladas, seam-side down, in a 9-inch by 13-inch baking dish.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','','','<p>Pour sauce over tortillas, and top with remaining cheese.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(305.0,'','','','<p>Bake until cheese has melted, 5 to 7 minutes. If desired, place under broiler for 1 to 2 minutes for a crispier top. Serve with sour cream and fresh cilantro, if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','1','<p>Pound the slices of filet between 2 sheets of plastic wrap with a meat mallet.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','2','<p>For the artichoke salad: Combine all the ingredients together in a small bowl, toss well and season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','3','<p>In another mixing bowl toss the arugula with the extra-virgin olive oil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','4','<p>Lay the carpaccio down on the plate. Drizzle the meat with the olive oil and the juice of the lemon and the dollop of Cara Cucina Artichoke &amp; Cream sauce. Season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','5','<p>Mound the arugula in the center of the meat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(307.0,'','','6','<p>Sprinkle the artichoke salad around the arugula. Garnish with shaved Parmigiano Reggiano cheese, black pepper, and parsley.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(308.0,'','','1','<p>Chop together 6 anchovy fillets packed in oil, 1 small garlic clove, and a pinch of kosher salt. Mash into a paste using a mortar and pestle, food processor, or bottom of your knife, then scrape into a medium bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(308.0,'','','2','<p>Whisk in 2 egg yolks, 2 tbsp lemon juice, and 3/4 tsp Dijon mustard. Very slowly whisk in 2 tbsp olive oil, then 1/2 cup vegetable oil; whisk until dressing thickens.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(308.0,'','','3','<p>Whisk in 3 tbsp finely grated Parmesan. Season with salt, freshly ground black pepper, and more lemon juice, if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(308.0,'','','4','<p>Using a fork, tear chunks away from the baguette (the method helps create added texture to catch the dressing). Toss 3 cups of the torn 1-inch pieces with 3 tbsp olive oil on a baking sheet; season with kosher salt and freshly ground black pepper. Bake at 375&deg;F, tossing occasionally, until golden, 10-15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(308.0,'','','5','<p>Use tongs or your hands to gently toss the lettuce, croutons, and dressing, then top off with the shaved Parm.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','1','<p>Preheat the oven to 425&deg;F. If you did not buy pre-roasted beets (such as Rocal) roast the beets by first seasoning them with 1 tbsp olive oil, 1/4 tsp salt and 1/8 tsp pepper. Place in a roasting pan and cook until the beets are tender, about 40 minutes. When they are cool enough to handle, remove the skins and slice the beets.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','2','<p>Place the beets in a mixing bowl and toss with the remaining 1 tbsp olive oil, 1/4 tsp salt, and 1/8 tsp pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','3','<p>For the dressing, place a large skillet over medium-high heat and, once hot, add the extra-virgin olive oil. Add the walnuts and cook until they are browned, about 2 to 3 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','4','<p>Transfer to a mixing bowl and when the walnuts have cooled to room temperature, add the onion, basil, vinegar and salt.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','5','<p>Place the Gorgonzola cheese and cream in a blender or food processor and process until smooth. Transfer to the bowl with the walnuts and mix to combine.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(309.0,'','','6','<p>Mound arugula on plates. Add beets on top of arugula and add dollop of the walnut and Gorgonzola dressing.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(310.0,'','','1','<p>Poach eggs: Bring a pot of water to a gentle simmer. Crack the eggs one at a time into a small bowl, then slip them into the water quickly and smoothly. Cook about 4 minutes, or until the whites are set.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(310.0,'','','2','<p>While the eggs are poaching, fry the bacon in a skillet over medium-high heat, until browned, about 3 minutes. Add the shallots and cook for another minute. Remove from the heat, add the red wine vinegar, and mix to combine.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(310.0,'','','3','<p>Toss and coat the fris&eacute;e in the lardon dressing. Season with plenty of salt and pepper. Distribute into four bowls, and top each salad with a poached egg. Finish with an extra grind of black pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','1','<p>In a small bowl, whisk together lemon juice, shallot, and 3 tbsp oil; season with salt and pepper and set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','2','<p>In a large skillet, heat 1 tbsp oil over medium-high. Season lamb chops with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','3','<p>Cook until medium-rare, 10 minutes, flipping once.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','4','<p>Transfer to a work surface and loosely tent with foil. Let rest 5 minutes, then cut away from bone and thinly slice.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','5','<p>In a large bowl, toss together spinach and pears.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(311.0,'','','6','<p>Divide among four plates, top with lamb, and drizzle with dressing.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','1','<p>Preheat the oven to 350&deg;F. Pour the jar of marinated artichoke hearts, juice and all, into a 13-inch by 8-inch by 2-inch pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','2','<p>Drain and rinse the beans, and then and add them to the artichoke hearts in the pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','3','<p>Add the sliced grape tomatoes and pitted olives to the same pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','4','<p>Place the tilapia filets over the top of the ingredients and sprinkle with salt and pepper to season.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','5','<p>Remove the thyme leaves from the stem and sprinkle over the seasoned tilapia filets. Drizzle the olive oil over the top of the tilapia filets.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(312.0,'','','6','<p>Bake in the preheated oven for 15-20 minutes until the fish is cooked through. It will be a bright white. Serve immediately with a wedge of lemon making sure to get some of the vegetables underneath with the fish for each portion.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(313.0,'','','1','<p>Preheat oven to 400&deg;F. Melt butter with 2 tbsp oil in large skillet over medium-high heat. Add mushrooms and saut&eacute; until they begin to color. Stir in garlic and parsley. Add wine; simmer until it reduces, scraping the browning bits in the skillet throughout, about 1 minute. Remove from heat. Stir in lemon peel and lemon juice. Season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(313.0,'','','2','<p>Brush a glass baking dish with 1 tbsp oil. Place cod, skin side down, in baking dish. Sprinkle with salt and pepper. Cover with mushroom mixture.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(313.0,'','','3','<p>Sprinkle with breadcrumbs and Parmesan; drizzle with remaining 1 tbsp oil. Bake until fish is opaque in center, about 20 minutes.</p>

<p>(Recipe adapted from Bon Appetit, December 2008 by Cathy Whims)</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(314.0,'','Lentils:','1','<p>Heat oil in a large heavy pot over medium heat. Add carrots, celery root, onion, and 2 tsp salt. Cook, stirring occasionally, until vegetables have softened, about 5 minutes. Stir in lentils. Pour in 3 3/4 cups boiling water and bring to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(314.0,'','','2','<p>Reduce heat to low and simmer, stirring occasionally, until lentils are tender, 20-30 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(314.0,'','','3','<p>Season with more salt, if desired. (Keep excess liquid in pot so lentils remain tender.) To serve, use a slotted spoon or mesh strainer.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(314.0,'','Salmon:','1','<p>Meanwhile, preheat oven to 350&ordm;F. Season salmon fillets with salt. Heat oil in a large ovenproof skillet over medium-high heat. Place fillets, skin side down, in skillet. Cook until skin is crisp and lightly browned.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(314.0,'','','2','<p>Turn fillets over and place skillet in oven. Roast until salmon is nearly opaque in center, about 5 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(315.0,'','','1','<p>Preheat the oven to 350&ordm;F.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(315.0,'','','2','<p>In a food processor, add the tomatoes, basil, olives, and olive oil and process until finely chopped.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(315.0,'','','3','<p>Season both sides of the scallops with salt and pepper. Rub each scallop with the tomato mixture. Fold each slice of prosciutto in half lengthwise, then wrap each scallop in 1 slice of prosciutto. Place wrapped scallops in a buttered baking dish, seam side down. Bake until scallop is cooked through, about 15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(315.0,'','','4','<p>In a medium bowl, toss the arugula with the balsamic vinegar. Season the arugula with salt and pepper. Place the arugula on a serving platter or divide among individual dishes. Top with the scallops and serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(316.0,'','','1','<p>Rub salmon fillets with olive oil, salt, and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(316.0,'','','2','<p>Grill the fillets or sear them in a pan for 2 minutes, top side down.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(316.0,'','','3','<p>Top salmon with Puttanesca sauce, and place in a 350&ordm;F oven for 15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(316.0,'','','4','<p>Remove from oven, plate fish with the sauce, and garnish with lemon cut into half-moon slices and chopped parsley.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','Scallops with Herb Sauce:','','<p>Add the shallot, rosemary, chervil, tarragon, and parsley to a bowl, blend and set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Heat 1 tbsp clarified butter in a non-stick pan over a medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Season the flour with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Season the scallops with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Dredge the scallops in the seasoned flour and shake off any excess.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Place the scallops in the hot pan and continue to cook over medium heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Let the scallops sit for 3 to 4 minutes to caramelize, then turn them over and let them sit for another 3 to 4 more minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>When the scallops are done, remove them from the pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Turn off the heat, discard the leftover clarified butter from the pan, and add the cold butter and fresh herb and shallot mixture to the warm pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Swirl the pan so the butter melts.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Add the sea salt to taste.&nbsp;Drizzle the sauce over the plated scallops.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','Clarified Butter:','','<p>In a saucepan, melt the butter slowly.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Let it sit for a bit to separate.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Skim off the foam that rises to the top.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(317.0,'','','','<p>Gently pour the butter off of the milk solids that have settled to the bottom.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','Scallops with Red Wine Reduction:','','<p>Rinse scallops with cold water and pat dry.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Heat 2 tbsp oil in a saut&eacute; pan over high heat. Salt and pepper the scallops.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Add the scallops, making sure they are not touching each other. Sear the scallops for 2 minutes on each side. The scallops should have a lovely golden exterior while remaining translucent in the center. Set scallops aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Add saba to the pan. Turn to medium heat and let gently bubble; let reduce to 1/3 of its original volume. Stir in a hit of whatever wine you&#39;re drinking.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Reduce heat to medium, and add remaining tbsp oil to skillet. Add garlic, and cook for 15 seconds. Add spinach, arugula, and salt and pepper to taste. Cook, tossing greens often, until just wilted, about 2 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Transfer to a platter, top with scallops, and serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Drizzle with Fairway Cabe&ccedil;o Das Nogueiras Olive Oil, if needed.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','Wilted Spinach with Garlic:','','<p>Heat oil in a large skillet over medium-high heat. Add garlic and stir until golden, about 30 seconds.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(318.0,'','','','<p>Add greens and toss well until just wilted, 2 to 4 minutes. Season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(319.0,'','','1','<p>Melt 2 tbsp butter in heavy large skillet over medium-high heat. Add 1/4 of mushrooms and sprinkle with salt. Saut&eacute; mushrooms until tender and beginning to brown, 3 to 4 minutes. Transfer mushrooms to medium bowl. Working in 3 more batches, repeat with 6 tbsp butter, remaining mushrooms, and salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(319.0,'','','2','<p>Bring 6 to 7 cups of chicken broth to simmer in medium saucepan; keep warm. Melt remaining 1 1/2 tbsp butter with olive oil in heavy large saucepan over medium-low heat. Add leek, sprinkle with salt, and saut&eacute; until tender, 4 to 5 minutes. Add rice and increase heat to medium. Stir until rice cooks through, 3 to 4 minutes. Add white wine and vermouth and stir until liquid is absorbed, about 1 minute. Add 3/4 cup warm chicken broth; stir until almost all broth is absorbed, about 1 minute.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(319.0,'','','3','<p>Continue adding broth by 3/4 cupfuls, stirring until almost all broth is absorbed before adding more, until rice is halfway cooked, about 10 minutes. Stir in saut&eacute;ed mushrooms. Continue adding broth in 3/4 cups until rice is tender and risotto is creamy, about 10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(319.0,'','','4','<p>Stir in 1/4 cup grated Parmesan cheese, if using. Transfer risotto to serving bowl. Pass additional Parmesan cheese alongside, if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(320.0,'','','1','<p>Steam the carrots in a steamer basket in a large saucepan until tender, 6 to 8 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(320.0,'','','2','<p>Meanwhile, in a large skillet, warm the oil, lemon, olives, and crushed red pepper over medium-high heat until the lemon is softened, 3 to 4 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(320.0,'','','3','<p>Add the carrots, lemon juice, parsley, 1 tsp salt, and 1/4&nbsp;tsp black pepper and toss gently to combine.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(321.0,'','Corn Muffins:','1','<p>Preheat oven to 425&deg;F with rack in middle. Brush muffin cups with softened butter.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(321.0,'','','2','<p>Whisk together cornmeal, salt, baking powder, and baking soda in a large bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(321.0,'','','3','<p>Whisk together corn, buttermilk, egg, and melted butter in another bowl, then stir into flour mixture until just combined. Stir in 1 1/2 cups cheese.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(321.0,'','','4','<p>Divide batter among muffin cups and sprinkle with remaining 1/4 cup cheese. Bake until puffed and golden-brown and a wooden pick inserted into center of a muffin comes out clean, about 20 minutes. Turn out onto a rack to cool. Serve warm or at room temperature.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(321.0,'','Jalapeno Butter:','5','<p>Stir together butter, jalapeno, and 1/4 tsp salt. Serve with muffins.</p>
',NULL,'','Chef’s Notes:','<p>Muffins can be made 6 hours ahead and jalapeno butter can be made 1 week ahead and chilled in an airtight container.</p>
');
INSERT INTO "RecipeStep" VALUES(322.0,'','','1','<p>Heat 1/4 cup oil in large skillet over medium-high heat. Add leeks; saut&eacute; until soft and lightly browned, 10 to 12 minutes. Add mushrooms, sprinkle with salt and pepper, and saut&eacute; until soft and liquid evaporates, 7 to 8 minutes. Add garlic; saut&eacute; 1 minute. Season with salt and pepper. Set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(322.0,'','','2','<p>Preheat oven to 375&deg;F. Pat potato slices dry with kitchen towel. Combine cream, 1 tsp salt, and 1/2 tsp pepper in large pot. Add potatoes. Bring to boil; reduce heat to medium and simmer, covered, 10 minutes, stirring occasionally. Remove lid; simmer until cream is reduced by about half and potatoes are partially cooked, stirring often and watching closely to prevent mixture from burning, about 3 minutes. Season with salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(322.0,'','','3','<p>Brush 13-inch by 9-inch by 2-inch glass or ceramic baking dish with oil. Transfer half of potato mixture to dish, spreading out in even layer. Spoon mushroom mixture over in even layer. Spoon remaining potato mixture over, spreading in even layer. Sprinkle cheese over. Cover with foil, tenting in center to prevent cheese from sticking to foil. Bake 30 minutes. Uncover; bake until potatoes are tender and top is brown, 20 to 25 minutes longer. Let rest 10 minutes before serving.</p>
',NULL,'','Chef’s Note:','<p>Mushrooms, leeks and garlic saut&eacute; (step 1) can be made up to 4 hours ahead. Let stand at room temperature.</p>
');
INSERT INTO "RecipeStep" VALUES(323.0,'','','1','<p>Preheat oven to 425&deg;F. Place a saucepan of water over high heat. Add the juice of 1 lemon, add the squeezed halves, and bring to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(323.0,'','','2','<p>Fill a medium bowl with water; squeeze juice of remaining 2 lemons into water. Add squeezed lemon halves.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(323.0,'','','3','<p>Cut tops off artichokes; remove tough outer leaves. Trim stems; pare down to pale-green heart. Cut in half; add to bowl of water with lemon.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(323.0,'','','4','<p>Drain artichokes, add to boiling water, and cook 3 minutes. Drain; set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(323.0,'','','5','<p>Place potatoes in a large bowl with oil, rosemary, salt, and pepper; toss to coat. Add artichokes. Spread out with even space onto 1 or 2 oven pans. Place in oven until tender and browned, 45 to 55 minutes. Rotate pans once to ensure even cooking. Remove from oven; serve.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(324.0,'','','1','<p>Heat the oil in a medium saucepan over medium-high heat. Add the fennel, sprinkle with 3/4 tsp salt. Stir the&nbsp;the fennel starts until it starts&nbsp;to soften and brown, approx. 4 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(324.0,'','','2','<p>Add the garlic. Stir&nbsp;about 30 seconds. Then add the cumin, chipotle powder, and cinnamon; cook, stirring, for 30 seconds until all of&nbsp;the spices become fragrant.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(324.0,'','','3','<p>Add the red peppers and chicken broth. Bring to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(324.0,'','','4','<p>Stir in Fairway Israeli&nbsp;couscous. Remove saucepan from the heat, cover, and let sit until the liquid is absorbed; check after 5 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(324.0,'','','5','<p>Fluff the couscous with a fork. Stir in or top with the cilantro. Taste the couscous and season with salt as needed; serve immediately.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(325.0,'','','1','<p>In a large, high-sided skillet, heat the oil over medium-high heat. Add the onion and cook until softened, about 5 minutes. Add the garlic, carrots, bell pepper, stock, and spices and bring to a boil. Reduce to a simmer and cook for 10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(325.0,'','','2','<p>Add the zucchini, eggplant, raisins, and half the cilantro and continue cooking until tender, about 25 to 30 minutes. Season to taste with salt.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(325.0,'','','3','<p>Meanwhile, prepare the couscous by boiling water then adding Fairway Israeli Couscous to simmer, per the cooking instructions.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(325.0,'','','4','<p>Serve with the tagine garnished with the remaining cilantro. Mix in or top with Mina Harissa Red Pepper Sauce if desired.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(326.0,'','','1','<p>In a large stockpot over medium-high heat, cook the bacon and olive oil until the bacon is crisp, about 5 minutes. Remove the bacon with a slotted spoon and reserve. Reduce the heat to medium, add the onions and butter to the fat, and cook for 10 minutes, until the onions are translucent.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(326.0,'','','2','<p>Stir in the flour, salt, pepper, and turmeric and cook for 3 minutes. Add the chicken stock and potatoes, bring to a boil, and simmer uncovered for 15 minutes, until the potatoes are tender. If using fresh corn, cut the kernels off the cob and blanch them for 3 minutes in boiling salted water. Drain. (If using frozen corn you can skip this step.)&nbsp;</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(326.0,'','','3','<p>Add the corn to the soup, then add the half-and-half and cheddar. Cook for 5 more minutes, until the cheese is melted. Season, to taste, with salt and pepper. Serve hot with a garnish of bacon.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','1','<p>Scatter bread on a rimmed baking sheet in a single layer. Let stand at room temperature to slightly dry out, about 2 hours.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','2','<p>Cook collards and kale separately in a large pot of boiling salted water until slightly softened, about 3 minutes per batch. Rinse to cool. Wrap in cloth to dry; roughly chop. Set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','3','<p>Heat 1/4 cup oil in a large pot over medium heat. Add carrots, celery, and leek; stir often until soft, 8-10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','4','<p>Add garlic and red pepper flakes. Cook, stirring until fragrant, about 1 minute. Add tomatoes, breaking them up with your hand as you add them. Cook, stirring frequently, until liquid is evaporated and tomatoes begin to stick to the bottom of the pot, 10 to&nbsp;15 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','5','<p>Add beans, broth, marjoram, thyme, bay leaf, and your kale and collard greens; season with salt and pepper. Bring to a boil, reduce heat, and simmer until flavors meld and soup thickens slightly, 45 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(327.0,'','','6','<p>For a heartier soup, stir in sourdough before serving and a quick pour of olive oil into soup. Divide among bowls, top with Parmesan, and drizzle with oil.</p>

<p>(Recipe adapted from Bon Appetit, March 2013 by Brandon Jew)</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(328.0,'','','1','<p>Place lemon rind in shallow pan and cover with cold water. Bring to a simmer, and then pour out water. Repeat once more, then set lemon rinds aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(328.0,'','','2','<p>Melt butter in large saucepan over low heat. Add onions, shallots, and a pinch of salt and cook until softened and translucent, 5 to 6 minutes. Add peas to saucepan and cook, stirring, for 1 minute. Add lemon rinds and stock and bring to a boil. Immediately remove from the heat and stir in mint.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(328.0,'','','3','<p>Let cool slightly, 5 to 10 minutes, then blend in blender or food processor until smooth. Add Parmesan and blend again. Season to taste with salt and pepper. Serve immediately or chill for later use.&nbsp;</p>

<p>(Recipe courtesy of Suzanne Lehrer)</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','White Bean Soup:','','<p>Pick through beans, place in bowl, cover with water and soak overnight. Drain and rinse.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','','','<p>Heat a medium&nbsp;sauce pot over medium heat. Add olive oil, garlic, bay leaf and thyme; saut&eacute; approx. 30 seconds. Add beans, stock and baking soda; bring to a boil. Reduce heat and simmer until tender, about 1-1/2 hours.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','','','<p>Add leeks and&nbsp;potatoes. Simmer until vegetables are tender, about 20 minutes. Add more water if necessary. Season to taste with rosemary, salt and pepper.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','Fairway Green Olive Oil Toasts:','','<p>Rinse olives well to remove some of the excess brine; place in food processor and pulse to desired consistency. Pour out into a bowl and season to taste with extra virgin olive oil, lemon juice, zest and parsley.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','','','<p>Spread olive mixture onto baguette toasts.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(329.0,'','','','<p>To serve: Ladle soup into 4 bowls and top each with two olive toasts.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','Vegetable Wonton Soup:','','<p>In a medium skillet over medium high heat, heat 2 tbsp oil. Add garlic and mushrooms and saut&eacute; for 5 minutes. Add soy sauce and chili garlic sauce and cook for 5 minutes more or until softened and slightly reduced. Let cool.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','','','<p>Working with one wonton wrapper at a time, fill with about 2 teaspoons of cooled mushroom filling in middle of circle. Lightly brush edges with water and fold over to make a half moon shape, pressing tightly to seal. Set aside and repeat to fill all the wontons.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','','','<p>In a large pot, heat remaining 2 tbsp oil. Add carrots and saut&eacute; 4 minutes. Add green onion and cabbage and saut&eacute; 2 minutes more or until softened. Add broth, water and salt and bring to a boil.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','','','<p>Reduce to a simmer and cook for 8 to 10 minutes or until vegetables are tender. Add prepared wontons and cook 4 to 6 minutes or until wontons float and are tender. Divide between 4 bowls.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','Garlic Chile Sauce: (yields 2/3 cup)','','<p>Put all ingredients in a mini food processor, finely chop by hand or smash in a mortar and pestle until a coarse texture is achieved.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','','','<p>Transfer to a small saucepan and bring to a simmer over low heat. Simmer 5 to 8 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(330.0,'','','','<p>Remove from heat and set aside to cool. Use once at room temperature. Store in an airtight container in the refrigerator for several months.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(331.0,'','','1','<p>In a medium saucepan, combine cranberries, sugar, orange zest, and 1/2 cup water; season with salt and pepper.&nbsp;</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(331.0,'','','2','<p>Bring to a boil over medium-high heat.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(331.0,'','','3','<p>Reduce to a simmer and cook until sauce thickens, 20 to 25 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(331.0,'','','4','<p>Remove from heat and stir in orange juice.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(332.0,'','','1','<p>Toast the sesame seeds by heating a saut&eacute; pan on medium heat. Add sesame seeds and move pan so they spread out in a single layer. Cook until seeds are lightly browned, stirring occasionally, about 3-5 minutes. Do not walk away from them while cooking, as once they start to brown they can easily burn. Once lightly toasted remove from heat and put into a small bowl, set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(332.0,'','','2','<p>Mix the stock, soy sauce, and dark sesame oil together in a small bowl, set aside.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(332.0,'','','3','<p>Heat 2 tbsp of peanut, canola or grapeseed oil in a large, covered saut&eacute; pan on medium high heat. Add the broccoli florets, snow peas, mushrooms and/or carrots. Stir to coat the vegetables with the oil. Cook, stirring constantly for about 2 minutes. Clear a space in the middle of the broccoli and add the ginger and garlic. Add a little more oil to the ginger and garlic (about a teaspoon) and saut&eacute; for half a minute, stirring just the garlic and ginger, until fragrant. Then stir the garlic and ginger in with the mixed vegetables.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(332.0,'','','4','<p>Add the vegetable stock mixture to the pan. Bring to a simmer, reduce the heat and cover. Let cook for 2 to&nbsp;3 minutes, until vegetables are still firm, but can be pierced with a fork. Remove from heat. Remove vegetables with a slotted spoon to a bowl. Return pan to heat, increase heat to high and boil down the liquid until just a couple tablespoons remain.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(332.0,'','','5','<p>Turn off heat, return broccoli to the pan, add the toasted sesame seeds, toss with the liquid. Put into a serving bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','1','<p>Cut all of the vegetables into large cubes and keep them separated.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','2','<p>Heat 2 tbsp of the olive oil in a heavy saut&eacute; pan. When the oil is hot add the onions and cook for 10 minutes over high heat. Then place the onions in a large bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','3','<p>Repeat this process until all the vegetables have been saut&eacute;ed in small batches, being careful not to overcrowd the pan.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','4','<p>Preheat the oven to 350&ordm;F.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','5','<p>Place all of the saut&eacute;ed vegetables into a large, oven-safe pot.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(333.0,'','','6','<p>Put the vegetables into the oven and cook for 45 minutes. The vegetables will give up enough of their juices so that they don&#39;t burn, however you need to keep an eye on them and stir them from time to time. The ratatouille should have a very &quot;country&quot; look to it.</p>
',NULL,'','Chef’s Note:','<p>For a little extra kick, you can chop 2 cloves of garlic with some flat leaf parsley, and sprinkle on top just as the dish is served. The ratatouille can be served warm, it does not need to be very hot.</p>
');
INSERT INTO "RecipeStep" VALUES(334.0,'','','1','<p>Preheat oven to 450&ordm;F.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(334.0,'','','2','<p>Wash asparagus and place on a heavy roasting pan or cookie sheet. Drizzle with 2 tablespoons olive oil and salt and pepper to taste. Place in the upper rack of the oven and roast for 10 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(334.0,'','','3','<p>Take out of the oven and cover in shaved Parmigiano Reggiano.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(334.0,'','','4','<p>Return to the oven for 5 minutes. Remove from oven, drizzle with remaining olive oil, and serve.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','1','<p>To make your own freshly cooked pumpkin pie filling, de-stem 1-2 small pumpkins, quarter, remove seeds and de-string them. Heat the oven to 400&deg;F. Place the pumpkin quarters on a baking dish and bake with the meat facing up. Bake for 1 hour or until very soft inside. Remove from the oven and let cool. Once cool, scrape the pumpkin meat leaving the empty shell behind. Put the pumpkin meat in a food processor or mash with a fork until pureed and smooth.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','2','<p>Combine in order the pumpkin, brown and granulated sugar, salt, cinnamon, ginger, vanilla, nutmeg, and cloves.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','3','<p>Beat 3 eggs in a large mixing bowl.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','4','<p>Add the pumpkin and mix.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','5','<p>Add the milk and mix well.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','6','<p>Brush your raw pie shell with an egg wash (1 egg, lightly beaten with a splash of milk or water) before adding filling to prevent the crust from getting soggy.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','7','<p>Place the mixture in the ready-made pie shell.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','8','<p>Bake at 350&deg;F for 55 minutes, or until the center is set (if you poke the center with a toothpick, it should come out clean).</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','9','<p>For the whipped cream, put all the whipped cream ingredients in a stand mixer and beat on high until soft peaks form, about 3 minutes.</p>
',NULL,'','','');
INSERT INTO "RecipeStep" VALUES(335.0,'','','10','<p>Remove pie from oven, place on rack to cool. Add dollop of whipped cream on each slice or place in a side dish and serve.</p>
',NULL,'','','');
CREATE TABLE IF NOT EXISTS Reward (RewardID unique, Name, Description, ValueMessage, StartDate DATETIME, ExpireDate DATETIME, ImagePathSmall, ImagePathLarge, ImagePathBarcode);
INSERT INTO "Reward" VALUES(337.0,'2 for $5 Fairway Hazelnut Spread','<p><span style="line-height: 1.6em;">Regular 13 oz jar, $3.49.</span></p>

<p>&nbsp;</p>

<p>This offer is limited to&nbsp;one time use per customer. &nbsp;Valid at all Fairway stores.&nbsp;&nbsp;Void where prohibited or if altered, reproduced or transferred. Coupon may not be used by employees of Fairway Market.</p>
','Limit 2','Nov 1, 2013 5:00:00 AM','Dec 19, 2013 5:45:00 AM',417.0,412.0,NULL);
INSERT INTO "Reward" VALUES(338.0,'$3 off Fairway Cabeço Das Nogueiras Olive Oil','<p><span style="line-height: 1.6em;">Regluar 1L, $15.99.</span></p>

<p>&nbsp;</p>

<p>This offer is limited to&nbsp;one time use per customer. Valid at all Fairway stores.&nbsp;Void where prohibited or if altered, reproduced or transferred. Coupon may not be used by employees of Fairway Market.</p>
','Limit 1','Nov 1, 2013 5:00:00 AM','Dec 19, 2013 5:45:00 AM',415.0,410.0,NULL);
INSERT INTO "Reward" VALUES(339.0,'$1 off 2 Fairway Chocolate Bars','<p><span style="line-height: 1.6em;">Regulars 3 oz, $3.49</span></p>

<p>&nbsp;</p>

<p>This offer is limited to&nbsp;one time use per customer. Valid at all Fairway stores.&nbsp;Void where prohibited or if altered, reproduced or transferred. Coupon may not be used by employees of Fairway Market.</p>
','Limit 2','Nov 1, 2013 5:00:00 AM','Dec 19, 2013 5:45:00 AM',416.0,411.0,NULL);
INSERT INTO "Reward" VALUES(340.0,'$1 off Fairway Whole Wheat Artisanal Pastas','<p><span style="line-height: 1.6em;">Offer applies to Fairway&#39;s Whole Wheat Gigli and Whole Wheat Strozzapreti only.</span></p>

<p>&nbsp;</p>

<p>Regular 17.6 oz, $4.29.</p>

<p>&nbsp;</p>

<p>This offer is limited to&nbsp;one time use per customer. Valid at all Fairway stores.&nbsp;&nbsp;Void where prohibited or if altered, reproduced or transferred. Coupon may not be used by employees of Fairway Market.</p>
','Limit 1','Nov 1, 2013 5:00:00 AM','Dec 19, 2013 5:45:00 AM',419.0,414.0,NULL);
INSERT INTO "Reward" VALUES(341.0,'20% off 1 Fairway Puttanesca Sauce','<p><span style="line-height: 1.6em;">Regular 32 oz,&nbsp;$5.49.</span></p>

<p>&nbsp;</p>

<p>This offer is limited to&nbsp;one time use per customer. Valid at all Fairway stores.&nbsp;&nbsp;Void where prohibited or if altered, reproduced or transferred. Coupon may not be used by employees of Fairway Market.</p>
','Limit 1','Nov 1, 2013 5:00:00 AM','Dec 19, 2013 5:45:00 AM',508.0,413.0,NULL);
CREATE TABLE IF NOT EXISTS AboutTheApp (AboutID,Title,Version,Copyright);
INSERT INTO "AboutTheApp" VALUES(229.0,'Fairway Market Mobile App for IPhone','1.3.3','© 1940-2013 Fairway Market');
CREATE TABLE IF NOT EXISTS Legal (LegalID,Title,Overview);
INSERT INTO "Legal" VALUES(230.0,'Terms and Conditions','<p>The following terms and conditions (the &quot;Terms and Conditions&quot;) govern your use of the Fairway web sites, web pages, interactive features, applications, blogs, software, tools, mobile applications, Facebook, Twitter or other social networking Fairway sites, and their respective contents, and other online wireless offerings that post a link to these Terms and Conditions, whether accessed via computer, mobile device or other technology (the &quot;Sites&quot;). The Sites are made available by Fairway Group Acquisition Company (&quot;Fairway&quot; or &quot;we&quot; or &quot;us&quot;). We may change the Terms and Conditions from time to time, at any time without notice to you, by posting such changes on the Sites. BY USING THE SITES, YOU ACCEPT AND AGREE TO THESE TERMS AND CONDITIONS AS APPLIED TO YOUR USE OF THE SITES. If you do not agree to these Terms and Conditions, you may not access or otherwise use the Sites.</p>

<p><br />
<strong>Proprietary Rights</strong><br />
As between you and Fairway, Fairway owns, solely and exclusively, all rights, title and interest in and to the Sites, all the content (including, for example, audio, photographs, illustrations, graphics, other visuals, video, copy, software, etc.), code, data and materials thereon, the look and feel, design and organization of the Sites, and the compilation of the content, code, data and materials on the Sites, including, but not limited to, any copyrights, trademark rights, patent rights, database rights, moral rights, sui generis rights and other intellectual property and proprietary rights therein. Your use of the Sites does not grant to you ownership of any content, code, data or materials you may access on the Sites. You may view the content on the Sites on your computer or other internet compatible device, and make single copies or prints of the content on the Sites for your personal, internal use only. The Sites and the services offered on or through the Sites, including any content and materials thereon, are only for your personal, non-commercial use. Any commercial distribution, publishing or exploitation of the Sites, or any content, code, data or materials on the Sites, is strictly prohibited, unless you have received the express prior written permission of Fairway or the applicable rights holder. You may not otherwise download, display, copy, reproduce, distribute, modify, perform, transfer, create derivative works from, sell or otherwise exploit any content, code, data or materials on the Sites. If you make other use of the Sites, or the content, code, data or materials thereon, except as otherwise provided above, you may violate copyright and other laws of the United States, other countries, as well as applicable state laws and may be subject to liability for such unauthorized use. Fairway will enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution.</p>

<p>&nbsp;</p>

<p><strong>Trademarks</strong><br />
The trademarks, logos, service marks and trade names (collectively, the &quot;Trademarks&quot;) displayed on the Sites are registered and/or unregistered Trademarks of Fairway, its affiliates and/or others and may not be used in connection with products and/or services that are not related to, associated with, or sponsored by their rights holders that are likely to cause customer confusion, or in any manner that disparages or discredits their rights holders. Nothing contained on the Sites should be construed as granting, by implication, estoppel, or otherwise, any license or right to use any Trademark displayed on the Sites without the written permission of Fairway or the third party that may own the applicable Trademark. Your misuse of the Trademarks displayed on the Sites is strictly prohibited. Fairway will enforce its Trademark rights to the fullest extent of the law, including the seeking of criminal prosecution.</p>

<p>&nbsp;</p>

<p><strong>User Information</strong><br />
In the course of your use of the Sites, you may be asked to provide certain personalized information to us (such information referred to hereinafter as &quot;User Information&quot;). Our information collection and use policies with respect to the privacy of such User Information are set forth in the Fairway Privacy Policy, which is incorporated herein by reference for all purposes. You acknowledge and agree that you are solely responsible for the accuracy and content of User Information, and you agree to keep it up to date.</p>

<p>&nbsp;</p>

<p><strong>Unsolicited Materials</strong><br />
Unless specifically requested, we do not solicit nor do we wish to receive any confidential, secret or proprietary information or other material from you through the Sites, by e-mail or in any other way. Any information, creative works, demos, ideas, suggestions, concepts, methods, systems, designs, plans, techniques or other materials submitted or sent to us (&quot;Submitted Materials&quot;) will be deemed not to be confidential or secret, and may be used by us in any manner consistent with the Fairway&rsquo;s Privacy Policy. By submitting or sending Submitted Materials to us, you: (i) represent and warrant that the Submitted Materials are original to you, that no other party has any rights thereto, and that any &quot;moral rights&quot; in Submitted Materials have been waived, and (ii) you grant us a royalty-free, unrestricted, worldwide, perpetual, irrevocable, non-exclusive and fully transferable, assignable and sublicensable right and license to use, copy, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, perform and display such material (in whole or part) and/or to incorporate it in other works in any form, media, or technology now known or later developed. We cannot be responsible for maintaining any Submitted Material that you provide to us, and we may delete or destroy any such Submitted Material at any time.&nbsp; You understand and acknowledge that you are fully responsible for the content, including the legality and appropriateness of the Submitted Materials.&nbsp; Fairway disclaims any liability for the content or accuracy of any Submitted Materials.</p>

<p>&nbsp;</p>

<p><strong>User Conduct</strong><br />
You warrant and agree that you shall not: (a) impersonate any person or entity or misrepresent your affiliation with any other person or entity; (b) upload, post, publish, transmit, reproduce, distribute or in any way exploit any information or other material obtained through the Sites for commercial purposes (other than as expressly permitted by the provider of such information or other material); or (c) attempt to gain unauthorized access to other computer systems through the Sites. You may not: (i) engage in spidering, &quot;screen scraping,&quot; &quot;database scraping,&quot; harvesting of e-mail addresses, wireless addresses or other contact or personal information, or any other automatic means of obtaining lists of users or other information from or through the Sites or the services offered on or through the Sites, including, without limitation, any information residing on any server or database connected to the Sites or the services offered on or through the Sites; (ii) obtain or attempt to obtain unauthorized access to computer systems, materials or information through any means; (iii) use the Sites or the services made available on or through the Sites in any manner with the intent to interrupt, damage, disable, overburden, or impair the Sites or such services, including, without limitation, sending mass unsolicited messages or &quot;flooding&quot; servers with requests; or (iv) use the Sites or the Sites&rsquo; services in violation of any applicable law. You further agree that you may not attempt (or encourage or support any one else&#39;s attempt) to circumvent, reverse engineer, decrypt, or otherwise alter or interfere with the Sites or the Sites&#39; services, or any content thereof, or make unauthorized use thereof. You agree that you will not use the Sites in any manner that could damage, disable, overburden, or impair the Sites or interfere with any other party&#39;s use and enjoyment of the Sites. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Sites.</p>

<p>You agree that if you include a link from any other web site to the Sites, such link shall open in a new browser window. You agree not to link from any other web site to the Sites in any manner such that the Sites, or any page of the Sites, are &quot;framed,&quot; surrounded or obfuscated by any third party content, materials or branding. We reserve the right to revoke your right to link to the Sites from your web site at any time upon written notice to you.</p>

<p>You agree to defend, indemnify and hold Fairway and its directors, officers, members, managers, employees, owners and agents harmless from any and all claims, liabilities, costs and expenses, including reasonable attorneys&#39; fees, arising in any way from your use of the Sites, your placement or transmission of any message, content, information, software or other materials through the Sites, or your breach or violation of the law or of these Terms and Conditions. Fairway reserves the right, at its own expense, to assume the exclusive defense and control of any matter otherwise subject to indemnification by you, and in such case, you agree to cooperate with Fairway&#39;s defense of such claim.</p>

<p>&nbsp;</p>

<p><strong>Orders for Products and Services</strong><br />
We may make certain products available to visitors and registrants of the Sites. You may only order products if, and you hereby represent and warrant that, you are domiciled in the United States and you are 18 years old or older. You agree to pay in full the prices for any purchases you make either by credit/debit card concurrent with your online order or by other payment means acceptable to Fairway. You agree to pay all applicable taxes. If payment is not received by us from your credit or debit card issuer or its agents, you agree to pay all amounts due upon demand by us. You agree that you are not permitted to resell any products purchased through the Sites for commercial purposes.</p>

<p>&nbsp;</p>

<p><strong>Third Party Web Sites</strong><br />
You may be able to link from the Sites to third party web sites (&quot;Linked Sites&quot;). You acknowledge and agree that we have no responsibility for the information, content, products, services, advertising, code or other materials which may or may not be provided by or through Linked Sites. Links to Linked Sites do not constitute an endorsement by us of such web sites or the information, content, products, services, advertising, code or other materials presented on or through such web sites.</p>

<p>The inclusion of any links to such web sites on our Sites do not imply Fairway&#39;s endorsement, sponsorship, or recommendation of such web sites. Fairway disclaims any liability for links (1) from another web site to the Sites and (2) to another web site from the Sites. Fairway cannot guarantee the standards of any web site to which links are provided on the Sites nor shall Fairway be held responsible for the contents of such non-Fairway sites, or any subsequent links. For this reason, Fairway does not represent or warrant that the contents of any third party web site is accurate, compliant with state or federal law, or compliant with copyright or other intellectual property laws. Also, Fairway is not responsible for web casting or any other form of transmission received from any linked web site. Any reliance on the contents of a third party web site is done at your own risk and you assume all responsibilities and consequences resulting from such reliance.</p>

<p>&nbsp;</p>

<p><strong>DISCLAIMER OF WARRANTIES</strong><br />
THE SITES, INCLUDING, WITHOUT LIMITATION, ALL SERVICES, CONTENT, FUNCTIONS AND MATERIALS, ARE PROVIDED &quot;AS IS,&quot; &quot;AS AVAILABLE&quot;, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, WITHOUT LIMITATION, ANY WARRANTY FOR INFORMATION, DATA, DATA PROCESSING SERVICES, UPTIME OR UNINTERRUPTED ACCESS, ANY WARRANTIES CONCERNING THE AVAILABILITY, ACCURACY, USEFULNESS, OR CONTENT OF INFORMATION, AND ANY WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, AND WE HEREBY DISCLAIM ANY AND ALL SUCH WARRANTIES, EXPRESS AND IMPLIED. WE DO NOT WARRANT THAT THE SITES OR THE SERVICES, CONTENT, FUNCTIONS OR MATERIALS CONTAINED THEREIN WILL BE TIMELY, SECURE, UNINTERRUPTED OR ERROR FREE, OR THAT DEFECTS WILL BE CORRECTED. WE MAKE NO WARRANTY THAT THE SITES WILL MEET USERS&#39; REQUIREMENTS. NO ADVICE, RESULTS OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM US OR THROUGH THE SITES SHALL CREATE ANY WARRANTY NOT EXPRESSLY MADE HEREIN. FAIRWAY ALSO ASSUMES NO RESPONSIBILITY, AND SHALL NOT BE LIABLE FOR, ANY DAMAGES TO, OR VIRUSES THAT MAY INFECT, YOUR COMPUTER EQUIPMENT OR OTHER PROPERTY ON ACCOUNT OF YOUR ACCESS TO, USE OF, OR BROWSING IN THE SITES OR YOUR DOWNLOADING OF ANY MATERIALS, DATA, TEXT, IMAGES, VIDEO, OR AUDIO FROM THE SITES. IF YOU ARE DISSATISFIED WITH THE SITES, YOUR SOLE REMEDY IS TO DISCONTINUE USING THE SITES.</p>

<p>WE TRY TO ENSURE THAT THE INFORMATION POSTED ON THE SITES IS CORRECT AND UP-TO-DATE. WE RESERVE THE RIGHT TO CHANGE OR MAKE CORRECTIONS TO ANY OF THE INFORMATION PROVIDED ON THE SITES AT ANY TIME AND WITHOUT ANY PRIOR WARNING. WE CANNOT, AND DO NOT, GUARANTEE THE CORRECTNESS, PRECISION, THOROUGHNESS OR COMPLETENESS OF ANY OF THE INFORMATION AVAILABLE ON THE SITES, NOR WILL WE BE LIABLE FOR ANY INACCURACY OR OMISSION CONCERNING ANY OF THE INFORMATION PROVIDED ON THE SITES, INCLUDING BUT NOT LIMITED TO TECHNICAL INACCURACIES AND TYPOGRAPHICAL ERRORS.</p>

<p>WITHOUT LIMITATION OF THE ABOVE IN THIS SECTION, FAIRWAY AND ITS AFFILIATES, EMPLOYEES, OWNERS, SUPPLIERS, CONSULTANTS AND LICENSORS MAKE NO WARRANTIES OR REPRESENTATIONS REGARDING ANY PRODUCTS OR SERVICES ORDERED OR PROVIDED VIA THE SITES, AND HEREBY DISCLAIM, AND YOU HEREBY WAIVE, ANY AND ALL WARRANTIES AND REPRESENTATIONS MADE IN PRODUCT OR SERVICES LITERATURE, FREQUENTLY ASKED QUESTIONS DOCUMENTS AND OTHERWISE ON THE SITES OR IN CORRESPONDENCE WITH FAIRWAY OR ITS AGENTS. ANY PRODUCTS AND SERVICES ORDERED OR PROVIDED VIA THE SITES ARE PROVIDED BY FAIRWAY &quot;AS IS&quot;, EXCEPT TO THE EXTENT, IF AT ALL, OTHERWISE SET FORTH IN A LICENSE OR SALE AGREEMENT SEPARATELY ENTERED INTO IN WRITING BETWEEN YOU AND FAIRWAY OR ITS LICENSORS, CONSULTANTS OR SUPPLIERS.&nbsp; WE ARE NOT LIABLE FOR INDIVIDUAL REACTIONS TO ANY PRODUCTS.</p>

<p>&nbsp;</p>

<p><strong>LIMITATION OF LIABILITY</strong><br />
IN NO EVENT, INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE, SHALL FAIRWAY, ANY MEMBER OF THE FAIRWAY FAMILY, OR ANY OF THEIR DIRECTORS, OFFICERS, EMPLOYEES, OWNERS, AGENTS OR CONTENT OR SERVICE PROVIDERS (COLLECTIVELY, THE &quot;PROTECTED ENTITIES&quot;) BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL, EXEMPLARY OR PUNITIVE DAMAGES ARISING FROM, OR DIRECTLY OR INDIRECTLY RELATED TO, THE USE OF, OR THE INABILITY TO USE, THE SITES OR THE CONTENT, MATERIALS AND FUNCTIONS RELATED THERETO, YOUR PROVISION OF INFORMATION VIA THE SITES, LOST BUSINESS OR LOST SALES, EVEN IF SUCH PROTECTED ENTITY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. THE PROTECTED ENTITIES DO NOT ASSUME ANY LIABILITY FOR INACCURACIES OR MISSTATEMENTS ABOUT PRODUCTS.&nbsp; SOME JURISDICTIONS DO NOT ALLOW THE LIMITATION OR EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES SO SOME OF THE ABOVE LIMITATIONS MAY NOT APPLY TO CERTAIN USERS. IN NO EVENT SHALL THE PROTECTED ENTITIES BE LIABLE FOR OR IN CONNECTION WITH ANY CONTENT POSTED, TRANSMITTED, EXCHANGED OR RECEIVED BY OR ON BEHALF OF ANY USER OR OTHER PERSON ON OR THROUGH THE SITES. IN NO EVENT SHALL THE TOTAL AGGREGATE LIABILITY OF THE PROTECTED ENTITIES TO YOU FOR ALL DAMAGES, LOSSES, AND CAUSES OF ACTION (WHETHER IN CONTRACT OR TORT, INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE OR OTHERWISE) ARISING FROM THE TERMS AND CONDITIONS OR YOUR USE OF THE SITES EXCEED, IN THE AGGREGATE, THE AMOUNT, IF ANY, PAID BY YOU TO FAIRWAY FOR YOUR USE OF THE SITES OR PURCHASE OF PRODUCTS VIA THE SITES.</p>

<p>&nbsp;</p>

<p><strong>HEALTH AND WELLNESS INFORMATION</strong><br />
THE SITES ARE FOR CONSUMER EDUCATIONAL USE ONLY.&nbsp; NOTHING CONTAINED ON THE SITES IS OR SHOULD BE CONSIDERED, OR USED AS A SUBSTITUTE FOR, MEDICAL ADVICE, DIAGNOSIS OR TREATMENT.&nbsp; WE ADVISE USERS TO ALWAYS SEEK THE ADVICE OF A PHYSICIAN OR OTHER QUALIFIED HEALTH CARE PROVIDER WITH ANY QUESTIONS REGARDING PERSONAL HEALTH OR MEDICAL CONDITIONS.</p>

<p>FAIRWAY PROVIDES RECIPES AS SUGGESTIONS ONLY ON THE SITES AND SUCH RECIPES ARE TO BE PREPARED SO &ldquo;AT YOUR OWN RISK&rdquo;.&nbsp; FAIRWAY DOES NOT GUARANTEE THAT FAVORABLE RESULTS WILL BE OBTAINED, AND MAKES NO REPRESENTATIONS OR WARRANTIES WITH RESPECT TO THE RECIPES.&nbsp; FAIRWAY SHALL NOT BE LIABLE FOR ANY DAMAGE, MEDICALLY OR OTHERWISE, RESULTING FROM THE PREPARATION OF FOOD USING THE INSTRUCTIONS OR RECIPES PROVIDED ON THE SITES.&nbsp; USERS MUST CHECK THE INSTRUCTIONS PROVIDED AND DETERMINE THEIR VALUE AND ANY POSSIBLE MEDICAL CONDITION THAT MAY ARISE FROM THE CONSUMPTION OF THE INGREDIENTS LISTED THEREIN. &nbsp;</p>

<p>FAIRWAY AND ITS AFFILIATES DO NOT RECOMMEND, ENDORSE OR MAKE ANY REPRESENTATION ABOUT THE EFFICACY, APPROPRIATENESS AND/OR SUITABILITY OF ANY SPECIFIC SUGGESTIONS MADE ON THE SITES.&nbsp; THE INFORMATION AND STATEMENTS MADE REGARDING DIETARY SUPPLEMENTS HAVE NOT BEEN EVALUATED BY THE FOOD AND DRUG ADMINISTRATION AND ARE NOT INTENDED TO DIAGNOSE, TREAT, CURE OR PREVENT ANY DISEASE OR HEALTH CONDITION.&nbsp; FAIRWAY ENCOURAGES YOU TO CONSULT WITH YOUR PHYSICIAN REGARDING ALL THE RECOMMENDATIONS AND INFORMATION CONTAINED ON THE SITES.&nbsp; YOU SHOULD NEVER AT ANY TIME DISREGARD PROFESSIONAL MEDICAL ADVICE AND/OR DELAY SEEKING MEDICAL TREATMENT BECAUSE OF SOMETHING YOU HAVE READ ON THE SITES.&nbsp; FOR MEDICAL CONCERNS, INCLUDING DECISIONS AND MEDICATIONS, VITAMINS, SUPPLEMENTS AND OTHER TREATMENTS, YOU SHOULD ALWAYS CONSULT YOUR PHYSICIAN OR, IN SERIOUS CASES, SEEK IMMEDIATE ASSISTANCE FROM EMERGENCY PERSONNEL.</p>

<p>&nbsp;</p>

<p><strong>Forward-Looking Statements</strong><br />
The Sites may contain forward-looking statements made pursuant to the safe harbor provisions of the Private Securities Litigation Reform Act of 1995. Forward-looking statements involving known and unknown risks and uncertainties and other factors that may cause Fairway&#39;s actual results in current or future periods to differ materially from forecasted results. Food retail is a large and highly competitive industry, and Fairway&#39;s business involves many risks and uncertainties, including, but not limited to: our ability to open new stores on a timely basis or at all; our ability to achieve sustained sales and profitable operating margins at new stores; the availability of financing to pursue our new store openings on satisfactory terms or at all; our ability to compete effectively with other retailers; our ability to maintain price competitiveness; the geographic concentration of our stores; our ability to maintain or improve our operating margins; our history of net losses; ordering errors or product supply disruptions in the delivery of perishable products; restrictions on our use of the Fairway name other than on the East Coast and in California and certain parts of Michigan and Ohio; our ability to retain and attract senior management, key employees and qualified store-level employees; rising costs of providing employee benefits, including increased healthcare costs and pension contributions due to unfunded pension liabilities; our ability to satisfy our ongoing capital needs and unanticipated cash requirements; and other risk factors detailed in our filings with the Securities and Exchange Commission (&quot;SEC&quot;), and available at the SEC&#39;s website at www.sec.gov. You are urged to consider these factors carefully in evaluating the forward-looking statements that may be contained on the Sites and are cautioned not to place undue reliance on such forward-looking statements, which are qualified in their entirety by this cautionary statement. &nbsp;</p>

<p>&nbsp;</p>

<p><strong>Applicable Laws</strong><br />
We control and operate the Sites from our offices in the United States of America. We do not represent that materials on the Sites are appropriate or available for use in other locations. Persons who choose to access the Sites from other locations do so on their own initiative, and are responsible for compliance with local laws, if and to the extent local laws are applicable. The Sites are not designed nor are they intended to collect personal information from children under the age of thirteen.&nbsp; See the Fairway Privacy Policy regarding use of the Sites by children.&nbsp; All parties to these terms and conditions waive their respective rights to a trial by jury.</p>

<p>&nbsp;</p>

<p><strong>Termination</strong><br />
Fairway may terminate, change, suspend or discontinue any aspect of the Sites or the Sites&rsquo; services at any time. Fairway may restrict, suspend or terminate your access to the Sites and/or the Sites&rsquo; services if we believe you are in breach of our Terms and Conditions or applicable law, or for any other reason without notice or liability. Fairway maintains a policy that provides for the termination in appropriate circumstances of the use privileges of users who are repeat infringers of intellectual property rights.</p>

<p>&nbsp;</p>

<p><strong>Changes to Terms of Use</strong><br />
Fairway reserves the right, at its sole discretion, to change, modify, add or remove any portion of these Terms and Conditions, in whole or in part, at any time. Changes in these Terms and Conditions will be effective when posted. Your continued use of the Sites and/or the services offered on or through the Sites after any changes to the Terms and Conditions are posted will be considered acceptance of those changes.</p>

<p>&nbsp;</p>

<p><strong>Miscellaneous</strong><br />
The Terms and Conditions and the relationship between you and us shall be governed by the laws of the State of New York, without regard to its conflict of law provisions. You agree that any cause of action that may arise under the Terms and Conditions shall be commenced and be heard in the appropriate court in the State of New York, County of New York. You agree to submit to the personal and exclusive jurisdiction of the courts located within New York County in the State of New York. Our failure to exercise or enforce any right or provision of the Terms and Conditions shall not constitute a waiver of such right or provision. If any provision of the Terms and Conditions is found by a court of competent jurisdiction to be invalid, the parties nevertheless agree that the court should endeavor to give effect to the parties&#39; intentions as reflected in the provision, and the other provisions of the Terms and Conditions remain in full force and effect.</p>

<p>&nbsp;</p>

<p>Updated:&nbsp; September 2013</p>
');
INSERT INTO "Legal" VALUES(231.0,'Privacy Statement','<p>This Privacy Policy governs your use of the Fairway web sites, web pages, interactive features, applications, blogs, software, tools, mobile applications, Facebook, Twitter or other social networking Fairway sites, and their respective contents, and other online wireless offerings that post a link to this Privacy Policy, whether accessed via computer, mobile device or other technology (the &quot;Sites&quot;). By visiting the Sites, and/or using the services offered on or through the Sites, you agree to the terms of this Privacy Policy as they may be amended from time to time. As we update and expand our services, this Privacy Policy may change, so check back to this page from time to time. This Privacy Policy is incorporated into, and part of, the Fairway Terms and Conditions, which governs your use of the Sites in general. The Sites are intended for users who are located in the United States of America, and shall be interpreted under the laws of the United States.</p>

<p>&nbsp;</p>

<p><strong>Purpose</strong><br />
Your privacy is a serious matter to us. In order to make your visits to the Sites and use of the services available through the Sites as worthwhile as possible, we may ask you for Personal Information and we may collect certain information from your computer, mobile device or other internet compatible device each time you visit us. &ldquo;Personal Information&rdquo; includes, for example, your name; home and/or business address; e-mail address; telephone, wireless and/or fax number; short message service or text message address or other wireless device address; instant messaging address; credit card and other payment information; demographic information and/or other information that may identify you as an individual or allow online or offline contact with you as an individual. This privacy statement explains, in general, what Personal Information and other information is collected on the Sites, how the information is used, and with whom we may share such information. Please take a few minutes to read our Privacy Policy so that you understand how Fairway treats your information.</p>

<p>&nbsp;</p>

<p><strong>Right to Opt Out</strong><br />
You have the right to &ldquo;opt-out&rdquo; of certain of our uses of your Personal Information. For example, at the time you are requested to provide Personal Information on the Sites, you may have the opportunity to elect to, or not to: (1) receive correspondence from us, or (2) have your Personal Information shared with other entities for their marketing purposes. (We will not share, sell or trade your Personal Information with other entities outside of The Fairway Family for their marketing purposes without your permission. See the &ldquo;Do We Share Personal Information and Web Site Usage Information with Others?&rdquo; section below for more information about our data sharing practices.)</p>

<p>You may also opt-out of Fairway&rsquo;s promotional e-mails by clicking on an opt-out link within the e-mail you receive. Please understand that if you opt-out of receiving promotional correspondence from us, we may still contact you in connection with your relationship, activities, transactions and communications with us. Also, a request to have us stop sharing your Personal Information with other entities for marketing purposes will only apply as of the date of your request, and we will not be responsible for any communications that you may receive from entities that received your Personal Information prior to such request. In these cases, please contact that entity directly.</p>

<p>&nbsp;</p>

<p><strong>What Information is collected on the Sites?</strong></p>

<p><strong>User-Provided Information</strong><br />
We collect Personal Information from users of the Sites, for example, through such users&rsquo; activities, transactions and completion of online forms on the Sites. Such information is collected, for example, when users register or subscribe for accounts, electronic newsletters or other features on the Sites, make online purchases, enter any sweepstakes and/or contests, complete surveys, contribute to an open forum that we may make available on or through the Sites, submit a comment or question to us using a &ldquo;contact us&rdquo; or similar feature on the Sites, send us an e-mail, or in any other way submit Personal Information to us via the Sites.</p>

<p>You may be able to send information about our products and services to your friends and family members through the Sites by clicking on an &ldquo;E-mail to Friend&rdquo;, social media share feature or similar button on the Sites or in an e-mail that we have sent you. In some of these cases (unless you simply forward our e-mail on your own), you may provide the name and e-mail address of your friend or family member to us. Such information will be treated in accordance with this Privacy Policy and applicable law.</p>

<p>You may also be able to send an online card to a friend or family member, or send them a gift or gift certificate. If so, you may be required to provide us with your friend&rsquo;s or family member&rsquo;s Personal Information. Such information will be treated in accordance with this Privacy Policy and applicable law.</p>

<p>&nbsp;</p>

<p><strong>Web Site Usage Information</strong></p>

<p><em><strong>Cookies</strong></em><br />
We may use &ldquo;cookies&rdquo; to keep, and sometimes track, information about you. Cookies are small data files that are sent to your browser or related software from a web server and stored on your computer&#39;s hard drive. Cookies track where you travel on the Sites and what you look at and purchase. They may store the information in your shopping cart, and/or your username and/or password. A cookie may enable us to relate your use of the Sites to other information about you, including your Personal Information. All of these purposes serve to improve and personalize your experience on the Sites, to determine which areas and features of the Sites are most popular, and to make improvements and updates to enhance the experience on the Sites.</p>

<p>Most web browsers can be set to inform you when a cookie has been sent to you and provide you with the opportunity to refuse that cookie. Additionally, if you have a Flash player installed on our computer, your Flash player can be set to reject or delete Flash cookies. However, refusing a cookie may, in some cases, preclude you from using, or negatively impact the display or function of, the Sites or certain areas or features of the Sites including preventing you from purchasing products from the Sites.</p>

<p>&nbsp;</p>

<p><em><strong>Clear GIFs</strong></em><br />
We may use &ldquo;clear GIFs&rdquo; (aka &ldquo;web beacons&rdquo; or &ldquo;pixel tags&rdquo;) or similar technologies, in the Sites and/or in our communications with you to enable us to know whether you have visited a web page or received a message. A clear GIF is typically a one-pixel, transparent image (although it can be a visible image as well), located on a web page or in an e-mail or other type of message, which is retrieved from a remote site on the Internet enabling the verification of an individual&rsquo;s viewing or receipt of a web page or message. A clear gif may enable us to relate your viewing or receipt of a web page or message to other information about you, including your Personal Information.</p>

<p>&nbsp;</p>

<p><em><strong>IP Address and Clickstream Data</strong></em><br />
Our server automatically collects data about your server&#39;s Internet address when you visit us. This information, known as an Internet Protocol address, or IP Address, is a number that&rsquo;s automatically assigned to your computer by your Internet service provider whenever you&rsquo;re on the Internet. When you request pages from the Sites, our servers may log your IP Address and sometimes your domain name. Our server may also record the referring page that linked you to us (e.g., another web site or a search engine); the pages you visit on the Sites; the web site you visit after the Sites; the ads you see and/or click on; your product interests and purchases; other information about the type of web browser, computer, platform, related software and settings you are using; any search terms you have entered on the Sites or a referral site; and other web usage activity and data logged by our web servers. We use this information for internal system administration, to help diagnose problems with our server, and to administer the Sites. Such information may also be used to gather broad demographic information, such as country of origin and Internet Service Provider. We may also link this information with your Personal Information.</p>

<p>Any or all of these activities with regard to Web Site Usage Information may be performed on our behalf by our services providers.</p>

<p>&nbsp;</p>

<p><strong>How is the Personal Information used?</strong><br />
We will use the Personal Information you provide on the Sites, for example, to respond to your requests and to provide you with our product and service offerings. For example, we will process your orders, respond to your requests and inquiries and provide you with the products, services and features offered on or through the Sites. We may also use your Personal Information to help us develop and improve the Sites, tailor the Sites to your interests, and maintain our internal record keeping. We may match information collected from you through different means or at different times, including both Personal Information and Web Site Usage Information, and use such information along with information obtained from other sources, including third parties. In addition, we may send you notices (for example, in the form of e-mails, mailings, and the like), and otherwise correspond with you, about products, services, companies, coupons, promotions, contests and events, sponsored by us and others, that we think might interest you. Fairway may offer electronic newsletters and e-mails as a service to our users. You will only receive a newsletter or promotional e-mail from Fairway if you agree during registration, or during your other activities on or through the Sites, or using our newsletter sign up form, to receive these items. Unsubscribe instructions are included in each electronic newsletter and e-mail. You may opt-out of receiving such notices from us by following the instructions in the Right to Opt Out section above.</p>

<p>We may analyze user behavior as a measure of interest in, and use of, the Sites and e-mails, both on an individual basis and in the aggregate.</p>

<p>&nbsp;</p>

<p><strong>Do we share Personal Information and Web Site Usage information with others?</strong></p>

<p><strong>The Fairway Family</strong><br />
We, together with our affiliates, are collectively referred to in this Privacy Policy as &ldquo;The Fairway Family.&rdquo; Unless you instruct us otherwise as described in the Right to Opt Out section above, we may share your Personal Information and Web Site Usage Information among The Fairway Family, both for business purposes and for advertising and promotional purposes.</p>

<p>&nbsp;</p>

<p><strong>Co-sponsored Contests, Sweepstakes and Offerings</strong><br />
Some of our contests, sweepstakes and other offerings that we may make available on or through the Sites from time to time may be co-sponsored by another company. In those situations, the information we obtain from you in connection with such contest, sweepstake or offering may be shared with our co-sponsor, unless you instruct us not to by following the instructions in the Right to Opt Out section. In those situations, our co-sponsors will have the right to use your information for their own purposes, in accordance with their own policies. We are not responsible for how our co-sponsors may use your information.</p>

<p>&nbsp;</p>

<p><strong>Service Providers</strong><br />
Currently, we use a third party partner to provide our e-commerce solution, and we may use other third party partners to help operate the Sites and deliver our products and services. We may share your information with our third party e-commerce solution partner, our affiliates, service providers and other third parties that provide products or services for or through the Sites or for our business (such as web site or database hosting companies, address list hosting companies, e-mail service providers, analytics companies, distribution companies, fulfillment companies, and other similar service providers that use such information on our behalf). We require our service providers to maintain the confidentiality of your Personal Information.</p>

<p>&nbsp;</p>

<p><strong>Aggregate Statistics</strong><br />
We may disclose aggregate statistics regarding user behavior as a measure of interest in, and use of, the Sites and e-mails to third parties in the form of aggregate data, such as overall patterns or demographic reports that do not describe or identify any individual user. Aggregate information is non-personally identifiable/anonymous information about you, such as age, gender, types of products purchased, pages you access most frequently or search terms you enter. Aggregate information is used in a collective manner, and no single person can be identified by that compiled information. For example, the number of people who visit the Sites who are 25 years of age is aggregate information that does not personally identify a specific user.</p>

<p>&nbsp;</p>

<p><strong>Legally Compelled Disclosures</strong><br />
We may disclose user information to government authorities, and to other third parties when compelled to do so by government authorities, at our discretion, or otherwise as required by law in our good faith belief, including but not limited to in response to court orders and subpoenas and as otherwise required in connection with a judicial or government proceeding or legal process. We also may disclose user information when we have reason to believe that someone is causing injury to or interference with our rights or property, other users of the Sites, or anyone else that could be harmed by such activities. Fairway cooperates with law enforcement inquiries and other third parties to enforce laws, intellectual property rights and other rights.</p>

<p>&nbsp;</p>

<p><strong>Business Transfer</strong><br />
In the event that Fairway, any entity of The Fairway Family, or substantially all of its assets, are acquired by one or more third parties as a result of an acquisition, merger, sale, reorganization, consolidation or liquidation, Personal Information may be one of the transferred assets.</p>

<p>&nbsp;</p>

<p><strong>Third Party Ad Servers</strong><br />
We may use third-party advertising companies to serve ads when you visit the Sites. If so, a list of these ad-serving companies will be available here. These companies may use information (generally not including your name, address email address or telephone number) about your visits to this and other web sites in order to provide advertisements about goods and services of interest to you. These companies may employ cookies and clear gifs to measure advertising effectiveness. Any information that these third parties collect via cookies and clear gifs is generally not personally identifiable (unless, for example, you provide personally identifiable information to them through an ad or e-mail message). We encourage you to read these businesses&#39; privacy policies if you should have any concerns about how they will care for your Personal Information. If you would like more information about this practice and to know your choices about not having this information used by these companies, see the Network Advertising Initiative&rsquo;s consumer web site at http://www.networkadvertising.org/consumer/.</p>

<p>&nbsp;</p>

<p><strong>Wireless Addresses</strong><br />
If the email address you provide to us is a wireless email address, you agree to receive messages at such address from Fairway and the rest of The Fairway Family (unless and until you have elected not to receive such messages by following the instructions in the Right to Opt Out section above). You understand that your wireless carrier&#39;s standard rates apply to these messages, and that you may change your mind at any time by following the instructions in the Right to Opt Out section above. You represent that you are the owner or authorized user of the wireless device on which messages will be received, and that you are authorized to approve the applicable charges.</p>

<p>&nbsp;</p>

<p><strong>Your Access Rights</strong><br />
You may review the Personal Information that is stored in your user account on the Sites by emailing your request to our customer service department at info@fairwaymarket.com. We will send you a copy of the Personal Information we have on file in your user account (if any). You may provide us new or updated information at any time. We will endeavor to respond to your request to access, update or delete your information as soon as practicable. Before we are able to provide you with any information, correct any inaccuracies or delete any information, however, we may ask you to verify your identity and to provide other details to help us to respond to your request.</p>

<p>&nbsp;</p>

<p><strong>Security</strong><br />
Protecting your information is a priority for Fairway. We will take reasonable steps to protect the security and integrity of all Personal Information provided to the Sites. For example, we use industry standard Secure Socket Layer (SSL) technology to protect the security of your sensitive online transactions. However, due to the inherent nature of the Internet as an open global communications vehicle, we cannot guarantee that information, during transmission through the Internet or while stored on our system or otherwise in our care, will be absolutely safe from intrusion by others, such as hackers. No transmission of data over the Internet is guaranteed to be completely secure. It may be possible for third parties not under the control of Fairway to intercept or access transmissions or private communications unlawfully. While we strive to protect your personal information, Fairway cannot ensure or warrant the security of any information you transmit to us. Any such transmission is done at your own risk.</p>

<p>If you contact us by e-mail, you should be aware that your transmission might not be secure. A third party could view information you send by these methods in transit.</p>

<p>You may be able to create an account on the Sites with a username and password. If so, you are responsible for maintaining the strict confidentiality of your account password, and you shall be responsible for any access to or use of the Sites by you or any person or entity using your password, whether or not such access or use has been authorized by or on behalf of you, and whether or not such person or entity is your employee or agent. You agree to (a) immediately notify Fairway of any unauthorized use of your password or account or any other breach of security, and (b) ensure that you exit from your account at the end of each session. It is your sole responsibility to control the dissemination and use of your password, control access to and use of your account, and notify Fairway when you desire to cancel your account on the Sites. We will not be responsible or liable for any loss or damage arising from your failure to comply with this provision, and you agree to indemnify and hold harmless Fairway and other members of The Fairway Family for any improper, unauthorized or illegal use of your account.</p>

<p>We will have no liability for disclosure of your information due to errors or unauthorized acts of third parties during or after transmission.<br />
In the unlikely event that we believe that the security of your Personal Information in our possession or control may have been compromised, we may seek to notify you of that development. If a notification is appropriate, we would endeavor to do so as promptly as possible under the circumstances, and, to the extent we have your e-mail address, we may notify you by e-mail. You consent to our use of e-mail as a means of such notification.</p>

<p>&nbsp;</p>

<p><strong>Phishing</strong><br />
With identity theft a continuing problem, it has become increasingly common for unauthorized individuals to send e-mail messages to consumers, purporting to represent a legitimate company such as a bank or on-line merchant, requesting that the consumer provide personal, often sensitive information. Sometimes, the domain name of the e-mail address from which the e-mail appears to have been sent, and the domain name of the web site requesting such information, appears to be the domain name of a legitimate, trusted company. In reality, such sensitive information is received by an unauthorized individual to be used for purposes of identity theft. This illegal activity has come to be known as &ldquo;phishing.&rdquo;<br />
If you receive an e-mail or other correspondence requesting that you provide any sensitive information (including your password or credit card information) via e-mail or to a web site that does not seem to be affiliated with the Sites, or that otherwise seems suspicious to you, please do not provide such information, and report such request to us by sending an email to info@fairwaymarket.com.</p>

<p>&nbsp;</p>

<p><strong>Children and Privacy</strong><br />
Fairway is concerned about the safety of children when they use the Internet. We encourage parents and guardians to spend time with their children online and to be familiar with the sites their children visit. We will never knowingly request personally identifiable information from anyone under the age of 13 without prior verifiable parental consent when legally required. If we become aware that a customer is under the age of 13 and has registered without the legally required prior verifiable parental consent, we will remove his or her personally identifiable registration information from our files.</p>

<p>&nbsp;</p>

<p><strong>Consent to Processing</strong><br />
The Sites are hosted and operated in the United States, pursuant to United States law. By providing Personal Information to the Sites, you understand and consent to the collection, maintenance, processing and transfer of such information in and to the United States and other countries and territories.</p>

<p>&nbsp;</p>

<p><strong>Third Party &ldquo;Linked-To&rdquo; Web Sites</strong><br />
When you are on the Sites you may have the opportunity to visit, or link to, other sites not operated by Fairway, including other web sites operated by unaffiliated third parties. These sites may collect Personal Information about you. Fairway does not control sites that are operated by these entities and is not responsible for the information practices of these sites. This Privacy Policy does not address the information practices of those other web sites.</p>

<p>&nbsp;</p>

<p><strong>Changes to this Privacy Policy</strong><br />
Fairway reserves the right to change or update this Privacy Policy, or any other of our policies or practices, at any time, and will notify users of the Sites by posting such changed or updated Privacy Policy on this page. Any changes or updates will be effective immediately upon posting to the Sites. Under certain circumstances (for example, if we would like to use your Personal Information in a manner different from that stated in our Privacy Policy at the time of collection), we may also elect to notify you of changes or updates to our Privacy Policy by additional means, such as by sending you an e-mail.</p>

<p>&nbsp;</p>

<p><strong>Contact Us</strong><br />
If you have any questions or comments regarding our privacy practices, you may contact us at <a href="mailto:info@fairwaymarket.com">info@fairwaymarket.com</a></p>

<p>&nbsp;</p>

<p>Updated:&nbsp; September 2013</p>

<p>&nbsp;</p>
');
INSERT INTO "Legal" VALUES(367.0,'Frequently Asked Questions','<p><strong>What does the Fairway Market app do?</strong></p>

<p>&nbsp;</p>

<p>The Fairway Market app offers tons of helpful information and exciting features, as well as special offers just for you. The Fairway Market app lets you:</p>

<ul>
	<li>Learn about Fairway&rsquo;s favorite products</li>
	<li>Browse gourmet recipes</li>
	<li>Redeem special offers</li>
	<li>Explore music recommended by Fairway while you cook</li>
	<li>Create shopping lists</li>
	<li>Personalize the app to your dietary preferences</li>
	<li>Explore Fairway&rsquo;s departments</li>
</ul>

<p>&nbsp;</p>

<p><strong>What do the icons in the top tool bar of the app mean?</strong></p>

<p>&nbsp;</p>

<p>There are four icons in the top tool bar on the Home screen of the app. The icons are as follows, from left to right:</p>

<ul>
	<li>Dropdown menu: Tap to view all areas within the app.</li>
	<li>Products: Tap to view favorite Fairway products with tips and related recipes.</li>
	<li>Recipes: Tap to view favorite Fairway recipes with ingredients and steps to prepare, wine pairings and more.</li>
	<li>My Favorites: Tap to view the products and/ or recipes you&rsquo;ve selected as your favorites in the app.</li>
</ul>

<p>&nbsp;</p>

<p><strong>How do I add items to My Favorites?</strong></p>

<p>&nbsp;</p>

<p>You can add items to My Favorites by tapping on the My Favorites icon in the bottom tool bar on the left-hand side of the Products and Recipes home screens. You can also access My Favorites on the Home screen by tapping on the My Favorites icon.</p>

<p>&nbsp;</p>

<p><strong>How do I add items to my Shopping List?</strong></p>

<p>&nbsp;</p>

<p>You can add items to your Shopping List by tapping on the Shopping List icon in the bottom tool bar on the right-hand side of the Products and Recipes home screens. On your Shopping List home screen, you can add other items by typing them in manually. Checking off items on your Shopping List moves them to the bottom of the list. You can also access your Shopping List by tapping on the dropdown menu icon from the Home screen, where you will see the Shopping List icon under the Plan section.</p>

<p>&nbsp;</p>

<p><strong>How do I remove or edit items in my Shopping List?</strong></p>

<p>&nbsp;</p>

<p>Remove items from your Shopping List by tapping on the pencil and notepad icon on the far right of the Shopping List tool bar. On the subsequent Edit Shopping List screen, tap on the far left icon to remove items, or on the far right icon to edit the text.</p>

<p>&nbsp;</p>

<p><span style="line-height: 1.6em;">PRIVACY</span></p>

<p>&nbsp;</p>

<p><strong>How does Fairway safeguard my personal information?</strong></p>

<p>&nbsp;</p>

<p>Please refer to our Privacy Statement for information on the Fairway Market app privacy policy.</p>

<p>&nbsp;</p>

<p>PERSONALIZATION</p>

<p>&nbsp;</p>

<p><strong>How do I select my dietary preferences?</strong></p>

<p>&nbsp;</p>

<p>Select your dietary preferences by tapping on the dropdown menu in the top tool bar on the Home screen. Tap on My Dietary Pref. under the Personalize section. Tap on the dietary preferences that best suit your needs. Dietary preferences include: dairy free, fat free, gluten free, high fiber, kosher, low fat, low sodium, sugar conscious, vegan, vegetarian and wheat free.</p>

<p>You can access My Dietary Preferences and turn your dietary preferences on or off under the Apply Filters menu on both the Products and Recipes home screens.</p>

<p>&nbsp;</p>

<p>EXCLUSIVE OFFERS&nbsp;</p>

<p>&nbsp;</p>

<p><strong>How do I redeem Store Offers in the app?</strong></p>

<p>&nbsp;</p>

<p>Redeem store offers by tapping on the dropdown menu in the top tool bar on the Home Screen. Tap on the Store Offers icon under the Personalize section.</p>

<p>At your Fairway Market store, select the product(s) you wish to purchase listed under Store Offers in the Fairway Market app. At checkout, open Store Offers in the app on your mobile phone. Tap on a product to reveal its unique bar code. Show the bar code on your mobile phone to your cashier to redeem the discount on the selected item.</p>

<p>&nbsp;</p>

<p>MORE HELP</p>

<p>&nbsp;</p>

<p><strong>Who can I contact for issues with the Fairway Market app?</strong></p>

<p>&nbsp;</p>

<p>Please email&nbsp;<a href="mailto:mobile@fairwaymarket.com?subject=Mobile%20App%20Support">mobile@fairwaymarket.com</a>&nbsp;to report a broken feature or for any other technical issues with the Fairway Market app.</p>

<p>&nbsp;</p>
');
CREATE TABLE IF NOT EXISTS Curator (CuratorID,FirstName,LastName);
INSERT INTO "Curator" VALUES(371.0,'Hannah','Howard');
INSERT INTO "Curator" VALUES(383.0,'Lori','Levy');
INSERT INTO "Curator" VALUES(385.0,'Steve','Jenkins');
INSERT INTO "Curator" VALUES(403.0,'Rebecca','Elbaum');
CREATE TABLE IF NOT EXISTS CuratorPostJoin (CuratorID,CuratorPostID);
INSERT INTO "CuratorPostJoin" VALUES(371.0,380.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,373.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,377.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,376.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,374.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,375.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,381.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,379.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,372.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,378.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,401.0);
INSERT INTO "CuratorPostJoin" VALUES(371.0,402.0);
INSERT INTO "CuratorPostJoin" VALUES(383.0,384.0);
INSERT INTO "CuratorPostJoin" VALUES(385.0,386.0);
INSERT INTO "CuratorPostJoin" VALUES(385.0,387.0);
INSERT INTO "CuratorPostJoin" VALUES(385.0,388.0);
INSERT INTO "CuratorPostJoin" VALUES(385.0,389.0);
CREATE TABLE IF NOT EXISTS CuratorPost (CuratorPostID,PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, LastModified);
INSERT INTO "CuratorPost" VALUES(372.0,'Oct 1, 2013 6:00:00 AM','OBE Aussie Famous, Grass-Fed Organic Beef','<p>OBE is pronounced &ldquo;OH-bee&rdquo;, and it is the famous, Aussie grass-fed, certified organic BEEF that has been exclusive to your FAIRWAY for more than TEN YEARS NOW, and we are as huge fans of its flavor as you are!&nbsp; If you want to get home with the finest organic grass-fed steak money can buy, and you aren&rsquo;t yet aware that that steak is an OBE, well, then consider this an exhortation to partake of an item at Fairway that Fairway is so proud of that we can barely contain ourselves.</p>

<p>&nbsp;</p>

<p>Proud that we&rsquo;re the only stores that offer it,&nbsp; proud that it tastes so fine, proud that the price is so low, proud that we go to all this trouble to offer it to you, and proud that you have been so receptive.</p>

<p><a href="http://blog.fairwaymarket.com/2013/10/obe-aussie-famous-grass-fed-organic-delicious-beef/#more-4732" target="_blank">Continue reading &gt;</a></p>
',468.0,492.0,504.0,1383159325.0);
INSERT INTO "CuratorPost" VALUES(373.0,'Sep 25, 2013 6:00:00 AM','Boneless Chuck Flaptail: An Unsung, Delicious Beef Cut','<p>When you have a butcher you can trust, your Fairway butcher, you will be steered towards seriously great meat. Like the chuck flap. It&rsquo;s an unsexy name for a prized, rare cut of beef.&nbsp; Big grocery stores don&rsquo;t even bother; the chuck flap is an infinitesimal sliver of deliciousness. Out of a 1400 pound animal we get about 3 pounds of chuck flap! And we make sure to save it for you.</p>

<p>&nbsp;</p>

<p>Great braised low and slow; perfect in the slow cooker. Simmer with red wine, garlic, and lots of herbs&ndash;or slather in Fairway BBQ sauce.</p>

<p><a href="http://blog.fairwaymarket.com/2013/09/introducing-boneless-chuck-flaptail-an-unsung-delicious-beef-cut/#more-4828">Continue reading &gt;</a></p>
',465.0,490.0,503.0,1383159072.0);
INSERT INTO "CuratorPost" VALUES(374.0,'Sep 3, 2013 6:00:00 AM','From the Land of Don Quixote: Fairway’s Manchego','<p>Our newest cheese baby: La Mancha&rsquo;s wildly famous, adored sheep&rsquo;s milk cheese! Made from the sweet, fresh milk of Manchega sheep, and aged for 8 months to coax out a symphony of briny, nutty richness. D.O. name-controlled&ndash;the one and only.</p>

<p>&nbsp;</p>

<p>I would bet a whole lot that you&rsquo;ll love it. It&rsquo;s completely lovable. It has lots of depth of flavor, and a wonderful firm but buttery texture.</p>

<p><a href="http://blog.fairwaymarket.com/2013/09/from-the-land-of-don-quixote-fairways-very-own-manchego/#more-4657" target="_blank">Continue reading &gt;</a></p>
',451.0,470.0,485.0,1383159469.0);
INSERT INTO "CuratorPost" VALUES(375.0,'Aug 30, 2013 6:00:00 AM','Get Out of Your Cheese Rut','<p>It&rsquo;s easy to stick with the cheese you know and enjoy. But with our dazzling array of 600-ish cheeses, there&rsquo;s no excuse not to try something new. Risk averse? Our super-knowledgeable, always helpful cheesemongers will cut you a taste. Here&rsquo;s a few cheeses that go on my &ldquo;favorites of the moment&rdquo; list:</p>

<p>&nbsp;</p>

<p>From France&ndash;Petit Basque: So Fine! Despite the imposing size of most Pyrenean cheeses, bigger is not always better. A lovely little sheep&rsquo;s milk wheel. Aromas of brown butter and caramel; mild, nutty, sweet, lovely, and accessible.</p>

<p>&nbsp;</p>

<p>From Italy&ndash;Barricata al Pepe: The Italian term for barrel-aging is barricato. This firm, buttery cow&rsquo;s milk cheese from Veneto is blanketed in peppercorns and aged in oak barrels for nearly a year. The cheese takes on plenty of peppery zip, and sweet, wine-y flavors from the reside of the barrels. Serve with an off-dry Gewurtztraminer or Riesling, or a brawny Zin.</p>

<p><a href="http://blog.fairwaymarket.com/2013/08/in-a-cheese-rut-5-great-cheeses-to-help-you-break-free/#more-3873" target="_blank">Read about 4 other Cheeses &gt; </a></p>
',448.0,466.0,480.0,1383159452.0);
INSERT INTO "CuratorPost" VALUES(376.0,'Aug 26, 2013 6:00:00 AM','Fairway''s Jar of Hazelnut Goodness','<p>While nothing quite compares with the very first taste of our New Fairway Hazelnut Spread, we learned quickly during our &ldquo;cuttings&rdquo; (where you compare various production samples) that the best gift ever is an &lsquo;almost&rsquo; empty jar of our new Fairway Hazelnut Spread.&nbsp; As would be the case late one afternoon after a particularly jam-packed day of off-site meetings, we returned to our big communal office room, sort of like a loft, and we started rummaging around for something to eat as we had missed lunch, a rarity for us Fairway folks, I assure you.</p>

<p>&nbsp;</p>

<p>Our new hazelnut spread is made from an ages-old family recipe in the Piedmont region of Italy. It is ultra-creamy, with a higher hazelnut content than the name branded counterpart.&nbsp; Your family is going to LOVE this.&nbsp; YOU are going to love this.</p>

<p><a href="http://blog.fairwaymarket.com/2013/08/hitting-bottom-%E2%80%9Cbreaking-bad%E2%80%9D-with-an-almost-empty-jar-of-fairway%E2%80%99s-new-hazelnut-spread/#more-4582" target="_blank">Read more &gt; </a></p>
',459.0,478.0,497.0,1383159502.0);
INSERT INTO "CuratorPost" VALUES(377.0,'Sep 6, 2013 6:00:00 AM','Exotic Fruit Adventures','<p>Far, far away, far-out looking treats are being grown on trees and bushes and shipped straight to your Fairway (we never warehouse our produce!). If you want a taste of summer&ndash;or to close your eyes and channel white sand and bright blue sky and sea&ndash;these wonderful tropical fruits are a good start. Plus, they are so cool. Here are a few of my favorites. Try something new and wonderful today!</p>

<p>&nbsp;</p>

<p>Longan (pictured above)<br />
Native to China, this sweet, juicy and succulent yellowish-brown berry is a close relative of the lychee fruit. In Vietnam, where it&rsquo;s known as &ldquo;dragon&rsquo;s eye&rdquo;, longan has been used as an antidote to snake bites for centuries&hellip;it&rsquo;s also believed to make skin glow and rev up the sex drive. Feed your lover some longans. They have a sweet, almost-crisp bite and a floral-honey flavor. A great snack on its own, or a sweet addition to salads or topping for yogurt.</p>

<p><a href="http://blog.fairwaymarket.com/2013/09/take-a-tropical-vacay-at-fairway-exotic-fruit-adventures/" target="_blank">Contine reading &gt; </a></p>
',456.0,475.0,494.0,1383159488.0);
INSERT INTO "CuratorPost" VALUES(378.0,'Apr 15, 2013 6:00:00 AM','Parmigiano Rind! Your Secret Weapon','<p>We know you love Parmigiano Reggiano, perhaps the grandest cheese in the world. But what do you do with that rind&ndash;and the rind of Grana Padano, and other grating cheeses? They are pretty useless as-is, but we beg you not to toss &lsquo;em. Rinds are unami-bombs, imbuers of intoxicating savor.</p>

<p>&nbsp;</p>

<p>Most any braise, sauce, soup, risotto, or stew will benefit unfathomably from the addition of your grating cheese rind. Just toss into any long-simmering dish. The heat will soften the rind; its salty, deep flavor will seep into your recipe. Fish out the remaining rind&rsquo;s skin before you serve.</p>

<p><a href="http://blog.fairwaymarket.com/2013/04/behold-the-parmesan-rind-your-secret-weapon/" target="_blank">Continue reading &gt; </a></p>
',453.0,472.0,489.0,1383159281.0);
INSERT INTO "CuratorPost" VALUES(379.0,'Apr 11, 2013 6:00:00 AM','Lotsa Fairway Pasta','<p>Did you know we have our own line of Fairway pastas? Inside the bags you&rsquo;ll find real deal, artisanal pasta from Puglia, the boot heel of Italy. Pasta is the heart and soul of the Italian kitchen. Pugliese cuts are the quintessential, timeless pasta shapes&mdash;classic Southern Italian recipes demand them. The wholewheat (&lsquo;integrale&rsquo;) pasta clings beautifully to sauce. Incredibly delicious and fun to cook with.</p>

<p>&nbsp;</p>

<p>Here are the different types:<br />
Orecchiette: Orecchio means ear, and the suffix -etto means small. These little ears are perfect with sausage and broccoli rabe, or roasted broccoli and walnuts.</p>

<p>&nbsp;</p>

<p>Foglie D&rsquo;Ulivo: Can pasta get more beautiful? Crafted in the shape of olive leaves, with spinach and durum wheat. Serve with fresh pesto, or parmesan, peas, and a good glug of EVOO.</p>

<p><a href="http://blog.fairwaymarket.com/2013/04/lotsa-pasta-fairway-pasta-and-community-grains-pasta-are-really-really-special/" target="_blank">Continue reading &gt;</a></p>
',450.0,469.0,484.0,1383159381.0);
INSERT INTO "CuratorPost" VALUES(380.0,'Apr 1, 2013 6:00:00 AM','An Ode to Garlic','<p>You&rsquo;re a cousin of onion, shallot, chive, and leek,<br />
But it&rsquo;s you, precious garlic, that I gleefully seek.<br />
Is it your pungent fragrance, a magical thing?<br />
You add gorgeous dimension! You make dishes sing!<br />
Place a clove on your cutting board, give your knife blade a pop<br />
Remove the delicate skin, and your garlic&rsquo;s ready to chop.<br />
I add you to pesto, sauces, and vinaigrette,<br />
For stir-frying veggies, you&rsquo;re the perfect bet.<br />
I throw you in the oven and roast you whole,<br />
Til you&rsquo;re golden and toasty&ndash;so much flavor and soul!<br />
Then I spread you on a baguette and drizzle with oil<br />
And I&rsquo;m a happy girl, undoubtedly spoiled.<br />
You&rsquo;re a magic elevator of potatoes and spinach,<br />
and hummus and couscous&ndash;I&rsquo;ll have more when I&rsquo;m finished.<br />
You make roast chicken a spectacular dish.<br />
You amplify my steak, my salads, my fish.<br />
Garlic butter! Garlic soup! Garlic bread!<br />
Your wild deliciousness is getting to my head.<br />
Dear garlic, I need you. please don&rsquo;t leave me alone<br />
A house without garlic is a sad kind of home.</p>
',448.0,471.0,487.0,1386371525.0);
INSERT INTO "CuratorPost" VALUES(381.0,'Jan 3, 2013 6:00:00 AM','Ingredient Spotlight: Rainbow Chard','<p>What a cheerful veggie. Rainbow chard has crisp-tender stalks in bright yellow, pink and red, and dark green; and just-a-bit bitter, deep-dark green leaves. It&rsquo;s a versatile way to get your dark leafy green fix&ndash; sturdier than spinach, and mellower than kale&ndash;chard is a star of so many dishes. It&rsquo;s awesome on its own, with currants and raisins, or mixed into Israeli couscous, fava beans, or risotto.</p>

<p>&nbsp;</p>

<p>It&rsquo;s ridiculously, incredibly healthy.&nbsp; Chard is a packed with calcium, potassium, vitamin C, vitamin A and beta-carotene, as well as the carotenoids lutein and zeaxanthin, which are great for your eyes and vision. Low in calories, high in fiber, this is a nutritional rockstar.</p>

<p><a href="http://blog.fairwaymarket.com/2013/01/beautiful-ingredient-spotlight-rainbow-chard/" target="_blank">Continue reading &gt; </a></p>
',457.0,476.0,495.0,1383159399.0);
INSERT INTO "CuratorPost" VALUES(384.0,'Sep 25, 2013 6:00:00 AM','New! Fairway OneCup Coffee Pods','<p>&quot;The tale of how Fairway came to acquire our new and incredible Fairway OneCups!</p>

<p>&nbsp;</p>

<p>We Fairway folk know coffee. And we ought to since we have been buying, roasting and selling the stuff for 80 years. It is a crucial&nbsp; segment of what Fairway is and what we do, so it matters to us where and who it comes from, how it is harvested and how it affects the environment. The result? Farm-to-table coffee.&nbsp; From the grower, to Fairway, to your cup. Or mug.&nbsp; We like a mug.</p>

<p>&nbsp;</p>

<p>Unfortunately, we know too much to be snookered by the sheer convenience and anti-social behavior that is the preparation of a single, self-serving cuppa-Joe-fer-one.</p>

<p><a href="http://blog.fairwaymarket.com/2013/09/theyre-here-fairway-onecup-coffee-pods/#more-4726" target="_blank">Continue reading &gt;</a></p>
',454.0,473.0,491.0,1383159347.0);
INSERT INTO "CuratorPost" VALUES(386.0,'Aug 29, 2013 6:00:00 AM','Magic Mushrooms: Steve Talks Fresh ‘Shrooms','<p>Our mushrooms are &ldquo;wild-cultivated&rdquo; mushrooms.&nbsp; They are not harvested in the wild.&nbsp; They are grown in a sterile environment under completely sterile and hygienic conditions.&nbsp; Your Fairway pioneered the development of wild-cultivated mushrooms long before any other food retailer knew such a thing existed.&nbsp; We were the first food store in the country to offer mushrooms other than ordinary white buttons.&nbsp;</p>

<p>&nbsp;</p>

<p>We sourced and stocked porcini (boletus edulis), oyster (pleurotus), shiitake, cremini, Portobello, hedgehog, chicken-of-the-wood, morel and chanterelle mushrooms before anyone but mycophiles knew or cared a whit about the joy of fresh saut&eacute;ed wild mushrooms as a peasanty and yet elegant first course.</p>

<p><a href="http://blog.fairwaymarket.com/2013/08/magic-mushrooms-steve-talks-fresh-shrooms/#more-4627" target="_blank">Continue reading &gt;</a></p>
',461.0,481.0,499.0,1383159364.0);
INSERT INTO "CuratorPost" VALUES(387.0,'Jun 12, 2013 6:00:00 AM','Dr. Gino Celletti’s 36 Truths About Olive Oil','<p>We talk about wine and we talk about food, and about both we go into great detail. But not with olive oil.&nbsp; It would seem we want to remain ignorant about olive oil.</p>

<p>&nbsp;</p>

<p>Here at Fairway, we are learning more about olive oil every week, and after 40 years of thinking about food, we finally realize we have ignored the single-most important food in our lives. Even the most famous chefs are almost totally ignorant about olive oil.</p>

<p>&nbsp;</p>

<p>Rest assured your Fairway olive oil-lovers are trying to teach you all they have learned, all they continue to learn on a weekly basis.&nbsp; There is no food nutritional subject that even approaches the cruciality of learning about olive oil.</p>

<p><a href="http://blog.fairwaymarket.com/2013/06/dr-gino-celletti%E2%80%99s-36-truths-about-olive-oil-with-a-forward-by-fairway%E2%80%99s-steve-jenkins/#more-4178" target="_blank">Contine reading &gt; </a></p>
',460.0,479.0,498.0,1383159060.0);
INSERT INTO "CuratorPost" VALUES(388.0,'Jan 21, 2013 6:00:00 AM','Fairway Charcutier’s Classic Pate and Terrine','<p>Entertaining? Looking for a treat? Head to Fairway&rsquo;s deli counter and don&rsquo;t leave without a hunk of these intensely decadent, flavorful creations made with love and time-honored recipes by our talented chefs. Here are just some of our favorites:</p>

<p>&nbsp;</p>

<p>Pate D&rsquo;agneau Et De Veau Aux Foie De Porc&nbsp; (pate of lamb and veal with pork liver)<br />
This is an artisanal example of classic charcuterie, made by hand, from scratch, a coarse-textured &lsquo;country&rsquo;-style pate with excellent flavor and texture.</p>

<p>&nbsp;</p>

<p>Terrine De Foie De Volaille&nbsp; (chicken liver pate)<br />
This exquisite loaf is extremely rich, creamy and delicate, with deep, irresistible flavor, and it is in the classic style of French charcuterie that values highly the livers of not just ducks and geese, but certainly those from chickens, too.</p>

<p>&nbsp;</p>

<p>Porchetta (pore-KEH-tah)<br />
Porchetta is without doubt one of the greatest of the great recipes of Italian culinary tradition.&nbsp; It has been selected by the Italian Ministery for Agricultural Products as such for having such enormous cultural relevance.</p>

<p><a href="http://blog.fairwaymarket.com/2013/01/new-from-fairways-superstar-chefs-charcutiers-classic-pate-and-terrine/" target="_blank">Continue reading &gt;</a></p>
',458.0,477.0,496.0,1383159494.0);
INSERT INTO "CuratorPost" VALUES(389.0,'Oct 19, 2013 6:00:00 AM','How We Heralded the Food Revolution ','<p>If I were to list all the foodstuffs we pioneered over the years here at Fairway it would require a great deal more time and effort than I am prepared to give at the moment.&nbsp; Cheeses?&nbsp; Too many to even start thinking about.&nbsp; Olive oils?&nbsp; Ditto.</p>

<p>&nbsp;</p>

<p>But off the top of my head I immediately recall a few cardinal items&hellip;such as the first shipments of things like Espelette chile in no less than seven different guises, including Bixi-Bixia, the great Basque bbq sauce made with the Espelette chile pepper, named for a lowland village located in the very center of the pepper&rsquo;s growing area.</p>

<p><a href="http://blog.fairwaymarket.com/2012/10/fairway-firsts-how-we-heralded-the-food-revolution-and-why-we-rock/" target="_blank">Continue reading &gt;</a></p>
',462.0,483.0,500.0,1383159428.0);
INSERT INTO "CuratorPost" VALUES(401.0,'Oct 24, 2013 6:00:00 AM','Celebrate Fall with Somethin’ Pumpkin','<p>Pumpkin season is here in full swing, and we&rsquo;re surrounded by pumpkins&hellip;which is a pretty great place to be.</p>

<p>&nbsp;</p>

<p>Pumpkin&rsquo;s deep orange flesh and sweet flavor make it a wonderful food for the Fall table. Canned pumpkin is easy to use and always available, but fresh pumpkin is worth the extra prep for real, unique pumpkin flavor.</p>

<p>&nbsp;</p>

<p>Pumpkin pie is but the tip of the pumpkin iceberg.</p>

<p>&nbsp;</p>

<p><a href="http://blog.fairwaymarket.com/2013/10/celebrate-fall-with-somethin-pumpkin-at-fairway/#more-4921">Continue reading &gt;</a></p>
',511.0,510.0,512.0,1383668497.0);
INSERT INTO "CuratorPost" VALUES(402.0,'Nov 11, 2013 6:00:00 AM','There''s No Turkey Like a Fairway Turkey!','<p>Fairway has always been a&nbsp;turkey destination. But this year, we&rsquo;re taking our turkey game to a whole new level. &ldquo;We wanted to bring in the highest possible quality turkey we could find,&rdquo; says Dennis Bland, Fairway Market&rsquo;s Vice President of Meat and Seafood Operations, &ldquo;better than our customers could get anywhere else.&rdquo;</p>

<p>&nbsp;</p>

<p>So we set out to find turkey worthy of the Fairway label. We wanted our turkeys to come from local farms; it was important that the turkeys be humanely raised; it was essential that they taste absolutely delicious. &nbsp;</p>

<p>&nbsp;</p>

<p><a href="http://blog.fairwaymarket.com/2013/11/fairway-market-turkeys-theres-no-turkey-like-a-fairway-turkey/#more-5019" target="_blank">Continue reading &gt;</a></p>
',514.0,515.0,516.0,1384794127.0);
CREATE TABLE IF NOT EXISTS CuratorPostDietPreference (CuratorPostID,DietPreferenceID);
INSERT INTO "CuratorPostDietPreference" VALUES(372.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(374.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(375.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(376.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(377.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(377.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(378.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(379.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(380.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(380.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(381.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(381.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(384.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(384.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(386.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(386.0,66.0);
INSERT INTO "CuratorPostDietPreference" VALUES(387.0,45.0);
INSERT INTO "CuratorPostDietPreference" VALUES(387.0,66.0);
CREATE TABLE IF NOT EXISTS GeoRegion (GeoRegionID,Label,IconClass);
INSERT INTO "GeoRegion" VALUES(126.0,'New York City - Manhattan','nyc-manhattan');
INSERT INTO "GeoRegion" VALUES(152.0,'Connecticut - Southwest','ct-southwest');
INSERT INTO "GeoRegion" VALUES(153.0,'Long Island, NY','ny-long-island');
INSERT INTO "GeoRegion" VALUES(154.0,'New Jersey - Northeast','nj-northeast');
INSERT INTO "GeoRegion" VALUES(155.0,'New York City - Brooklyn','nyc-brooklyn');
INSERT INTO "GeoRegion" VALUES(156.0,'New York City - Queens','nyc-queens');
INSERT INTO "GeoRegion" VALUES(157.0,'New York, NY','ny-westchester');
CREATE TABLE IF NOT EXISTS Store (StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout);
INSERT INTO "Store" VALUES(114.0,'Chelsea','<p>Chelsea is a wonderful, soulful, lively neighborhood. There are so many great places to eat, drink, and explore. The Highline! Chelsea Piers! Shopping! But there&rsquo;s one thing Chelsea was missing - until now. We&rsquo;re excited to be here, Chelsea! It&rsquo;s the smallest Fairway, but don&rsquo;t you worry. We&rsquo;ve spent long hours carefully curating a selection of all the best Fairway has to offer, so you can make sure to stock up on all your favorites and discover amazing new finds, too!</p>

<p>&nbsp;</p>

<p>For catering information, call or email Bonnie Langer:<br />
<span style="line-height: 1.6em;">(866) 392-2837 | </span><a href="mailto:Bonnie.Langer@fairwaymarket.com?subject=Catering%20Inquiry" style="line-height: 1.6em;">Bonnie.Langer@fairwaymarket.com</a></p>
','766 Sixth Avenue','Between 25th and 26th','New York','NY','10010','40.744461','-73.991640','(646) 676-4550',NULL,422.0);
INSERT INTO "Store" VALUES(158.0,'Douglaston','<p>It took nearly two years to open this Fairway in Douglaston, Queens, but the best things in life are always worth the wait! Within 56,000 square feet, we&rsquo;re offering it all -- freshness, variety, and value. Not only will you find traditional groceries and specialty items at cost-cutting prices, but walking into Fairway is like taking a trip around the world. Also available exclusively at the Douglaston Fairway Caf&eacute; is a new Create-Your-Own Smoothie Bar and Soft Serve Fruit Bar (provided by The Soft Serve Fruit Co&trade;)!</p>

<p>&nbsp;</p>

<p>For catering&nbsp;information, call or email Jamie Valente:<br />
<span style="line-height: 1.6em;">(718) 423-5990 | <a href="mailto:Jamie.Valente@FairwayMarket.com?subject=Catering%20Inquiry">J</a></span><a href="mailto:jamie.valente@fairwaymarket.com?subject=Catering%20Inquiry" style="line-height: 1.6em;">amie.Valente@FairwayMarket.com</a></p>
','242-02 61st Ave','','Queens','NY','11362','40.758529','-73.722277','(718) 423-2100',NULL,427.0);
INSERT INTO "Store" VALUES(161.0,'Harlem','<p>Fairway Market Harlem has become an uptown NYC institution since its opening in 1995 and was the second store to open after the Upper West Side 74th Street location. It&rsquo;s the only Fairway to house our famous Cold Room, so grab a coat! In it you&rsquo;ll find a full-service Butcher Shop, including a large assortment of kosher meats, Fresh Seafood Counter, and every organic and conventional dairy item you could ever desire. Need a quick lunch? Stop by our famous hot bar, made with all the same high-quality fresh ingredients you find on our shelves, or pick up freshly prepared grab-n-go sandwiches and salads!</p>

<p>&nbsp;</p>

<p>For catering&nbsp;information, call or email Bonnie Langer:<br />
<span style="line-height: 1.6em;">(866) 392-2837 | <a href="mailto:Bonnie.Langer@FairwayMarket.com?subject=Catering%20Inquiry">Bonnie.Langer@FairwayMarket.com</a></span></p>
','2328 12th Ave',' at 130th St','New York','NY','10027','40.819693','-73.959466','(212) 234-3883',NULL,442.0);
INSERT INTO "Store" VALUES(165.0,'Kips Bay','<p>Fairway Market is a beloved NYC institution, and we thought it was about time we ventured south of Central Park to open our first downtown store in Kips Bay. Step into our lovely entryway, and then ride our high speed glass-enclosed elevators or extra wide escalators down to 42,000 plus square feet of life-changing shopping - everything your heart and belly want, all in one incredible market. Kips Bay features all of the essential departments you love at Fairway from cheeses to natural and organic health/beauty, and of course conventional groceries.</p>

<p>&nbsp;</p>

<p>For catering information, call or email Takisha Williams:&nbsp;<br />
(646) 720-9450 | <a href="mailto:Takisha.Williams@FairwayMarket.com?subject=Catering%20Inquiry">Takisha.Williams@FairwayMarket.com</a></p>
','550 Second Avenue','at East 30th Street','New York','NY','10016','40.725355','-73.989743','(646) 720-9420',NULL,423.0);
INSERT INTO "Store" VALUES(166.0,'Paramus','<p>Fifth in our growing family of stores, the Fairway Paramus location opened in early Spring 2009 with over 50,000 square feet to hold the treasure trove of foodstuffs that is the trademark of Fairway. As is the case with every Fairway Market, we sought to bring to Paramus the best of the best that the food world has to offer. From Fairway&rsquo;s own sourced and imported premises-roasted coffee beans ground right in front of your eyes to the freshest organic and conventional produce delivered daily directly from the source, we&rsquo;d got you covered, Paramus!</p>

<p>&nbsp;</p>

<p>For catering information, call or email Jennifer Fellman:&nbsp;<br />
(201) 267-9633 | <a href="mailto:ParamusCatering@FairwayMarket.com?subject=Catering%20Inquiry">ParamusCatering@FairwayMarket.com</a></p>
','30 East Ridgewood Avenue','','Paramus','NJ','07652','40.969065','-74.076178','(201) 444-5455','Aug 1, 2011 6:00:00 AM',441.0);
INSERT INTO "Store" VALUES(171.0,'Pelham Manor','<p>Pelham Manor is where we really went big. By this time, Westchester County had waited in anticipation and with nothing short of great expectations. The store opening had people lined up along the entire length of the store and law enforcement had to close down the Hutchinson River Parkway at our exit. Needless to say, we were big news. Our Pelham Manor store brought 75,000 square feet of gastronomical greatness to Westchester County.</p>

<p>The store location holds a special significance as Howie Glickberg, Fairway CEO and third generation in the founding family of Fairway, has lived in Westchester County with his family for over 20 years. To be able to provide jobs for over 400 local residents was an opportunity we were thrilled to have.</p>

<p>&nbsp;</p>

<p>For catering information, call or email Alejandra Almonacid:<br />
(914) 633-6561 | <a href="mailto:PelhamCatering@FairwayMarket.com?subject=Catering%20Inquiry">PelhamCatering@FairwayMarket.com</a></p>
','847 Pelham Parkway','Post Road Plaza','Pelham Manor','NY','10803','40.891933','-73.820602','(914) 633-6550',NULL,429.0);
INSERT INTO "Store" VALUES(172.0,'Plainview','<p>The Plainview location was the third Fairway Market to open. With twice as much square footage as our flagship store, we had room to seriously increase the number of fabulous things we offered our shoppers, and we saw what life would be like with wider aisles. Eureka!</p>

<p>Plainview was also the first store where we installed a seating area next to the hot foods bar, so customers could relax and enjoy our prepared foods in between discovering all the amazing things Fairway offers. Another cheery addition to the Plainview store, was an extensive floral selection at the entrance way. Stepping inside our &ldquo;green house&rdquo; of spring in bloom allows our customers to feel right at home. Loop your way around to the Butcher Shop, seafood department, cheese counter, olive bar, deli and appetizing &ndash; it&rsquo;s all there, fresh, prepared, original, delicious and new for you to discover.</p>

<p>&nbsp;</p>

<p>For catering&nbsp;information, call or email Maria Colello:<br />
(516) 871-0294 ext 149 | <a href="mailto:Maria.Colello@FairwayMarket.com?subject=Catering%20Inquiry">Maria.Colello@FairwayMarket.com</a></p>
','50 Manetto Hill Mall','','Plainview','NY','11803','40.776488','-73.467345','(516) 937-5402',NULL,431.0);
INSERT INTO "Store" VALUES(181.0,'Red Hook','<p>Many were skeptical (and quite vocal) back when we planned to open a store in Harlem. And then for our fourth store to be in industrial Red Hook, Brooklyn, well, people thought we were just plain nuts. But how could we resist the gorgeous waterfront with a view of the Statue of Liberty? Now, you know we didn&rsquo;t earn our trailblazer status by playing it safe and sane.</p>

<p>Our Red Hook location ended up being a diamond in the rough, having the advantage of space and size (the largest store at the time at 52,000 square feet), plus all of the qualities that made us a star in Manhattan. Red Hook is a one-stop-shop that holds a special place in the Fairway Market family of stores. With caf&eacute; seating for 50 and a waterfront view, Fairway Red Hook is a joy for people to come to shop and enjoy lunch with a view of the Statue of Liberty!</p>

<p>&nbsp;</p>

<p>For catering&nbsp;information, call or email Marcy Rosenblum:&nbsp;<br />
(347) 464-5780 | <a href="mailto:RedhookCatering@FairwayMarket.com?subject=Catering%20Inquiry">RedhookCatering@FairwayMarket.com</a></p>
','480-500 Van Brunt Street','','Brooklyn','NY','11231','40.674283','-74.017199','(718) 254-0923',NULL,430.0);
INSERT INTO "Store" VALUES(190.0,'Stamford','<p>We feel it&rsquo;s fair to say that we arrived in Connecticut with a bang. And in usual Fairway style, we are the pioneering retail establishment in an up-and-coming neighborhood &ndash; the Harbor Point area of Stamford. Being one of our largest at nearly 85,000 wonderful square feet, Fairway Stamford is truly an amusement park of food.</p>

<p>&nbsp;</p>

<p>For more information, call or email Diane Russo:<br />
(203) 388-9850 | <a href="mailto:StamfordCatering@FairwayMarket.com?subject=Catering%20Inquiry">StamfordCatering@FairwayMarket.com</a></p>
','699 Canal Street','','Stamford','CT','06902','41.045652','-73.533064','(203) 388-9815',NULL,428.0);
INSERT INTO "Store" VALUES(195.0,'Upper East Side','<p>We were so happy to be able to open our 3rd store uptown on the east side, so east-siders no longer had to trek across the park to get the best from Fairway Market! This incredible 30,000+ square foot space is filled floor to ceiling with all of the things you know and love about Fairway - the Upper East Side has never seen anything like this.<br />
However, we wouldn&rsquo;t be Fairway if we didn&rsquo;t also give the Upper East Side something super-special. In a rush? Stop by Fairway&rsquo;s first &ldquo;Fairway to Go&rdquo; and grab our chef-made prepared foods, Fairway&rsquo;s own coffee, sandwiches, pastries, cappuccino, and espresso!</p>

<p>&nbsp;</p>

<p>For more information, call or email Jennifer Madrid:<br />
(212) 327-2086 | <a href="mailto:Jennifer.Madrid@FairwayMarket.com?subject=Catering%20Inquiry">Jennifer.Madrid@FairwayMarket.com</a></p>
','240 East 86th Street','Between 2nd and 3rd Avenue','New York','NY','10128','40.778059','-73.952203','(212) 327-2008',NULL,426.0);
INSERT INTO "Store" VALUES(196.0,'Upper West Side','<p>The famous (or infamous, as the case may be) Fairway Market at West 74th Street and Broadway is our flagship store - the original, the veteran who has seen it all from the beginning, from expansions and celebrities, to 30+ year-long regulars and the brilliant caf&eacute; upstairs. It&rsquo;s the place where people have described shopping as a contact sport &ndash; the energy inside is palpable and only truly appreciated when experienced first-hand.</p>

<p>The New York City icon certainly holds a special place in the hearts of thousands of Upper West Siders and their families. Tourists have marveled, writers have adorned and criticized, foodies have swooned and demanded &ndash; the huge blue awning that stretches across almost a full city block is a symbol of a true New York City establishment. There&rsquo;s simply nothing like it in NYC!</p>

<p>&nbsp;</p>

<p>For catering information, call or email Bonnie Langer:<br />
(866) 392-2837 | <a href="mailto:Bonnie.Langer@FairwayMarket.com?subject=Catering%20Inquiry">Bonnie.Langer@FairwayMarket.com</a></p>
','2127 Broadway','at 74th St','New York','NY','10023','40.780327','-73.981630','(212) 595-1888',NULL,432.0);
INSERT INTO "Store" VALUES(208.0,'Westbury','<p>We felt that since our opening in Plainview years ago, it was certainly time for us to make a home in the other half of Long Island as well! Fairway Westbury was our 11th store opening and boasts 68,000 square feet of our traditional fresh and organic foods from all over the world, including cheeses, fish and meat, kosher products, a deli and the well-known Fairway Caf&eacute;, which features both indoor and outdoor seating for our customers. From the everyday brands you know and love, to the exotic foods no one else has, they&rsquo;re all here under one roof at Westbury. So come on in and get a taste of the Big Apple, Long Island!</p>
','1258 Corporate Drive','Roosevelt Raceway Center','Westbury','NY','11590','40.739944','-73.589505','(516) 247-6850',NULL,424.0);
INSERT INTO "Store" VALUES(209.0,'Woodland Park','<p>Fairway Market opened its first store in New Jersey in 2009, and having been received so well, we gave the Garden State another. We are excited to bring to Woodland Park all of the things that have made Fairway Market a food store legend. Bask in over 63,000 square feet of the freshest produce, piled high and delivered daily; hand-selected USDA prime meats, custom cut the old fashioned way by a trained butcher; plus a huge assortment of wild and local-caught seafood, some caught by our own head of seafood, Captain Tony Maltese. We are proud to bring to Woodland Park an extensive kosher offering including a large selection of OU certified poultry and meats, and KOF-K certified meats and poultry cut in-store with a Mashgiach on premises. You have to see it to believe it!</p>

<p>&nbsp;</p>

<p>For catering&nbsp;information, call or email Aggie Solej:&nbsp;<br />
(973) 339-5139 | <a href="mailto:WoodlandParkCatering@FairwayMarket.com?subject=Catering%20Inquiry">WoodlandParkCatering@FairwayMarket.com</a></p>
','1510 US 46 West','US 46 and Browertown Rd.','Woodland Park','NJ','07424','40.884817','-74.209953','(973) 339-5103',NULL,425.0);
INSERT INTO "Store" VALUES(393.0,'Nanuet','<p>We&rsquo;re thrilled to announce our 14th Fairway Market!</p>

<p>You&rsquo;ll walk into a dazzling array of fruits and veggies, straight from farms and orchards, in towers as tall as the eye can see. Wander past organic foods, gluten-free finds, and natural health and beauty aids. Marvel at our vast selection of imported specialty items from all around the world, our 600 cheeses and counting, our beloved smoked salmon and all the other treats at our Deli &amp; Appetizing counter.</p>

<p>&nbsp;</p>

<p>For catering information,&nbsp;<span style="line-height: 1.6em;">call or email Melanie Tiplady:</span><br />
<span style="line-height: 1.6em;">(845) 501-4290 | <a href="mailto:NanuetCatering@FairwayMarket.com?subject=Catering%20Inquiry">NanuetCatering@FairwayMarket.com</a></span></p>
','75 West Route 59',NULL,'Nanuet','NY','10954','41.0977977','-74.0151543','(845) 501-4300','Oct 10, 2013 6:00:00 AM',509.0);
CREATE TABLE IF NOT EXISTS GeoRegionStore (GeoRegionID,StoreID);
INSERT INTO "GeoRegionStore" VALUES(126.0,114.0);
INSERT INTO "GeoRegionStore" VALUES(126.0,161.0);
INSERT INTO "GeoRegionStore" VALUES(126.0,165.0);
INSERT INTO "GeoRegionStore" VALUES(126.0,195.0);
INSERT INTO "GeoRegionStore" VALUES(126.0,196.0);
INSERT INTO "GeoRegionStore" VALUES(152.0,190.0);
INSERT INTO "GeoRegionStore" VALUES(153.0,208.0);
INSERT INTO "GeoRegionStore" VALUES(153.0,172.0);
INSERT INTO "GeoRegionStore" VALUES(154.0,166.0);
INSERT INTO "GeoRegionStore" VALUES(154.0,209.0);
INSERT INTO "GeoRegionStore" VALUES(155.0,181.0);
INSERT INTO "GeoRegionStore" VALUES(156.0,158.0);
INSERT INTO "GeoRegionStore" VALUES(157.0,171.0);
INSERT INTO "GeoRegionStore" VALUES(157.0,393.0);
CREATE TABLE IF NOT EXISTS ServiceType (ServiceTypeID,Label,DataGroup,DisplayOrderInGroup,ImagePathIconClass);
INSERT INTO "ServiceType" VALUES(121.0,'Cafe','Amenities',12.0,'icon-cafe');
INSERT INTO "ServiceType" VALUES(140.0,'Restaurant','Amenities',13.0,'icon-restaurant');
INSERT INTO "ServiceType" VALUES(141.0,'Fairway-To-Go','Amenities',14.0,'icon-fwtogo');
INSERT INTO "ServiceType" VALUES(142.0,'Fairway Wines & Spirits','Amenities',15.0,'icon-fwwine');
INSERT INTO "ServiceType" VALUES(143.0,'Floral & Plant Department','Amenities',16.0,'icon-floral');
INSERT INTO "ServiceType" VALUES(144.0,'Public Wi-Fi','Services',17.0,'icon-wifi');
INSERT INTO "ServiceType" VALUES(145.0,'Catering','Services',18.0,'icon-catering');
INSERT INTO "ServiceType" VALUES(146.0,'Store-to-Door Delivery','Services',19.0,'icon-delivery');
INSERT INTO "ServiceType" VALUES(147.0,'Free Shuttle','Transportation',20.0,'icon-shuttle');
INSERT INTO "ServiceType" VALUES(148.0,'Water Taxi','Transportation',21.0,'icon-watertaxi');
INSERT INTO "ServiceType" VALUES(149.0,'Free Parking','Transportation',22.0,'icon-parking');
CREATE TABLE IF NOT EXISTS StoreService (StoreID,ServiceTypeID,Description,ImagePathLarge);
INSERT INTO "StoreService" VALUES(114.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(114.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(114.0,147.0,'',NULL);
INSERT INTO "StoreService" VALUES(114.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(158.0,145.0,'For more information, call or email Jamie Valente:
(718) 423-5990 | jamie.valente@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(158.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(158.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(158.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(158.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(161.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(161.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(161.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(161.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(161.0,147.0,'',NULL);
INSERT INTO "StoreService" VALUES(165.0,145.0,'For more information, call or email Takisha Williams: 
(646) 720-9450 | Takisha.Williams@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(165.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(165.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(166.0,145.0,'For more information, call or email Jennifer Fellman: 
(201) 267-9633 | paramuscatering@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(166.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(166.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(171.0,145.0,'For more information, call or email Alejandra Almonacid: 
(914) 633-6561 | pelhamcatering@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(171.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(171.0,142.0,'',NULL);
INSERT INTO "StoreService" VALUES(171.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(171.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(171.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(172.0,145.0,'For more information, call or email Maria Colello:
(516) 871-0294 ext 149 | Maria.Colello@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(172.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(172.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(172.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(172.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(181.0,145.0,'For more information, call or email Marcy Rosenblum: 
(347) 464-5780 | redhookcatering@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(181.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(181.0,147.0,'',NULL);
INSERT INTO "StoreService" VALUES(181.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(181.0,140.0,'',NULL);
INSERT INTO "StoreService" VALUES(181.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(190.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(190.0,142.0,'',NULL);
INSERT INTO "StoreService" VALUES(190.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(190.0,145.0,'For more information, call or email Diane Russo 
(203) 388-9850 | StamfordCatering@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(190.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(190.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(195.0,141.0,'',NULL);
INSERT INTO "StoreService" VALUES(195.0,145.0,'For more information, call or email Jennifer Madrid
(212) 327-2086 | jennifer.madrid@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(195.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(195.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(196.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(196.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL);
INSERT INTO "StoreService" VALUES(196.0,146.0,'',NULL);
INSERT INTO "StoreService" VALUES(196.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(208.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(208.0,144.0,'Fairwayhotspot',NULL);
INSERT INTO "StoreService" VALUES(209.0,121.0,'',NULL);
INSERT INTO "StoreService" VALUES(209.0,142.0,'',NULL);
INSERT INTO "StoreService" VALUES(209.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(209.0,145.0,'For more information, call or email Aggie Solej: 
(973) 339-5139 | WoodlandParkCatering@FairwayMarket.com',NULL);
INSERT INTO "StoreService" VALUES(209.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(393.0,149.0,'',NULL);
INSERT INTO "StoreService" VALUES(393.0,121.0,NULL,NULL);
INSERT INTO "StoreService" VALUES(393.0,145.0,'For more information, call or email Melanie Tiplady:
(845) 501-4290 | NanuetCatering@FairwayMarket.com',NULL);
INSERT INTO "StoreService" VALUES(393.0,143.0,'',NULL);
INSERT INTO "StoreService" VALUES(393.0,144.0,'Fairwayhotspot',NULL);
CREATE TABLE IF NOT EXISTS StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime);
INSERT INTO "StoreHours" VALUES(114.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(158.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(161.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(165.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(166.0,0.0,'0','08:00','22:00');
INSERT INTO "StoreHours" VALUES(171.0,0.0,'0','08:00','22:00');
INSERT INTO "StoreHours" VALUES(172.0,0.0,'0','07:00','22:00');
INSERT INTO "StoreHours" VALUES(181.0,0.0,'0','08:00','22:00');
INSERT INTO "StoreHours" VALUES(190.0,0.0,'0','08:00','22:00');
INSERT INTO "StoreHours" VALUES(195.0,0.0,'0','07:00','00:00');
INSERT INTO "StoreHours" VALUES(196.0,0.0,'0','06:00','01:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'1','08:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'2','08:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'3','08:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'4','08:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'5','08:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'6','07:00','23:00');
INSERT INTO "StoreHours" VALUES(208.0,0.0,'6','07:00','23:00');
INSERT INTO "StoreHours" VALUES(209.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(393.0,0.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(158.0,121.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(171.0,121.0,'0','08:00','20:00');
INSERT INTO "StoreHours" VALUES(172.0,121.0,'0','07:00','20:00');
INSERT INTO "StoreHours" VALUES(181.0,140.0,'0','08:00','20:00');
INSERT INTO "StoreHours" VALUES(190.0,121.0,'0','08:00','20:00');
INSERT INTO "StoreHours" VALUES(195.0,141.0,'0','07:00','22:00');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'1','08:00','21:30');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'2','08:00','21:30');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'3','08:00','21:30');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'4','08:00','21:30');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'5','08:00','22:00');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'6','08:00','22:00');
INSERT INTO "StoreHours" VALUES(196.0,121.0,'7','08:00','21:30');
INSERT INTO "StoreHours" VALUES(209.0,121.0,'0','08:00','23:00');
INSERT INTO "StoreHours" VALUES(393.0,121.0,'0','08:00','23:00');
CREATE TABLE IF NOT EXISTS BestTimeToShop (BestTimeToShopID,Title,Description,Overview);
INSERT INTO "BestTimeToShop" VALUES(137.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday - Thursday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
8:00 AM to 11:00 AM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(349.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday - Wednesday</strong><br />
8:00 AM to 12:00 PM<br />
3:00 PM to 4:00 PM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday</strong><br />
8:00 AM to 12:00 PM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
8:00 AM to 12:00 PM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 11:00 AM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
12:00 PM to 1:00 PM<br />
9:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(350.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 11:00 AM<br />
3:00 PM to&nbsp; 4:00 PM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday - Saturday</strong><br />
8:00 AM to 10:00 AM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(351.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 12:00 PM<br />
3:00 PM to&nbsp; 4:00 PM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday - Friday</strong><br />
8:00 AM to 12:00 PM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 10:00 AM<br />
9:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 12:00 PM<br />
8:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(352.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday - Tuesday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 11:00 AM<br />
6:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday - Friday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
6:00 PM to 10:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(353.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday - Thursday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(354.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
7:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday - Wednesday</strong><br />
7:00 AM to 11:00 AM<br />
6:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday</strong><br />
7:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
7:00 AM to 11:00 AM<br />
6:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
7:00 AM to 9:00 AM<br />
6:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
7:00 AM to 9:00 AM<br />
7:00 PM to 10:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(355.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 12:00 PM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 11:00 AM<br />
5:00 PM to 6:00 PM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 12:00 PM<br />
4:00 PM to 5:00 PM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday - Friday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 9:00 AM<br />
8:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 10:00 AM<br />
8:00 PM to 10:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(357.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 11:00 AM<br />
2:00 PM to 5:00 PM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 12:00 PM<br />
2:00 PM to 5:00 PM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday</strong><br />
8:00 AM to 12:00 PM<br />
3:00 PM to 5:00 PM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 10:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 10:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(358.0,'','','<p><strong>Monday</strong><br />
7:00 AM to 12:00 PM<br />
9:00 PM to 12:00 AM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
7:00 AM to 11:00 AM<br />
9:00 PM to 12:00 AM</p>

<p>&nbsp;</p>

<p><strong>Wednesday - Thursday</strong><br />
7:00 AM to 12:00 PM<br />
9:00 PM to 12:00 AM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
7:00 AM to 11:00 AM<br />
9:00 PM to 12:00 AM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
7:00 AM to 10:00 AM<br />
8:00 PM to 12:00 AM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
7:00 AM to 11:00 AM<br />
8:00 PM to 12:00 AM</p>
');
INSERT INTO "BestTimeToShop" VALUES(359.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
6:00 AM to 11:00 AM<br />
8:00 PM to 1:00 AM</p>

<p>&nbsp;</p>

<p><strong>Tuesday - Wednesday</strong><br />
6:00 AM to 11:00 AM<br />
9:00 PM to 1:00 AM</p>

<p>&nbsp;</p>

<p><strong>Thursday</strong><br />
6:00 AM to 10:00 AM<br />
9:00 PM to 1:00 AM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
6:00 AM to 10:00 AM<br />
8:00 PM to 1:00 AM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
6:00 AM to 10:00 AM<br />
9:00 PM to 1:00 AM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
6:00 AM to 11:00 AM<br />
8:00 PM to 1:00 AM</p>
');
INSERT INTO "BestTimeToShop" VALUES(360.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
6:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 11:00 AM<br />
5:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 11:00 AM<br />
6:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Thursday - Friday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday - Sunday</strong><br />
7:00 AM to 11:00 AM<br />
6:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(361.0,'','Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday</strong><br />
8:00 AM to 11:00 AM<br />
6:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Wednesday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p><strong>Thursday</strong><br />
8:00 AM to 12:00 PM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Friday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Saturday</strong><br />
8:00 AM to 10:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>
');
INSERT INTO "BestTimeToShop" VALUES(397.0,NULL,'Beat the crowds with these recommended times to shop based on the least crowded times average for this store during non-holiday periods.','<p><strong>Monday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Tuesday - Saturday</strong><br />
8:00 AM to 11:00 AM<br />
8:00 PM to 11:00 PM</p>

<p>&nbsp;</p>

<p><strong>Sunday</strong><br />
8:00 AM to 11:00 AM<br />
7:00 PM to 11:00 PM</p>
');
CREATE TABLE IF NOT EXISTS StoreBestTimeToShop (StoreID,BestTimeToShopID);
INSERT INTO "StoreBestTimeToShop" VALUES(114.0,349.0);
INSERT INTO "StoreBestTimeToShop" VALUES(158.0,137.0);
INSERT INTO "StoreBestTimeToShop" VALUES(161.0,350.0);
INSERT INTO "StoreBestTimeToShop" VALUES(165.0,351.0);
INSERT INTO "StoreBestTimeToShop" VALUES(166.0,352.0);
INSERT INTO "StoreBestTimeToShop" VALUES(171.0,353.0);
INSERT INTO "StoreBestTimeToShop" VALUES(172.0,354.0);
INSERT INTO "StoreBestTimeToShop" VALUES(181.0,355.0);
INSERT INTO "StoreBestTimeToShop" VALUES(190.0,357.0);
INSERT INTO "StoreBestTimeToShop" VALUES(195.0,358.0);
INSERT INTO "StoreBestTimeToShop" VALUES(196.0,359.0);
INSERT INTO "StoreBestTimeToShop" VALUES(208.0,360.0);
INSERT INTO "StoreBestTimeToShop" VALUES(209.0,361.0);
INSERT INTO "StoreBestTimeToShop" VALUES(393.0,397.0);
CREATE TABLE IF NOT EXISTS StoreServiceLookup (StoreServiceID primary key, ServiceTypeId, Description, ImagePathLarge, StoreServiceHours);
INSERT INTO "StoreServiceLookup" VALUES(151.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(159.0,145.0,'For more information, call or email Jamie Valente:
(718) 423-5990 | jamie.valente@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(163.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(169.0,145.0,'For more information, call or email Jennifer Fellman: 
(201) 267-9633 | paramuscatering@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(175.0,145.0,'For more information, call or email Alejandra Almonacid: 
(914) 633-6561 | pelhamcatering@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(179.0,145.0,'For more information, call or email Maria Colello:
(516) 871-0294 ext 149 | Maria.Colello@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(183.0,145.0,'For more information, call or email Marcy Rosenblum: 
(347) 464-5780 | redhookcatering@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(186.0,147.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(187.0,148.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(188.0,140.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"20:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(192.0,145.0,'For more information, call or email Diane Russo 
(203) 388-9850 | StamfordCatering@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(193.0,143.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(194.0,149.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(198.0,145.0,'For more information, call or email Jennifer Madrid
(212) 327-2086 | jennifer.madrid@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(201.0,141.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"07:00","name":"OpenTime","language":null},{"type":"time","value":"22:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(203.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"23:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(204.0,140.0,'
',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"1","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"2","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"2","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"3","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"4","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"5","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"22:00","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"6","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"22:00","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"7","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(205.0,146.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(206.0,145.0,'For more information, call or email Bonnie Langer:
(866) 392-2837 | Bonnie.Langer@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(211.0,145.0,'For more information, call or email Aggie Solej: 
(973) 339-5139 | WoodlandParkCatering@FairwayMarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(214.0,142.0,'',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(342.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"20:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(343.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"07:00","name":"OpenTime","language":null},{"type":"time","value":"20:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(344.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"20:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(346.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"1","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"2","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"3","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"4","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"5","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"22:00","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"6","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"22:00","name":"CloseTime","language":null}],"name":null,"language":null},{"type":"StoreHours","value":[{"type":"select","value":"7","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"21:30","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(347.0,121.0,'',NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"23:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(348.0,145.0,'For more information, call or email Takisha Williams: 
(646) 720-9450 | Takisha.Williams@fairwaymarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(394.0,145.0,'For more information, call or email Melanie Tiplady:
(845) 501-4290 | NanuetCatering@FairwayMarket.com',NULL,'[]');
INSERT INTO "StoreServiceLookup" VALUES(395.0,121.0,NULL,NULL,'[{"type":"StoreHours","value":[{"type":"select","value":"0","name":"DayID","language":null},{"type":"time","value":"08:00","name":"OpenTime","language":null},{"type":"time","value":"23:00","name":"CloseTime","language":null}],"name":null,"language":null}]');
INSERT INTO "StoreServiceLookup" VALUES(396.0,144.0,'Fairwayhotspot',NULL,'[]');
