;	+|+|+|	DIGSITE POSTPROCESSING, #ALLNATUREAL
	
(script static void dig_pp_briefing_1
	(print "dig_pp_intro_scene_1_1")
	
	(cinematic_lighting_set_ambient_light 0 0 0)
	(cinematic_lighting_set_secondary_light 0 0 0 0 0)
	(cinematic_lighting_set_primary_light 0 0 0 0 0)
	(object_uses_cinematic_lighting briefing_johnson 1)
)

(script static void dig_pp_briefing_2
	(print "dig_pp_intro_scene_1_1")
	
	(cinematic_lighting_set_ambient_light 0 0 0)
	;(cinematic_lighting_set_secondary_light 0 0 0.1 0.1 0.2)
	(cinematic_lighting_set_secondary_light 0 -60 0.05 0.05 0.05)
	(cinematic_lighting_set_primary_light 0 0 0.08 0.08 0.12)
	(object_uses_cinematic_lighting briefing_johnson 1)
)
	
(script static void dig_pp_intro_scene_1_1
	(print "dig_pp_intro_scene_1_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.7 0.5 0.3)
	(cinematic_lighting_set_secondary_light 20.0 100.0 0.2 0.2 0.4)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
)

(script static void dig_pp_intro_chief_reveal_1
	(print "dig_pp_intro_chief_reveal_1")
	
	;(cinematic_lighting_set_primary_light -50.0 120.0 0.3 0.3 0.5); ORIGINAL
	;(cinematic_lighting_set_secondary_light 20.0 -30.0 0.5 0.3 0.true);
	;(cinematic_lighting_set_ambient_light 2 2 2);
	
	(cinematic_lighting_set_primary_light -50.0 120.0 0.3 0.3 0.5); NEO
	(cinematic_lighting_set_secondary_light 20.0 -40.0 0.5 0.3 0)
	(cinematic_lighting_set_ambient_light -0 -.05 .05)
	
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_1/driver) true)	
	(object_uses_cinematic_lighting "chief" true)
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_2/driver) true)
	
	(rasterizer_bloom_override_threshold 0.3)
	(rasterizer_bloom_override_blur_amount 7)
	(rasterizer_bloom_override_brightness 0.6)
	(rasterizer_bloom_override_box_factor 0.6)
	
	;(if (ice_cream_flavor_available 5);	IWHBYD test
	;	(begin
	;		(print "CROWD GOES WILD")
	;	)
	;)
)

(script static void dig_pp_intro_scene_1_2
	(print "dig_pp_intro_scene_1_2")
	
	;(cinematic_lighting_set_primary_light 16.0 -32.0 0.6 0.5 0.4); ORIGINAL
	;(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_ambient_light 0.12 0.12 0.15)
	
	(cinematic_lighting_set_primary_light 16.0 -34.0 0.6 0.5 0.43); NEO
	(cinematic_lighting_set_secondary_light 10.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.16 0.16 0.20)
)

(script static void dig_pp_intro_chief_reveal_2
	(print "dig_pp_intro_chief_reveal_2")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.6 0.5 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_2/driver) true)
	(object_uses_cinematic_lighting "clouds_scenery" true)
	
	(rasterizer_bloom_override_threshold 0.67)
)

(script static void dig_pp_intro_pelican_1
	(print "dig_pp_intro_pelican_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_2/driver) true)
)

(script static void dig_pp_intro_sniper_setup
	(print "dig_pp_intro_sniper_setup")
	
	;(cinematic_lighting_set_primary_light 16.0 -32.0 0.4 0.3 0.2);	ORIGINAL
	;(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.3)
	;(cinematic_lighting_set_ambient_light 0.1 0.1 0.true)
	
	(cinematic_lighting_set_primary_light 20.0 -32.0 0.4 0.3 0.3)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.25)
	(cinematic_lighting_set_ambient_light 0.06 0.06 0.06)
	
	(object_uses_cinematic_lighting "intro_ground_rifle" true)
	(object_uses_cinematic_lighting "sniper_scope" true)
	(object_uses_cinematic_lighting "sniper_1" true)
	(object_uses_cinematic_lighting "sniper_2" true)
	
	(cinematic_lightmap_shadow_enable)
)

(script static void dig_pp_intro_scene_1_3
	(print "dig_pp_intro_scene_1_3")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.6 0.5 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.14 0.1 0.1)
)

(script static void dig_pp_intro_scene_2_1
	(print "dig_pp_intro_scene_2_1")
	
	;(cinematic_lighting_set_ambient_light 0.1 0.1 0.0)
	(cinematic_lighting_set_ambient_light 0.1 0.1 0.04)
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_2/driver) false)
)

(script static void dig_pp_intro_scene_2_2
	(print "dig_pp_intro_scene_2_2")
	
	(cinematic_lighting_set_primary_light 35.0 20.0 0.6 0.5 0.4)
	(cinematic_lighting_set_secondary_light 20.0 160.0 0.3 0.1 0.0)
	;(cinematic_lighting_set_ambient_light 0.16 0.16 0.16)
	
	(cinematic_lighting_set_ambient_light 0.125 0.125 0.125)
	
	(object_uses_cinematic_lighting "johnson" true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
)

(script static void dig_pp_intro_scene_2_3
	(print "dig_pp_intro_scene_2_3")
	(cinematic_lighting_set_secondary_light 16.0 330.0 0.1 0.1 0.2)
	;(cinematic_lighting_set_primary_light 20.0 160.0 0.3 0.3 0.0)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(cinematic_lighting_set_ambient_light 0.15 0.15 0.15)
	(cinematic_lighting_set_primary_light 30.0 160.0 0.35 0.3 0.16)
	
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
)

(script static void dig_pp_intro_scene_2_4
	(print "dig_pp_intro_scene_2_4")
	
	(cinematic_lighting_set_primary_light 10.0 90.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 300.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(cinematic_lighting_set_ambient_light 0.10 0.10 0.11)
)

(script static void dig_pp_intro_scene_2_5
	(print "dig_pp_intro_scene_2_5")
	
	(cinematic_lighting_set_primary_light 20.0 85.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 280.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_ambient_light 0.175 0.17 0.179)
	(cinematic_lighting_set_ambient_light 0.07 0.08 0.0979)
)

(script static void dig_pp_intro_scene_2_6
	(print "dig_pp_intro_scene_2_6")
	
	(cinematic_lighting_set_primary_light -10.0 140.0 0.8 0.6 0.4)
	;(cinematic_lighting_set_secondary_light 20.0 0.0 0.2 0.2 0.4)
	;(cinematic_lighting_set_ambient_light 0.15 0.15 0.17)
	
	(cinematic_lighting_set_primary_light -10.0 140.0 0.9 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 0.0 0.2 0.2 0.3)
	(cinematic_lighting_set_ambient_light 0.02 0.02 0.05)
	
	(object_uses_cinematic_lighting "helmet_odst" true)
	(object_uses_cinematic_lighting "chief" true)
)

(script static void dig_pp_intro_scene_2_7
	(print "dig_pp_intro_scene_2_7")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_3/driver) true)
)

(script static void dig_pp_intro_scene_3_1
	(print "dig_pp_intro_scene_3_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
)

(script static void dig_pp_intro_scene_3_2
	(print "dig_pp_intro_scene_3_2")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(cinematic_lighting_set_ambient_light -0.2 -0.2 -0.2)
	
	(object_uses_cinematic_lighting bm_double true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
)

(script static void dig_pp_intro_scene_3_3
	(print "dig_pp_intro_scene_3_3")
	
	;(cinematic_lighting_set_primary_light 16.0 -32.0 0.25 0.2 0.0)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.3)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(cinematic_lighting_set_ambient_light 0.07 0.095 0.05)	
	;(cinematic_lighting_set_primary_light 16.0 -32.0 0.2 0.15 0.1)
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.2 0.15 0.2)
	
	(object_uses_cinematic_lighting bm_double true)	
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
)

(script static void dig_pp_intro_scene_3_4
	(print "dig_pp_intro_scene_3_4")
	
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) false)
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.5 0.4 0.3)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.2 0.2 0.4)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(cinematic_lighting_set_ambient_light 0.0 0.0 0.0)
	
	(object_uses_cinematic_lighting "chief" true)
	(object_uses_cinematic_lighting (list_get (ai_actors "intro_odst_1") 0) true)
	(object_uses_cinematic_lighting (list_get (ai_actors "intro_odst_2") 0) true)
	(object_uses_cinematic_lighting (list_get (ai_actors "intro_odst_3") 0) true)
	(object_uses_cinematic_lighting (list_get (ai_actors "intro_odst_4") 0) true)
)

(script static void dig_pp_close_pods_1
	(print "dig_pp_close_pods_1")
	
	(object_uses_cinematic_lighting "outro_pod_scenery_1" true)
	(object_uses_cinematic_lighting "outro_pod_scenery_2" true)
	(object_uses_cinematic_lighting "outro_pod_scenery_3" true)
	(object_uses_cinematic_lighting "outro_pod_scenery_4" true)
	(object_uses_cinematic_lighting "outro_pod_scenery_5" true)
	(object_uses_cinematic_lighting "outro_pod_scenery_6" true)
)

(script static void dig_pp_outro_scene_1_0
	(print "dig_pp_outro_scene_1_0")
	
	;(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.44)
	;(cinematic_lighting_set_ambient_light 0.01 0.01 0.01)
	
	(object_uses_cinematic_lighting "phantom_3_dig" true)
	
	;(object_uses_cinematic_lighting "chief_ghost" true)
	(object_uses_cinematic_lighting "chief_ghost" false)
	
	(object_uses_cinematic_lighting (list_get (ai_actors "chief_2") 0) true)
	(cinematic_lightmap_shadow_enable)
)

(script static void dig_pp_outro_scene_1_1
	(print "dig_pp_outro_scene_1_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	;(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	;(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	
	;
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.44)
	(cinematic_lighting_set_ambient_light 0.01 0.01 0.01)
	
	(object_uses_cinematic_lighting "phantom_3_dig" true)
	(object_uses_cinematic_lighting "outro_phantom_2" true)
	
	(object_uses_cinematic_lighting "chief_ghost" true)
	(object_uses_cinematic_lighting (list_get (ai_actors "chief_2") 0) true)

	(cinematic_lightmap_shadow_enable)
)

(script static void dig_pp_outro_scene_chase1
	(print "dig_pp_chase 1")
	
	(object_uses_cinematic_lighting "phantom_3_dig" true)
)

(script static void dig_pp_outro_scene_chase2
	(print "dig_pp_chase 2")
	
	(object_uses_cinematic_lighting "outro_phantom_2" true)
	(object_uses_cinematic_lighting "phantom_3_dig" true)
)

(script static void dig_pp_outro_scene_chase3
	(print "dig_pp_chase 3")
)

(script static void dig_pp_outro_scene_1_2
	(print "dig_pp_outro_scene_1_2")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.3)
	(cinematic_lighting_set_ambient_light 0.05 0.05 0.05)
	
	(object_uses_cinematic_lighting "outro_phantom_1_base" true)
	(object_uses_cinematic_lighting (list_get (ai_actors "phantom_2") 0) true)
	(object_uses_cinematic_lighting "phantom_3_dig" true)
	(object_uses_cinematic_lighting "phantom_3_dig" true)
)

(script static void dig_pp_outro_scene_2_1
	(print "dig_pp_outro_scene_2_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.3)
	(cinematic_lighting_set_ambient_light 0.05 0.05 0.05)
	
	(object_uses_cinematic_lighting "outro_phantom_1" true)
	(object_uses_cinematic_lighting "ptest" true)
	(object_uses_cinematic_lighting "outro_phantom_2" true)
	(object_uses_cinematic_lighting "phantom_3_dig" true)
)

(script static void dig_pp_outro_scene_2_2
	(print "dig_pp_outro_scene_2_2")
)

(script static void dig_pp_outro_scene_2_3
	(print "dig_pp_outro_scene_2_2")
)

(script static void dig_pp_outro_scene_2_4
	(print "dig_pp_outro_scene_2_2")
)

(script static void dig_pp_outro_scene_2_5
	(print "dig_pp_outro_scene_2_2")
)

(script static void dig_pp_outro_scene_2_6
	(print "dig_pp_outro_scene_2_2")
)

(script static void dig_pp_outro_scene_3_1
	(print "dig_pp_outro_scene_3_1")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	(object_uses_cinematic_lighting "chief" true)
	(object_uses_cinematic_lighting "chief_ghost" true)
)

(script static void dig_pp_outro_scene_3_2
	(print "dig_pp_outro_scene_3_2")
	
	(object_uses_cinematic_lighting chief true)
	
	(cinematic_lighting_set_primary_light 16.0 32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_ambient_light -.4 -.4 -.4)
)

(script static void dig_pp_outro_scene_3_3
	(print "dig_pp_outro_scene_3_2")
	
	(object_uses_cinematic_lighting chief true)
	
	(cinematic_lighting_set_primary_light 16.0 32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_ambient_light -.4 -.4 -.4)
)

(script static void dig_pp_outro_scene_3_4
	(print "dig_pp_outro_scene_3_2")
	
	(object_uses_cinematic_lighting chief true)
	
	(cinematic_lighting_set_primary_light 16.0 32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_ambient_light -.4 -.4 -.4)
)

(script static void dig_pp_outro_scene_3_5
	(print "dig_pp_outro_scene_3_2")
	
	(object_uses_cinematic_lighting chief true)
	
	(cinematic_lighting_set_primary_light 16.0 32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_ambient_light -.4 -.4 -.4)
)

(script static void dig_pp_outro_scene_3_6
	(print "dig_pp_outro_scene_3_2")
	
	(object_uses_cinematic_lighting chief true)
	
	(cinematic_lighting_set_primary_light 16.0 32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_ambient_light -.4 -.4 -.4)
)

(script static void dig_pp_outro_scene_3_7
	(print "dig_pp_outro_scene_3_2")
)

(script static void dig_pp_outro_scene_3_8
	(print "dig_pp_outro_scene_3_2")
)

(script static void dig_pp_outro_scene_4_1
	(print "dig_pp_outro_scene_4_1")
	
	(object_uses_cinematic_lighting (list_get (ai_actors "b_outro_13") 0) true)
	(object_uses_cinematic_lighting (list_get (ai_actors "b_outro_23") 0) true)
	(object_uses_cinematic_lighting "b_ghost_1" true)
)

(script static void dig_pp_outro_scene_5_1
	(print "dig_pp_outro_scene_5_1")
	
	(object_uses_cinematic_lighting "chief" true)
	(object_uses_cinematic_lighting "outro_smg_1" true)
	(object_uses_cinematic_lighting "outro_smg_2" true)
)

(script static void dig_pp_intro_scene_5_12
	(print "dig_pp_outro_scene_5_2")
	
	(cinematic_lighting_set_primary_light 16.0 -60.0 1.0 0.8 0.6)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.1 0.1 0.2)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	(object_uses_cinematic_lighting "outro_elite_1" true)
)

(script static void dig_pp_intro_scene_5_13
	(print "dig_pp_outro_scene_5_3")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	(object_uses_cinematic_lighting "outro_elite_2" true)
)

(script static void dig_pp_intro_scene_5_14
	(print "dig_pp_outro_scene_5_4")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.8 0.6 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.3 0.3 0.5)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
)

(script static void dig_pp_intro_scene_5_15
	(print "dig_pp_outro_scene_5_5")
	
	;(cinematic_lighting_set_ambient_light -0.5 -0.2 0)
	(cinematic_lighting_set_ambient_light 0 0 0)
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.7 0.5 0.3)
)

(script static void dig_pp_parsons
	(object_uses_cinematic_lighting (ai_get_unit parsons) 1)
)

(script static void dig_pp_odst
	(object_uses_cinematic_lighting (ai_get_object "e1_mars_inf0/odst0") true)
	(object_uses_cinematic_lighting (ai_get_object "e1_mars_inf0/odst1") true)
	(object_uses_cinematic_lighting (ai_get_object "e1_mars_inf1/odst0") true)
)

(script static void dig_pp_banks
	(object_uses_cinematic_lighting sgt_banks true)
	(object_uses_cinematic_lighting dead_comm_marine true)
	(object_uses_cinematic_lighting e3_scenery_corpse0 true)
	(object_uses_cinematic_lighting e3_scenery_corpse1 true)
	(object_uses_cinematic_lighting e3_scenery_corpse2 true)
	(object_uses_cinematic_lighting e3_scenery_corpse3 true)
	(object_uses_cinematic_lighting e3_ap_turret0 true)
	
	(cinematic_lighting_set_ambient_light 0.0 0.0 0.0)	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.35 0.27 0.3)
)

(global boolean dig_cin_pp_toggle false)

(script static void dig_pp_casulties
	(object_uses_cinematic_lighting (ai_get_unit parsons) 1)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.14 0.14 0.2)
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.38 0.3 0.33)
	(cinematic_lighting_set_ambient_light 0.03 0.02 0.03)
	(object_uses_cinematic_lighting w_marine_1 true)
	(object_uses_cinematic_lighting w_marine_4 true)
	(object_uses_cinematic_lighting w_marine_5 true)
	;(object_uses_cinematic_lighting w_marine_6 true)
	(object_uses_cinematic_lighting w_marine_7 true)
	(object_uses_cinematic_lighting w_tarmac_1 true)
	(object_uses_cinematic_lighting w_tarmac_2 true)
	(object_uses_cinematic_lighting w_tarmac_3 true)
	(object_uses_cinematic_lighting w_tarmac_4 true)
	(object_uses_cinematic_lighting w_tarmac_5 true)
	(object_uses_cinematic_lighting w_lieutenant true)
	(object_uses_cinematic_lighting medic_1 true)
	(object_uses_cinematic_lighting medic_4 true)
	;(object_uses_cinematic_lighting medic_5 true)
	(object_uses_cinematic_lighting tent_doc_1 true)
	(object_uses_cinematic_lighting tent_doc_2 true)
	(object_uses_cinematic_lighting tent_marine_1 true)
	(object_uses_cinematic_lighting (unit (list_get (ai_actors "bandaged_marine") 0)) false)
	(object_uses_cinematic_lighting (ai_get_object "e1_mars_inf1/odst0") true)
	(set dig_cin_pp_toggle true)
)

(script static void dig_pp_casulties_test
	(if (not dig_cin_pp_toggle)
		(begin
			(object_uses_cinematic_lighting (ai_get_unit parsons) 1)
			(cinematic_lighting_set_secondary_light 20.0 180.0 0.14 0.14 0.2)
			(cinematic_lighting_set_primary_light 16.0 -32.0 0.38 0.3 0.33)
			(cinematic_lighting_set_ambient_light 0.03 0.02 0.03)
			
			(object_uses_cinematic_lighting w_marine_1 true)
			(object_uses_cinematic_lighting w_marine_4 true)
			(object_uses_cinematic_lighting w_marine_5 true)
			(object_uses_cinematic_lighting w_marine_6 true)
			(object_uses_cinematic_lighting w_marine_7 true)
			(object_uses_cinematic_lighting w_tarmac_1 true)
			(object_uses_cinematic_lighting w_tarmac_2 true)
			(object_uses_cinematic_lighting w_tarmac_3 true)
			(object_uses_cinematic_lighting w_tarmac_4 true)
			(object_uses_cinematic_lighting w_tarmac_5 true)
			(object_uses_cinematic_lighting w_lieutenant true)
			(object_uses_cinematic_lighting medic_1 true)
			(object_uses_cinematic_lighting medic_4 true)
			(object_uses_cinematic_lighting medic_5 true)
			(object_uses_cinematic_lighting tent_doc_1 true)
			(object_uses_cinematic_lighting tent_doc_2 true)
			(object_uses_cinematic_lighting tent_marine_1 true)
			(object_uses_cinematic_lighting (unit (list_get (ai_actors "bandaged_marine") 0)) true)
			(object_uses_cinematic_lighting (ai_get_object "e1_mars_inf1/odst0") true)
			(set dig_cin_pp_toggle true)
		)
		(begin
			(object_uses_cinematic_lighting w_marine_1 false)
			(object_uses_cinematic_lighting w_marine_4 false)
			(object_uses_cinematic_lighting w_marine_5 false)
			(object_uses_cinematic_lighting w_marine_6 false)
			(object_uses_cinematic_lighting w_marine_7 false)
			(object_uses_cinematic_lighting w_tarmac_1 false)
			(object_uses_cinematic_lighting w_tarmac_2 false)
			(object_uses_cinematic_lighting w_tarmac_3 false)
			(object_uses_cinematic_lighting w_tarmac_4 false)
			(object_uses_cinematic_lighting w_tarmac_5 false)
			(object_uses_cinematic_lighting w_lieutenant false)
			(object_uses_cinematic_lighting medic_1 false)
			(object_uses_cinematic_lighting medic_4 false)
			(object_uses_cinematic_lighting medic_5 false)
			(object_uses_cinematic_lighting tent_doc_1 false)
			(object_uses_cinematic_lighting tent_doc_2 false)
			(object_uses_cinematic_lighting tent_marine_1 false)
			(object_uses_cinematic_lighting (unit (list_get (ai_actors "bandaged_marine") 0)) false)
			(set dig_cin_pp_toggle false)
		)
	)
)

(script static void dig_pp_guntower
	(print "dig_pp_guntower")
	
	(cinematic_lighting_set_primary_light 16.0 -32.0 0.5 0.4 0.4)
	(cinematic_lighting_set_secondary_light 20.0 180.0 0.2 0.2 0.3)
	(cinematic_lighting_set_ambient_light 0.2 0.2 0.2)
	
	(object_uses_cinematic_lighting "guntower" true)
	
	(dig_pp_casulties)
)