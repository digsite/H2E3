(global boolean g_intro false)
(global boolean debug true)
(global boolean g_e10_player_killed_two_brutes false)
(global boolean g_e10_player_has_boarded false)
(global boolean g_e10_phantom_should_move false)
(global vehicle g_e10_jacked_ghost_hack "chief_ghost")
(global boolean e8_warthog1_should_continue false)
(global boolean e8_warthog1_should_follow false)
(global long g_e8_warthog0_kills 0)
(global boolean e7_warthog0_could_use_gunner false)
(global boolean e7_transports_should_leave false)
(global boolean e7_warthog0_should_advance false)
(global boolean e7_warthog1_should_advance false)
(global boolean e7_warthog0_should_continue false)
(global boolean e7_warthog1_should_continue false)
(global boolean g_e5_bombs_away false)
(global boolean g_e5_turret_exploded false)
(global boolean g_e4_bombers_can_come_in false)
(global boolean g_e4_cov_grunt_wave_go false)
(global boolean g_e1_odsts_begin_cave_advance false)
(global boolean g_e1_odsts_return false)
(global boolean g_e1_odsts_enter_hospital false)
(global boolean g_e1_mars_safe_to_go false)
(global boolean g_e0_warthog0_passenger_exit false)
(global boolean g_joe_called_mission_start false)
(global boolean global_demo_start false)
(global boolean global_perez_fix false)

(global unit global_intro_odst_1 none)
(global unit global_intro_odst_2 none)
(global unit global_intro_odst_3 none)
(global unit global_intro_odst_4 none)
(global unit global_brute0_0 none)
(global unit global_brute2_0 none)
(global unit global_brute2_1 none)
(global unit global_brute2_2 none)
(global vehicle global_warthog0 none)
(global vehicle global_warthog1 none)
(global vehicle global_warthog2 none)
(global short function_scale 30); Mainly for the pelicans

(global boolean dig_moth false)
(global boolean dig_ready false)
(global boolean dig_dev false)
(global boolean dig_skip false)

(global object_definition dual_dig "objects\weapons\rifle\smg_dual\smg_dual")
(global boolean dig_renderman false); When non-zero, run dynamic light render manager.
(global boolean dig_outofbounds false); Track if player is rampantly off-cue.
(global short dig_casio 0); Timekeeper for going off-cue.

(script static void dig_postprocessing_johnson
	(print "Bloom adjustment: Johnson Briefing")
	(rasterizer_bloom_override 1)
	(rasterizer_bloom_override_silver_bullet 1)
	(rasterizer_bloom_override_brightness 0.2)
)

(script static void dig_postprocessing_intro
	(print "Bloom adjustment: Intro Shot 1")
	(set ssc_light_diffuse 1.5)
	(rasterizer_bloom_override 1)
	(rasterizer_bloom_override_threshold 0.63)
	(rasterizer_bloom_override_brightness 0.3)
	(rasterizer_bloom_override_silver_bullet 0)
)

(script startup dig_postprocessing;			DIGSITE, postprocessing (bloom/dof) management
	(rasterizer_bloom_override 1)
	(rasterizer_bloom_override_threshold 1)
	(rasterizer_bloom_override_brightness 0)
	(sleep_until dig_ready)
	(print "Bloom adjustment, setting rasterizer_blur to 1 (Intro)")
	(rasterizer_blur 1)
	(sleep_forever)
	(print "Bloom adjustment, setting rasterizer_blur to 2 (Game)")
	(rasterizer_blur 2)
)

;	+|+|+|	DIGSITE, Stub scripts for navpoints, check breadcrumbs.hsc (yes I know it's ugly)

(script stub void dig_moth_1 (print "Nav Stub")) (script stub void dig_moth_2 (print "Nav Stub"))
(script stub void dig_moth_3 (print "Nav Stub")) (script stub void dig_moth_4 (print "Nav Stub"))
(script stub void dig_moth_5 (print "Nav Stub")) (script stub void dig_moth_6 (print "Nav Stub"))
(script stub void dig_moth_7 (print "Nav Stub")) (script stub void dig_moth_8 (print "Nav Stub"))
(script stub void dig_moth_9 (print "Nav Stub")) (script stub void dig_moth_10 (print "Nav Stub"))

;	+|+|+|	DIGSITE, Stub scripts for cinematic lighting, check light_cinematic.hsc (yes I know it's ugly)

(script stub void dig_pp_intro_scene_1_1 (print "CinLight")) (script stub void dig_pp_intro_scene_1_2 (print "CinLight"))
(script stub void dig_pp_intro_scene_1_3 (print "CinLight")) (script stub void dig_pp_intro_scene_2_1 (print "CinLight"))
(script stub void dig_pp_intro_scene_2_2 (print "CinLight")) (script stub void dig_pp_intro_scene_2_3 (print "CinLight"))
(script stub void dig_pp_intro_scene_2_4 (print "CinLight")) (script stub void dig_pp_intro_scene_2_5 (print "CinLight"))
(script stub void dig_pp_intro_scene_2_6 (print "CinLight")) (script stub void dig_pp_intro_scene_2_7 (print "CinLight"))
(script stub void dig_pp_intro_scene_3_1 (print "CinLight")) (script stub void dig_pp_intro_scene_3_2 (print "CinLight"))
(script stub void dig_pp_intro_scene_3_3 (print "CinLight")) (script stub void dig_pp_intro_scene_3_4 (print "CinLight"))
(script stub void dig_pp_intro_scene_3_5 (print "CinLight")) (script stub void dig_pp_intro_scene_3_6 (print "CinLight"))
(script stub void dig_pp_intro_scene_3_7 (print "CinLight"))
(script stub void dig_pp_close_pods_1 (print "CinLight")) (script stub void dig_pp_outro_scene_1_1 (print "CinLight"))
(script stub void dig_pp_outro_scene_1_2 (print "CinLight")) (script stub void dig_pp_outro_scene_2_1 (print "CinLight"))
(script stub void dig_pp_outro_scene_2_2 (print "CinLight")) (script stub void dig_pp_outro_scene_2_3 (print "CinLight"))
(script stub void dig_pp_outro_scene_2_4 (print "CinLight")) (script stub void dig_pp_outro_scene_2_5 (print "CinLight"))
(script stub void dig_pp_outro_scene_2_6 (print "CinLight")) (script stub void dig_pp_outro_scene_2_7 (print "CinLight"))
(script stub void dig_pp_outro_scene_3_1 (print "CinLight")) (script stub void dig_pp_outro_scene_3_3 (print "CinLight"))
(script stub void dig_pp_outro_scene_3_4 (print "CinLight")) (script stub void dig_pp_outro_scene_4_1 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_1 (print "CinLight")) (script stub void dig_pp_outro_scene_5_2 (print "CinLight"))
(script stub void dig_pp_intro_scene_5_2 (print "CinLight")) (script stub void dig_pp_intro_scene_5_3 (print "CinLight"))
(script stub void dig_pp_intro_scene_5_4 (print "CinLight")) (script stub void dig_pp_intro_scene_5_5 (print "CinLight"))
(script stub void dig_pp_intro_scene_5_6 (print "CinLight")) (script stub void dig_pp_outro_scene_5_7 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_8 (print "CinLight")) (script stub void dig_pp_intro_scene_5_9 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_9 (print "CinLight")) (script stub void dig_pp_intro_scene_5_10 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_10 (print "CinLight")) (script stub void dig_pp_intro_scene_5_11 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_11 (print "CinLight")) (script stub void dig_pp_intro_scene_5_12 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_12 (print "CinLight")) (script stub void dig_pp_intro_scene_5_13 (print "CinLight"))
(script stub void dig_pp_outro_scene_5_13 (print "CinLight")) (script stub void dig_pp_outro_scene_5_14 (print "CinLight"))
(script stub void dig_pp_intro_chief_reveal_1 (print "CinLight")) (script stub void dig_pp_outro_scene_5_15 (print "CinLight"))
(script stub void dig_pp_intro_chief_reveal_2 (print "CinLight")) (script stub void dig_pp_intro_pelican_1 (print "CinLight"))
(script stub void dig_pp_intro_sniper_setup (print "CinLight")) (script stub void dig_pp_guntower (print "CinLight"))

(script stub void dig_pp_banks
	(print "stub")
)
(script stub void dig_pp_parsons
	(print "stub")
)
(script stub void dig_pp_perez
	(print "stub")
)
(script stub void dig_pp_casulties
	(print "stub")
)
(script stub void dig_pp_odst
	(print "stub")
)
(script stub void dig_pp_briefing_1
	(print "stub")
)
(script stub void dig_pp_briefing_2
	(print "stub")
)
(script stub void dig_pp_outro_scene_3_5
	(print "dig_pp_outro_scene_3_2")
)
(script stub void dig_pp_outro_scene_3_6
	(print "dig_pp_outro_scene_3_2")
)
(script stub void dig_pp_outro_scene_3_7
	(print "dig_pp_outro_scene_3_2")
)
(script stub void dig_pp_outro_scene_3_8
	(print "dig_pp_outro_scene_3_2")
)
(script stub void dig_pp_outro_scene_4_2
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_3
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_4
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_5
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_6
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_7
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_8
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_9
	(print "dig_pp_outro_scene_3_2")
)

(script stub void dig_pp_outro_scene_4_10
	(print "dig_pp_outro_scene_3_2")
)

;	+|+|+|	--	--	--	--	--	--	--	--	--	--	--	--	--

(script continuous lightman;				DIGSITE, actively cull scenery lights outside player bounds
	(if dig_dev
		(print "Lightman")
	)
	(sleep_until dig_renderman);  Halt here until dig_renderman is active.
	(if (volume_test_objects "light_cy" (players))
		(object_create_anew_containing "light_street_cy")
		(object_destroy_containing "light_street_cy")
	)
	(if (volume_test_objects "light_int" (players))
		(object_create_anew_containing "light_int")
		(object_destroy_containing "light_int")
	)
	(if (volume_test_objects "light_street_sn" (players))
		(object_create_anew_containing "light_street_sn")
		(object_destroy_containing "light_street_sn")
	)
	(if (volume_test_objects "light_street_se" (players))
		(object_create_anew_containing "light_street_se")
		;(object_destroy_containing "light_street_se")
	)
	(if (or (volume_test_objects "light_int" (players)) (volume_test_objects "light_street_se" (players)))
		(object_create_anew "light_1900")
		(object_destroy "light_1900")
	)
	(if (volume_test_objects "light_street_ss" (players))
		(object_create_anew_containing "light_street_ss")
		(object_destroy_containing "light_street_ss")
	)
	(if (volume_test_objects "light_street_sw" (players))
		(object_create_anew_containing "light_street_sw")
		(object_destroy_containing "light_street_sw")
	) (sleep 2)
	(if (volume_test_objects "light_street_nn" (players))
		(object_create_anew_containing "light_street_nn")
		(object_destroy_containing "light_street_nn")
	)
	(if (volume_test_objects "light_street_ne" (players))
		(object_create_anew_containing "light_street_ne")
		(object_destroy_containing "light_street_ne")
	)
	(if (volume_test_objects "light_street_ns" (players))
		(object_create_anew_containing "light_street_ns")
		(object_destroy_containing "light_street_ns")
	)
	(if (volume_test_objects "light_street_nw" (players))
		(object_create_anew_containing "light_street_nw")
		(object_destroy_containing "light_street_nw")
	)
)

(script static void light_init_outro
	(object_create_containing "light_outro") (print "Init dynlights, outro")
)

(script static void light_cleanup_all;		DIGSITE, kill all scenery dynamic lights, this time it's personal
	(object_destroy_containing "light_")
	(print "ALL dynlights scrubbed")
	(sleep_forever lightman)
	(print "Goodbye lightman!")
)

(script static void light_cleanup_cyard;	DIGSITE, cull for courtyard
	(object_destroy_containing "light_street_cy") (print "Scrub dynlights, courtyard")
)

(script static void light_cleanup_int;		DIGSITE, cull for hospital
	(object_destroy_containing "light_int") (print "Scrub dynlights, hospital")
)

(script dormant light_init_intro;			DIGSITE, create specific streetlights for intro cinematics
	(print "Init dynlights, intro north shot. Briefing cleanup. Standing by...")
	(object_destroy_containing "projector")
	(object_destroy_containing "briefing")
	(object_create_anew_containing "intro_pp")
	(object_create_anew "light_street_nw_1")
	(object_create_anew "light_street_nw_4")
	(object_create_anew "light_street_nw_5")
	(object_create_anew "light_street_nw_6")
	(sleep_forever)
	(print "Init dynlights, landing pad shot. Standing by...")
	(object_destroy_containing "intro_pp")
	(object_destroy_containing "light_street")
	(object_create_anew "light_street_ss_1")
	(object_create_anew "light_street_ss_2")
	(object_create_anew "e3_unwanted_light")
	(object_create_anew "light_street_sn_1")
	(object_create_anew "light_street_sn_2")
	(sleep_forever)
	(print "Init dynlights, Cleanup for gameplay. Waking lightman...")
	(set dig_renderman 1)
	(object_create_anew_containing "light_")
	(wake lightman);						Tell the continuous light manager to do the thang
)

(script continuous load_circle
	(object_set_permutation dig_loading_circle "" "dig_load_1")
	(sleep 60)
	(object_set_permutation dig_loading_circle "" "dig_load_2")
	(sleep 60)
)

(script dormant intro_intake_coop;            DIGSITE, intro menu hack
    (if (cinematic_skip_start)
        (begin
            (object_create_anew dig_intake)
            (object_create "dig_loading")
            (object_create "dig_loading_circle")
            (scenery_animation_start "dig_loading" "scenarios\objects\special\dig_load\dig_load" "loading")
            (object_set_permutation dig_intake "" "dig_eula_coop")
            (camera_set logo_2 0)
            (camera_set_field_of_view 75 0)
            (sleep 30)
            (wake load_circle)
            (fade_in 0 0 0 5)
            (cinematic_screen_effect_start true)
            (sound_impulse_start "sound\ui\advance" none 1.0)
            (camera_set logo_0 5)
            (sleep 1320);    DIGSITE coop 45 second EULA sleep
            (fade_out 0 0 0 5)
        )
    (cinematic_skip_stop)
    )
    (sound_impulse_start "sound\ui\forward1" none 1.0)
    (object_destroy "dig_loading")
    (sleep_forever load_circle)
    (object_destroy "dig_loading_circle")
    (fade_out 0 0 0 0)
    (set dig_skip true)
    (sleep 5)
)

(script dormant intro_intake;				DIGSITE, because we like cool user interfaces!
	(object_create_anew dig_intake)
	(object_set_permutation dig_intake "" "dig_eula")
	(camera_set logo_2 0)
	(camera_set_field_of_view 75 0)
	(sleep 30)
	(fade_in 0 0 0 5)
	(cinematic_screen_effect_start true)
	(sound_impulse_start "sound\ui\advance" none 1.0)
	(camera_set logo_0 5)
)

(script startup intro_ready;				DIGSITE, gracefully transition from the intake to the logo
;	(if (game_is_cooperative)
;		(wake intro_intake_coop)
;		(wake intro_intake)
;	)
;	(if (not dig_skip)
;		(sleep_until (player_action_test_accept) 2)
;		(sleep 1350);	DIGSITE coop 45 second EULA sleep
;	)	player action test scripts do not work on network so not recommended for fake menus like these if coop in mind
	(wake intro_intake_coop)
	(sleep_until dig_skip)
	;(sleep_forever intro_options);	DIGSITE, old logic for original sandbox/nav conrfig
	(camera_set logo_2 5)
	(camera_set_field_of_view 120 10)

	(sleep 5)
	(set dig_ready true)
	(object_destroy dig_intake)
)

(script static void intro_logo;                DIGSITE, the full surround experience!
    (sleep_until dig_ready)
        (if (cinematic_skip_start)
            (begin
                (fade_in 0 0 0 0)
                ;(object_create "logo")
                (object_create "dig_credits")
                (object_set_permutation "dig_credits" "" "logo_dig")
                (sound_looping_start "sound\e3\music\dig_stinger\dig_stinger" none 1)
                (fade_in 0 0 0 60)
                (camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_logo")
                (camera_set_field_of_view 75 0);CE to H2 FOV compensation
                ;(camera_pan "logo_0" "logo_1" 120 0 1.0 0 1.0)
                (sleep 200)
                ;(camera_pan "logo_1" "logo_2" 45 0 1.0 0 1.0)
                (fade_out 0 0 0 40)
                (sleep 45)
                ;(object_destroy "logo")
                (object_destroy "dig_credits")
                (dig_postprocessing_johnson)
            )
        (cinematic_skip_stop)
        )
)

(script static void outro_logo
    (sound_class_set_gain ambient_machinery 0 60)
    (object_create "dig_credits")
    (object_set_permutation "dig_credits" "" "logo_h2")
    ;(object_create "logo")
    ;(object_set_permutation "logo" "logo" "outro")
    (fade_in 0 0 0 60)
    (camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_logo")
    (camera_set_field_of_view 75 0);CE to H2 FOV compensation
    ;(camera_pan "logo_0" "logo_1" 120 0 1.0 0 1.0)
    (sleep 240)
    (fade_out 0 0 0 80)
    (sleep 80)
    (sound_impulse_start "sound\e3\music\e3_credit_track\sunset_for_closure" none 1.0)
    ;(device_set_position "logo" 1.0)
    ;(object_destroy "logo")
    (object_set_permutation "dig_credits" "" "credit_1")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_2")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_3")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_4")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_5")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_6")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_set_permutation "dig_credits" "" "credit_7")
    (fade_in 0 0 0 60)
    (sleep 300)
    (fade_out 0 0 0 60)
    (sleep 60)
    (object_destroy "dig_credits")
    (print "game won")
    (game_won)
)

(script command_script cs_e0_warthog0_driver
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_force_combat_status 3)
	(cs_go_to e0_warthog0/driver_pickup 1.0)
	(set g_e0_warthog0_passenger_exit true)
	(cs_pause 3.0)
	(cs_go_to e0_warthog0/driver_dest_0)
	(cs_go_to e0_warthog0/driver_dest_1)
	(cs_go_to e0_warthog0/driver_dest_2)
	(ai_erase ai_current_squad)
)

(script command_script cs_e0_warthog0_gunner
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_force_combat_status 3)
	(cs_go_to e0_warthog0/gunner_load)
	(cs_go_to_vehicle (ai_vehicle_get "e0_mars_warthog0/driver"))
	(ai_vehicle_enter e0_mars_warthog0/gunner (ai_vehicle_get e0_mars_warthog0/driver) warthog_g)
	(sleep 32000)
)

(script command_script cs_e0_warthog0_passenger
	(cs_enable_pathfinding_failsafe true)
	(cs_force_combat_status 3)
	(cs_pause 1.0)
	(ai_vehicle_exit ai_current_actor)
	(cs_go_to e0_warthog0/passenger_p0)
	(cs_go_to e0_warthog0/passenger_erase)
	(ai_erase ai_current_actor)
)

(script dormant e0_mars_warthog0_main
	(ai_place "e0_mars_warthog0")
	(sleep 5)
	(cs_run_command_script "e0_mars_warthog0/driver" cs_e0_warthog0_driver)
	(cs_run_command_script "e0_mars_warthog0/gunner" cs_e0_warthog0_gunner)
	(sleep_until g_e0_warthog0_passenger_exit 2)
	(cs_run_command_script "e0_mars_warthog0/passenger" cs_e0_warthog0_passenger)
	(sleep_until (volume_test_objects "tv_e0_cleanup" (players)))
	(ai_erase "e0_mars_warthog0")
)

(script static void joe_mission_start
	(set g_joe_called_mission_start true)
)

(script static void joe_field_hospital_warthog_go
	(wake e0_mars_warthog0_main)
)

(script static void joe_odsts_return
	(set g_e1_odsts_return true)
)

(script static void joe_odsts_enter_hospital
	(set g_e1_odsts_enter_hospital true)
)

(script static void joe_odsts_head_for_sarge
	(set g_e1_mars_safe_to_go true)
)

(script static void joe_grunt_wave_begins
	(set g_e4_cov_grunt_wave_go true)
)

(script static boolean joe_bombers_can_enter
	(= g_e4_bombers_can_come_in true)
)

(script static void joe_bombs_away
	(set g_e5_bombs_away true)
)

(script static void joe_turret_exploded
	(set g_e5_turret_exploded true)
)

(script dormant hostile_fire_1
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_11")
	(sleep 15)
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_21")
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_51")
	(sleep 20)
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_31")
	(sleep 10)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_61")
)

(script dormant hostile_fire_2
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_12")
	(sleep 10)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_22")
	(sleep 30)
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_42")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_32")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_52")
	(sleep 30)
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_62")
)

(script dormant hostile_fire_3
	(effect_new "effects\bursts\guntower_burst" "f_hostile_fire_43")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_23")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_13")
	(sleep 5)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_63")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_hostile_fire_73")
)

(script dormant cockpit_fire
	(effect_new "effects\explosions\c_flak_explosion" "f_cockpit_flak_3")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_cockpit_flak_1")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_cockpit_flak_2")
	(sleep 20)
	(effect_new "effects\explosions\c_flak_explosion" "f_cockpit_flak_4")
)

(script dormant troopbay_fire
	(effect_new "effects\explosions\c_flak_explosion" "f_troopbay_flak_1")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_troopbay_flak_2")
	(sleep 20)
	(effect_new "effects\explosions\c_flak_explosion" "f_troopbay_flak_3")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "test")
)

(script dormant lz_fire
	(effect_new "effects\explosions\c_flak_explosion" "f_lz_fire_1")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_lz_fire_2")
	(sleep 60)
	(effect_new "effects\bursts\guntower_burst" "f_lz_fire_5")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_lz_fire_3")
	(sleep 60)
	(effect_new "effects\explosions\c_flak_explosion" "f_lz_fire_6")
	(sleep 90)
	(effect_new "effects\bursts\guntower_burst" "f_lz_fire_4")
)

(script static void super_in
	(cinematic_set_title_delayed "intro_title" 0.0)
)

(script static void title_fade
	(sleep 1)
)

(script command_script odst_crater_1
	(cs_play_sound "sound\e3\dialog\e3_470_odst" 1.0 1.0)
)

(script command_script odst_crater_2
	(cs_play_sound "sound\e3\dialog\e3_540_odst" 1.0 1.0)
)

(script command_script odst_crater_3
	(cs_play_sound "sound\e3\dialog\e3_540_odst" 1.0 1.0)
)

(script command_script odst_crater_4
	(cs_play_sound "sound\e3\dialog\e3_570_odst" 1.0 1.0)
)

(script command_script cs_shoot_city
	(cs_force_combat_status 4)
	(cs_shoot_point true guntower_targets/city)
	(sleep 32000)
)

(script command_script cs_shoot_hospital
	(cs_force_combat_status 4)
	(cs_shoot_point true guntower_targets/hospital)
	(sleep 32000)
)

(script command_script cs_shoot_crater
	(cs_force_combat_status 4)
	(cs_shoot_point true guntower_targets/crater)
	(sleep 32000)
)

(script dormant guntower_setup
	(ai_place "gunner")
	(ai_set_deaf gunner true)
	(ai_set_blind gunner true)
	(object_create "guntower")
	(vehicle_load_magic "guntower" "c_turret_ap_d" (list_get (ai_actors "gunner") 0))
	(object_teleport "guntower" "f_guntower")
	(vehicle_hover "guntower" true)
	(sleep 5)
	(cs_run_command_script "gunner" cs_shoot_city)
	
	(dig_pp_guntower);	DIGSITE, check postprocessing.hsc
)

(script dormant longsword_start
	(joe_bombs_away)
	(object_create_containing "longsword")
	(object_create_containing "bomb")
	(custom_animation_relative "longsword_1" "objects\vehicles\longsword\e3\e3" "longsword01_bombrun" false f_intro_anchor_5)
	(custom_animation_relative "longsword_2" "objects\vehicles\longsword\e3\e3" "longsword02_bombrun" false f_intro_anchor_5)
	(scenery_animation_start "bomb_1" "scenarios\objects\human\military\longsword_bomb\e3\e3" "bomb01")
	(scenery_animation_start "bomb_2" "scenarios\objects\human\military\longsword_bomb\e3\e3" "bomb02")
	(scenery_animation_start "bomb_3" "scenarios\objects\human\military\longsword_bomb\e3\e3" "bomb03")
	(scenery_animation_start "bomb_4" "scenarios\objects\human\military\longsword_bomb\e3\e3" "bomb04")
	(sound_looping_start "sound\e3\new_longsword\new_longsword" none 1.0)
	(sleep 350)
	(joe_turret_exploded)
	(object_destroy_containing "longsword")
	(object_destroy_containing "bomb")
)

(script command_script cs_turret_2
	(cs_enable_moving false)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(sleep 32000)
)

(script dormant coop_smg_dig
	(object_create_anew "dual_smg_highway")
	(sleep 1)
	(if (= (unit_has_weapon (player0) "dual_dig") 1)
		(objects_attach (player1) "" "dual_smg_highway" "")
		(objects_attach (player0) "" "dual_smg_highway" "")
	)
	(sleep 1)
	(if (= (unit_has_weapon (player0) "dual_dig") 1)
		(objects_detach (player1) "dual_smg_highway")
		(objects_detach (player0) "dual_smg_highway")
	)
)

(script dormant give_smg
	(dig_moth_3)
	
	(unit_set_enterable_by_player e3_ap_turret0 false)
	(object_create_anew "dual_smg_shin")
	(sleep 1)
	(sleep_until (= (or (unit_has_weapon (player0) "dual_dig")(unit_has_weapon (player1) "dual_dig")) 1))
	(object_destroy "outro_smg_1")
	(if (game_is_cooperative)
		(wake coop_smg_dig))	;DIGSITE Dual SMG stuff for cooperative
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_564" true)
	(sleep (unit_get_custom_animation_time sgt_banks))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_stand_idle" true)
	
	(dig_moth_5)
)

(script dormant crater_cleanup
	(sleep_until (volume_test_objects "tv_e5_cave_init" (players)) 5)
	(object_destroy "handset")
	(object_destroy "sgt_banks")
	(object_destroy "dead_comm_marine")
)

(script dormant sgt_bank_idle
	(sleep (unit_get_custom_animation_time sgt_banks))
	(custom_animation_loop sgt_banks "objects\characters\marine\e3\e3" "sin_banks_563_idle" true)
)

(script dormant crater
	(ai_erase "bandaged_marine")
	(cs_run_command_script "gunner" cs_shoot_hospital)
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_460" true)
	(sound_impulse_start "sound\e3\dialog\e3_460_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_460_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_injured_idle" true)
	(joe_grunt_wave_begins)
	(sleep_until (objects_can_see_object (player0) "sgt_banks" 10.0) 5 150)
	(cs_run_command_script "gunner" cs_turret_2)
	(cs_run_command_script "odst_1" odst_crater_1)
	(ai_erase "m_hall_1")
	(ai_erase "m_hall_2")
	(ai_erase "parsons")
	(object_destroy "hall_turret")
	(object_destroy "private_ryan")
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_480" true)
	(sound_impulse_start "sound\e3\dialog\e3_480_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_480_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_walk" true)
	(sleep 125)
	(cs_run_command_script "gunner" cs_shoot_city)
	(object_create_anew "handset")
	(objects_attach "sgt_banks" "left_hand" "handset" "left_hand")
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_490" true)
	(sound_impulse_start "sound\e3\dialog\e3_490_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_490_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_500" true)
	(sound_impulse_start "sound\e3\dialog\e3_500_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_500_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_talk_idle" true)
	(cs_run_command_script "gunner" cs_shoot_crater)
	(sleep 120)
	(cs_run_command_script "odst_1" odst_crater_2)
	(sleep 120)
	(cs_run_command_script "odst_1" odst_crater_3)
	(sleep_until (not (cs_command_script_running "odst_1" odst_crater_3)) 5)
	(sleep_until (joe_bombers_can_enter) 5)
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_510" true)
	(sound_impulse_start "sound\e3\dialog\e3_510_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_510_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_talk_idle" true)
	(sound_impulse_start "sound\e3\dialog\e3_520_easley" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_520_easley"))
	(wake longsword_start)
	(sleep 140)
	(object_create_anew "e4_gun_smoke")
	(sound_impulse_start "sound\e3\expl_bomb_drop" none 1.0)
	(effect_new_on_object_marker "effects\explosions\bomb_dropping" "bomb_1" "")
	(sleep 10)
	(effect_new_on_object_marker "effects\explosions\bomb_dropping" "bomb_2" "")
	(sleep 20)
	(effect_new_on_object_marker "effects\explosions\bomb_dropping" "bomb_3" "")
	(sleep 10)
	(effect_new_on_object_marker "effects\explosions\bomb_dropping" "bomb_4" "")
	(effect_new "effects\explosions\gun_tower_explosion" "f_guntower_explosion")
	(sleep 5)
	(object_destroy "guntower")
	(sleep 75)
	(sound_impulse_start "sound\e3\dialog\e3_550_easley" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_550_easley"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_560" false)
	(sound_impulse_start "sound\e3\dialog\e3_560_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_560_banks"))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_talk_idle" false)
	(cs_run_command_script "odst_1" odst_crater_4)
	(object_teleport "sgt_banks" "f_smg_handoff")
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_stand_idle" false)
	(sleep_until (objects_can_see_object (player0) "sgt_banks" 30.0))
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_563" false)
	(wake sgt_bank_idle)
	(sound_impulse_start "sound\e3\dialog\e3_563_banks" "sgt_banks" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_563_banks"))
	(wake give_smg)
	(object_destroy_containing "target")
	(sound_impulse_start "sound\e3\dialog\e3_564_banks" "sgt_banks" 1.0)
	(wake crater_cleanup)
	(sleep 1000)
)

(script dormant crater_setup
	(joe_odsts_head_for_sarge)
	(dig_pp_banks)
	(object_create "sgt_banks")
	(object_create "dead_comm_marine")
	(object_cinematic_lod "sgt_banks" true)
	(object_create_anew "target_3")
	(object_create_anew "target_4")
	(object_create_anew "target_5")
	(unit_impervious "sgt_banks" true)
	(unit_impervious "dead_comm_marine" true)
	(object_cannot_take_damage "sgt_banks")
	(object_cannot_take_damage "dead_comm_marine")
	(object_create_anew "outro_smg_1")
	(objects_attach "sgt_banks" "right hand" "outro_smg_1" "")
	(object_cinematic_collision "sgt_banks" true)
	(object_cinematic_collision "dead_comm_marine" true)
	(custom_animation_loop "sgt_banks" "objects\characters\marine\e3\e3" "sin_banks_injured_idle" false)
	(custom_animation_loop "dead_comm_marine" "objects\characters\marine\e3\e3" "sin_marine_radio_dead" false)
	(sleep_until (volume_test_objects "tv_crater_start" (players)) 5)
	(dig_pp_banks)
	(sleep 45)
	(wake crater)
)

(script dormant dialog_hack_2
	(sound_impulse_start "sound\e3\dialog\e3_350_perez" none 1.0)
)

(script command_script hall_5
	(cs_force_combat_status 3)
	(sleep 30)
	(cs_enable_targeting true)
	(cs_shoot_point true shoot_this/p0)
	(sleep 32000)
)

(script command_script cs_bm_3
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_440" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_440_perez" 1.0 1.0)
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to bm_walk/p12)
	(cs_go_to bm_walk/p4)
	(cs_enable_moving false)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_shoot true "guntower")
	(pvs_clear)
	
	(dig_moth_2)
	
	(sleep 32000)
)

(script dormant bm_3
	(set global_perez_fix true)
	(cs_run_command_script "bandaged_marine" cs_bm_3)
	(object_type_predict "objects\characters\jackal\jackal")
	(object_type_predict "objects\characters\grunt\grunt")
	(object_type_predict "objects\weapons\pistol\plasma_pistol\plasma_pistol")
	(object_type_predict "scenarios\objects\human\residential\cafe_chair\cafe_chair")
	(object_type_predict "scenarios\objects\human\residential\cafe_table\cafe_table")
	(object_type_predict "scenarios\solo\earthcity\earthcity_e3\cinematics\corpse_marine_flat\corpse_marine_flat")
	(object_type_predict "scenarios\solo\earthcity\earthcity_e3\cinematics\corpse_marine_slumped\corpse_marine_slumped")
	(sleep 60)
	(dig_pp_odst)
	(cs_run_command_script "m_hall_1" hall_5)
	(cs_run_command_script "m_hall_2" hall_5)
	(sleep_until (volume_test_objects "tv_sarge_start" (player0)) 1)
	(wake crater_setup)
	(wake guntower_setup)
	;;;;(cinematic_screen_effect_set_bloom_transition 0.0 0.0 0.0 0.0 0.0 3.0)
	(sleep 90)
	(cinematic_screen_effect_stop)
)

(script dormant watcher_idles
	(sleep (unit_get_custom_animation_time (ai_get_unit parsons)))
	(custom_animation_loop (ai_get_unit parsons) "objects\characters\marine\e3\e3" "sin_watcher_idle" true)
)

(script command_script cs_parsons_2
	(effect_new_on_object_marker "effects\explosions\explosion_e3_wall_medium" "parsons_shield" "explosion")
	(object_set_region_state "parsons_shield" "" destroyed)
	(custom_animation (ai_get_unit ai_current_actor) "objects\characters\marine\e3\e3" "sin_watcher_430" true)
	(wake watcher_idles)
	(sleep 30)
	(sleep 30)
	(cs_play_sound "sound\e3\dialog\e3_430_watcher" 1.0 1.0)
	(wake bm_3)
	(cs_pause 1000.0)
)

(script command_script cs_no_shield_for_you
	(cs_enable_targeting true)
	(cs_shoot true "parsons_shield")
	(sleep 32000)
)

(script dormant parsons_2
	(cs_run_command_script "parsons" cs_parsons_2)
)

(script command_script cs_parsons_1
	(custom_animation_loop (ai_get_unit ai_current_actor) "objects\characters\marine\e3\e3" "sin_watcher_410" true)
	(cs_play_sound "sound\e3\dialog\e3_410_watcher" 1.0 1.0)
	(sleep (unit_get_custom_animation_time (ai_get_unit ai_current_actor)))
	(custom_animation_loop (ai_get_unit ai_current_actor) "objects\characters\marine\e3\e3" "sin_watcher_idle" true)
)

(script command_script cs_parsons_crouch
	(custom_animation_loop (ai_get_unit ai_current_actor) "objects\characters\marine\e3\e3" "sin_watcher_idle" true)
)

(script dormant parsons_crouch
	(cs_run_command_script "parsons" cs_parsons_crouch)
)

(script dormant parsons_1
	(cs_run_command_script "parsons" cs_parsons_1)
)

(script command_script hall_0
	(cs_force_combat_status 3)
	(cs_enable_targeting true)
	(cs_shoot_point true shoot_this/p0)
	(sleep 32000)
)

(script command_script hall_1
	(cs_force_combat_status 3)
	(cs_enable_targeting true)
	(cs_shoot_point true shoot_this/p0)
	(sleep 32000)
)

(script command_script hall_2
	(cs_force_combat_status 3)
	(cs_enable_targeting true)
	(cs_shoot_point true shoot_this/p0)
	(sleep 32000)
)

(script dormant hall_marines
	(object_destroy "w_lieutenant")
	(object_destroy_containing "w_marine")
	(object_destroy_containing "medic")
	(object_destroy_containing "stretcher")
	(object_destroy_containing "tent_doc")
	(object_destroy_containing "tent_marine")
	(cs_run_command_script "m_hall_1" hall_1)
	(cs_run_command_script "m_hall_2" hall_2)
	(sound_impulse_start "sound\e3\dialog\e3_360_hall1" (list_get (ai_actors "m_hall_1") 0) 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_360_hall1"))
	(sound_impulse_start "sound\e3\dialog\e3_370_hall2" (list_get (ai_actors "m_hall_2") 0) 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_370_hall2"))
	(sound_impulse_start "sound\e3\dialog\e3_380_hall1" (list_get (ai_actors "m_hall_1") 0) 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_380_hall1"))
	(sound_impulse_start "sound\e3\dialog\e3_390_hall2" (list_get (ai_actors "m_hall_2") 0) 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_390_hall2"))
)

(script dormant hall_marines_trigger
	(sleep_until (volume_test_objects "tv_hall_marines" (players)) 5)
	(wake hall_marines)
	(wake parsons_crouch)
	;;;;(cinematic_screen_effect_set_bloom_transition 0.6 0.0 0.0 1.0 1.0 3.0)
	(cinematic_screen_effect_start false)
)

(script dormant perez_fix
	(custom_animation_loop (ai_get_unit bandaged_marine) "objects\characters\marine\e3\e3" "sin_perez_400_idle" true)
	(sleep_until (volume_test_objects "tv_parsons" (players)) 5)
	(sleep (unit_get_custom_animation_time (ai_get_unit bandaged_marine)))
	(custom_animation_loop (ai_get_unit bandaged_marine) "objects\characters\marine\e3\e3" "sin_perez_400_idle" true)
	(sleep_until (not (cs_command_script_running "parsons" cs_parsons_1)) 1)
	(sleep 40)
	(custom_animation_loop (ai_get_unit bandaged_marine) "objects\characters\marine\e3\e3" "sin_perez_400_idle" true)
	(sleep_until global_perez_fix 5)
	(sleep (unit_get_custom_animation_time (ai_get_unit bandaged_marine)))
	(unit_stop_custom_animation (ai_get_unit bandaged_marine))
)

(script command_script cs_bm_2
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(pvs_set_object "hall_turret")
	(cs_face true bm_walk/p13) ; fix for perez breaking his neck to move to p11
	(cs_go_to bm_walk/p11)
	(cs_face false bm_walk/p13) ; fix for perez breaking his neck to move to p11
	(cs_go_to bm_walk/p1)
	(cs_go_to bm_walk/p2)
	(cs_go_to bm_walk/p3)
	(cs_face true bm_walk/p8)
	(cs_pause 1.0)
	(wake perez_fix)
	;(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_400_idle" 0.0 true)
	(sleep_until (volume_test_objects "tv_parsons" (players)) 5)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_400" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_400_perez" 1.0 1.0)
	(dig_pp_parsons)
	(wake parsons_1)
	(sleep_until (not (cs_command_script_running "parsons" cs_parsons_1)) 1)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_420" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_420_perez" 1.0 1.0)
	(wake parsons_2)
)

(script command_script cs_parsons_look_fix
	(cs_aim true parsons_look/p0)
	(sleep 3200)
)

(script dormant bm_2
	(object_destroy "intro_pelican_1")
	(ai_erase "fh_marine_1")
	(ai_erase "fh_marine_2")
	(ai_place "m_hall_1")
	(ai_place "m_hall_2")
	(object_cinematic_lod (list_get (ai_actors "m_hall_1") 0) true)
	(object_cinematic_lod (list_get (ai_actors "m_hall_2") 0) true)
	(object_create "private_ryan")
	(object_cinematic_collision "private_ryan" true)
	(custom_animation_loop "private_ryan" "objects\characters\marine\e3\e3" "sin_wall_agony%1" false)
	(ai_place "parsons")
	(ai_force_active "parsons" true)
	(cs_run_command_script "parsons" cs_parsons_look_fix)
	(vehicle_load_magic "hall_turret" "h_turret_ap_d" (list_get (ai_actors "m_hall_2") 0))
	(wake hall_marines_trigger)
	(cs_run_command_script "bandaged_marine" cs_bm_2)
	(sleep 5)
	(wake dialog_hack_2)
	(sleep 90)
	(cs_run_command_script "m_hall_1" hall_0)
	(cs_run_command_script "m_hall_2" hall_0)
	(sleep_until (not (cs_command_script_running "bandaged_marine" cs_bm_2)) 5)
)

(script dormant limping_marines
	(custom_animation_loop "w_marine_4" "objects\characters\marine\e3\e3" "sin_limp_assist" false)
	(custom_animation_loop "w_marine_5" "objects\characters\marine\e3\e3" "sin_limp_hurt" false)
)

(script dormant limping_marine4_end
	(sleep (unit_get_custom_animation_time w_marine_4))
	(custom_animation_loop "w_marine_4" "objects\characters\marine\e3\e3" "sin_limp_assist_end" false)
)

(script dormant limping_marine5_end
	(sleep (unit_get_custom_animation_time w_marine_5))
	(custom_animation_loop "w_marine_5" "objects\characters\marine\e3\e3" "sin_limp_hurt_end" false)
)

(script dormant medic_idles
	(sleep (unit_get_custom_animation_time medic_4))
	(custom_animation_loop medic_4 "objects\characters\marine\e3\e3" "sin_medic_call_end" true)
)

(script command_script cs_bm_1
	(dig_pp_casulties)
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(joe_field_hospital_warthog_go)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_210" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_210_perez" 1.0 1.0)
	(wake limping_marines)
	(wake limping_marine4_end)
	(wake limping_marine5_end)
	(cs_go_to bm_walk/p7)
	(cs_go_to bm_walk/p10)
	(cs_go_to bm_walk/p0)
	(cs_face true bm_walk/p9)
	(cs_pause 2.0)
	(cs_force_combat_status 2)
	(cs_look_player true)
	(sleep_until (<= (objects_distance_to_object (ai_actors "bandaged_marine") (player0)) 4.0) 1)
	(custom_animation "medic_4" "objects\characters\marine\e3\e3" "sin_medic_call" false)
	(wake medic_idles)
	(sleep 40)
	(sound_impulse_start "sound\e3\dialog\e3_310_medic4" "medic_4" 1.0)
	(joe_odsts_return)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_310_medic4" 43))
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_320" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_320_perez" 1.0 1.0)
	(joe_odsts_enter_hospital)
	(sound_impulse_start "sound\e3\dialog\e3_330_cor" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_330_cor"))
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_340" 0.0 true)
	(cs_play_sound "sound\e3\dialog\e3_340_perez" 1.0 1.0)
	(wake bm_2)
	(dig_pp_casulties)
)

(script dormant bm_1
	(cs_run_command_script "bandaged_marine" cs_bm_1)
	(sleep_until (not (cs_command_script_running "bandaged_marine" cs_bm_1)) 5)
)

(script command_script cs_fh_run_1
	(cs_force_combat_status 3)
	(cs_go_to fh_run_1/p0)
)

(script command_script cs_fh_run_2
	(cs_force_combat_status 3)
	(cs_go_to fh_run_1/p1)
)

(script dormant fh_run_1
	(object_destroy_containing "tarmac")
	(cs_run_command_script "fh_marine_1" cs_fh_run_1)
	(sleep 15)
	(cs_run_command_script "fh_marine_2" cs_fh_run_2)
)

(script command_script cs_perez_dust_idle
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_perez_dust_idle" 0.0 true)
)

(script dormant medic_2
	(sound_impulse_start "sound\e3\dialog\e3_290_medic2" "tent_doc_1" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_290_medic2" 24))
	(sound_impulse_start "sound\e3\dialog\e3_300_medic3" "tent_doc_2" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_300_medic3" 70))
)

(script dormant medic_1
	(sound_impulse_start "sound\e3\dialog\e3_260_medic1" "medic_1" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_260_medic1" 45))
	(sound_impulse_start "sound\e3\dialog\e3_280_medic1" "medic_1" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_280_medic1" 37))
	(sleep_until (volume_test_objects "tv_medic_2" (players)) 5)
	(wake fh_run_1)
	(wake medic_2)
	(object_cinematic_lod "medic_4" true)
	(object_cinematic_lod "medic_5" true)
	(object_cinematic_lod "w_marine_6" true)
	(object_cinematic_lod "w_lieutenant" true)
)

(script dormant walkway_1
	(sound_impulse_start "sound\e3\dialog\e3_220_wounded1" "w_marine_4" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_220_wounded1" 37))
	(sound_impulse_start "sound\e3\dialog\e3_230_wounded2" "w_marine_5" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_230_wounded2" 49))
	(sleep_until (volume_test_objects "tv_fh_marines_1" (players)) 5)
)

(script static void triage_tent_setup
	(object_create_anew_containing "tent_marine")
	(object_create_anew_containing "tent_doc")
	(object_teleport "tent_doc_1" "f_tent_doc")
	(object_teleport "tent_doc_2" "f_tent_doc")
	(object_cinematic_collision "tent_doc_1" true)
	(object_cinematic_collision "tent_doc_2" true)
	(object_cinematic_collision "tent_marine_1" true)
	(objects_attach "stretcher_2" "occupant" "tent_marine_1" "")
	(custom_animation_loop "tent_marine_1" "objects\characters\marine\e3\e3" "sin_back_dead" false)
	(custom_animation_loop "tent_doc_1" "objects\characters\marine\e3\e3" "sin_medic_operate" false)
	(custom_animation_loop "tent_doc_2" "objects\characters\marine\e3\e3" "sin_medic_operatehelp" false)
)

(script command_script cs_fh_1_start
	(sleep_until (volume_test_objects "tv_e8_warthog2_init" (ai_vehicle_get "e0_mars_warthog0/driver")) 5)
	(cs_go_to fh_run_1/f1_start)
)

(script command_script cs_fh_2_start
	(sleep_until (volume_test_objects "tv_e8_warthog2_init" (ai_vehicle_get "e0_mars_warthog0/driver")) 5)
	(cs_go_to fh_run_1/f2_start)
)

(script dormant field_hospital_setup
	(ai_place "bandaged_marine")
	(ai_place "fh_marine_1")
	(ai_place "fh_marine_2")
	(cs_run_command_script "fh_marine_1" cs_fh_1_start)
	(cs_run_command_script "fh_marine_2" cs_fh_2_start)
	(unit_impervious (ai_actors "bandaged_marine") true)
	(object_cannot_take_damage (list_get (ai_actors "bandaged_marine") 0))
	(object_cinematic_lod (ai_get_object "bandaged_marine") true)
	(sleep 5)
	;(cs_run_command_script	 cs_perez_dust_idle)
	(custom_animation_loop (ai_get_unit "bandaged_marine/starting_locations_0") "objects\characters\marine\e3\e3" "sin_perez_dust_idle" true)
	(object_create_anew "w_lieutenant")
	(object_create_anew_containing "w_marine")
	(object_create_anew_containing "medic")
	(object_create_anew_containing "tarmac")
	(object_cinematic_lod "medic_1" true)
	(object_cinematic_lod "w_marine_1" true)
	(object_cinematic_lod "w_marine_4" true)
	(object_cinematic_lod "w_marine_5" true)
	(object_cinematic_lod "w_tarmac_3" true)
	(object_cinematic_lod "w_tarmac_4" true)
	(object_create_anew_containing "triage_tent")
	(object_create_anew_containing "stretcher")
	(object_cinematic_collision "w_lieutenant" true)
	(object_cinematic_collision "w_marine_1" true)
	(object_cinematic_collision "w_marine_4" true)
	(object_cinematic_collision "w_marine_5" true)
	(object_cinematic_collision "w_marine_6" true)
	(object_cinematic_collision "w_marine_7" true)
	(object_cinematic_collision "medic_1" true)
	(object_cinematic_collision "medic_4" true)
	(object_cinematic_collision "medic_5" true)
	(object_cinematic_collision "w_tarmac_1" true)
	(object_cinematic_collision "w_tarmac_2" true)
	(object_cinematic_collision "w_tarmac_3" true)
	(object_cinematic_collision "w_tarmac_4" true)
	(object_cinematic_collision "w_tarmac_5" true)
	(object_cinematic_collision "stretcher_1" true)
	(object_cinematic_collision "stretcher_2" true)
	(object_cinematic_collision "stretcher_3" true)
	(object_cinematic_collision "stretcher_4" true)
	(object_cinematic_collision "stretcher_5" true)
	(object_cinematic_collision "stretcher_6" true)
	(objects_attach "stretcher_1" "occupant" "w_marine_1" "")
	(objects_attach "stretcher_6" "occupant" "w_marine_6" "")
	(objects_attach "stretcher_3" "occupant" "w_lieutenant" "")
	(objects_attach "stretcher_4" "occupant" "w_tarmac_1" "")
	(objects_attach "stretcher_5" "occupant" "w_tarmac_2" "")
	(object_teleport "medic_1" "f_medic_1")
	(object_teleport "medic_4" "f_medic_4")
	(object_teleport "medic_5" "f_medic_5")
	(sleep 5)
	(custom_animation_loop "w_marine_4" "objects\characters\marine\e3\e3" "sin_limp_assist_start" false)
	(custom_animation_loop "w_marine_5" "objects\characters\marine\e3\e3" "sin_limp_hurt_start" false)
	(custom_animation_loop "w_lieutenant" "objects\characters\marine\e3\e3" "sin_back_dead" false)
	(custom_animation_loop "w_marine_1" "objects\characters\marine\e3\e3" "sin_back_compression" false)
	(custom_animation_loop "medic_1" "objects\characters\marine\e3\e3" "sin_medic_compression" false)
	(custom_animation_loop "medic_4" "objects\characters\marine\e3\e3" "sin_medic_callidle" false)
	(custom_animation_loop "w_marine_6" "objects\characters\marine\e3\e3" "sin_back_lookatleg" false)
	(custom_animation_loop "medic_5" "objects\characters\marine\e3\e3" "sin_medic_fixleg" false)
	(custom_animation_loop "w_marine_7" "objects\characters\marine\e3\e3" "sin_wall_breath%1" false)
	(custom_animation_loop "w_tarmac_1" "objects\characters\marine\e3\e3" "sin_front_agony" false)
	(custom_animation_loop "w_tarmac_2" "objects\characters\marine\e3\e3" "sin_left_agony" false)
	(custom_animation_loop "w_tarmac_3" "objects\characters\marine\e3\e3" "sin_back2_breath%1" false)
	(custom_animation_loop "w_tarmac_4" "objects\characters\marine\e3\e3" "sin_wall_breath%1" false)
	(custom_animation_loop "w_tarmac_5" "objects\characters\marine\e3\e3" "sin_wall_agony%0" false)
	(sleep_until (<= (objects_distance_to_object (ai_actors "bandaged_marine") (player0)) 2.0))
	(wake bm_1)
	(sleep_until (volume_test_objects "tv_walkway_marines" (players)) 5)
	(wake walkway_1)
	(sleep_until (volume_test_objects "tv_medic_1" (players)) 5)
	(triage_tent_setup)
	(wake medic_1)
)

(script dormant intro_flak
	(effect_new "effects\explosions\c_flak_explosion" "f_flak_1")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_flak_2")
	(sleep 15)
	(effect_new "effects\explosions\c_flak_explosion" "f_flak_3")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_flak_4")
	(sleep 30)
	(effect_new "effects\explosions\c_flak_explosion" "f_flak_5")
)

(script command_script cs_pelican_1
	(object_set_velocity (ai_vehicle_get ai_current_actor) 1.0)
	(cs_fly_by intro_pelican_1/p0)
)

(script command_script cs_pelican_2
	(cs_fly_by intro_pelican_2/p0)
	(cs_fly_by intro_pelican_2/p1)
	(cs_fly_to intro_pelican_2/p3)
)

(script command_script cs_pelican_3
	(object_set_velocity (ai_vehicle_get intro_pelican_3/driver) 2.0)
	(cs_fly_by intro_pelican_3/p0)
	(cs_fly_by intro_pelican_3/p1)
)

(script command_script cs_intro_vamp
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_pilot_pelican_tactical" 0.0 true)
	;(cs_play_sound "sound\e3\dialog\e3_140_dspilot" 0.0 1.0)
	(cs_fly_by intro_vamp/p1)
)

(script dormant chief_cortana_dialog_1
	(sound_impulse_start "sound\e3\dialog\e3_070_cor" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_070_cor" 71))
	(sleep 5)
	(sound_impulse_start "sound\e3\dialog\e3_080_mc" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_080_mc" 42))
	(sleep 10)
	(sound_impulse_start "sound\e3\dialog\e3_090_johnson" none 1.0)
)

(script dormant intro_chief_reveal
	(object_destroy "earthcity_scenery")
	(wake chief_cortana_dialog_1)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(pvs_set_object "chief")
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "intro_idle" false)
	
	(dig_pp_intro_chief_reveal_1)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_chief_reveal")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_chief_reveal_1" 0 (ai_vehicle_get intro_pelican_1/driver))
	;(camera_set_relative "intro_chief_reveal_2" 150 (ai_vehicle_get intro_pelican_1/driver))
	(sleep 150)
	(player_effect_stop 0.0)
	(object_cinematic_lod (ai_vehicle_get intro_pelican_2/driver) true)
	(pvs_set_object (ai_vehicle_get intro_pelican_2/driver))
	(object_teleport (ai_vehicle_get intro_pelican_2/driver) "f_intro_camera_2")
	
	(dig_pp_intro_chief_reveal_2)
	
	(custom_animation_relative (ai_vehicle_get intro_pelican_2/driver) "objects\vehicles\pelican\e3\e3" "e3_pelican_flyby2" false f_intro_anchor_2)
	(camera_set_animation_relative "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_flyby2" (ai_vehicle_get intro_pelican_2/driver) "f_intro_camera_2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 1.0 function_scale)
	(sleep 15)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 0.5 function_scale)
	(sleep 86)
	(custom_animation_loop "johnson" "objects\characters\marine\e3\e3" "sin_johnson_pelican_04" false)
	(sleep 11)
	(sound_impulse_start "sound\e3\dialog\e3_100_johnson" "johnson" 1.0)
	(sleep 7)
	(set g_intro true)
)

(script static void load_tactical_pelican
	(object_uses_cinematic_lighting "chief" true)
	(object_uses_cinematic_lighting "johnson" true)
	(object_uses_cinematic_lighting global_intro_odst_1 true)
	(object_uses_cinematic_lighting global_intro_odst_2 true)
	(object_uses_cinematic_lighting global_intro_odst_3 true)
	(object_uses_cinematic_lighting global_intro_odst_4 true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/copilot) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/gunner) true)
	(custom_animation_loop chief objects\characters\masterchief\e3\e3 "intro_idle_2" false)
)

(script dormant load_pelican_double_1
	(ai_place "intro_pelican_2")
	(object_cinematic_lod (ai_vehicle_get intro_pelican_2/driver) true)
	
	(dig_pp_intro_pelican_1)
	
	(object_create_anew "chief_double")
	(object_create_anew "johnson_double")
	(sleep 5)
	(object_create_anew "back_shot")
	(objects_attach (ai_vehicle_get intro_pelican_2/driver) "light_cockpit_back" "back_shot" "up_marker")
	(unit_add_equipment chief_double "player starting profile_0" false false)
	(object_create_anew "intro_2_rifle")
	(objects_attach (ai_get_object intro_pelican_2/odst_4) "right hand" "intro_2_rifle" "")
	(object_uses_cinematic_lighting "chief_double" true)
	(object_uses_cinematic_lighting "johnson_double" true)
	(object_uses_cinematic_lighting "intro_2_rifle" true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/odst_1) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/odst_2) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/odst_3) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/odst_4) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/copilot) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/driver) true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_2/gunner) true)
	(objects_attach (ai_vehicle_get intro_pelican_2/driver) "chief_rear" "chief_double" "")
	(objects_attach (ai_vehicle_get intro_pelican_2/driver) "johnson" "johnson_double" "")
	(vehicle_load_magic (ai_vehicle_get intro_pelican_2/driver) "pelican_p_copilot" (ai_get_object intro_pelican_2/copilot))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_2/driver) "pelican_p_l05" (ai_get_object intro_pelican_2/odst_1))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_2/driver) "pelican_p_l04" (ai_get_object intro_pelican_2/odst_2))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_2/driver) "pelican_p_r05" (ai_get_object intro_pelican_2/odst_3))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_2/driver) "pelican_p_r04" (ai_get_object intro_pelican_2/odst_4))
	(sleep 5)
	(custom_animation_loop "chief_double" "objects\characters\masterchief\e3\e3" "intro_idle" false)
	(custom_animation_loop "johnson_double" "objects\characters\marine\e3\e3" "sin_johnson_pelican_cockpit" false)
)

(script static void load_pelican_double_2
	(object_set_shadowless "chief_double" true)
	(object_set_shadowless "pilot_double" true)
	(custom_animation_loop chief objects\characters\masterchief\e3\e3 "intro_idle" false)
)

(script dormant load_final_pelican
	(ai_erase (object_get_ai global_intro_odst_1))
	(ai_erase (object_get_ai global_intro_odst_2))
	(ai_erase (object_get_ai global_intro_odst_3))
	(ai_erase (object_get_ai global_intro_odst_4))
	(ai_place intro_odsts)
	(sleep 5)
	(set global_intro_odst_1 (ai_get_unit intro_odsts/odst_1))
	(set global_intro_odst_2 (ai_get_unit intro_odsts/odst_2))
	(set global_intro_odst_3 (ai_get_unit intro_odsts/odst_3))
	(set global_intro_odst_4 (ai_get_unit intro_odsts/odst_4))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_l05" global_intro_odst_1)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_l04" global_intro_odst_2)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_r05" global_intro_odst_3)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_r04" global_intro_odst_4)
	(unit_add_equipment global_intro_odst_3 "player starting profile_0" false false)
	(unit_add_equipment global_intro_odst_4 "player starting profile_0" false false)
	(custom_animation_loop chief objects\characters\masterchief\e3\e3 "intro_idle_2" false)
	(object_uses_cinematic_lighting global_intro_odst_1 true)
	(object_uses_cinematic_lighting global_intro_odst_2 true)
	(object_uses_cinematic_lighting global_intro_odst_3 true)
	(object_uses_cinematic_lighting global_intro_odst_4 true)
)

(script dormant load_final_odsts
	(ai_place "intro_odst_1")
	(ai_place "intro_odst_2")
	(ai_place "intro_odst_3")
	(ai_place "intro_odst_4")
	(sleep 5)
	(vehicle_load_magic "intro_pelican_1" "pelican_p_l05" (list_get (ai_actors "intro_odst_1") 0))
	(vehicle_load_magic "intro_pelican_1" "pelican_p_l04" (list_get (ai_actors "intro_odst_2") 0))
	(vehicle_load_magic "intro_pelican_1" "pelican_p_r05" (list_get (ai_actors "intro_odst_3") 0))
	(vehicle_load_magic "intro_pelican_1" "pelican_p_r04" (list_get (ai_actors "intro_odst_4") 0))
)

(script command_script cs_odst_1_unload
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(cs_move_in_direction 270.0 2.0 0.0)
	(cs_go_to odst_unload/p0)
)

(script command_script cs_odst_2_unload
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(cs_move_in_direction 270.0 2.0 0.0)
	(cs_go_to odst_unload/p0)
)

(script command_script cs_odst_3_unload
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(cs_move_in_direction 270.0 2.0 0.0)
	(cs_go_to odst_unload/p1)
)

(script command_script cs_odst_4_unload
	(cs_force_combat_status 3)
	(cs_enable_pathfinding_failsafe true)
	(cs_move_in_direction 270.0 2.0 0.0)
	(cs_go_to odst_unload/p1)
)

(script dormant unload_final_pelican
	(ai_vehicle_exit (object_get_ai global_intro_odst_1))
	(cs_run_command_script (object_get_ai global_intro_odst_1) cs_odst_1_unload)
	(sleep 5)
	(ai_vehicle_exit (object_get_ai global_intro_odst_3))
	(cs_run_command_script (object_get_ai global_intro_odst_3) cs_odst_3_unload)
	(sleep 5)
	(ai_vehicle_exit (object_get_ai global_intro_odst_2))
	(cs_run_command_script (object_get_ai global_intro_odst_2) cs_odst_2_unload)
	(sleep 5)
	(ai_erase (object_get_ai global_intro_odst_4))
)

(script static void cleanup_pelican_double_2
	(object_destroy_containing "johnson_double")
	(object_destroy_containing "pilot_double")
)

(script static void intro_1_setup
	(ai_place "intro_pelican_1")
	(ai_place "intro_odsts_no_helmet")
	(set global_intro_odst_1 (ai_get_unit intro_odsts_no_helmet/odst_1))
	(set global_intro_odst_2 (ai_get_unit intro_odsts_no_helmet/odst_2))
	(set global_intro_odst_3 (ai_get_unit intro_odsts_no_helmet/odst_3))
	(set global_intro_odst_4 (ai_get_unit intro_odsts_no_helmet/odst_4))
	(object_create_anew "cockpit_light")
	(objects_attach (ai_vehicle_get intro_pelican_1/driver) "light_cockpit" "cockpit_light" "up_marker")
	(object_create_anew "bay_light")
	(objects_attach (ai_vehicle_get intro_pelican_1/driver) "light_bay" "bay_light" "up_marker")
	(object_cinematic_lod (ai_vehicle_get intro_pelican_1/driver) true)
	(object_create_anew "chief")
	(object_create_anew "johnson")
	(sleep 5)
	(unit_add_equipment chief "player starting profile_0" false false)
	(object_create_anew "intro_1_rifle")
	(objects_attach global_intro_odst_4 "right hand" "intro_1_rifle" "")
	(objects_attach (ai_vehicle_get intro_pelican_1/driver) "chief_rear" "chief" "")
	(objects_attach (ai_vehicle_get intro_pelican_1/driver) "johnson" "johnson" "")
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_copilot" (ai_get_object intro_pelican_1/copilot))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_l05" global_intro_odst_1)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_l04" global_intro_odst_2)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_r05" global_intro_odst_3)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_1/driver) "pelican_p_r04" global_intro_odst_4)
	(custom_animation_loop "johnson" "objects\characters\marine\e3\e3" "sin_johnson_pelican_cockpit" false)
	(sleep 30)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(player_effect_stop 1.5)
	(sleep 65)
	(object_teleport (ai_vehicle_get intro_pelican_1/driver) "f_intro_pelican_1")
	(cs_run_command_script "intro_pilot_1" cs_pelican_1)
)

(script dormant intro_2_setup
	(object_teleport "intro_pelican_1" "f_intro_pelican_2")
	(cs_run_command_script "intro_pilot_1" cs_pelican_2)
)

(script dormant intro_vamp
	(object_teleport (ai_vehicle_get intro_pelican_1/driver) "f_intro_vamp")
	(cs_run_command_script intro_pelican_1/driver cs_intro_vamp)
)

(script dormant intro_3_setup
	(ai_place "intro_pelican_3")
	(object_create_anew "intro_3_rifle")
	(objects_attach (ai_get_object intro_pelican_3/odst_4) "right hand" "intro_3_rifle" "")
	(vehicle_load_magic (ai_vehicle_get intro_pelican_3/driver) "pelican_p_copilot" (ai_get_object intro_pelican_3/copilot))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_3/driver) "pelican_p_l05" (ai_get_object intro_pelican_3/odst_1))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_3/driver) "pelican_p_l04" (ai_get_object intro_pelican_3/odst_2))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_3/driver) "pelican_p_r05" (ai_get_object intro_pelican_3/odst_3))
	(vehicle_load_magic (ai_vehicle_get intro_pelican_3/driver) "pelican_p_r04" (ai_get_object intro_pelican_3/odst_4))
	(object_cinematic_lod (ai_vehicle_get intro_pelican_3/driver) true)
	(object_teleport (ai_vehicle_get intro_pelican_3/driver) "f_intro_pelican_3")
	(object_set_scale (ai_vehicle_get intro_pelican_3/driver) 0.8 0)
	(cs_run_command_script intro_pelican_3/driver cs_pelican_3)
)

(script static void intro_cleanup_1
	(object_destroy_containing "odst")
	(object_destroy_containing "sniper")
	(object_destroy_containing "rifle")
)

(script static void intro_cleanup_2
	(ai_erase "intro_pelican_2")
	(ai_erase "intro_pelican_3")
	(ai_erase "intro_odsts_no_helmet")
)

(script static void intro_cleanup_3
	(object_destroy_containing "johnson")
	(object_destroy_containing "chief")
	(object_destroy_containing "odst")
	(object_destroy "bm_double")
	(object_destroy_containing "lz_dust_small")
	(object_destroy "lz_dust_large")
	(ai_erase "intro_pelican_1")
	(ai_erase "intro_odsts")
	(object_destroy "cockpit_light")
	(object_destroy "back_shot")
	(object_destroy "bay_light")
)

(script static void sniper_setup
	(object_create_anew_containing "sniper")
	(object_create_anew "intro_ground_rifle")
	(object_cinematic_collision "sniper_1" true)
	(object_cinematic_collision "sniper_2" true)
	
	(dig_pp_intro_sniper_setup)
	
	(objects_attach "sniper_1" "right hand" "intro_ground_rifle" "")
	(pvs_set_object "sniper_1")
	(object_cinematic_lod "sniper_1" true)
	(object_cinematic_lod "sniper_2" true)
	(object_cinematic_lod "sniper_car1" true)
	(object_cinematic_lod "sniper_car2" true)
	(object_cinematic_lod "sniper_car3" true)
	(object_cinematic_lod "sniper_car4" true)
	(object_cinematic_lod "sniper_car5" true)
	(object_cinematic_lod "sniper_car6" true)
	(object_cinematic_lod "sniper_car7" true)
	(custom_animation "sniper_1" "objects\characters\marine\e3\e3" "sin_marine_sniper" false)
	(unit_custom_animation_at_frame "sniper_2" "objects\characters\marine\e3\e3" "sin_marine_spotter" false 120)
)

(script dormant make_things_dusty
	(object_create_anew_containing "initial_dust")
	(sleep 80)
	(object_set_function_variable (ai_vehicle_get intro_pelican_4/driver) "thrust" 1.0 function_scale)
	(object_destroy_containing "initial_dust")
)

(script static void intro_scene_1
	(object_type_predict_high "objects\vehicles\pelican\pelican")
	(object_type_predict_high "objects\characters\marine\marine")
	(object_type_predict_high "objects\characters\marine\marine_odst\marine_odst")
	(object_type_predict_high "objects\characters\masterchief\masterchief")
	(camera_predict_resources_at_point "camera_predict_1")
	(fade_out 0.0 0.0 0.0 0)
	(sound_looping_predict "sound\e3\music\e3_music_01\e3_music_01")
	(sound_looping_start "sound\e3\music\e3_music_01\e3_music_01" none 1.0)
	(sound_looping_start "sound\e3\foley\e3_intro_foley_01\e3_intro_foley_01" none 1.0)
	(sound_class_set_gain "projectile_detonation" 0.0 0)
	(sound_class_set_gain "ambient_machinery" 0.0 0)
	(object_teleport (player0) "johnson_player_0")
	(object_teleport (player1) "johnson_player_1")
	(wake load_pelican_double_1)
	(sleep 30)
	(object_teleport (ai_vehicle_get intro_pelican_2/driver) "f_intro_camera_1")
	(pvs_set_object (ai_vehicle_get intro_pelican_2/driver))
	(camera_set_animation_relative "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_flyby1" none "f_intro_camera_1")
	(custom_animation_relative (ai_vehicle_get intro_pelican_2/driver) "objects\vehicles\pelican\e3\e3" "e3_pelican_flyby1" false f_intro_anchor_1)
	;(camera_set_animation_relative "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_flyby1" none "f_intro_camera_1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 0.0 function_scale)
	(object_create_anew "earthcity_scenery")
	(object_create_anew "clouds_scenery")
	;;(cinematic_screen_effect_set_bloom 0.6 0.0 0.0 1.0 1.0)
	(cinematic_screen_effect_start false)

	(dig_pp_intro_scene_1_1)

	(sleep 30)
	(fade_in 0.0 0.0 0.0 60)
	(sleep 60)
	(super_in)
	(sleep 90)
	(intro_1_setup)
	(sleep 15)
	(wake intro_chief_reveal)
	(sleep_until g_intro 5)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(pvs_set_object "johnson")
	(object_destroy "earthcity_scenery")
	
	(dig_pp_intro_scene_1_2)
	
	(object_uses_cinematic_lighting "johnson" true)
	(object_uses_cinematic_lighting (ai_get_object intro_pelican_1/driver) true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_johnson1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_johnson_1" 0 (ai_vehicle_get intro_pelican_1/driver))
	;(camera_set_relative "intro_johnson_2" 120 (ai_vehicle_get intro_pelican_1/driver))
	(sleep 1)
	(sleep (- (sound_impulse_time "sound\e3\dialog\e3_100_johnson" 59) 2.0))
	(sound_impulse_start "sound\e3\dialog\e3_110_johnson" "johnson" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_110_johnson" 86))
	(player_effect_stop 0.0)
	(object_cinematic_lod (ai_vehicle_get intro_pelican_2/driver) true)
	(pvs_set_object (ai_vehicle_get intro_pelican_2/driver))
	
	(dig_pp_intro_scene_1_3)
	
	(object_uses_cinematic_lighting (ai_vehicle_get intro_pelican_2/driver) true)
	(object_uses_cinematic_lighting "clouds_scenery" true)
	(object_teleport (ai_vehicle_get intro_pelican_2/driver) "f_intro_camera_3")
	(custom_animation_relative (ai_vehicle_get intro_pelican_2/driver) "objects\vehicles\pelican\e3\e3" "e3_pelican_flyby3" false f_intro_anchor_3)
	(camera_set_animation_relative "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_flyby3" (ai_vehicle_get intro_pelican_2/driver) "f_intro_camera_3")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 0.0 function_scale)
	(object_teleport (ai_vehicle_get intro_pelican_1/driver) "f_intro_pelican_2")
	(sleep 30)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 1.0 function_scale)
	(sleep 60)
	(shader_predict "scenarios\skies\solo\earthcity\shaders\ec_sky_dome")
	(bitmap_predict "scenarios\skies\solo\earthcity\bitmaps\ec_sky_dome")
	(shader_predict "scenarios\shaders\human\urban\metals\street_highway_border")
	(shader_predict "scenarios\shaders\human\urban\metals\street_highway_bottom")
	(shader_predict "objects\vehicles\uberchassis\shaders\uberchassis_body")
	(bitmap_predict "effects\decals\bullet_holes\bitmaps\destruction_crack")
	(bitmap_predict "effects\decals\bullet_holes\bitmaps\wall_cracks")
	(bitmap_predict "effects\decals\bullet_holes\bitmaps\metal")
	(object_type_predict_high "objects\characters\marine\marine")
	(object_type_predict_high "objects\vehicles\uberchassis\uberchassis")
	(object_type_predict_high "scenarios\objects\human\military\sniper_rifle\cinematic_sniper_rifle")
	(object_type_predict_high "scenarios\objects\human\military\spotting_scope\spotting_scope")
	(camera_predict_resources_at_point "intro_snipers_1a")
	(print "sniper predict")
	(sleep 45)
	(fade_out 1.0 1.0 1.0 15)
	(sleep 15)
	(wake light_init_intro);	Start intro dutscene lights
)

(script static void intro_scene_2
	(object_destroy "clouds_scenery")
	(sniper_setup)
	(wake hostile_fire_2)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_sniper1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_snipers_1a" 0)
	;(camera_set_pan "intro_snipers_1b" 180)
	(cinematic_screen_effect_stop)
	(fade_in 1.0 1.0 1.0 15)
	(sleep 60)
	(custom_animation_loop "sniper_2" "objects\characters\marine\e3\e3" "sin_marine_spotter" false)
	(sound_impulse_start "sound\e3\dialog\e3_120_sniper" "sniper_2" 1.0)
	(sleep 30)
	
	(dig_pp_intro_scene_2_1)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_sniper2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_pan "intro_snipers_2b" "intro_snipers_2a" 90 0 1.0 45 0.0)
	(sound_looping_start "sound\e3\foley\e3_intro_foley_02\e3_intro_foley_02" none 1.0)
	(object_cinematic_lod (ai_vehicle_get intro_pelican_2/driver) true)
	(pvs_set_object (ai_vehicle_get intro_pelican_2/driver))
	(object_teleport (ai_vehicle_get intro_pelican_2/driver) "f_intro_pelican_2")
	(custom_animation_relative (ai_vehicle_get intro_pelican_2/driver) "objects\vehicles\pelican\e3\e3" "e3_pelican_flyby4" false f_intro_anchor_4)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_2/driver) "hover" 1.0 function_scale)
	(shader_predict "objects\characters\marine\shaders\marine_standard")
	(object_type_predict_high "objects\characters\marine\marine")
	(camera_predict_resources_at_point "camera_predict_3")
	(sleep 45)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_120_sniper" 114))
	(load_pelican_double_2)
	(cinematic_screen_effect_stop)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_sniper_flyover")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_sniper_flyover_1" 0 (ai_vehicle_get intro_pelican_2/driver))
	(custom_animation_loop (ai_get_unit intro_pelican_2/driver) "objects\characters\marine\e3\e3" "sin_pilot_pelican_console" false)
	(sound_impulse_start "sound\e3\dialog\e3_130_dspilot" none 1.0)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(camera_predict_resources_at_point "intro_snipers_rev_1")
	(sleep 90)
	(load_tactical_pelican)
	;(object_hide "chief" true)
	;(object_hide "intro_odst_1" true)
	;(object_hide "intro_odst_2" true)
	;(object_hide "intro_odst_3" true)
	;(object_hide "intro_odst_4" true)
	(player_effect_stop 0.0)
	(wake hostile_fire_1)
	;(object_hide "johnson_double" true)
	;(object_hide "copilot_double" true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_sniper3")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_snipers_rev_1" 0)
	;(camera_set "intro_snipers_rev_1b" 164)
	(sleep 15)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(player_effect_stop 1.5)
	(sleep 30)
	(wake intro_vamp)
	(sleep 30)
	(custom_animation_loop "johnson" "objects\characters\marine\e3\e3" "sin_johnson_pelican_tactical" false)
	;(object_hide "copilot_double" false)
	
	(dig_pp_intro_scene_2_2)

	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_johnson2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_pilot_johnson_1" 0 (ai_vehicle_get intro_pelican_1/driver))
	(pvs_set_object (ai_vehicle_get intro_pelican_1/driver))
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(sleep 1)
	(sound_impulse_start "sound\e3\dialog\e3_140_dspilot" (ai_get_object intro_pelican_1/driver) 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_140_dspilot" 27))
	(sleep 41)
	(sound_impulse_start "sound\e3\dialog\e3_150_johnson" "johnson" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_150_johnson" 35))
	(object_type_predict_high "objects\characters\marine\marine_odst\marine_odst")
	(object_type_predict_high "scenarios\objects\human\military\sniper_rifle\cinematic_sniper_rifle")
	(object_type_predict_high "objects\weapons\rifle\battle_rifle\battle_rifle")
	(wake cockpit_fire)
	(sleep 29)
	;(object_hide "chief" false)
	;(object_hide "intro_odst_1" false)
	;(object_hide "intro_odst_2" false)
	;(object_hide "intro_odst_3" false)
	;(object_hide "intro_odst_4" false)
	
	(dig_pp_intro_scene_2_3)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_johnson3")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_get_tactical_1" 0 (ai_vehicle_get intro_pelican_1/driver))
	(sound_impulse_start "sound\e3\dialog\e3_160_johnson" "johnson" 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_160_johnson" 51))
	(sleep 19)
	(object_teleport (ai_vehicle_get intro_pelican_1/driver) "f_intro_vamp")
	(sound_impulse_start "sound\e3\dialog\e3_170_cor" none 1.0)
	;(object_create_anew "rifle_1")
	;(object_create_anew "rifle_2")
	;(objects_attach "intro_odst_1" "right hand" "rifle_1" "")
	;(objects_attach "intro_odst_2" "right hand" "rifle_2" "")
	(custom_animation_loop global_intro_odst_1 "objects\characters\marine\e3\e3" "sin_pelican_odst_l_04" false)
	(custom_animation_loop global_intro_odst_2 "objects\characters\marine\e3\e3" "sin_pelican_odst_l_05" false)
	
	(dig_pp_intro_scene_2_4)
	
	(object_uses_cinematic_lighting global_intro_odst_1 true)
	(object_uses_cinematic_lighting global_intro_odst_2 true)
	;(object_uses_cinematic_lighting "rifle_1" true)
	;(object_uses_cinematic_lighting "rifle_2" true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_odst1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_odst_1a" 0 (ai_vehicle_get intro_pelican_1/driver))
	(sound_looping_start "sound\e3\foley\e3_intro_foley_03\e3_intro_foley_03" none 1.0)
	(sleep 60)
	(object_create_anew "sniper_rifle_magazine")
	(objects_attach global_intro_odst_4 "left_hand" "sniper_rifle_magazine" "left_hand")
	(custom_animation_loop global_intro_odst_4 "objects\characters\marine\e3\e3" "sin_pelican_odst_r_04" false)
	
	(dig_pp_intro_scene_2_5)
	
	(object_uses_cinematic_lighting global_intro_odst_4 true)
	(object_uses_cinematic_lighting "intro_1_rifle" true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_odst2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_odst_2a" 0 (ai_vehicle_get intro_pelican_1/driver))
	(sleep 19)
	(wake intro_3_setup)
	(sleep 58)
	(object_create_anew "helmet_odst")
	(objects_attach (ai_vehicle_get intro_pelican_1/driver) "pelican_p_r05" "helmet_odst" "")
	(scenery_animation_start "helmet_odst" "objects\characters\marine\marine_odst\helmet\helmet" "pelican_odst_r_05_helmet")
	(custom_animation_loop global_intro_odst_3 "objects\characters\marine\e3\e3" "sin_pelican_odst_r_05" false)
	
	(dig_pp_intro_scene_2_6)
	
	(object_uses_cinematic_lighting global_intro_odst_3 true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_odst3")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "intro_odst_3a" 0 (ai_vehicle_get intro_pelican_1/driver))
	(wake troopbay_fire)
	(sleep 85)
	(player_effect_stop 0.0)
	(cinematic_screen_effect_stop)
	(wake hostile_fire_3)
	
	(dig_pp_intro_scene_2_7)
	
	(object_set_function_variable (ai_vehicle_get intro_pelican_3/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_3/driver) "hover" 0.0 function_scale)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_pelican_track")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_pelican_track_1" 0)
	;(camera_pan "intro_pelican_track_1" "intro_pelican_track_2" 175 0 1.0 60 0.0)
	(print "insert cross-fade here")
	(object_teleport (ai_vehicle_get intro_pelican_1/driver) "f_intro_vamp")
	(intro_cleanup_1)
	(sleep 100)
)

(script command_script cs_pelican_4
	(cs_fly_by johnson_evac/p0)
	(cs_fly_by johnson_evac/p1)
	(cs_fly_by johnson_evac/p2)
	(ai_erase ai_current_squad)
)

(script static void johnson_evac
	(ai_place intro_pelican_4)
	(vehicle_load_magic (ai_vehicle_get intro_pelican_4/driver) "pelican_p_copilot" (ai_get_object intro_pelican_4/copilot))
	(cs_run_command_script intro_pelican_4/driver cs_pelican_4)
)

(script static void intro_scene_3
	(object_cinematic_lod (ai_get_object intro_pelican_1/driver) true)
	(pvs_set_object (ai_get_object intro_pelican_1/driver))
	(wake load_final_pelican)
	(object_type_predict "scenarios\objects\solo\earthcity\watercloset\watercloset")
	(object_type_predict_high "objects\characters\marine\marine")
	(camera_predict_resources_at_point "intro_final_approach_1")
	(sleep 74)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_crossfade 1.0)
	(wake light_init_intro)
	(sleep 1)
	(custom_animation_relative (ai_vehicle_get intro_pelican_1/driver) "objects\vehicles\pelican\e3\e3" "e3_pelican_landing" false f_intro_anchor_5)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "hover" 1.0 function_scale)
	
	(dig_pp_intro_scene_3_1)
	
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "hover" 0.0 function_scale)
	;(object_hide "chief_double" true)
	;(object_hide (list_get (ai_actors "intro_door_gunner") 0) true)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_final_approach")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_pan "intro_final_approach_1" "intro_final_approach_2" 90 0 1.0 30 0.0)
	(intro_cleanup_2)
	(sleep 75)
	(object_create_anew "bm_double")
	(pvs_set_object "bm_double")
	(custom_animation_loop "bm_double" "objects\characters\marine\e3\e3" "sin_perez_dust_idle" false)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.0 0.0 0.001 0.45 0.45 0.001)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	
	(dig_pp_intro_scene_3_2)
	
	;(object_hide "chief_double" false)
	;(object_hide (list_get (ai_actors "intro_door_gunner") 0) false)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_bm_flyover")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_bm_flyover_1a" 0)
	;(camera_set "intro_bm_flyover_1b" 60)
	(sleep 15)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "thrust" 1.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "hover" 1.0 function_scale)
	(sleep 15)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.0 0.45 0.5 0.45 0.0 0.5)
	(sleep 30)
	(cinematic_screen_effect_stop)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_rear_gear")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_3_3)
	
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "thrust" 0.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "hover" 1.0 function_scale)
	;(camera_set "intro_rear_gear_1a" 0)
	(object_create_anew_containing "lz_dust_small")
	(object_create_anew "lz_dust_large")
	(sleep 30)
	(object_type_predict_high "objects\characters\marine\marine")
	(object_type_predict_high "objects\characters\marine\marine_odst\marine_odst")
	(bitmap_predict "objects\vehicles\pelican\bitmaps\pelican_bump")
	(sleep 30)
	
	(dig_pp_intro_scene_3_4)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_front_gear")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_front_gear_1a" 0)
	(bitmap_predict "objects\vehicles\pelican\bitmaps\pelican_bump")
	(sleep 45)
	(custom_animation_loop "bm_double" "objects\characters\marine\e3\e3" "sin_perez_dust_look" false)
		
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_bm_shield")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_3_5)
	
	;(camera_set "intro_bm_shield_1a" 0)
	;(wake load_final_odsts)
	(bitmap_predict "objects\vehicles\pelican\bitmaps\pelican_bump")
	(sleep 43)
	(player_effect_stop 0.0)
		
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_dust")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_3_6)
	
	;(camera_set "intro_dust_1" 0)
	;(camera_set_pan "intro_dust_2" 46)
	(sound_impulse_start "sound\e3\dialog\e3_180_johnson" none 1.0)
	(wake unload_final_pelican)
	(wake field_hospital_setup)
	(sleep 46)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	;(object_create_anew "rifle_1")
	;(objects_attach "chief_double" "right hand" "rifle_1" "")
	
	(dig_pp_intro_scene_3_7)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_chief_unload")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "intro_chief_unload_1" 0)
	;(camera_pan "intro_chief_unload_1" "intro_chief_unload_2" 90 0 1.0 30 0.0)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "intro_pelican_exit" true)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "thrust" 0.0 function_scale)
	(object_set_function_variable (ai_vehicle_get intro_pelican_1/driver) "hover" 1.0 function_scale)
	(sleep 75)
	(fade_out 1.0 1.0 1.0 15)
	(sleep 15)
	(wake dig_postprocessing)

	(wake light_init_intro)
	(object_teleport (player0) "e3_start_0")
	(object_teleport (player1) "e3_start_1")
	(intro_cleanup_3)
	(johnson_evac)

	(cinematic_stop)
	(cinematic_show_letterbox false)
	(hud_cinematic_fade 1 0.5)

	; Edit sound channels, other stuff here
	(camera_control off)
	(sound_class_set_gain ambient_machinery 1 60)
	(game_save_no_timeout)	;	Force save so the player starts from here if they die.

	; Restore player control
	(player_enable_input true)
	(player_camera_control true)
	(game_can_use_flashlights false);  weapons aren't set up with flashlight markers so it doesn't work, anyway, this will just disable the flashlight sound - N
	(object_destroy_containing "intro_pp")
	(player_effect_stop 0.0)
	(joe_mission_start)
	;;(object_type_predict "objects\characters\masterchief\fp\fp")
	(object_type_predict "scenarios\objects\solo\earthcity\medical_ivstand\medical_ivstand")
	(object_type_predict "scenarios\objects\human\military\stretcher_low\stretcher_low")
	(object_type_predict "objects\weapons\rifle\smg\smg")
	(camera_predict_resources_at_point "camera_predict_2")
	(wake make_things_dusty)
	(sound_class_set_gain "weapon_ready" 1.0 0)
	(sound_class_set_gain "projectile_detonation" 1.0 1)
	(sound_class_set_gain "ambient_machinery" 1.0 1)
	(sleep 15)
	(fade_in 1.0 1.0 1.0 15)
	(dig_pp_casulties)
	(wake lz_fire)
	(sleep 30)
	(game_save_no_timeout); force a new save when safe. - N
	
	(dig_moth_1)
	
	(sound_impulse_start "sound\e3\dialog\e3_190_johnson" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_190_johnson" 72))
	(sound_impulse_start "sound\e3\dialog\e3_200_cor" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_200_cor" 33))
)

(script static void intro
	(intro_scene_1)
	(intro_scene_2)
	(intro_scene_3)
)

(script command_script chief_ghost_outro_1
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/10)
	(cs_go_to ghost_chase/12)
)

(script command_script cs_b_outro_11_dig
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/10)
	(cs_go_to ghost_chase/12)
)

(script command_script cs_b_outro_21_dig
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/10)
	(cs_go_to ghost_chase/12)
)

(script command_script cs_b_outro_31_dig
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/10)
	(cs_go_to ghost_chase/12)
)

(script command_script cs_phantom_3_fly
	(cs_ignore_obstacles true)
	(cs_fly_by dropship_chase/p01)
	(cs_fly_by dropship_chase/p20)
)

(script command_script cs_phantom_3_shoot
	(cs_enable_targeting true)
	(cs_shoot true (ai_vehicle_get "chief_1_dig/driver0"))
	(sleep 32000)
)

(script dormant outro_setup_1
	(ai_place "chief_1_dig")	;DIGSITE hack, original spawns are same squads but without "_dig" but timing was broken
	(ai_place "b_outro_11_dig")
	(ai_place "b_outro_21_dig")
	(ai_place "b_outro_31_dig")
	;(ai_place "phantom_3")
	;DIGSITE phantom hack start
	(object_create_anew ptest)
	(object_create_anew "phantom_3_dig")
	;(ai_place "phantom_3_gunner_dig")
	(ai_place "phantom_3_driver_dig")
	(vehicle_load_magic "phantom_3_dig" "phantom_d" (ai_actors "phantom_3_driver_dig/driver"))
	;(vehicle_load_magic "ptest" "phantom_g_r" (ai_actors "phantom_3_gunner_dig/gunner"))
	(custom_animation_relative "phantom_3_dig" "objects\vehicles\phantom\e3\e3" "phantom_3_dig" false f_intro_anchor_5)
	(scenery_animation_start_relative "ptest" "objects\vehicles\phantom\e3\e3" "phantom_3_dig" f_intro_anchor_5)
	;DIGSITE phantom hack end
	(object_cinematic_lod (list_get (ai_actors "chief_1_dig") 0) true)
	(object_cinematic_lod (list_get (ai_actors "b_outro_11_dig") 0) true)
	(object_cinematic_lod (list_get (ai_actors "b_outro_21_dig") 0) true)
	(object_cinematic_lod (list_get (ai_actors "b_outro_31_dig") 0) true)
	;(object_cinematic_lod (list_get (ai_actors "phantom_3") 0) true)
	(object_cinematic_lod "phantom_3_dig" true)
	(sleep 5)
	(object_set_velocity (ai_vehicle_get "chief_1_dig/driver0") 7.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_11_dig/driver0") 7.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_21_dig/driver0") 7.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_31_dig/driver0") 7.0 0.0 1.0)
	(cs_run_command_script "chief_1_dig" chief_ghost_outro_1)
	(cs_run_command_script "b_outro_11_dig" cs_b_outro_11_dig)
	(cs_run_command_script "b_outro_21_dig" cs_b_outro_21_dig)
	(cs_run_command_script "b_outro_31_dig" cs_b_outro_31_dig)
	;(cs_run_command_script "phantom_3/driver0" cs_phantom_3_fly)
)

(script command_script cs_p_outro_1
	(cs_enable_pathfinding_failsafe true)
	(object_set_velocity (ai_vehicle_get ai_current_actor) 4.0)
	(cs_fly_by dropship_chase/p11)
	(cs_fly_by dropship_chase/p12)
)

(script command_script cs_p_outro_2
	(cs_enable_pathfinding_failsafe true)
	(cs_fly_by dropship_chase/p21)
	(cs_fly_by dropship_chase/p22)
	(cs_fly_to dropship_chase/p23)
)

(script command_script cs_p_outro_3
	(cs_enable_targeting true)
	(cs_force_combat_status 4)
	(cs_shoot true "chief_ghost")
	(sleep 32000)
)
(script dormant outro_setup_2
	(object_create_anew "outro_phantom_1_base")
	(object_create_anew "pturret")
	(ai_place "phantom_1")
	(ai_place "phantom_gunner_1")
	(ai_place "phantom_gunner_2")
	(ai_place "phantom_2")
	(object_cinematic_lod "outro_phantom_1_base" true)
	(object_cinematic_lod (list_get (ai_actors "phantom_2") 0) true)
	(sleep 5)
	(vehicle_load_magic "outro_phantom_1_base" "phantom_d" (list_get (ai_actors "phantom_1") 0))
	(vehicle_load_magic "outro_phantom_1_base" "phantom_g_l" (list_get (ai_actors "phantom_gunner_1") 0))
	(vehicle_load_magic "pturret" "phantom_g_r" (list_get (ai_actors "phantom_gunner_2") 0))
	(objects_attach "outro_phantom_1_base" "chin_gun" "pturret" "")
	(sleep 5)
	(object_teleport "outro_phantom_1_base" "f_outro_phantom_start")
	(object_set_velocity (ai_vehicle_get "phantom_2/driver0") 4.0)
	(cs_run_command_script "phantom_1" cs_p_outro_1)
	(cs_run_command_script "phantom_2" cs_p_outro_2)
	(cs_run_command_script "phantom_gunner_2" cs_p_outro_3)
)
(script dormant outro_dig_1
	(object_create_anew "phantom_3_dig")
	(ai_place "phantom_3_driver_dig")
	(vehicle_load_magic "phantom_3_dig" "phantom_d" (ai_actors "phantom_3_driver_dig/driver"))
	(ai_place "phantom_3_gunner_dig")
	(vehicle_load_magic "ptest" "phantom_g_r" (ai_actors "phantom_3_gunner_dig/gunner"))
	(custom_animation_relative "phantom_3_dig" "objects\vehicles\phantom\e3\e3" "phantom_dolly_dig" false f_intro_anchor_5)
	(scenery_animation_start_relative "ptest" "objects\vehicles\phantom\e3\e3" "phantom_dolly_dig" f_intro_anchor_5)
	(cs_run_command_script "phantom_3_gunner_dig" cs_p_outro_3)
)
(script dormant outro_dig_2
	(object_create_anew "phantom_3_dig")
	(ai_place "phantom_3_driver_dig")
	(vehicle_load_magic "phantom_3_dig" "phantom_d" (ai_actors "phantom_3_driver_dig/driver"))
	(object_create_anew "phantom_3_dig")
	(ai_place "phantom_3_driver_dig")
	(vehicle_load_magic "phantom_3_dig" "phantom_d" (ai_actors "phantom_3_driver_dig/driver"))
	(ai_place "phantom_3_gunner_dig")
	(vehicle_load_magic "ptest" "phantom_g_r" (ai_actors "phantom_3_gunner_dig/gunner"))
	(custom_animation_relative "phantom_3_dig" "objects\vehicles\phantom\e3\e3" "phantom_chase_1_dig" false f_intro_anchor_5)
	(scenery_animation_start_relative "ptest" "objects\vehicles\phantom\e3\e3" "phantom_chase_1_dig" f_intro_anchor_5)
	(cs_run_command_script "phantom_3_gunner_dig" cs_p_outro_3)
)
(script dormant outro_dig_3
	(ai_place "phantom_2_driver_dig")
	(object_create_anew "outro_phantom_2")
	(vehicle_load_magic "outro_phantom_2" "phantom_d" (ai_actors "phantom_2_driver_dig/driver"))
	(custom_animation_relative "outro_phantom_2" "objects\vehicles\phantom\e3\e3" "phantom_chase_2_dig" false f_intro_anchor_5)
)
(script dormant kill_outro_dig
	(object_destroy "phantom_3_dig")
	(object_destroy "ptest")
	(ai_erase "phantom_3_driver_dig")
	(ai_erase "phantom_3_gunner_dig")
	(ai_erase "phantom_2_driver_dig")
)
(script command_script chief_ghost_outro_2
	(object_set_velocity (ai_vehicle_get ai_current_actor) 7.0 0.0 1.0)
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/21 3.0)
	(cs_go_to ghost_chase/22 3.0)
	(cs_go_to ghost_chase/23 3.0)
	(cs_go_to ghost_chase/24 3.0)
	(cs_go_to ghost_chase/25 3.0)
	(cs_go_to ghost_chase/26 3.0)
	(cs_go_to ghost_chase/27 3.0)
	(cs_go_to ghost_chase/28 3.0)
	(cs_go_to ghost_chase/29 3.0)
)

(script command_script cs_b_outro_12
	(cs_ignore_obstacles true)
	(cs_shoot true "chief_ghost")
	(cs_go_to ghost_chase/21 3.0)
	(cs_go_to ghost_chase/22 3.0)
	(cs_go_to ghost_chase/23 3.0)
	(cs_go_to ghost_chase/24 3.0)
	(cs_go_to ghost_chase/25 3.0)
	(cs_go_to ghost_chase/26 3.0)
	(cs_go_to ghost_chase/27 3.0)
	(cs_go_to ghost_chase/28 3.0)
	(cs_go_to ghost_chase/29 3.0)
)

(script command_script cs_b_outro_22
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/21 3.0)
	(cs_go_to ghost_chase/22 3.0)
	(cs_go_to ghost_chase/23 3.0)
	(cs_go_to ghost_chase/24 3.0)
	(cs_go_to ghost_chase/25 3.0)
	(cs_go_to ghost_chase/26 3.0)
	(cs_go_to ghost_chase/27 3.0)
	(cs_go_to ghost_chase/28 3.0)
	(cs_go_to ghost_chase/29 3.0)
)

(script command_script cs_b_outro_32
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/21 3.0)
	(cs_go_to ghost_chase/22 3.0)
	(cs_go_to ghost_chase/23 3.0)
	(cs_go_to ghost_chase/24 3.0)
	(cs_go_to ghost_chase/25 3.0)
	(cs_go_to ghost_chase/26 3.0)
	(cs_go_to ghost_chase/27 3.0)
	(cs_go_to ghost_chase/28 3.0)
	(cs_go_to ghost_chase/29 3.0)
)

(script dormant outro_setup_3
	(object_create_anew "chief_ghost")
	(pvs_set_object "chief_ghost")
	(ai_place "chief_2")
	(unit_impervious (ai_actors "chief_2") true)
	(object_cannot_take_damage (list_get (ai_actors "chief_2") 0))
	(object_cannot_take_damage "chief_ghost")
	(ai_place "b_outro_12")
	(ai_place "b_outro_22")
	(ai_place "b_outro_32")
	(sleep 5)
	(vehicle_load_magic "chief_ghost" "ghost_d" (list_get (ai_actors "chief_2") 0))
	(object_set_velocity "chief_ghost" 12.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_12/driver0") 12.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_22/driver0") 12.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "b_outro_32/driver0") 12.0 0.0 1.0)
	(cs_run_command_script "chief_2" chief_ghost_outro_2)
	(cs_run_command_script "b_outro_12" cs_b_outro_12)
	(cs_run_command_script "b_outro_22" cs_b_outro_22)
	(cs_run_command_script "b_outro_32" cs_b_outro_32)
)

(script command_script cs_b_outro_13
	(cs_enable_pathfinding_failsafe true)
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/31_1)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_b_outro_23
	(cs_enable_pathfinding_failsafe true)
	(cs_ignore_obstacles true)
	(cs_go_to ghost_chase/31_2)
	(unit_kill (ai_vehicle_get ai_current_actor))
	(cinematic_lighting_set_ambient_light 0 0 0)
)

(script command_script cs_phantom_shoot_sign
	(cs_force_combat_status 4)
	(cs_shoot_point true sign_target/shoot_this)
	(sleep 32000)
)

(script command_script cs_phantom_shoot_dig
	(print "shooting_ludus")
	(cs_force_combat_status 4)
	(cs_shoot_point true shoot_me_dig/shoot_this1)
	(sleep 70)
	(cs_shoot_point true shoot_me_dig/shoot_this2)
	(sleep 60)
	(cs_shoot_point true shoot_me_dig/shoot_this3)
	(sleep 32000)
)

(script command_script cs_phantom_shoot_chief
	(cs_shoot true "chief_ghost")
	;(sleep 32000)
	(sleep 150)
	(cs_queue_command_script "shorty_mc_deadeye" cs_phantom_shoot_dig)
)

(script command_script cs_phantom_shoot_stop
	(cs_shoot false)
	(cs_pause 32000.0)
)

(script dormant streetage
	(cs_run_command_script "shorty_mc_deadeye" cs_phantom_shoot_chief)
)

(script static void stoppage
	(cs_run_command_script "shorty_mc_deadeye" cs_phantom_shoot_stop)
)

(script dormant brute_death_setup
	(ai_place "b_outro_13")
	(ai_place "b_outro_23")
	(object_create_anew_containing "b_ghost")
	(sleep 5)
	(vehicle_load_magic "b_ghost_1" "ghost_d" (list_get (ai_actors "b_outro_13") 0))
	(vehicle_load_magic "b_ghost_2" "ghost_d" (list_get (ai_actors "b_outro_23") 0))
	(cs_run_command_script "b_outro_13" cs_b_outro_13)
	(cs_run_command_script "b_outro_23" cs_b_outro_23)
	(cinematic_lighting_set_ambient_light 0 0 0)
)

(script dormant distant_pods
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_11")
	(sleep 30)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_21")
	(sleep 30)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_31")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_41")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_51")
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_22")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_12")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_32")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_42")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_52")
	(sleep 10)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_33")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_23")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_13")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_53")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_43")
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_14")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_34")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_distant_pod_24")
)

(script dormant turn_pods
	(effect_new "effects\bursts\pod_distant_burst" "f_turn_pod_1")
	(sleep 2)
	(effect_new "effects\bursts\pod_distant_burst" "f_turn_pod_2")
	(sleep 1)
	(effect_new "effects\bursts\pod_distant_burst" "f_turn_pod_3")
	(sleep 2)
	(effect_new "effects\bursts\pod_distant_burst" "f_turn_pod_4")
)

(script dormant pass_pods
	(sleep 30)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_11")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_21")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_31")
	(sleep 10)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_12")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_22")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_32")
	(sleep 10)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_13")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_23")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_33")
	(sleep 10)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_14")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_24")
	(sleep 5)
	(effect_new "effects\bursts\pod_distant_burst" "f_pass_pod_34")
	(sleep 10)
)

(script dormant close_pods_1
	(object_create_anew_containing "outro_pod_scenery")
	
	(dig_pp_close_pods_1)
	
	(scenery_animation_start "outro_pod_scenery_4" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_4" "f_outro_pod_close_2")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_4" "exhaust")
	(sleep 10)
	(scenery_animation_start "outro_pod_scenery_1" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_1" "f_outro_pod_1")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_1" "exhaust")
	(sleep 10)
	(scenery_animation_start "outro_pod_scenery_3" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_3" "f_outro_pod_3")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_3" "exhaust")
	(sleep 10)
	(scenery_animation_start "outro_pod_scenery_6" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_6" "f_outro_pod_close_1")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_6" "exhaust")
	(sleep 5)
	(scenery_animation_start "outro_pod_scenery_2" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_2" "f_outro_pod_2")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_2" "exhaust")
	(sleep 5)
	(sleep 15)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_close_2")
	(sleep 11)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_1")
	(sleep 11)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_3")
	(sleep 6)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_close_1")
	(sleep 6)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_2")
)

(script dormant close_pods_2
	(object_create_anew "outro_pod_scenery_6")
	(object_create_anew "outro_pod_scenery_4")
	(scenery_animation_start "outro_pod_scenery_5" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_5" "f_outro_pod_5")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_5" "exhaust")
	(sleep 5)
	(scenery_animation_start "outro_pod_scenery_4" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_4" "f_outro_pod_4")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_4" "exhaust")
	(sleep 5)
	(scenery_animation_start "outro_pod_scenery_6" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_landing")
	(sleep 1)
	(object_teleport "outro_pod_scenery_6" "f_outro_pod_6")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\pod_exhaust" "outro_pod_scenery_6" "exhaust")
	(sleep 47)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_5")
	(sleep 6)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_4")
	(sleep 6)
	(effect_new "effects\impact\pod_impact" "f_outro_pod_6")
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.5 0.0)
	(player_effect_stop 1.5)
)

(script static void smg_setup
	(object_create_anew_containing "smg")
	(scenery_animation_start "outro_smg_1" "objects\weapons\rifle\smg\fp_smg\fp_smg" "smg_idle")
	(scenery_animation_start "outro_smg_2" "objects\weapons\rifle\smg\fp_smg\fp_smg" "smg_idle")
	(objects_attach "chief" "right hand" "outro_smg_1" "")
	(objects_attach "chief" "left hand" "outro_smg_2" "")
)

(script static void grenade_setup
	(object_create_anew "outro_grenade")
	(objects_attach "chief" "right hand" "outro_grenade" "")
)

(script stub void dig_pp_outro_scene_1_0
	(print "stub")
)

(script stub void dig_pp_outro_scene_chase1
	(print "stub")
)

(script stub void dig_pp_outro_scene_chase2
	(print "stub")
)

(script stub void dig_pp_outro_scene_chase3
	(print "stub")
)

(script static void outro_scene_1
	(sound_class_set_gain "weapon_ready" 0.0 0)
	(sound_class_set_gain "weapon_fire" 0.7 0)
	(fade_out 1.0 1.0 1.0 15)
	(sleep 15)
	(light_cleanup_all);	Run light culls - Neo
	(object_destroy_type_mask 63)
	(cinematic_start)
	(camera_control true)
	(object_teleport (player0) "johnson_player_0")
	(object_teleport (player1) "johnson_player_1")
	(print "camera_outro_ramp")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_onramp")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_onramp_1" 0)
	(pvs_set_camera "outro_onramp_1")
	(wake outro_setup_1)
	(sleep 15)
	(sound_looping_start "sound\e3\music\e3_outro_music\e3_outro_music" none 1.0)
	(sleep 15)
	(fade_in 1.0 1.0 1.0 15)
	
	(dig_pp_outro_scene_1_0)
	
	;(camera_set "outro_onramp_2" 180)
	(print "fade in")
	(sleep 120)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.5 0.0)
	(player_effect_stop 1.5)
	;(wake outro_setup_2)
	(wake outro_setup_3)
	;(camera_set "outro_onramp_3" 60)
	(sleep 60)
	(ai_erase "chief_1_dig")
	(ai_erase "b_outro_11_dig")
	(ai_erase "b_outro_21_dig")
	(ai_erase "b_outro_31_dig")
	(player_effect_set_max_rotation 0.0 0.5 0.5)
	(player_effect_start 0.25 0.0)
	
	(dig_pp_outro_scene_1_1)
	
	(print "camera_outro_ghost_chase")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_ghost_chase")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "outro_ghost_chase_2a" 0 "chief_ghost")
	;(camera_set_relative "outro_ghost_chase_2" 45 "chief_ghost")
	;(ai_erase "phantom_3")
	(ai_erase "phantom_3_driver_dig")
	(custom_animation (ai_get_unit "chief_2") "objects\characters\masterchief\e3\e3" "e3_out_mc_shoulder" false)
	(object_type_predict_high "objects\vehicles\phantom\phantom")
	(sleep 45)
	
	(dig_pp_outro_scene_1_2)
	
	(print "camera_outro_phantom_gun_dolly")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_phantom_gun_dolly")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	(wake outro_dig_1) (object_uses_cinematic_lighting "phantom_3_dig" true)
	;(camera_set_relative "outro_phantom_gun_dolly_1" 0 "outro_phantom_1")
	(sleep 75)
	(player_effect_stop 0.0)
	
	(print "camera_outro_phantom_pass")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_phantom_pass")
	
	(dig_pp_outro_scene_chase1)
	
	(wake outro_dig_2)
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_phantom_pass_1" 0)
	;(camera_set "outro_phantom_pass_2" 90)
	(sleep 90)
	(player_effect_stop 0.0)
	
	(print "camera_outro_highway_low")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_highway_low")
	
	(dig_pp_outro_scene_chase2)
	
	(wake outro_dig_3)
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_highway_low_2" 0)
	;(camera_set_pan "outro_highway_low_1" 60)
	(sleep 60)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.5 0.0)
	(player_effect_stop 1.5)
	
	(print "camera_outro_chief_bh_approach")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_bh_approach")
	
	(dig_pp_outro_scene_chase3)
	
	(wake "kill_outro_dig");Deletes the Digsite hack phantoms
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "chief_bh_approach_1" 0 "chief_ghost")
	;(camera_set_relative "chief_bh_approach_2" 90 "chief_ghost")
	(sleep_until (volume_test_objects "tv_outro_bh_1" "chief_ghost") 1)
)

(script dormant phantom_fiery_death
	(sleep 90)
	(effect_new_on_object_marker "effects\fire\spark_long" "falling_sign" "marker_up")
	(sleep 5)
	(effect_new_on_object_marker "effects\explosions\elec_explosion_sparks" "falling_sign" "sparks1")
	(sleep 41)
	(effect_new_on_object_marker "effects\explosions\elec_explosion_sparks" "falling_sign" "sparks2")
	(sleep 63)
	(effect_new_on_object_marker "effects\explosions\elec_explosion_sparks" "falling_sign" "elec_explosion_sparks")
	(sleep 25)
	(effect_new_on_object_marker "effects\explosions\elec_explosion" "falling_sign" "elec_explosion")
	(sleep 15)
	(print "boom")
	;;(effect_new_on_object_marker "effects\vehicles\creep\c_hull_destroyed_large" "outro_phantom_1" "phantom_small_target02")
	(sleep 10)
	(effect_new_on_object_marker "effects\explosions\elec_explosion_sparks" "falling_sign" "elec_explosion_sparks3")
	(sleep 3)
	(effect_new_on_object_marker "effects\explosions\elec_explosion_sparks" "falling_sign" "elec_explosion_sparks2")
	(sleep 39)
	(effect_new_on_object_marker "effects\vehicles\creep\c_hull_destroyed_large" "outro_phantom_1" "")
	(sleep 9)
	(sleep 50)
	(stoppage)
	(effect_new "effects\explosions\gun_tower_explosion" "f_phantom_explosion")
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.25 0.0)
	(player_effect_stop 1.5)
)




(script static void outro_scene_2
	(sound_class_set_gain "projectile_detonation" 0.0 0)
	(ai_erase "phantom_1")
	(ai_erase "phantom_gunner_1")
	(ai_erase "phantom_gunner_2")
	(ai_erase "phantom_2")
	(object_create_anew "outro_phantom_1")
	(object_create_anew ptest)
	(object_create_anew "outro_phantom_2")
	(object_create_anew "falling_sign")
	(ai_place "shorty_mc_oneeye")
	(ai_place "shorty_mc_deadeye")
	(cs_run_command_script "shorty_mc_deadeye" cs_phantom_shoot_sign)
	(sleep 1)
	(vehicle_load_magic "outro_phantom_1" "phantom_d" (list_get (ai_actors "shorty_mc_oneeye") 0))
	(vehicle_load_magic "ptest" "phantom_g_r" (list_get (ai_actors "shorty_mc_deadeye") 0))
	(custom_animation_relative "outro_phantom_1" "objects\vehicles\phantom\e3\e3" "phantomsigncrush" false f_intro_anchor_5)
	(scenery_animation_start_relative "ptest" "objects\vehicles\phantom\e3\e3" "phantomsigncrush" f_intro_anchor_5)
	(custom_animation_relative "outro_phantom_2" "objects\vehicles\phantom\e3\e3" "phantombuildingcrash" false f_intro_anchor_5)
	(scenery_animation_start_relative "falling_sign" "scenarios\objects\solo\earthcity\sign_falling\sign_falling" "falling" f_intro_anchor_5)
	;;(vehicle_engine_hack "outro_phantom_1" true 1.0)
	(unit_set_actively_controlled "outro_phantom_1" true)
	(wake phantom_fiery_death)
	
	(dig_pp_outro_scene_2_1)
	
	(player_effect_set_max_rotation 0.0 0.5 0.5)
	(player_effect_start 0.25 0.0)
	(print "camera_outro_phantom_sign")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_phantom_sign")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "outro_phantom_sign_1" 0 "outro_phantom_1")
	(sleep 90)
	(player_effect_stop 0.0)
	
	(print "camera_outro_sign1")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_sign1")
	
	(dig_pp_outro_scene_2_2)
	
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_sign_1a" 0)
	;(camera_set_pan "outro_sign_1b" 60)
	(sound_looping_start "sound\e3\foley\e3_outro_foley_01\e3_outro_foley_01" none 1.0)
	(wake streetage)
	(sleep 60)
	;(stoppage)
	
	(print "camera_outro_sign2")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_sign2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_2_3)
	
	;(camera_set "outro_sign_2a" 0)
	;(camera_set_pan "outro_sign_2b" 28)
	(sleep 28)
	
	(print "camera_outro_sign3")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_sign3")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_2_4)
	
	;(camera_set "outro_sign_3a" 0)
	;(camera_set_pan "outro_sign_3b" 62)
	(sleep 62)
	
	(print "camera_outro_dust")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_dust")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_2_5)
	
	;(camera_set "outro_dust_1" 0)
	;(camera_set "outro_dust_2" 155)
	(sleep 100)
	(object_type_predict "objects\vehicles\uberchassis\uberchassis")
	(camera_predict_resources_at_point "outro_tunnel_1")
	(sleep 55)
	(ai_erase "chief_2")
	(object_create_anew "chief")
	(object_create_anew "chief_ghost")
	(pvs_set_object "chief")
	;(object_create_anew "joes_tunnel_lights")
	(object_create_anew_containing "light_tunnel")	;	wtf, dude - Neo
	(object_create_anew_containing "c_obfuscating")
	(object_create_anew_containing "persistent")
	(object_set_shadowless "persistent_chassis_1" true)
	(object_set_shadowless "persistent_chassis_2" true)
	(object_set_shadowless "c_obfuscating_chassis_1" true)
	;;(object_set_shadowless "tunnel" true)
	(object_set_shadowless "tunnel_door" true)
	(custom_animation_relative "chief_ghost" "objects\vehicles\ghost\e3\e3" "ghost_tunnelchase01" false f_intro_anchor_5)
	(custom_animation_relative "chief" "objects\characters\masterchief\e3\e3" "ghost_cin_tunnelchase01" false f_intro_anchor_5)
	;;(vehicle_engine_hack "chief_ghost" true 1.0)
	(unit_set_actively_controlled "chief_ghost" true)
	
	
	(print "camera_outro_tunnel")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_tunnel")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_2_6)
	
	;(camera_set "outro_tunnel_1" 0)
	;(camera_set "outro_tunnel_2" 75)
	(ai_erase "chief_2")
	(ai_erase "b_outro_12")
	(ai_erase "b_outro_22")
	(ai_erase "b_outro_32")
	(sleep 90)
)

(script dormant cortana_tunnel_warn
	(sound_impulse_start "sound\e3\dialog\e3_810_cor" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_810_cor"))
	(sound_impulse_start "sound\e3\dialog\e3_820_mc" none 1.0)
	(sleep (sound_impulse_time "sound\e3\dialog\e3_820_mc"))
)

(script static void outro_scene_3
	(sound_class_set_gain "projectile_detonation" 1.0 1)
	(pvs_set_object "chief_ghost")
	(object_create_anew "tunnel_door")
	(custom_animation_relative "chief_ghost" "objects\vehicles\ghost\e3\e3" "ghost_tunnelchase02" false f_intro_anchor_5)
	(custom_animation_relative "chief" "objects\characters\masterchief\e3\e3" "ghost_cin_tunnelchase02" false f_intro_anchor_5)
	(scenery_animation_start "tunnel_door" "scenarios\objects\solo\earthcity\door_bulkhead\door_bulkhead" "door_closing")
	;;(vehicle_engine_hack "chief_ghost" true 1.0)
	(unit_set_actively_controlled "chief_ghost" true)
	(player_effect_set_max_rotation 0.0 0.5 0.5)
	(player_effect_start 0.25 0.0)
	
	(print "camera_outro_chief_door1")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_door1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_3)
	
	;(camera_set_relative "outro_chief_door_1" 0 "chief_ghost")
	(sound_looping_start "sound\e3\foley\e3_outro_foley_02\e3_outro_foley_02" none 1.0)
	(sleep 45)
	
	(print "camera_outro_cortana_warn")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_cortana_warn")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_4)
	
	
	;(camera_set_relative "outro_cortana_warn_1" 0 "chief_ghost")
	(wake cortana_tunnel_warn)
	(sleep 45)
	
	(print "camera_outro_tunnel_close")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_tunnel_close")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_5)
	
	;(camera_set "outro_tunnel_close_1" 0)
	;(camera_set "outro_tunnel_close_2" 48)
	(sleep 48)
	(player_effect_stop 0.0)
	
	(print "camera_outro_chief_door2")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_door2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_6)
	
	;(camera_set_relative "outro_chief_door_1" 0 "chief_ghost")
	(player_effect_set_max_rotation 0.0 0.5 0.5)
	(player_effect_start 0.25 0.0)
	(sleep 39)
	(player_effect_stop 0.0)
	
	(print "camera_outro_hood_scrape")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_hood_scrape")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_7)
	
	;(camera_set "outro_hood_scrape_1" 0)
	;(camera_set_pan "outro_hood_scrape_2" 15)
	(sleep 10)
	(effect_new_on_object_marker "effects\vehicles\ghost\c_hull_destroyed_medium" "chief_ghost" "hull_destroyed_effect")
	;;(vehicle_engine_hack "chief_ghost" true 0.0)
	(object_destroy_containing "c_obfuscating")
	(object_create "b_obfuscating_fire_1")
	(object_create "b_obfuscating_smoke_1")
	(object_create "b_obfuscating_smoke_2")
	(object_create "b_obfuscating_chassis_1")
	(sleep 30)
	(wake brute_death_setup)
	
	(dig_pp_outro_scene_3_1)
	
	(print "camera_outro_tumble")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_tumble")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_outro_scene_3_8)
	
	;(camera_set "outro_tumble_2" 0)
	;(camera_set_pan "outro_tumble_1" 57)
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "head")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "right_hand")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "left_hand")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "e3_spark_l_arm")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "e3_spark_r_arm")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "e3_spark_l_thigh")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "e3_spark_r_thigh")
	(effect_new_on_object_marker "effects\fire\sparks_skid" "chief" "e3_spark_torso")
	(sleep 55)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.5 0.0)
	(player_effect_stop 1.5)
	(sleep 2)
	(fade_out 0.0 0.0 0.0 0)
	(print "fade")
)

(script static void outro_scene_4
	(object_type_predict_high "objects\characters\brute\brute")
	(object_type_predict_high "objects\vehicles\ghost\ghost")
	(sleep 30)
	(player_effect_set_max_rotation 0.0 0.5 0.5)
	(player_effect_start 0.25 0.0)
	
	(dig_pp_outro_scene_4_1)
	
	(print "camera_outro_brute_death1")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_brute_death1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
		
	;(camera_set_relative "outro_brute_death_1" 0 "b_ghost_1")
	;(camera_set_relative "outro_brute_death_1b" 45 "b_ghost_1")
	(scenery_animation_start "tunnel_door" "scenarios\objects\solo\earthcity\door_bulkhead\door_bulkhead" "door_bottomclosing")
	(fade_in 0.0 0.0 0.0 0)
	(sleep 45)
	(custom_animation_loop (ai_get_unit "b_outro_13") "objects\characters\brute\e3\e3" "e3_out_brute_react" false)
	
	(dig_pp_outro_scene_4_1)
	
	(print "camera_outro_brute_death2")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_brute_death2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set_relative "outro_brute_death_3" 0 "b_ghost_1")
	;(camera_set_relative "outro_brute_death_3a" 45 "b_ghost_1")
	(sleep 15)
	(sound_impulse_start "sound\e3\brute_tunnel_suprise" none 1.0)
	(sleep 57)
	(player_effect_stop 0.0)
)

(script dormant brute_fiery_death
	(sleep 30)
	(ai_erase "b_outro_13")
	(ai_erase "b_outro_23")
	(object_destroy "b_ghost_1")
	(effect_new "effects\vehicles\ghost\c_hull_destroyed_e3_flat" "f_brute_death_1")
	(sleep 15)
	(effect_new "effects\vehicles\ghost\c_hull_destroyed_e3_flat" "f_brute_death_2")
)

(script dormant pod_hatch_blow
	(sleep 21)
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\hatch_release" "outro_pod_scenery_6" "hatch_release01")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\hatch_release" "outro_pod_scenery_6" "hatch_release02")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\hatch_release" "outro_pod_scenery_6" "hatch_release03")
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\hatch_release" "outro_pod_scenery_6" "hatch_release04")
	(sleep 50)
	(effect_new_on_object_marker "objects\vehicles\insertion_pod\effects\hatches_blown" "outro_pod_scenery_6" "door_blast")
)

(script dormant flash
	(sleep 85)
	(effect_new_on_object_marker "objects\weapons\grenade\plasma_grenade\effects\plasma_grenade_armed_scenery" "outro_grenade" "light")
)

(script static void outro_scene_5
	(object_destroy_type_mask 62)
	(cinematic_start)
	(camera_control true)
	(object_create_anew "cruiser")
	(device_set_position "cruiser" 1.0)
	(object_create_anew "chief")
	(object_create_anew_containing "smg")
	(object_destroy_containing "b_obfuscating")
	(object_destroy_containing "persistent")
	(object_create_anew_containing "obscuring")
	(pvs_set_object "chief")
	(object_cinematic_lod "chief" true)
	(object_cinematic_lod "outro_smg_1" true)
	(object_cinematic_lod "outro_smg_2" true)
	(objects_attach "chief" "right_hand" "outro_smg_1" "")
	(objects_attach "chief" "left_hand" "outro_smg_2" "")
	(object_set_scale "cruiser" 0.9 0)
	(cinematic_screen_effect_stop)
	(wake brute_fiery_death)
	(object_destroy "joes_tunnel_lights")
	
	(dig_pp_outro_scene_5_1)
	
	(print "camera_outro_mc_rise1")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_mc_rise")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_mc_rise_0" 0)
	;(camera_set "outro_mc_rise_1" 120)
	(sleep 60)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.25 0.001 0.0 0.0 0.001)
	;;;;(cinematic_screen_effect_set_bloom_transition 0.6 0.0 0.0 1.0 1.0 3.0)
	(print "depth")
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_00_mc" false)
	(sleep 60)
	;(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.0 0.5 0.0 0.25 0.5)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.0 0.5 0.0 5.25 0.5);	Updated for MCC's bad DOF
	(print "depth")
	(sleep 22)
	(sound_impulse_start "sound\e3\dialog\e3_840_cor" none 1.0)
	(sleep 8)
	;(camera_set "outro_mc_rise_2" 60)
	(bitmap_predict "objects\characters\masterchief\bitmaps\masterchief_bump")
	(object_type_predict_high "objects\characters\masterchief\masterchief")
	(sleep 60)
	(cinematic_screen_effect_stop)
	(sound_looping_start "sound\e3\foley\e3_outro_foley_02b\e3_outro_foley_02b" none 1.0)
	
	(dig_pp_outro_scene_5_1)
	
	(print "camera_outro_vista")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_vista")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_set "outro_vista_1a" 0)
	;(camera_pan "outro_vista_1a" "outro_vista_1b" 180 0 1.0 30 0.0)
	(wake distant_pods)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_01_mc" true)
	(sleep 30)
	(sound_impulse_start "sound\e3\dialog\e3_841_cor" none 1.0)
	(sleep 90)
	(wake turn_pods)
	(sleep 30)
	(sleep 15)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_02_mc" true)
	(sleep 15)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_turn1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_2)
	
	;(camera_set "outro_chief_turn_1" 0)
	(sleep 30)
		
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_turn2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_3)
	
	;(camera_set "outro_chief_turn_2" 0)
	;(camera_set_pan "outro_chief_turn_2a" 60)
	(sound_looping_start "sound\e3\foley\e3_outro_foley_03\e3_outro_foley_03" none 1.0)
	(wake close_pods_1)
	(sleep 30)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_pod_high")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_4)
	
	;(camera_set "outro_pod_high_1" 0)
	;(camera_set_pan "outro_pod_high_2" 90)
	(sleep 30)
	(player_effect_set_max_rotation 0.0 1.0 1.0)
	(player_effect_start 0.5 0.0)
	(player_effect_stop 1.5)
	(sleep 60)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_10_mc" false)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.35 0.35 0.001 0.0 0.0 0.001)
	(wake close_pods_2)
	(object_set_shadowless "chief" true)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_pod_land")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_5)
	
	;(camera_set "outro_pod_land_1" 0)
	;(camera_set "outro_pod_land_2" 90)
	(sleep 90)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.0 0.0 0.001 0.0 0.0 0.001)
	(wake pass_pods)
	;;(cinematic_bloom 1.0 1.0 1.0)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_pod_open")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_6)
		
	;(camera_set "outro_pod_open_1" 0)
	(object_set_shadowless "chief" false)
	(sound_looping_start "sound\e3\foley\e3_outro_foley_04\e3_outro_foley_04" none 1.0)
	(sleep 60)
	(scenery_animation_start_relative "outro_pod_scenery_6" "objects\vehicles\insertion_pod\e3\e3" "e3_pod_opening" f_outro_pod_6)
	(wake pod_hatch_blow)
	(sleep 60)
	(object_create_anew "outro_elite_1")
	(object_cinematic_lod "outro_elite_1" true)
	(object_create_anew "outro_blade_1")
	(objects_attach "outro_elite_1" "right_hand_elite" "outro_blade_1" "")
	(custom_animation_loop "outro_elite_1" "objects\characters\elite\e3\e3" "e3_out_08_elite" false)
	
	(dig_pp_outro_scene_5_7)
	
	(object_teleport "outro_elite_1" "f_hack_for_john")
	(sleep 30)
	;(camera_set "outro_pod_open_2" 30)
	(sleep 92)
	(object_create_anew "outro_elite_2")
	(object_cinematic_lod "outro_elite_2" true)
	(object_create_anew "outro_blade_6")
	(objects_attach "outro_elite_2" "right_hand_elite" "outro_blade_6" "")
	
	(dig_pp_outro_scene_5_8)
	
	(custom_animation_loop "outro_elite_2" "objects\characters\elite\e3\e3" "e3_out_09_elite_bark" false)
	(custom_animation_loop "outro_elite_1" "objects\characters\elite\e3\e3" "e3_out_09_elite_look" false)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.25 0.001 0.0 0.0 0.001)
	(object_teleport "outro_pod_scenery_5" "f_outro_pod_5b")
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_elite_warn")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_9)
		
	;(camera_set "outro_elite_warn_1" 0)
	;(camera_set "outro_elite_warn_2" 90)
	(sound_impulse_start "sound\e3\dialog\e3_860_elite" "outro_elite_2" 1.0)
	(sleep 25)
	;(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.0 0.5 0.0 0.25 0.5)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.25 0.0 0.5 0.0 3.25 0.5)
	(sleep 60)
	(cinematic_screen_effect_set_depth_of_field 1.0 0.0 0.0 0.001 0.0 0.0 0.001)
	(object_destroy "outro_pod_scenery_6")
	(unit_custom_animation_at_frame "outro_elite_1" "objects\characters\elite\e3\e3" "e3_out_10_elite" false 15)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_elite_sword_rev")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_10)
	
	;(camera_set "outro_elite_sword_rev_1" 0)
	;(camera_set_pan "outro_elite_sword_rev_2" 49)
	(sound_looping_start "sound\e3\foley\e3_outro_foley_05\e3_outro_foley_05" none 1.0)
	(sleep 29)
	(object_destroy "outro_blade_1")
	(object_create_anew "outro_blade_on_1")
	(objects_attach "outro_elite_1" "right_hand_elite" "outro_blade_on_1" "")
	(effect_new_on_object_marker "objects\weapons\melee\energy_blade\effects\blade_activate" "outro_blade_on_1" "ground_point")
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_11_mc" true)
	(sleep 20)
	;;(cinematic_bloom 0.5 0.5 1.0)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_mc_draw")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_11)
	
	;(camera_set "outro_mc_draw_1" 0)
	;(camera_set_pan "outro_mc_draw_2" 60)
	(sleep 63)
	(object_create_anew "outro_elite_3")
	(object_create_anew "outro_elite_4")
	(object_uses_cinematic_lighting "outro_elite_3" true)
	(object_uses_cinematic_lighting "outro_elite_4" true)
	(object_create_anew "outro_blade_2")
	(object_create_anew "outro_blade_3")
	(objects_attach "outro_elite_3" "right_hand_elite" "outro_blade_2" "")
	(objects_attach "outro_elite_4" "right_hand_elite" "outro_blade_3" "")
	(object_cinematic_lod "outro_elite_3" true)
	(object_cinematic_lod "outro_elite_4" true)
	(object_set_permutation "outro_blade_2" "blade" "noblade")
	(object_set_permutation "outro_blade_3" "blade" "default")
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_12_mc" false)
	(custom_animation_loop "outro_elite_3" "objects\characters\elite\e3\e3" "e3_out_12_elite_01" false)
	(custom_animation_loop "outro_elite_4" "objects\characters\elite\e3\e3" "e3_out_12_elite_02" false)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_backoff1")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_12)
	
	;(camera_set "outro_chief_backoff_1" 0)
	;(camera_pan "outro_chief_backoff_1" "outro_chief_backoff_2" 59 0 1.0 0 1.0)
	(sleep 16)
	(object_destroy "outro_blade_2")
	(object_create_anew "outro_blade_on_2")
	(objects_attach "outro_elite_3" "right_hand_elite" "outro_blade_on_2" "")
	(effect_new_on_object_marker "objects\weapons\melee\energy_blade\effects\blade_activate" "outro_blade_on_2" "ground_point")
	(sleep 14)
	(sleep 25)
	(object_create_anew "outro_elite_5")
	(object_create_anew "outro_elite_6")
	(object_uses_cinematic_lighting "outro_elite_5" true)
	(object_uses_cinematic_lighting "outro_elite_6" true)
	(object_create_anew "outro_blade_4")
	(object_create_anew "outro_blade_5")
	(objects_attach "outro_elite_5" "right_hand_elite" "outro_blade_4" "")
	(objects_attach "outro_elite_6" "right_hand_elite" "outro_blade_5" "")
	(object_cinematic_lod "outro_elite_5" true)
	(object_cinematic_lod "outro_elite_6" true)
	(object_set_permutation "outro_blade_4" "blade" "default")
	(object_set_permutation "outro_blade_5" "blade" "default")
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_13_mc" false)
	(custom_animation_loop "outro_elite_3" "objects\characters\elite\e3\e3" "e3_out_13_elite_f01" false)
	(custom_animation_loop "outro_elite_4" "objects\characters\elite\e3\e3" "e3_out_13_elite_f02" false)
	(custom_animation_loop "outro_elite_5" "objects\characters\elite\e3\e3" "e3_out_13_elite_b01" false)
	(custom_animation_loop "outro_elite_6" "objects\characters\elite\e3\e3" "e3_out_13_elite_b02" false)
	(cinematic_screen_effect_stop)
	
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_chief_backoff2")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(dig_pp_intro_scene_5_13)
	
	;(camera_set "outro_chief_backoff_3" 0)
	;(camera_pan "outro_chief_backoff_3" "outro_chief_backoff_4" 89 0 1.0 0 1.0)
	(sleep 68)
	(object_destroy_containing "obscuring")
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_outro_miss")
	
	(dig_pp_outro_scene_5_14)
	
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	;(camera_pan "outro_miss_2" "final_shot_1" 90 0 1.0 30 0.0)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_15_mc" true)
	
	(dig_pp_outro_scene_5_15)
	
	(wake flash)
	(sleep 26)
	(object_destroy "outro_smg_1")
	(sleep 18)
	(object_create_anew "outro_grenade")
	(objects_attach "chief" "right_hand" "outro_grenade" "")
	(sleep 6)
	(sound_impulse_start "sound\e3\plasma_powerup" none 1.0)
	(sleep 84)
	;(camera_set "final_shot_2" 15)
	(sleep 15)
	(fade_out 1.0 1.0 1.0 5)
	(sleep 15)
	(sound_class_set_gain "weapon_ready" 1.0 1)
	;(camera_set "the_end" 0)
	(cinematic_screen_effect_stop)
)

(script static void outro
	(sound_class_set_gain ambient_machinery 0 60)
	(outro_scene_1)
	(outro_scene_2)
	(outro_scene_3)
	(outro_scene_4)
	(outro_scene_5)
)

(script dormant outro_trigger
	(sleep_until (volume_test_objects "tv_outro_start" (player0)) 15)
	(outro)
	(outro_logo)
)

(script static void johnson_briefing
	(cinematic_start)
	(camera_control true)
	(object_create_anew "briefing_johnson")
	(object_teleport "briefing_johnson" "johnson_start")
	
	(sound_impulse_predict "sound\temp\sgtjohnson\johnson_speech")
	;(camera_set "johnson_1" 0)
	(sleep 30)

	(fade_in 0.0 0.0 0.0 0)
	
	(object_uses_cinematic_lighting "briefing_johnson" true)
	(cinematic_lighting_set_ambient_light 0 0 0)
	(cinematic_lighting_set_secondary_light 0 0 0 0 0)
	(cinematic_lighting_set_primary_light 0 0 0 0 0)
	
	;;(custom_animation "briefing_johnson" "objects\characters\marine\marine_johnson\marine_johnson" "prologue_speech" false)
	(sleep 20)
	(sound_impulse_start "sound\temp\sgtjohnson\johnson_speech" "johnson" 1.0)
	(sleep 280)
	;(camera_set "johnson_2" 0)
	(sleep (sound_impulse_time "sound\temp\sgtjohnson\johnson_speech"))
	(sleep 15)
	(fade_out 0.0 0.0 0.0 15)
	(sleep 15)
)

(script static void press_briefing_start
	(title_fade)
	(intro)
)

(script static void johnson_briefing_start
	(title_fade)
	(johnson_briefing)
)

(script static void quick_start
	(wake field_hospital_setup)
	(joe_mission_start)
)

(script startup main_cinematics
	(wake outro_trigger)
)

(script startup main_music
	(sleep_until (volume_test_objects "tv_e6_init" (players)) 5)
	(print "music to drive by...")
	(sound_looping_start "sound\e3\music\e3_main_music\e3_main_music" none 1.0)
	(sleep_until (volume_test_objects "tv_outro_start" (players)) 5)
	(sound_looping_stop "sound\e3\music\e3_main_music\e3_main_music")
)

(script static void final_shot
	(cinematic_start)
	(camera_control true)
	(sleep 60)
	(object_create_anew "chief")
	;(camera_set "outro_miss_2" 0)
	;(camera_set "final_shot_1" 60)
	(custom_animation_loop "chief" "objects\characters\masterchief\e3\e3" "e3_out_15_mc" true)
	(wake flash)
	(sleep 26)
	(object_destroy "outro_smg_1")
	(sleep 18)
	(object_create_anew "outro_grenade")
	(objects_attach "chief" "right_hand" "outro_grenade" "")
	(sleep 6)
	(sound_impulse_start "sound\e3\plasma_powerup" none 1.0)
	(sleep 84)
	;(camera_set "final_shot_2" 15)
	(sleep 15)
	(fade_out 1.0 1.0 1.0 5)
	(sleep 15)
)

(script continuous e4_garbage_collecter
	(garbage_collect_now)
	(sleep 150)
)

(script static void e7_531_odst
	(sound_impulse_start "sound\e3\dialog\e3_531_odst" none 1.0)
	(print "odst_ hostiles right!")
)

(script dormant e4_odst_dialog
	(sleep_until (> (ai_living_count "e4_cov_inf4") 0) 5)
	(sleep 100)
	(e7_531_odst)
)

(script static boolean e4_cov_need_more_guys
	(and
		g_e4_cov_grunt_wave_go
		(< (ai_living_count "e4_cov_rush") 4)
	)
)

(script command_script cs_e4_cov_inf_hostiles_right
	(cs_go_to e4_forced_march/hostiles_right)
)

(script command_script cs_e4_cov_inf_car
	(cs_go_to e4_forced_march/car)
	(object_can_take_damage (ai_actors ai_current_actor))
)

(script dormant e4_cov_grunts_behind_car
	(sleep_until (objects_can_see_object (player0) "e4_hostiles_facing_object" 20.0) 5)
	(ai_place "e4_cov_car_grunts0")
	(cs_run_command_script "e4_cov_car_grunts0" cs_e4_cov_inf_car)
	(sleep_until (<= (ai_living_count "e4_cov_car_grunts0") 0) 30 450)
	(sleep 60)
	(set g_e4_bombers_can_come_in true)
)

(script dormant e4_cov_grunt_wave_lite
	(wake e4_garbage_collecter)
	(wake e4_odst_dialog)
	(ai_place "e4_cov_inf0")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf1")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf2")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf3")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf6")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf4")
	(cs_run_command_script "e4_cov_inf4" cs_e4_cov_inf_hostiles_right)
	(wake e4_cov_grunts_behind_car)
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf5")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf7")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf8")
	(sleep_until (e4_cov_need_more_guys))
	(garbage_collect_now)
	(ai_place "e4_cov_inf9")
	(sleep_forever e4_odst_dialog)
)

(script command_script cs_e5_cov_inf_gather
	(cs_force_combat_status 3)
	(cs_go_by e5_retreat/p0 e5_retreat/p1)
)

(script dormant e4_grunt_wave_override
	(sleep_until g_e5_turret_exploded 5)
	(sleep_forever e4_cov_grunt_wave_lite)
	(sleep_forever e4_odst_dialog)
	(ai_migrate "e4_cov_rush" "e5_cov_inf5")
	(ai_set_orders "e5_cov_inf5" "e5_cov_inf5_init")
	(cs_run_command_script "e5_cov_inf5" cs_e5_cov_inf_gather)
	(damage_objects "effects\damage_effects\stun_giant" (ai_actors "e5_cov_inf5"))
)

(script dormant e4_cov_inf10_main
	(sleep_until g_e5_turret_exploded 5)
	(sleep 90)
	(ai_place "e4_cov_inf10")
)

(script static void e4_end
	(sleep_forever e4_garbage_collecter)
	(sleep_forever e4_odst_dialog)
	(sleep_forever e4_cov_grunt_wave_lite)
	(sleep_forever e4_grunt_wave_override)
	(sleep_forever e4_cov_inf10_main)
)

(script static void e3_451_odst
	(sound_impulse_start "sound\e3\dialog\e3_451_odst" (ai_get_object "e1_mars_inf1/odst0") 1.0)
	(print "odst_ grunts down low!")
)

(script static void e5_572_odst
	(sound_impulse_start "sound\e3\dialog\e3_572_odst" (ai_get_object "e1_mars_inf0/odst1") 1.0)
	(print "odst_ let's go! move up!")
)

(script static void e7_590_odst
	(sound_impulse_start "sound\e3\dialog\e3_590_odst" (ai_get_object "e1_mars_inf0/odst1") 1.0)
	(print "odst_ fire in the hole! tell dave!")
)

(script static void e5_591_odst
	(sound_impulse_start "sound\e3\dialog\e3_591_odst" (ai_get_object "e1_mars_inf0/odst1") 1.0)
	(print "odst_ frag and clear!")
)

(script static void e5_592_odst
	(sound_impulse_start "sound\e3\dialog\e3_592_odst" (ai_get_object "e1_mars_inf0/odst1") 1.0)
	(print "odst_ clean it out!")
)

(script static void e7_601_odst
	(sound_impulse_start "sound\e3\dialog\e3_601_odst" (list_get (ai_actors "e7_mars_odst_cameo") 0) 1.0)
	(print "odst_ go, sir! we got your back!")
)

(script static void e7_610_driver
	(sound_impulse_start "sound\e3\dialog\e3_610_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ i could use a gunner, sir!")
)

(script static void e7_620_passenger
	(sound_impulse_start "sound\e3\dialog\e3_620_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ c'mon baby, we're gonna lose 'em!")
)

(script static void e7_630_driver
	(sound_impulse_start "sound\e3\dialog\e3_630_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ take the shot!")
)

(script static void e7_640_passenger
	(sound_impulse_start "sound\e3\dialog\e3_640_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ go around!")
)

(script static void e7_650_passenger
	(sound_impulse_start "sound\e3\dialog\e3_650_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ that's the way, yeah!")
)

(script static void e7_651_passenger
	(sound_impulse_start "sound\e3\dialog\e3_651_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ boom, baby!")
)

(script static void e8_661_driver
	(sound_impulse_start "sound\e3\dialog\e3_661_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ you keeping score?")
)

(script static void e8_662_driver
	(sound_impulse_start "sound\e3\dialog\e3_662_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ that better buff out!")
)

(script static void e8_663_driver
	(sound_impulse_start "sound\e3\dialog\e3_663_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ man, i just washed this thing!")
)

(script static void e8_671_passenger
	(sound_impulse_start "sound\e3\dialog\e3_671_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ that's one!")
)

(script static void e8_672_passenger
	(sound_impulse_start "sound\e3\dialog\e3_672_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ that's two!")
)

(script static void e8_673_passenger
	(sound_impulse_start "sound\e3\dialog\e3_673_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ who's for more!")
)

(script static void e8_680_passenger
	(sound_impulse_start "sound\e3\dialog\e3_680_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ ghosts! making a break for it!")
)

(script static void e8_690_driver
	(sound_impulse_start "sound\e3\dialog\e3_690_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ i got em!")
)

(script static void e8_700_passenger
	(sound_impulse_start "sound\e3\dialog\e3_700_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ you trying to get us killed?")
)

(script static void e8_705_passenger
	(sound_impulse_start "sound\e3\dialog\e3_705_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ you wanna let me drive?")
)

(script static void e8_710_cor
	(sound_impulse_start "sound\e3\dialog\e3_710_cor" none 1.0)
	(print "cortana_ a phantom!")
)

(script static void e8_720_driver
	(sound_impulse_start "sound\e3\dialog\e3_720_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ hang on!")
)

(script static void e9_730_cor
	(sound_impulse_start "sound\e3\dialog\e3_730_cor" none 1.0)
	(print "cortana_ look out!")
)

(script static void e9_740_driver
	(sound_impulse_start "sound\e3\dialog\e3_740_driver" (ai_get_object "e7_mars_warthog0/driver") 1.0)
	(print "driver_ agh!")
)

(script static void e9_750_passenger
	(sound_impulse_start "sound\e3\dialog\e3_750_passenger" (ai_get_object "e7_mars_warthog0/passenger") 1.0)
	(print "passenger_ uhn!")
)

(script static void e10_760_cor
	(sound_impulse_start "sound\e3\dialog\e3_760_cor" none 1.0)
	(print "cortana_ brutes!")
)

(script static void e10_770_cor
	(sound_impulse_start "sound\e3\dialog\e3_770_cor" none 1.0)
	(print "cortana_ ghosts! to your right!")
)

(script static void e10_771_cor
	(sound_impulse_start "sound\e3\dialog\e3_771_cor" none 1.0)
	(print "cortana_ wait for it...")
)

(script static void e10_772_cor
	(sound_impulse_start "sound\e3\dialog\e3_772_cor" none 1.0)
	(print "cortana_ nice!")
)

(script static void e10_780_cor
	(sound_impulse_start "sound\e3\dialog\e3_780_cor" none 1.0)
	(print "cortana_ see if you can draw them off.")
)

(script static void e10_790_cor
	(sound_impulse_start "sound\e3\dialog\e3_790_cor" none 1.0)
	(print "cortana_ the marines won't stand a chance...")
)

(script command_script cs_just_die
	(cs_die 0)
)

(script continuous warthog0_safety_net
	(sleep 5)
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
)
(script continuous host_warthog_safety_net ; DIGSITE COOPERATIVE EDIT
	(sleep 5)
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player1))
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player0))
)
(script continuous offhost_warthog_safety_net ; DIGSITE COOPERATIVE EDIT
	(sleep 5)
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player1))
)

(script dormant outro_init
	(sleep_until (volume_test_objects "tv_outro_start" (players)) 5)
	(garbage_collect_now)
	(if debug
		(print "outro_init"))
	(outro)
)

(script static boolean e10_player_has_boarded
	(= g_e10_player_has_boarded true)
)

(script command_script cs_e10_ghost0_entry
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_face_player true)
	(cs_go_to e10_ghosts_entry/jack_me 1.0)
	(sleep 32000)
)

(script command_script cs_e10_ghost0_jacked
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e10_ghosts_entry/riding1 1.0)
	(cs_go_to e10_ghosts_entry/riding2 0.0)
)

(script command_script cs_e10_ghost1_entry
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_enable_targeting true)
	(cs_shoot true)
	(cs_go_to e10_ghosts_entry/p0 1.0)
	(cs_go_to e10_ghosts_entry/p1 1.0)
	(cs_go_to e10_ghosts_entry/p2 1.0)
	(cs_go_to e10_ghosts_entry/p3 1.0)
)

(script command_script cs_e10_phantom0_entry
	(cs_vehicle_speed 0.6)
	(cs_fly_to_and_face e10_phantom0_entry/p0 e10_phantom0_entry/p1_facing)
	(cs_fly_to_and_face e10_phantom0_entry/p1 e10_phantom0_entry/p1_facing)
	(cs_pause 5.0)
	(vehicle_hover (ai_vehicle_get ai_current_actor) true)
	(sleep_until g_e10_phantom_should_move 5)
	(vehicle_hover (ai_vehicle_get ai_current_actor) false)
	(cs_face true e10_phantom0_entry/p2_facing)
	(cs_fly_to e10_phantom0_entry/p2)
	(cs_pause 5.0)
	(vehicle_hover (ai_vehicle_get ai_current_actor) true)
)

(script command_script cs_e10_phantom0_gunner
	(cs_shoot false)
	(cs_enable_targeting false)
	(sleep_until g_e10_player_has_boarded)
	(sleep 45)
	(ai_magically_see_object ai_current_squad (player0))
)
(script dormant phantom_sight
	(sleep_until g_e10_player_has_boarded)
	(sleep 45)
	(ai_magically_see_object e10_cov_phantom0 (player0))
	(ai_magically_see_object e9_cov_phantom0 (player0))
)
(script dormant e10_jacking_cymbals
	(player_action_test_reset)
	(sleep_until (player_action_test_jump) 2)
	(sleep 25)
	(sound_looping_start "sound\e3\music\brute_cymbal_2\brute_cymbal_2" none 1.0)
)

(script dormant e10_ghost_jacking
	(e10_770_cor)
	
	(dig_moth_9)
	
	(sleep_until (<= (objects_distance_to_object (player0) (ai_vehicle_get "e10_cov_ghosts0/driver0")) 10.0) 1)
	(e10_771_cor)
	(sleep_until (<= (objects_distance_to_object (player0) (ai_vehicle_get "e10_cov_ghosts0/driver0")) 2.5) 1)
	(set g_e10_jacked_ghost_hack (ai_vehicle_get "e10_cov_ghosts0/driver0"))
	(vehicle_load_magic g_e10_jacked_ghost_hack "ghost_b_l" (player0))
	(wake e10_jacking_cymbals)
	(sleep 15)
	(e10_772_cor)
	(cs_run_command_script "e10_cov_ghosts0/driver0" cs_e10_ghost0_jacked)
	(set g_e10_phantom_should_move true)
	(sleep_until (vehicle_test_seat g_e10_jacked_ghost_hack "ghost_d" (player0)) 5)
	(set g_e10_player_has_boarded true)
	
	(dig_moth_10)
	
	(ai_set_blind "e10_cov_phantom0" false)
	(ai_set_blind "e9_cov_phantom0" false)
	(sleep 20)
	(e10_790_cor)
	(sleep 80)
	(e10_780_cor)
)

(script static void e10_setup
	(object_type_predict "objects\vehicles\phantom\phantom")
	(object_type_predict "objects\characters\brute\brute")
	(ai_place "e10_cov_phantom0")
	(ai_place "e10_cov_ghosts0")
	(ai_set_blind "e10_cov_phantom0" true)
	(sleep 5)
	;(vehicle_load_magic e10_phantom0_turret "phantom_g_r" (ai_actors "e10_cov_phantom0/gunner"))
	(object_cannot_take_damage (ai_vehicle_get "e10_cov_ghosts0/driver0"))
	(cs_run_command_script "e10_cov_phantom0/driver" cs_e10_phantom0_entry)
	;(cs_run_command_script "e10_cov_phantom0/gunner" cs_e10_phantom0_gunner)
	(wake phantom_sight)
	(cs_run_command_script "e10_cov_ghosts0/driver0" cs_e10_ghost0_entry)
	(cs_run_command_script "e10_cov_ghosts0/driver1" cs_e10_ghost1_entry)
	(wake e10_ghost_jacking)
)

(script static void e10_cleanup
	(ai_erase "e10_cov")
)

(script dormant e10_init
	(sleep_until (volume_test_objects "tv_e10_init" (players)))
	(sleep_until g_e10_player_killed_two_brutes 5 1350)
	(sleep_until (objects_can_see_object (player0) "e10_triggger_car" 15.0))
	(garbage_collect_now)
	(if debug
		(print "e10_init"))
	(e10_setup)
	(sleep_until (volume_test_objects "tv_outro_start" (players)))
	(sleep 30)
	(e10_cleanup)
)

(script static void e10_test
	(e10_cleanup)
	(sleep 5)
	(e10_setup)
)

(script command_script cs_e9_cov_brute_charge
	(cs_abort_on_damage true)
	(cs_go_to e9_brute_charge/p0)
)

(script command_script cs_e9_cov_brute_charge1
	(cs_abort_on_damage true)
	(cs_go_to e9_brute_charge/p1)
)

(script command_script cs_e9_cov_brute2_left
	(cs_enable_pathfinding_failsafe true)
	(cs_enable_targeting true)
	(cs_shoot true)
	(cs_go_to e9_brute_charge/flank_left)
)

(script command_script cs_e9_cov_brute2_right
	(cs_enable_pathfinding_failsafe true)
	(cs_enable_targeting true)
	(cs_shoot true)
	(cs_go_to e9_brute_charge/flank_right)
)

(script command_script cs_e9_cov_brute2_center
	(cs_enable_pathfinding_failsafe true)
	(cs_enable_targeting true)
	(cs_shoot true)
	(cs_go_to e9_brute_charge/center)
	(sleep 32000)
)

(script command_script cs_e9_cov_brute2_abort
	(cs_crouch false)
)

(script dormant e9_send_in_the_brutes
	(sleep_until (> (ai_living_count "e9_cov_brute_fighting_player") 0))
	(sleep_until (<= (ai_living_count "e9_cov_brute_fighting_player") 0) 5 300)
	(cs_run_command_script "e9_cov_brutes2/brute2" cs_e9_cov_brute_charge)
	(ai_migrate "e9_cov_brutes2/brute2" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	(if (< (ai_living_count "e9_cov_brutes") 4)
		(ai_place "e9_cov_brutes3"))
	(sleep_until (<= (ai_living_count "e9_cov_brute_fighting_player") 0) 5 300)
	(cs_run_command_script "e9_cov_brutes1/brute0" cs_e9_cov_brute_charge1)
	(ai_migrate "e9_cov_brutes1/brute0" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	(if (< (ai_living_count "e9_cov_brutes") 4)
		(ai_place "e9_cov_brutes3"))
	(set g_e10_player_killed_two_brutes true)
	(sleep_until (<= (ai_living_count "e9_cov_brute_fighting_player") 0) 5 300)
	(cs_run_command_script "e9_cov_brutes1/brute1" cs_e9_cov_brute_charge1)
	(ai_migrate "e9_cov_brutes1/brute1" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	(if (< (ai_living_count "e9_cov_brutes") 4)
		(ai_place "e9_cov_brutes3"))
	(sleep_until (<= (ai_living_count "e9_cov_brute_fighting_player") 0) 5 300)
	(cs_run_command_script "e9_cov_brutes2/brute1" cs_e9_cov_brute_charge)
	(ai_migrate "e9_cov_brutes2/brute1" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	(if (< (ai_living_count "e9_cov_brutes") 4)
		(ai_place "e9_cov_brutes3"))
	(sleep_until (<= (ai_living_count "e9_cov_brute_fighting_player") 0) 5 300)
	(cs_run_command_script "e9_cov_brutes2/brute0" cs_e9_cov_brute_charge)
	(ai_migrate "e9_cov_brutes2/brute0" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	(if (< (ai_living_count "e9_cov_brutes") 4)
		(ai_place "e9_cov_brutes3"))
)

(script dormant e9_dialog
	(e9_730_cor)
	(sleep 20)
	(object_create_anew "boarder_brute0")
	(objects_attach (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_b_h" "boarder_brute0" "")
	(custom_animation_loop "boarder_brute0" "objects\characters\brute\brute" "warthog_b_h:idle" false)
	(object_create_anew "boarder_brute1")
	(objects_attach (ai_vehicle_get "e8_mars_warthog1/driver") "warthog_b_h" "boarder_brute1" "")
	(custom_animation_loop "boarder_brute1" "objects\characters\brute\brute" "warthog_b_h:idle" false)
	(object_create_anew "boarder_brute2")
	(objects_attach (ai_vehicle_get "e8_mars_warthog2/driver") "warthog_b_h" "boarder_brute2" "")
	(custom_animation_loop "boarder_brute2" "objects\characters\brute\brute" "warthog_b_h:idle" false)
	(sleep 8)
	(e9_740_driver)
	(cs_run_command_script "e7_mars_warthog0/passenger" cs_just_die)
	(cs_run_command_script "e8_mars_warthog1/gunner" cs_just_die)
	(sleep 10)
	(e9_750_passenger)
)

(script command_script cs_e9_brute_driver_melee
	; Hit on frame 29
	(cs_custom_animation "objects\characters\brute\brute_e3_hack\brute_e3_hack" "warthog_b_h:melee:var0" 1.0 true)
)

(script command_script cs_e9_brute_passenger_melee
	; Hit on frame 18
	(cs_custom_animation "objects\characters\brute\brute_e3_hack\brute_e3_hack" "warthog_b_h:melee:var1" 1.0 true)
)

(script dormant e9_brutes0_0_phantom_enter
	(custom_animation_loop (ai_get_unit e9_cov_brutes0/brute0) "objects\characters\brute\brute" "combat:unarmed:idle" true)
	(objects_attach e9_phantom0 "phantom_passenger_l01" (ai_get_unit e9_cov_brutes0/brute0) "")
)
(script dormant e9_brutes0_0_phantom_exit
	(objects_detach e9_phantom0 (ai_get_unit e9_cov_brutes0/brute0))
	(unit_stop_custom_animation (ai_get_unit e9_cov_brutes0/brute0))
)
(script dormant e9_brutes0_main
	(sleep 190)
	(sleep_forever warthog0_safety_net)
	(sleep_forever host_warthog_safety_net)
	(sleep_forever offhost_warthog_safety_net)
	(object_destroy_containing "e9_scenery_pb")
	(ai_place "e9_cov_brutes0")
	(object_cannot_take_damage (ai_actors "e9_cov_brutes0"))
	(wake e9_brutes0_0_phantom_enter)
	(object_set_shadowless (ai_get_object "e9_cov_brutes0/brute0") true)
	(sleep_until (volume_test_objects "tv_e9_warthog0_jackable" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(unit_exit_vehicle (ai_get_unit e9_cov_brutes0/brute0))
	(wake e9_brutes0_0_phantom_exit)
	(sleep_until (not (vehicle_test_seat_list "e9_phantom0" "phantom_p_r05" (ai_actors "e9_cov_brutes0/brute0"))) 2)
	(e9_730_cor)
	(sleep 10)
	(vehicle_load_magic (ai_vehicle_get e7_mars_warthog0/driver) "warthog_b_h" (ai_actors e9_cov_brutes0/brute0))
	(sound_looping_start "sound\e3\music\brute_cymbal_1\brute_cymbal_1" none 1.0)
	(object_set_shadowless (ai_get_object "e9_cov_brutes0/brute0") false)
	(sleep 10)
	(unit_set_prefer_tight_camera_track (ai_vehicle_get "e7_mars_warthog0/driver") true)
	(sleep 20)
	(cs_run_command_script e9_cov_brutes0/brute0 cs_e9_brute_passenger_melee)
	(sleep 18)
	(e9_750_passenger)
	(unit_exit_vehicle (ai_get_unit "e7_mars_warthog0/passenger") 2)
	(unit_kill_silent (ai_get_unit "e7_mars_warthog0/passenger"))
	(sleep_until (volume_test_objects "tv_e9_warthog0_end" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	;(object_type_predict "objects\weapons\rifle\battle_rifle\battle_rifle")
	;(object_type_predict "objects\weapons\rifle\smg_dual\smg_dual")
	;(object_type_predict "objects\charaters\masterchief\fp\fp")
	(cs_run_command_script e9_cov_brutes0/brute0 cs_e9_brute_driver_melee)
	(sleep 10)
	(if (not (game_is_cooperative ))
	(unit_exit_vehicle (unit (player0)))) ; DIGSITE COOPERATIVE EDIT
	(if (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player1))(unit_exit_vehicle (unit (player1)))(unit_exit_vehicle (unit (player0)))) ; DIGSITE COOPERATIVE EDIT
	(sleep 19)
	(e9_740_driver)
	(unit_exit_vehicle (ai_get_unit "e7_mars_warthog0/driver") 2)
	(unit_kill_silent (ai_get_unit "e7_mars_warthog0/driver"))
	(object_can_take_damage (ai_actors "e9_cov_brutes0"))
	(sleep 70)
	(unit_exit_vehicle (ai_get_unit e9_cov_brutes0/brute0))
	(ai_migrate "e9_cov_brutes0/brute0" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
	
	(dig_moth_8)
)

(script dormant e9_brutes1_main_dig_contig
	(sleep 300)
	(vehicle_unload (ai_vehicle_get "e8_mars_warthog1/driver") "warthog_b_h")
)

(script dormant e9_brutes1_main
    (sleep_until (volume_test_objects "tv_e9_warthog0_jackable" (ai_vehicle_get "e8_mars_warthog1/driver")) 5)
    (ai_place "e9_cov_brutes1")
    (sleep 5)
    (vehicle_load_magic (ai_vehicle_get "e8_mars_warthog1/driver") "warthog_b_h" (ai_actors "e9_cov_brutes1/brute0"))
    (wake e9_brutes1_main_dig_contig)
    (sleep_until (volume_test_objects "tv_e9_warthog1_end" (ai_vehicle_get "e8_mars_warthog1/driver")) 5 300)
    (unit_exit_vehicle (ai_get_unit "e9_cov_brutes1/brute0"))
    (sleep 5)
    (unit_exit_vehicle (ai_get_unit "e9_cov_brutes1/brute0"))
    (ai_kill "e8_mars_warthog1")
)

(script dormant e9_brutes2_0_phantom_enter
	(custom_animation_loop global_brute2_0 "objects\characters\brute\brute" "combat:unarmed:idle" true)
	(objects_attach e9_phantom0 "phantom_passenger_l05" global_brute2_0 "")
)

(script dormant e9_brutes2_0_hood_enter
	(custom_animation_loop global_brute2_0 "objects\characters\brute\brute" "warthog_b_h:enter" true)
	(objects_attach global_warthog2 "warthog_b_h" global_brute2_0 "")
	(sleep (unit_get_custom_animation_time global_brute2_0))
	(custom_animation_loop global_brute2_0 "objects\characters\brute\brute" "warthog_b_h:idle" true)
)

(script dormant e9_brutes2_0_driver_melee
	(custom_animation_loop global_brute2_0 "objects\characters\brute\brute" "warthog_b_h:melee:var0" true)
	(sleep (unit_get_custom_animation_time global_brute2_0))
	(custom_animation_loop global_brute2_0 "objects\characters\brute\brute" "warthog_b_h:idle" true)
)

(script dormant e9_brutes2_0_hood_exit
	(custom_animation global_brute2_0 "objects\characters\brute\brute" "warthog_b_h:exit" true)
	(sleep (unit_get_custom_animation_time global_brute2_0))
	(unit_stop_custom_animation global_brute2_0)
	(objects_detach global_warthog2 global_brute2_0)
)
(script dormant brute_mover
	(sleep 30)
	(cs_run_command_script e9_cov_brutes2/brute1 cs_e9_cov_brute2_left)
	(cs_run_command_script e9_cov_brutes2/brute2 cs_e9_cov_brute2_right)
)
(script dormant e9_brutes2_main
	; Place the brutes, make them invincible
	(ai_place e9_cov_brutes2)
	(object_cannot_take_damage (ai_actors e9_cov_brutes2/brute0))
	(object_cannot_take_damage (ai_actors e9_cov_brutes2/brute1))
	(object_cannot_take_damage (ai_actors e9_cov_brutes2/brute2))
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute0) true)
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute1) true)
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute2) true)
	(sleep 5)

	; Load them
	(vehicle_load_magic e9_phantom0 "phantom_p_l06" (ai_actors e9_cov_brutes2/brute1))
	(vehicle_load_magic e9_phantom0 "phantom_p_r06" (ai_actors e9_cov_brutes2/brute2))
	(object_set_shadowless (ai_get_object e9_cov_brutes2/brute1) true)
	(object_set_shadowless (ai_get_object e9_cov_brutes2/brute2) true)

	; Wait for the dropship to arrive
	(sleep 200)

	; PVS hack
	(pvs_clear)

	; Load the third brute
	(vehicle_load_magic e9_phantom0 "phantom_p_l05" (ai_actors e9_cov_brutes2/brute0))

	; Drop the first two brutes, wait a sec, and drop the next
	(vehicle_unload (ai_vehicle_get e9_cov_phantom0/driver) phantom_p_l06)
	(vehicle_unload (ai_vehicle_get e9_cov_phantom0/driver) phantom_p_r06)

	; Send the two Brutes to the sides
	(wake brute_mover)

	; Drop the boarder
	(sleep 8)
	(vehicle_unload (ai_vehicle_get e9_cov_phantom0/driver) phantom_p_l05)
	(cs_run_command_script e9_cov_brutes2/brute0 cs_e9_cov_brute2_center)

	; Restore shadows
	(object_set_shadowless (ai_get_object e9_cov_brutes2/brute1) false)
	(object_set_shadowless (ai_get_object e9_cov_brutes2/brute2) false)

	; Dialog
	(sleep 20)
	(e10_760_COR)	; Brutes!

	; Sleep until close, board vehicle
	(sleep_until
		(<= (objects_distance_to_object (ai_actors e9_cov_brutes2/brute0) (ai_vehicle_get e8_mars_warthog2/driver)) 2)
		1
	)

	; Abort all command scripts
	(cs_run_command_script e9_cov_brutes2/brute0 cs_e9_cov_brute2_abort)

	; Load him, make him vulnerable
	(vehicle_load_magic (ai_vehicle_get e8_mars_warthog2/driver) "warthog_b_h" (ai_actors e9_cov_brutes2/brute0))
	(object_can_take_damage (ai_actors e9_cov_brutes2/brute0))
	(object_can_take_damage (ai_actors e9_cov_brutes2/brute1))
	(object_can_take_damage (ai_actors e9_cov_brutes2/brute2))
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute0) false)
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute1) false)
	(object_cinematic_collision (ai_get_object e9_cov_brutes2/brute2) false)

	; Kill the gunner
	(sleep 10)
	(ai_kill e8_mars_warthog2/gunner)

	; Wait until arrival, then kill the driver
	(sleep_until (volume_test_objects tv_e9_warthog2_dies (ai_vehicle_get e8_mars_warthog2/driver)) 5)

	; Swing, and connect
	(cs_run_command_script e9_cov_brutes2/brute0 cs_e9_brute_driver_melee)
	(sleep 29)	; 29 ticks till he connect
	(unit_exit_vehicle (ai_get_unit e8_mars_warthog2/driver) 2)
	(unit_kill_silent (ai_get_unit e8_mars_warthog2/driver))

	; Wait a moment, then exit
	(sleep 15)
	(unit_exit_vehicle (ai_get_unit e9_cov_brutes2/brute0))
)

(script dormant e9_cov_phantom_overflight
	(pvs_set_object "e9_pvs_hack")
	(ai_place "e9_cov_phantom0")
	(object_create_anew "e9_phantom0")
	(object_cannot_take_damage "e9_phantom0")
	(vehicle_hover "e9_phantom0" true)
	(ai_set_blind "e9_cov_phantom0" true)
	(sleep 5)
	(vehicle_load_magic "e9_phantom0" "phantom_d" (ai_actors "e9_cov_phantom0/driver"))
	(vehicle_load_magic "e9_phantom0" "phantom_g_r" (ai_actors "e9_cov_phantom0/gunner"))
	(custom_animation_relative "e9_phantom0" "objects\vehicles\phantom\e3\e3" "phantom02pass" false f_intro_anchor_5)
	;;(vehicle_engine_hack "e9_phantom0" true 1.0)
	(cs_run_command_script "e9_cov_phantom0/gunner" cs_e10_phantom0_gunner)
	(sleep 360)
	;;(vehicle_engine_hack "e9_phantom0" true 0.25)
)

(script static void e9_cleanup
	(ai_erase "e9_cov")
	(object_destroy "e9_phantom0")
)

(script dormant e9_init
	(sleep_until (volume_test_objects "tv_e9_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(if debug
		(print "e9_init"))
	(object_can_take_damage (ai_actors "e7_mars_warthog0"))
	(object_can_take_damage (ai_vehicle_get "e7_mars_warthog0/driver"))
	(unit_impervious (ai_vehicle_get "e7_mars_warthog0/driver") false)
	(wake e9_send_in_the_brutes)
	(wake e9_cov_phantom_overflight)
	(wake e9_brutes0_main)
	(wake e9_brutes1_main)
	(wake e9_brutes2_main)
	(sleep_until (volume_test_objects "tv_outro_start" (players)))
	(sleep 30)
	(e9_cleanup)
)

(script command_script cs_e8_warthog0_start
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e8_warthog0_rail_start/p0 e8_warthog0_rail_start/p0_facing)
	(cs_go_to e8_warthog0_rail_start/p1 1.0)
	(cs_go_to_and_face e8_warthog0_rail_start/p2 e8_warthog0_rail_start/p3)
	(cs_go_to e8_warthog0_rail_start/p3 1.0)
	(cs_pause 32000.0)
)

(script command_script cs_e8_warthog0_cont
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e8_warthog0_rail_cont/p0 e8_warthog0_rail_cont/p0_facing)
	(e8_705_passenger)
	(cs_go_to_and_face e8_warthog0_rail_cont/p1 e8_warthog0_rail_cont/p1_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p2 e8_warthog0_rail_cont/p2_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p3 e8_warthog0_rail_cont/p3_facing)
	;(cs_go_to_and_face e8_warthog0_rail_cont/p4 e8_warthog0_rail_cont/p4_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p5 e8_warthog0_rail_cont/p6)
	(cs_go_to_and_face e8_warthog0_rail_cont/p7 e8_warthogs_to_brutes/p0)
	(cs_go_to_and_face e8_warthogs_to_brutes/p0 e8_warthogs_to_brutes/p0_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p1 e8_warthogs_to_brutes/p2)
	(cs_go_to_and_face e8_warthogs_to_brutes/p2 e8_warthogs_to_brutes/p3)
	(cs_go_to_and_face e8_warthogs_to_brutes/p3 e8_warthogs_to_brutes/p4)
	(cs_go_to_and_face e8_warthogs_to_brutes/p4 e8_warthogs_to_brutes/p4_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p5 e8_warthogs_to_brutes/p6)
	(cs_go_to e8_warthogs_to_brutes/p6 1.0)
)

(script command_script cs_e8_warthog0_end
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_warthog_finales/player_0 1.0)
	(cs_go_to e8_warthog_finales/player_1 1.0)
	(cs_go_to e8_warthog_finales/player_2 1.0)
)

(script command_script cs_e8_warthog1_start
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_vehicle_speed_instantaneous 8.0)
	(cs_go_to e8_warthog1_rail_start/hack 1.0)
	(cs_vehicle_speed 1.0)
	(cs_go_to_and_face e8_warthog1_rail_start/p0 e8_warthog1_rail_start/p1)
	(cs_go_to e8_warthog1_rail_start/p1_1 0.5)
	(cs_go_to_and_face e8_warthog1_rail_start/p2 e8_warthog1_rail_start/p3)
	(cs_go_to e8_warthog1_rail_start/p3 0.0)
	(cs_pause 32000.0)
)

(script command_script cs_e8_warthog1_cont
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_teleport e8_warthog1_rail_cont/p0 e8_warthog1_rail_cont/p0_facing)
	(cs_vehicle_speed_instantaneous 2.0)
	(cs_go_to e8_warthog1_rail_cont/hack 1.0)
	(cs_vehicle_speed 1.0)
	(cs_go_to_and_face e8_warthog1_rail_cont/p1 e8_warthog1_rail_cont/p1_facing)
	(cs_pause 3.0)
	(vehicle_hover (ai_vehicle_get ai_current_actor) true)
)

(script command_script cs_e8_warthog1_end
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 1.75)
	(object_can_take_damage (ai_actors ai_current_actor))
	(object_can_take_damage (ai_vehicle_get ai_current_actor))
	(cs_go_to_and_face e8_warthog_finales/warthog1_1 e8_warthog_finales/warthog1_2)
	(cs_go_to_and_face e8_warthog_finales/warthog1_2 e8_warthog_finales/warthog1_3)
	(cs_go_to e8_warthog_finales/warthog1_3 1.0)
	(cs_go_to e8_warthog_finales/warthog1_4 1.0)
)

(script command_script cs_e8_warthog2_start
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_vehicle_speed_instantaneous 8.0)
	(cs_go_to e8_warthog2_rail_start/hack 1.0)
	(cs_vehicle_speed 1.0)
	(cs_go_to_and_face e8_warthog2_rail_start/p0 e8_warthog2_rail_start/p0_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p0 e8_warthogs_to_brutes/p0_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p1 e8_warthogs_to_brutes/p2)
	(cs_go_to_and_face e8_warthogs_to_brutes/p2 e8_warthogs_to_brutes/p3)
	(cs_go_to_and_face e8_warthogs_to_brutes/p3 e8_warthogs_to_brutes/p4)
	(cs_go_to_and_face e8_warthogs_to_brutes/p4 e8_warthogs_to_brutes/p4_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p5 e8_warthogs_to_brutes/p6)
	(cs_go_to e8_warthogs_to_brutes/p6 1.0)
)

(script command_script cs_e8_warthog2_end
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(object_can_take_damage (ai_actors ai_current_actor))
	(object_can_take_damage (ai_vehicle_get ai_current_actor))
	(cs_go_to e8_warthog_finales/warthog2_0 1.0)
	(cs_go_to e8_warthog_finales/warthog2_1 1.0)
)

(script command_script cs_e8_phantom_overflight
	(cs_enable_looking false)
	(cs_fly_by e8_phantom_overflight/p1)
	(cs_fly_to e8_phantom_overflight/p2)
	(cs_look true e8_phantom_overflight/p0)
	(cs_pause 32000.0)
)

(script command_script cs_e8_cov_creep0_rail
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_cov_creep0/p0 1.0)
	(cs_go_to e8_cov_creep0/p1 1.0)
	(cs_go_to e8_cov_creep0/p2 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost0_rail
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_ghost0_rail/p0 1.0)
	(cs_go_to e8_ghost0_rail/p6 1.0)
	(cs_enable_targeting true)
	(cs_shoot true)
	(sleep 60)
	(ai_erase ai_current_actor)
)

(script command_script cs_e8_ghost1_rail
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_ghost1_rail/p0 1.0)
	(cs_go_to e8_ghost1_rail/p1 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost2_rail
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_ghost2_rail/p0 1.0)
	(cs_go_to e8_ghost2_rail/p1 1.0)
	(cs_go_to e8_ghost2_rail/p3 1.0)
	(cs_go_to e8_ghost2_rail/p4 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost3_rail
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_ghost2_rail/p0 1.0)
	(cs_go_to e8_ghost2_rail/p1 1.0)
	(cs_go_to e8_ghost2_rail/p3 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost4_rail
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_pathfinding_failsafe true)
	(cs_shoot true)
	(cs_go_to e8_ghost3_rail/p0 1.0)
	(cs_go_to e8_ghost3_rail/p1_dig 1.0)
	(cs_shoot true (ai_vehicle_get "e7_mars_warthog0/driver"))
	(cs_go_to e8_ghost3_rail/p1 1.0)
	(cs_shoot false (ai_vehicle_get "e7_mars_warthog0/driver"))
	(cs_go_to e8_ghost3_rail/p2 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost5_rail
	(cs_vehicle_speed 0.55) ; DIGSITE SPEED HACK
	(cs_enable_looking false)
	(cs_enable_targeting false)
	(cs_enable_pathfinding_failsafe true)
	(cs_shoot true)
	(cs_go_to e8_ghost3_rail/p3 1.0)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_go_to e8_ghost3_rail/p4 1.0)
	(cs_go_to e8_ghost3_rail/p5 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost6_rail
	(cs_ignore_obstacles true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_pathfinding_failsafe true)
	(cs_shoot true)
	(cs_vehicle_speed_instantaneous 8.0)
	(cs_go_to_and_face e8_ghost4_rails/p0 e8_ghost4_rails/p1)
	(cs_go_to_and_face e8_ghost4_rails/p1 e8_ghost4_rails/p1_1)
	(cs_go_to_and_face e8_ghost4_rails/p1_1 e8_ghost4_rails/p2)
	(cs_go_to e8_ghost4_rails/p2 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_ghost7_rail
	(cs_ignore_obstacles true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_pathfinding_failsafe true)
	(cs_shoot true)
	(cs_vehicle_speed_instantaneous 8.0)
	(cs_go_to e8_ghost4_rails/p3 1.0)
	(cs_go_to e8_ghost4_rails/p4 1.0)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e8_cov_inf0_flee
	(cs_set_style retreating)
	(cs_go_to e8_roadkill/p0)
	(cs_go_to e8_roadkill/p1)
	(ai_erase ai_current_actor)
)

(script command_script cs_e8_phantom_shoot
	(cs_force_combat_status 4)
	(cs_enable_targeting true)
	(cs_shoot false)
	(sleep 30)
	(cs_shoot true (ai_vehicle_get "e8_mars_warthog2/driver"))
	(sleep 300)
)

(script dormant e8_mars_warthog0_dialog0
	(sleep_until (> (ai_living_count "e8_cov_inf0") 0))
	(sleep_until (volume_test_objects "tv_e8_cov_inf0_flee" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(sleep 40)
	(e8_662_driver)
	(sleep 40)
	(sleep_until (volume_test_objects "tv_e8_ghosts_emerged" (ai_vehicle_get "e8_cov_ghosts0/driver0")) 5)
	(sleep 10)
	(e8_680_passenger)
	(sleep 50)
	(e8_690_driver)
)

(script dormant e8_mars_warthog0_dialog1
	(sleep_until (> (ai_living_count "e8_cov_creep0/driver") 0) 5)
	(sleep_until (<= (ai_living_count "e8_cov_creep0/driver") 0) 5)
	(sleep 20)
	(e8_661_driver)
	(sleep_until (> (ai_living_count "e8_cov_ghosts1") 0) 5)
	(sleep_until (<= (ai_living_count "e8_cov_ghosts1") 1) 5)
	(sleep 15)
	(e8_671_passenger)
	(sleep_until (<= (ai_living_count "e8_cov_ghosts1") 0) 5)
	(sleep 15)
	(e8_672_passenger)
	(sleep_until (> (ai_living_count "e8_cov_ghosts3") 0) 5)
	(sleep 45)
	(e8_673_passenger)
	(object_type_predict "objects\vehicles\phantom\phantom")
)

(script dormant e8_mars_warthog0_main
	(set g_e8_warthog0_kills (vehicle_count_bipeds_killed (ai_vehicle_get "e7_mars_warthog0/driver")))
	(cs_queue_command_script "e7_mars_warthog0/driver" cs_e8_warthog0_start)
	(garbage_collect_now)
	(sleep_until (volume_test_objects "tv_e8_warthog0_should_cont" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(sleep 30)
	(cs_run_command_script "e7_mars_warthog0/driver" cs_e8_warthog0_cont)
	(cs_queue_command_script "e7_mars_warthog0/driver" cs_e8_warthog0_end)
)

(script dormant e8_mars_warthog1_main
	(sleep_until (volume_test_objects "tv_e8_warthog1_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(pvs_set_object "e9_pvs_hack")
	(ai_place "e8_mars_warthog1")
	(sleep 30)
	(object_cannot_take_damage (ai_actors "e8_mars_warthog1"))
	(object_cannot_take_damage (ai_vehicle_get "e8_mars_warthog1/driver"))
	(unit_impervious (ai_vehicle_get "e8_mars_warthog1/driver") true)
	(cs_run_command_script "e8_mars_warthog1/driver" cs_e8_warthog1_start)
	(sleep_until (volume_test_objects "tv_e8_ghosts1_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	;(object_create_anew "triage_tent_1")
	;(object_create_anew "triage_tent_2")
	(pvs_clear)
	(sleep 88)
	(cs_run_command_script "e8_mars_warthog1/driver" cs_e8_warthog1_cont)
	(sleep_until (volume_test_objects "tv_e8_warthog1_return" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(object_teleport (ai_vehicle_get "e8_mars_warthog1/driver") "e8_warthog1_teleport")
	(vehicle_hover (ai_vehicle_get "e8_mars_warthog1/driver") false)
	(sleep 3)
	(cs_run_command_script "e8_mars_warthog1/driver" cs_e8_warthog1_end)
)

(script dormant e8_mars_warthog2_main
	(sleep_until (volume_test_objects "tv_e8_warthog2_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(ai_place "e8_mars_warthog2")
	(sleep 30)
	(object_cannot_take_damage (ai_actors "e8_mars_warthog2"))
	(object_cannot_take_damage (ai_vehicle_get "e8_mars_warthog2/driver"))
	(unit_impervious (ai_vehicle_get "e8_mars_warthog2/driver") true)
	(cs_run_command_script "e8_mars_warthog2/driver" cs_e8_warthog2_start)
	(cs_queue_command_script "e8_mars_warthog2/driver" cs_e8_warthog2_end)
)

(script dormant e8_cov_ghosts4_init
	(sleep_until (volume_test_objects "tv_e8_ghosts4_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(ai_place "e8_cov_ghosts4")
	(sleep 30)
	(cs_run_command_script "e8_cov_ghosts4/driver0" cs_e8_ghost6_rail)
	(cs_run_command_script "e8_cov_ghosts4/driver2" cs_e8_ghost7_rail)
)

(script dormant e8_cov_ghosts3_init
	(sleep_until (volume_test_objects "tv_e8_ghosts3_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(ai_place "e8_cov_ghosts3")
	(cs_run_command_script "e8_cov_ghosts3/driver0" cs_e8_ghost4_rail)
	(cs_run_command_script "e8_cov_ghosts3/driver1" cs_e8_ghost5_rail)
)

(script dormant e8_cov_ghosts1_init
	(sleep_until (volume_test_objects "tv_e8_ghosts1_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	;(ai_place "e8_cov_ghosts1")
	(sleep 15);DIGSITE HACK stalling ai_kill e8_mars_warthog1 gunner
	(ai_braindead "e8_cov_ghosts1" false);DIGSITE HACK give them IQ
	(cs_run_command_script "e8_cov_ghosts1/driver0" cs_e8_ghost2_rail)
	(cs_run_command_script "e8_cov_ghosts1/driver1" cs_e8_ghost3_rail)
)

(script dormant e8_cov_ghosts0_init
	(sleep_until (volume_test_objects "tv_e8_ghosts0_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(ai_place "e8_cov_ghosts0")
	(sleep 5)
	(object_set_velocity (ai_vehicle_get "e8_cov_ghosts0/driver0") 10.0 0.0 1.0)
	(object_set_velocity (ai_vehicle_get "e8_cov_ghosts0/driver1") 10.0 0.0 1.0)
	(cs_run_command_script "e8_cov_ghosts0/driver0" cs_e8_ghost0_rail)
	(cs_run_command_script "e8_cov_ghosts0/driver1" cs_e8_ghost1_rail)
)

(script dormant e8_cov_creep0_init
	(sleep_until (volume_test_objects "tv_e8_creep0_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(ai_place "e8_cov_ghosts1");DIGSITE HACK spawning these ghosts here to preinitialize their hover
	(object_destroy_containing "e8_scenery_pc")
	(ai_erase "e8_cov_inf0")
	(ai_erase "e8_cov_inf1")
	(object_type_predict "objects\vehicles\creep\creep")
	(object_type_predict "objects\vehicles\warthog\warthog")
	(camera_predict_resources_at_point "mission_predict_1")
	(ai_place "e8_cov_creep0")
	(sleep 5)
	(object_set_velocity (ai_vehicle_get "e8_cov_creep0/driver") 5.0 0.0 1.0)
	(cs_run_command_script "e8_cov_creep0/driver" cs_e8_cov_creep0_rail)
)

(script dormant e8_cov_inf_init
	(sleep_until (volume_test_objects "tv_e8_cov_inf_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(object_type_predict "objects\vehicles\ghost\ghost")
	(ai_place "e8_cov_inf0")
	(ai_place "e8_cov_inf1")
	(cs_run_command_script "e8_cov_inf0" cs_e8_cov_inf0_flee)
	(sleep_until (< (ai_strength "e8_cov_inf1") 0.5) 5)
	(cs_run_command_script "e8_cov_inf1" cs_e8_cov_inf0_flee)
)

(script dormant e8_cov_phantom_overflight
	(sleep_until (volume_test_objects "tv_e8_phantom_overflight" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(garbage_collect_now)
	(object_destroy "triage_tent_1")
	(object_destroy "triage_tent_2")
	(object_destroy_containing "e8_scenery_corpse")
	(object_create_anew "e8_phantom0")
	(object_create_anew "e8_cov_phantom_turret")
	(object_cannot_take_damage "e8_phantom0")
	(ai_place "e8_cov_phantom0")
	(object_cannot_take_damage (ai_actors "e8_cov_phantom0"))
	(sleep 2)
	(vehicle_load_magic "e8_phantom0" "phantom_d" (ai_actors "e8_cov_phantom0/driver"))
	(vehicle_load_magic "e8_cov_phantom_turret" "phantom_g_r" (ai_actors "e8_cov_phantom0/gunner"))
	(custom_animation_relative "e8_phantom0" "objects\vehicles\phantom\e3\e3" "phantom01pass" false f_intro_anchor_5)
	(scenery_animation_start_relative "e8_cov_phantom_turret" "objects\vehicles\phantom\e3\e3" "phantom01pass" f_intro_anchor_5)
	;;(vehicle_engine_hack "e8_phantom0" true 1.0)
	(ai_magically_see "e8_cov_phantom0" "e8_mars_warthog2")
	(cs_run_command_script "e8_cov_phantom0/gunner" cs_e8_phantom_shoot)
	(sleep 70)
	(e8_710_cor)
	(sleep 30)
	(e8_720_driver)
	(sleep_until (volume_test_objects "tv_e8_phantom0_cleanup" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(ai_erase "e8_cov_phantom0")
	(object_destroy "e8_phantom0")
	(object_destroy "e8_cov_phantom_turret")
)

(script static void e8_end
	(sleep_forever e8_cov_inf_init)
	(sleep_forever e8_cov_ghosts0_init)
	(sleep_forever e8_cov_ghosts1_init)
	(sleep_forever e8_cov_ghosts3_init)
	(sleep_forever e8_cov_ghosts4_init)
	(sleep_forever e8_cov_creep0_init)
	(sleep_forever e8_mars_warthog0_main)
	(sleep_forever e8_mars_warthog1_main)
	(sleep_forever e8_mars_warthog2_main)
	(sleep_forever e8_mars_warthog0_dialog0)
	(sleep_forever e8_mars_warthog0_dialog1)
	(sleep_forever e8_cov_phantom_overflight)
)

(script static void e8_cleanup
	(e8_end)
	(ai_erase "e8_cov")
	(ai_erase "e8_mars")
)

(script dormant e8_init
	(sleep_until (volume_test_objects "tv_e8_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(if debug
		(print "e8_init"))
	(object_create_anew_containing "e8_scenery")
	(wake e8_cov_inf_init)
	(wake e8_mars_warthog0_dialog0)
	(wake e8_mars_warthog0_main)
	(wake e8_mars_warthog1_main)
	(sleep 6)
	(wake e8_mars_warthog0_dialog1)
	(wake e8_cov_ghosts0_init)
	(wake e8_cov_ghosts1_init)
	(wake e8_cov_creep0_init)
	(wake e8_cov_ghosts4_init)
	(sleep 6)
	(wake e8_mars_warthog2_main)
	(wake e8_cov_ghosts3_init)
	(wake e8_cov_phantom_overflight)
	(sleep_until (volume_test_objects "tv_e8_cleanup" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(object_destroy_containing "e8_scenery")
)

(script static void e8_test
	(ai_place "e7_mars_warthog0")
	(sleep 5)
	(object_teleport (ai_vehicle_get "e7_mars_warthog0/driver") "e8_test_allies")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
	(wake e8_init)
	(wake e9_init)
	(wake e10_init)
)

(script dormant e9_test
	(ai_place "e7_mars_warthog0")
	(ai_place "e8_mars_warthog1")
	(ai_place "e8_mars_warthog2")
	(sleep 5)
	(object_teleport (ai_vehicle_get "e7_mars_warthog0/driver") "e9_test_warthog0")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
	(object_teleport (ai_vehicle_get "e8_mars_warthog1/driver") "e9_test_warthog1")
	(object_teleport (ai_vehicle_get "e8_mars_warthog2/driver") "e9_test_warthog2")
	(cs_run_command_script "e7_mars_warthog0/driver" cs_e8_warthog0_end)
	(cs_run_command_script "e8_mars_warthog1/driver" cs_e8_warthog1_end)
	(cs_run_command_script "e8_mars_warthog2/driver" cs_e8_warthog2_end)
)

(script command_script cs_e7_warthog0_entry
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e7_warthog0/entry0 e7_warthog0/entry1)
	(cs_go_to_and_face e7_warthog0/entry1 e7_warthog0/entry2)
	(cs_go_to_and_face e7_warthog0/entry2 e7_warthog0/entry3)
	(set e7_warthog0_could_use_gunner true)
	(cs_pause 32000.0)
)

(script command_script cs_e7_warthog0_pursuit0
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e7_warthog0/pursuit0 0.5)
	(cs_pause 32000.0)
)

(script command_script cs_e7_warthog0_pursuit1
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e7_warthog0/pursuit1 e7_warthog0/pursuit1_1)
	(cs_go_to_and_face e7_warthog0/pursuit2 e7_warthog0/pursuit3)
	(cs_go_by e7_warthog0/pursuit3 e7_warthog0/pursuit4 0.75)
	(cs_go_to_and_face e7_warthog0/pursuit4 e7_warthog0/pursuit5)
	(cs_go_by e7_warthog0/pursuit4_1 e7_warthog0/pursuit5 1.0)
	(cs_go_by e7_warthog0/pursuit5 e7_warthog0/pursuit6 1.0)
	(cs_go_to_and_face e7_warthog0/pursuit6 e7_warthog0/pursuit8)
	(cs_go_to_and_face e7_warthog0/pursuit9 e7_warthog0/pursuit10)
	(cs_pause 2.0)
)
(script command_script cs_e7_warthog1_entry
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e7_warthog1/entry0_1 e7_warthog1/entry0)
	(cs_go_to_and_face e7_warthog1/entry0 e7_warthog1/entry1)
	(cs_go_to_and_face e7_warthog1/entry1 e7_warthog1/pursuit0)
	(cs_pause 32000.0)
)

(script command_script cs_e7_warthog1_pursuit0
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e7_warthog1/pursuit0 0.2)
	(cs_pause 32000.0)
)

(script command_script cs_e7_warthog1_pursuit1
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e7_warthog1/pursuit1 0.75)
	(cs_go_to e7_warthog1/pursuit1_1 1.0)
	(cs_go_to e7_warthog1/pursuit4 1.0)
	(cs_go_to e7_warthog1/pursuit5 1.0)
	(cs_go_to e7_warthog1/pursuit6 0.2)
	(cs_go_to e7_warthog1/pursuit7 0.0)
	(cs_pause 32000.0)
)

(script command_script cs_e7_mars_odst_cameo
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_601" 0.0 true)
	(cs_pause 15.0)
	(ai_erase ai_current_actor)
)

(script command_script cs_e7_neuter_passenger
	(cs_shoot false)
	(sleep 32000)
)

(script dormant e7_odst_cameo
	(ai_place "e7_mars_odst_cameo")
	(sleep 60)
	(cs_run_command_script "e7_mars_odst_cameo" cs_e7_mars_odst_cameo)
	(e7_601_odst)
)

(script dormant e7_warthog0_dialog
	(sleep_until e7_warthog0_could_use_gunner 5)
	
	(dig_moth_6)
	
	(e7_610_driver)
	(object_type_predict_high "objects\characters\masterchief\masterchief")
	(wake e7_odst_cameo)
	(sleep_until e7_warthog0_should_continue 5)
	(sleep 30)
	(if (> (ai_living_count "e6_cov_transport2/driver") 0)
		(e7_630_driver))
	(sleep_until (<= (ai_living_count "e6_cov_transport2/driver") 0) 5)
	(sleep 10)
	(e7_650_passenger)
	(sleep_until (<= (ai_living_count "e6_cov_transport1/driver") 0) 5)
	(sleep 20)
	(e7_651_passenger)
)

(script dormant e7_warthog0_chase_main
	(wake e7_warthog0_dialog)
	(cs_run_command_script "e7_mars_warthog0/driver" cs_e7_warthog0_entry)
	(garbage_collect_now)
	(sleep_until e7_warthog0_should_advance 5)
	(sleep 90)
	(if (not (game_is_cooperative ))
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))) ; DIGSITE COOPERATIVE EDIT
	(if (not (game_is_cooperative ))
	(wake warthog0_safety_net)) ; DIGSITE COOPERATIVE EDIT
	(cs_run_command_script "e7_mars_warthog0/driver" cs_e7_warthog0_pursuit0)
	(cs_run_command_script "e7_mars_warthog0/passenger" cs_e7_neuter_passenger)
	(garbage_collect_now)
	(sleep_until e7_warthog0_should_continue 5)
	(set e7_warthog1_should_continue true)
	(sleep 30)
	(cs_run_command_script "e7_mars_warthog0/driver" cs_e7_warthog0_pursuit1)
	(garbage_collect_now)
)

(script dormant e7_warthog1_chase_main
	(cs_run_command_script "e7_mars_warthog1/driver" cs_e7_warthog1_entry)
	(sleep_until e7_warthog1_should_advance 5)
	(sleep 20)
	(cs_run_command_script "e7_mars_warthog1/driver" cs_e7_warthog1_pursuit0)
	(sleep_until e7_warthog1_should_continue 5)
	(sleep 30)
	(cs_run_command_script "e7_mars_warthog1/driver" cs_e7_warthog1_pursuit1)
)

; -------------------------------------------------------------------------------------------------
; DIGSITE COOPERATIVE SCRIPTS
; -------------------------------------------------------------------------------------------------

(script command_script cs_e8_warthog0_end_coop
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e8_warthog_finales/player_0 1.0)
	(cs_go_to e8_warthog_finales/player_1 1.0)
	(cs_go_to e8_warthog_finales/player_2_digsite 1.0)
)

(script command_script cs_e8_warthog0_start_coop
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e8_warthog0_rail_start/p0 e8_warthog0_rail_start/p0_facing)
	(cs_go_to e8_warthog0_rail_start/p1 1.0)
	(cs_go_to_and_face e8_warthog0_rail_start/p2 e8_warthog0_rail_start/p3)
	(cs_go_to e8_warthog0_rail_start/p3_digsite 1.0)
	(cs_pause 32000.0)
)

(script command_script cs_e8_warthog0_cont_coop
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e8_warthog0_rail_cont/p0 e8_warthog0_rail_cont/p0_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p1 e8_warthog0_rail_cont/p1_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p2 e8_warthog0_rail_cont/p2_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p3 e8_warthog0_rail_cont/p3_facing)
	;(cs_go_to_and_face e8_warthog0_rail_cont/p4 e8_warthog0_rail_cont/p4_facing)
	(cs_go_to_and_face e8_warthog0_rail_cont/p5 e8_warthog0_rail_cont/p6)
	(cs_go_to_and_face e8_warthog0_rail_cont/p7 e8_warthogs_to_brutes/p0)
	(cs_go_to_and_face e8_warthogs_to_brutes/p0 e8_warthogs_to_brutes/p0_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p1 e8_warthogs_to_brutes/p2)
	(cs_go_to_and_face e8_warthogs_to_brutes/p2 e8_warthogs_to_brutes/p3)
	(cs_go_to_and_face e8_warthogs_to_brutes/p3 e8_warthogs_to_brutes/p4)
	(cs_go_to_and_face e8_warthogs_to_brutes/p4 e8_warthogs_to_brutes/p4_facing)
	(cs_go_to_and_face e8_warthogs_to_brutes/p5 e8_warthogs_to_brutes/p6)
	(cs_go_to e8_warthogs_to_brutes/p6 1.0)
)

(script command_script cs_e7_warthog0_pursuit1_coop
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e7_warthog0/pursuit1 e7_warthog0/pursuit1_1)
	(cs_go_to_and_face e7_warthog0/pursuit2 e7_warthog0/pursuit3)
	(cs_go_by e7_warthog0/pursuit3 e7_warthog0/pursuit4 0.75)
	(cs_go_to_and_face e7_warthog0/pursuit4 e7_warthog0/pursuit5)
	(cs_go_by e7_warthog0/pursuit4_1 e7_warthog0/pursuit5 1.0)
	(cs_go_by e7_warthog0/pursuit5 e7_warthog0/pursuit6 1.0)
	(cs_go_to_and_face e7_warthog0/pursuit6 e7_warthog0/pursuit8)
	(cs_go_to_and_face e7_warthog0/pursuit9_digsite e7_warthog0/pursuit10)
	(cs_pause 1.5)
)

(script command_script cs_e7_warthog_coop_entry
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to_and_face e7_warthog_cooperative/p0 e7_warthog_cooperative/p0)
	(cs_go_to_and_face e7_warthog_cooperative/p1 e7_warthog_cooperative/p2)
	(cs_pause 32000.0)
)

(script dormant e9_brutes_coop_phantom_enter
	(custom_animation_loop (ai_get_unit e9_cov_brutes_cooperative/brute0) "objects\characters\brute\brute" "combat:unarmed:idle" true)
	(objects_attach e9_phantom0 "phantom_passenger_r01" (ai_get_unit e9_cov_brutes_cooperative/brute0) "")
)

(script dormant e9_brutes_coop_phantom_exit
	(objects_detach e9_phantom0 (ai_get_unit e9_cov_brutes_cooperative/brute0))
	(unit_stop_custom_animation (ai_get_unit e9_cov_brutes_cooperative/brute0))
)

(script dormant e9_brutes_coop
	(sleep_until (volume_test_objects "tv_e9_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(sleep 190)
	(ai_place "e9_cov_brutes_cooperative")
	(object_cannot_take_damage (ai_actors "e9_cov_brutes_cooperative"))
	(wake e9_brutes_coop_phantom_enter)
	(object_set_shadowless (ai_get_object "e9_cov_brutes_cooperative/brute0") true)
	(sleep_until (volume_test_objects "tv_e9_warthog0_jackable" (ai_vehicle_get "e7_mars_warthog_cooperative/driver")) 5)
	(unit_exit_vehicle (ai_get_unit e9_cov_brutes_cooperative/brute0))
	(wake e9_brutes_coop_phantom_exit)
	(sleep_until (not (vehicle_test_seat_list "e9_phantom0" "phantom_p_r05" (ai_actors "e9_cov_brutes_cooperative/brute0"))) 2)
	(sleep 10)
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_b_h" (ai_actors e9_cov_brutes_cooperative/brute0))
	(object_set_shadowless (ai_get_object "e9_cov_brutes_cooperative/brute0") false)
	(sleep 10)
	(unit_set_prefer_tight_camera_track (ai_vehicle_get "e7_mars_warthog_cooperative/driver") true)
	(sleep 20)
	(sleep 18)
	(sleep_until (volume_test_objects "tv_e9_warthog0_end" (ai_vehicle_get "e7_mars_warthog_cooperative/driver")) 5)
	(sleep 15)
	(cs_run_command_script e9_cov_brutes_cooperative/brute0 cs_e9_brute_driver_melee)
	(sleep 10)
	(if (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player0))(unit_exit_vehicle (unit (player0)))	(unit_exit_vehicle (unit (player1))))
	(sleep 19)
	(e9_740_driver)
	(unit_exit_vehicle (ai_get_unit "e7_mars_warthog_cooperative/driver") 2)
	(unit_kill_silent (ai_get_unit "e7_mars_warthog_cooperative/driver"))
	(object_can_take_damage (ai_actors "e9_cov_brutes_cooperative"))
	(sleep 70)
	(unit_exit_vehicle (ai_get_unit e9_cov_brutes_cooperative/brute0))
	(ai_migrate "e9_cov_brutes_cooperative/brute0" "e9_cov_brute_fighting_player")
	(ai_set_orders "e9_cov_brute_fighting_player" "e9_cov_brute_fight_player")
)

(script dormant lost_the_race
	(if (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player1)) (wake host_warthog_safety_net)(wake offhost_warthog_safety_net))
)

(script static void hog_load_player1_chain
	(object_teleport (player1) "hog_teleport_chain")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player1))
)
(script static void hog_load_player1_gauss
	(object_teleport (player1) "hog_teleport_gauss")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player1))
)
(script static void hog_load_player0_chain
	(object_teleport (player0) "hog_teleport_chain")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player0))
)
(script static void hog_load_player0_gauss
	(object_teleport (player0) "hog_teleport_gauss")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
)

(script static void hog_load0
	(object_teleport (player1) "hog_teleport_gauss")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player1))
	(object_teleport (player0) "hog_teleport_chain")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player0))
)

(script static void hog_load1
	(object_teleport (player0) "hog_teleport_gauss")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))
	(object_teleport (player1) "hog_teleport_chain")
	(vehicle_load_magic (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player1))
)

(script dormant hog_load_solo
	(if (not (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0))) (hog_load_player0_gauss))
)

(script dormant hog_load_coop_gauss
	(if (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (player0)) (hog_load_player1_gauss)(hog_load_player0_gauss)
))
(script dormant hog_load_coop_chain
	(if (vehicle_test_seat (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (player0)) (hog_load_player1_chain)(hog_load_player0_chain)
))

(script dormant hog_load_coop
	(print "a player is in a hog")
(if (not (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (players)))
(wake hog_load_coop_gauss))
(if (not (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (players)))
(wake hog_load_coop_chain))
)

(script dormant random_hog_loader
(if (not (or (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (players))(vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (players))))
(begin_random
		(begin (if (not (and (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (players))(vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (players))))(hog_load0)))
		(begin (if (not (and (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (players))(vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog_cooperative/driver") "warthog_g" (players))))(hog_load1)))
	)
	(wake hog_load_coop)
))

(script dormant coop_hog_start
	(ai_place e7_mars_warthog_cooperative)
	(object_cannot_take_damage (ai_actors "e7_mars_warthog_cooperative"))
	(object_cannot_take_damage (ai_vehicle_get "e7_mars_warthog_cooperative/driver"))
	(sleep_until e7_warthog0_should_advance 5)
	(wake lost_the_race)
	(sleep 90)
	(sleep 90)
	(cs_run_command_script "e7_mars_warthog_cooperative/driver" cs_e7_warthog0_pursuit0)
	(sleep_until e7_warthog0_should_continue 5)
	(sleep 30)
	(cs_run_command_script "e7_mars_warthog_cooperative/driver" cs_e7_warthog0_pursuit1_coop)
	(sleep_until (volume_test_objects "tv_e8_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(cs_queue_command_script "e7_mars_warthog_cooperative/driver" cs_e8_warthog0_start_coop)
	(wake e9_brutes_coop)
	(sleep_until (volume_test_objects "tv_e8_warthog0_should_cont" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(sleep 60)
	(cs_run_command_script "e7_mars_warthog_cooperative/driver" cs_e8_warthog0_cont_coop)
	(cs_queue_command_script "e7_mars_warthog_cooperative/driver" cs_e8_warthog0_end_coop)
)

; -------------------------------------------------------------------------------------------------

(script static void e7_setup
	(object_create_containing "e7_scenery")
	(ai_place "e7_mars_warthog0")
	(ai_place "e7_mars_warthog1")
	(if (game_is_cooperative )
	(wake coop_hog_start))
	(sleep 5)
	(object_cannot_take_damage (ai_actors "e7_mars_warthog0"))
	(object_cannot_take_damage (ai_actors "e7_mars_warthog1"))
	(object_cannot_take_damage (ai_vehicle_get "e7_mars_warthog0/driver"))
	(object_cannot_take_damage (ai_vehicle_get "e7_mars_warthog1/driver"))
	(unit_impervious (ai_vehicle_get "e7_mars_warthog0/driver") true)
	(unit_impervious (ai_vehicle_get "e7_mars_warthog1/driver") true)
	(wake e7_warthog0_chase_main)
	(wake e7_warthog1_chase_main)
)

(script static void e7_cleanup
	(object_destroy_containing "e7_scenery")
	(ai_erase "e7_mars_warthog1")
)

(script dormant e7_init
	(sleep 60)
	(garbage_collect_now)
	(e7_setup)
	(sleep_until (volume_test_objects "tv_e7_cleanup" (player0)) 5)
	(e7_cleanup)
)

(script command_script cs_e6_transport2_exit
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_vehicle_speed 0.6)
	(cs_go_to_and_face e6_transports/p0 e6_transports/p1)
	(cs_vehicle_speed 1.0)
	(cs_go_to e6_transports/transport2_vulnerable)
	(object_can_take_damage (ai_actors ai_current_squad))
	(object_can_take_damage (ai_vehicle_get ai_current_actor))
	(unit_impervious (ai_actors ai_current_squad) false)
	(unit_impervious (ai_vehicle_get ai_current_actor) false)
	(cs_go_to e6_transports/transport2_dies)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e6_transport1_exit
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_vehicle_speed 0.6)
	(cs_go_to_and_face e6_transports/p0 e6_transports/p1)
	(cs_vehicle_speed 1.0)
	(cs_go_to e6_transports/p1)
	(object_can_take_damage (ai_actors ai_current_squad))
	(object_can_take_damage (ai_vehicle_get ai_current_actor))
	(unit_impervious (ai_actors ai_current_squad) false)
	(unit_impervious (ai_vehicle_get ai_current_actor) false)
	(cs_teleport e6_transports/transport1_return e6_transports/transport1_dies)
	(vehicle_hover (ai_vehicle_get ai_current_actor) true)
	(cs_pause 32000.0)
)

(script command_script cs_e6_transport1_end
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(vehicle_hover (ai_vehicle_get ai_current_actor) false)
	(cs_go_to e6_transports/transport1_dies)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e6_transport0_exit
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_vehicle_speed 1.0)
	(cs_go_to e6_transports/transport0_vulnerable)
	(object_can_take_damage (ai_actors ai_current_squad))
	(object_can_take_damage (ai_vehicle_get ai_current_actor))
	(unit_impervious (ai_actors ai_current_squad) false)
	(unit_impervious (ai_vehicle_get ai_current_actor) false)
	(cs_go_to e6_transports/transport0_dies)
	(unit_kill (ai_vehicle_get ai_current_actor))
)

(script command_script cs_e6_load_transport0
	(cs_force_combat_status 3)
	(cs_go_to_vehicle (ai_vehicle_get "e6_cov_transport0/driver"))
)

(script command_script cs_e6_load_transport1
	(cs_force_combat_status 3)
	(cs_go_to_vehicle (ai_vehicle_get "e6_cov_transport1/driver"))
)

(script command_script cs_e6_load_transport2
	(cs_force_combat_status 3)
	(cs_go_to_vehicle (ai_vehicle_get "e6_cov_transport2/driver"))
)

(script command_script cs_e6_transport_wait
	(cs_enable_looking false)
	(cs_enable_targeting false)
	(cs_aim true e6_transports/start_look)
	(cs_pause 32000.0)
)

(script command_script cs_e6_form_phalanx
	(cs_go_to e6_jackal_phalanx/form)
	(cs_crouch true)
	(cs_formation 5 "e6_cov_inf0" e6_jackal_phalanx/form e6_jackal_phalanx/form_facing)
)

(script command_script cs_e6_halt_phalanx
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_shoot true)
	(cs_crouch true)
	(sleep 32000)
)

(script command_script cs_e6_break_phalanx
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e6_jackal_phalanx/retreat)
)

(script command_script cs_e6_fodder_jackals
	(cs_force_combat_status 3)
	(cs_ignore_obstacles true)
	(cs_go_to e6_fodder/jackals_flee)
)

(script dormant e6_transports_cont
	(sleep_until (volume_test_objects "tv_e6_transports_cont" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(object_destroy_containing "e6_scenery_gun")
	(ai_place "e6_cov_transport0")
	(object_cannot_take_damage (ai_actors "e6_cov_transport0/driver"))
	(object_cannot_take_damage (ai_vehicle_get "e6_cov_transport0/driver"))
	(unit_impervious (ai_actors "e6_cov_transport0/driver") true)
	(unit_impervious (ai_vehicle_get "e6_cov_transport0/driver") true)
	(cs_run_command_script "e6_cov_transport0/driver" cs_e6_transport0_exit)
	(cs_run_command_script "e6_cov_transport1/driver" cs_e6_transport1_end)
)

(script dormant e6_timer_solo
	(sleep 1)
	(wake hog_load_solo)
)

(script dormant e6_timer
	(sleep 1)
	(wake random_hog_loader)
)

(script dormant e6_transports_start
	(sleep 60)
	(sleep 220)
	(cs_run_command_script "e6_cov_transport1/driver" cs_e6_transport1_exit)
	(set e7_warthog1_should_advance true)
	(sleep 50)
	(cs_run_command_script "e6_cov_transport2/driver" cs_e6_transport2_exit)
	(if (not (game_is_cooperative ))
	(wake e6_timer_solo)(wake e6_timer))
	(sleep_until (vehicle_test_seat_list (ai_vehicle_get "e7_mars_warthog0/driver") "warthog_g" (players)) 5)
	(set e7_warthog0_should_advance true)
	(sleep 180)
	(set e7_warthog0_should_continue true)
)


(script dormant e6_cov_inf1_and_inf2_main
	(sleep_until (volume_test_objects "tv_e6_cov_inf1_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(ai_place "e6_cov_inf1")
	(sleep_until (volume_test_objects "tv_e6_cov_inf2_init" (ai_vehicle_get "e7_mars_warthog0/driver")) 5)
	(ai_place "e6_cov_inf2")
)

(script dormant e6_cov_inf0_main
	(sleep 2)
	(ai_place "e6_cov_inf0")
	(sleep 2)
	(object_cannot_take_damage (ai_actors "e6_cov_inf0"))
	(unit_impervious (ai_actors "e6_cov_inf0") true)
	(ai_magically_see_object "e6_cov_inf0" (player0))
	(cs_run_command_script "e6_cov_inf0/leader" cs_e6_form_phalanx)
	(sleep_until (volume_test_objects "tv_e6_warthogs_arrived" (ai_vehicle_get "e7_mars_warthog1/driver")) 5)
	(object_can_take_damage (ai_actors "e6_cov_inf0"))
	(unit_impervious (ai_actors "e6_cov_inf0") false)
	(cs_run_command_script "e6_cov_inf0" cs_e6_halt_phalanx)
	(cs_run_command_script "e6_cov_inf0/leader" cs_e6_halt_phalanx)
	(sleep_until (< (ai_strength "e6_cov_inf0") 0.45) 5)
	(cs_run_command_script "e6_cov_inf0" cs_e6_break_phalanx)
	(sleep 1800)
	(ai_erase "e6_cov_inf0")
)

(script static void e6_setup
	(ai_place "e6_cov_transport1")
	(ai_place "e6_cov_transport2")
	(sleep 2)
	(object_cannot_take_damage (ai_actors "e6_cov_transport1/driver"))
	(object_cannot_take_damage (ai_actors "e6_cov_transport2/driver"))
	(object_cannot_take_damage (ai_vehicle_get "e6_cov_transport1/driver"))
	(object_cannot_take_damage (ai_vehicle_get "e6_cov_transport2/driver"))
	(unit_impervious (ai_actors "e6_cov_transport1/driver") true)
	(unit_impervious (ai_actors "e6_cov_transport2/driver") true)
	(unit_impervious (ai_vehicle_get "e6_cov_transport1/driver") true)
	(unit_impervious (ai_vehicle_get "e6_cov_transport2/driver") true)
	(cs_run_command_script "e6_cov_transport1" cs_e6_load_transport1)
	(cs_run_command_script "e6_cov_transport2" cs_e6_load_transport2)
	(cs_run_command_script "e6_cov_transport1/driver" cs_e6_transport_wait)
	(cs_run_command_script "e6_cov_transport2/driver" cs_e6_transport_wait)
	(wake e6_transports_start)
	(wake e6_transports_cont)
)

(script static void e6_cleanup
	(object_destroy_containing "e6_scenery")
	(ai_erase "e6_cov")
)

(script dormant e6_init
	(sleep_until (volume_test_objects "tv_e6_scenery" (players)))
	(object_create_anew_containing "e6_scenery_")
	(object_create_anew "e3_unwanted_light")
	(object_destroy "e4_gun_smoke")
	(sleep_until (volume_test_objects "tv_e6_init" (players)))
	(object_type_predict "objects\vehicles\creep\creep")
	(object_type_predict "objects\vehicles\warthog\warthog")
	(object_type_predict "objects\characters\marine\marine")
	(garbage_collect_now)
	(if debug
		(print "e6_init"))
	(wake e7_init)
	(wake e6_cov_inf0_main)
	(wake e6_cov_inf1_and_inf2_main)
	(game_save_no_timeout)
	(e6_setup)
	(sleep_until (volume_test_objects "tv_e6_cleanup" (players)))
	(e6_cleanup)
)

(script static void e6_test
	(object_teleport (player0) "e6_test")
	(wake e6_init)
)

(script command_script cs_e5_cov_cave_suppress_left
	(cs_force_combat_status 4)
	(cs_enable_moving true)
	(cs_shoot true "e5_cave_suppress_left")
	(sleep 60)
	(cs_abort_on_damage true)
	(sleep 1800)
)

(script command_script cs_e5_cov_cave_suppress_right
	(cs_force_combat_status 4)
	(cs_enable_moving true)
	(cs_shoot true "e5_cave_suppress_right")
	(sleep 60)
	(cs_abort_on_damage true)
	(sleep 1800)
)

(script dormant e5_cov_inf5_main
	(ai_place "e5_cov_inf5")
)

(script dormant e5_cov_cave_setup
	(sleep_until (volume_test_objects "tv_e5_cave_init" (players)))
	(ai_place "e5_cov_cave")
	(ai_magically_see "e5_cov_inf3" "e1_mars_inf1")
	(ai_magically_see "e5_cov_inf4" "e1_mars_inf1")
	(cs_run_command_script "e5_cov_inf4" cs_e5_cov_cave_suppress_left)
	(cs_run_command_script "e5_cov_inf3" cs_e5_cov_cave_suppress_right)
)

(script dormant e5_cov_phalanx_setup
	(ai_place "e5_cov_inf0")
)

(script static void e5_cleanup
	(ai_erase "e5_cov")
	(object_destroy_containing "e5_scenery")
)

(script dormant e5_init
	(sleep_until
		(and
			g_e5_turret_exploded
			(volume_test_objects "tv_e5_init" (players))
		)
	)
	(if debug
		(print "e5_init"))
	(garbage_collect_now)
	(wake e5_cov_inf5_main)
	(wake e5_cov_cave_setup)
	(sleep_until (volume_test_objects "tv_e5_cleanup" (players)))
	(e5_cleanup)
)

(script command_script cs_e4_cov_inf_gather
	(cs_go_to e4_forced_march/gather)
)

(script command_script cs_e4_cov_inf_charge
	(cs_go_to e4_forced_march/charge)
)

(script command_script cs_e4_cov_inf_retreat
	(cs_go_to e4_forced_march/car)
)

(script command_script cs_e4_cov_inf_left_advance
	(cs_go_to e4_forced_march/left_advance)
)

(script command_script cs_e4_cov_inf_right_advance
	(cs_go_to e4_forced_march/right_advance)
)

(script static void oes_e4_cov_inf_gather
	(cs_run_command_script ai_current_squad cs_e4_cov_inf_gather)
)

(script static void oes_e4_cov_inf_charge
	(cs_run_command_script ai_current_squad cs_e4_cov_inf_charge)
)

(script static void oes_e4_cov_inf_retreat
	(cs_run_command_script ai_current_squad cs_e4_cov_inf_retreat)
)

(script static void oes_e4_cov_inf_left_advance
	(cs_run_command_script ai_current_squad cs_e4_cov_inf_left_advance)
)

(script static void oes_e4_cov_inf_right_advance
	(cs_run_command_script ai_current_squad cs_e4_cov_inf_right_advance)
)

(script static void dtest
	(damage_objects "effects\damage_effects\stun_giant" (ai_actors "e5_cov_inf5"))
)

(script static void dtest2
	(damage_objects "objects\vehicles\warthog\damage_effects\warthog_gauss_bullet" (ai_actors "e5_cov_inf5"))
)

(script static void e4_cleanup
	(e4_end)
	(ai_erase "e4_cov")
)

(script dormant e4_init
	(sleep_forever e4_garbage_collecter)
	(sleep_until (volume_test_objects "tv_e4_init" (players)))
	(if debug
		(print "e4_init"))
	(object_destroy_containing "e2b_scenery")
	(wake e4_cov_grunt_wave_lite)
	(wake e4_grunt_wave_override)
	(wake e4_cov_inf10_main)
	(sleep_until (volume_test_objects "tv_e4_cleanup" (players)))
	(e4_cleanup)
)

(script static void e4_test
	(object_teleport (player0) "e4_test")
	(wake e4_cov_grunt_wave_lite)
	(wake e4_grunt_wave_override)
	(sleep 90)
	(joe_grunt_wave_begins)
)

(script command_script e3_cov_inf1_run_and_shoot
	(cs_go_to e3_cov_inf1_attack/p0)
	(cs_shoot true "e3_sarge_suppress")
	(cs_go_to e3_cov_inf1_attack/p0_1)
	(cs_shoot false "e3_sarge_suppress")
	(cs_go_to e3_cov_inf1_attack/p1)
	;(ai_erase ai_current_actor)
)

(script command_script e3_cov_inf1_run
	(cs_go_to e3_cov_inf1_attack/p0)
	(cs_go_to e3_cov_inf1_attack/p1)
	;(ai_erase ai_current_actor)
)

(script command_script e3_cov_inf1_run_direct
	(cs_go_to e3_cov_inf1_attack/p1)
	;(ai_erase ai_current_actor)
)

(script command_script e3_cov_grunt0_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p0)
)

(script command_script e3_cov_grunt1_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p1)
)

(script command_script e3_cov_grunt2_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p2)
)

(script command_script e3_cov_grunt3_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p3)
)

(script command_script e3_cov_grunt4_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p4)
)

(script command_script e3_cov_grunt5_stalking_sarge
	(cs_abort_on_damage true)
	(cs_crouch true)
	(cs_go_to e3_cov_sarge_stalkers/p5)
)

(script command_script cs_e3_cov_abort_stalking
	(cs_force_combat_status 3)
	(cs_crouch false)
)

(script static void oes_e3_abort_stalking
	(cs_run_command_script ai_current_squad cs_e3_cov_abort_stalking)
)

(script dormant e3_cov_inf2_init
	(sleep_until (volume_test_objects "tv_e3_cov_inf2_init" (players)))
	(ai_place "e3_cov_inf2")
	(cs_run_command_script "e3_cov_inf2/grunt0" e3_cov_grunt3_stalking_sarge)
	(cs_run_command_script "e3_cov_inf2/grunt1" e3_cov_grunt4_stalking_sarge)
	(cs_run_command_script "e3_cov_inf2/grunt2" e3_cov_grunt5_stalking_sarge)
	(ai_magically_see "e1_mars_inf0" "e3_cov_inf0")
	(ai_magically_see "e1_mars_inf1" "e3_cov_inf2")
	(sleep_until
		(or
			(< (ai_strength "e3_cov_inf2") 0.95)
			(volume_test_objects "tv_e4_init" (players))
		)
	5)
	(cs_run_command_script "e3_cov_inf2" cs_e3_cov_abort_stalking)
	(sleep_until (volume_test_objects "tv_e4_init" (players)))
	(ai_kill_silent "e3_cov_inf2")
)

(script dormant e3_cov_inf0_init
	(ai_place "e3_cov_inf0")
	(cs_run_command_script "e3_cov_inf0/grunt0" e3_cov_grunt0_stalking_sarge)
	(cs_run_command_script "e3_cov_inf0/grunt1" e3_cov_grunt1_stalking_sarge)
	(cs_run_command_script "e3_cov_inf0/grunt2" e3_cov_grunt2_stalking_sarge)
	(sleep_until
		(or
			(< (ai_strength "e3_cov_inf0") 0.95)
			(volume_test_objects "tv_e4_init" (players))
		)
	5)
	(cs_run_command_script "e3_cov_inf0" cs_e3_cov_abort_stalking)
	(sleep_until (volume_test_objects "tv_e4_init" (players)))
	(ai_kill_silent "e3_cov_inf0")
)

(script static void e3_setup
	(object_create_anew_containing "e3_scenery")
	(object_create_anew_containing "e5_scenery")
	(object_create_anew "e3_ap_turret0")
	(object_set_shadowless "e3_ap_turret0" true)
	(object_destroy "e3_unwanted_light")
	(ai_place "e3_cov_inf1")
	(ai_magically_see "e3_cov_inf1" "e1_mars_inf0")
	(cs_run_command_script "e3_cov_inf0/grunt0" e3_cov_grunt0_stalking_sarge)
	(cs_run_command_script "e3_cov_inf0/grunt1" e3_cov_grunt1_stalking_sarge)
	(cs_run_command_script "e3_cov_inf0/grunt2" e3_cov_grunt2_stalking_sarge)
	(cs_run_command_script "e3_cov_inf1/grunt0" e3_cov_inf1_run_and_shoot)
	(cs_run_command_script "e3_cov_inf1/grunt1" e3_cov_inf1_run)
	(cs_run_command_script "e3_cov_inf1/grunt2" e3_cov_inf1_run_and_shoot)
)

(script static void e3_cleanup
	(sleep_forever e3_cov_inf2_init)
	(ai_erase "e3_cov")
	(object_destroy_containing "e3_scenery")
	(object_destroy "e3_ap_turret0")
)

(script dormant e3_init
	(sleep_until (volume_test_objects "tv_e3_init" (players)))
	(if debug
		(print "e3_init"))
	(object_destroy_containing "e2_scenery")
	;(object_destroy "triage_tent_1")
	;(object_destroy "triage_tent_2")
	(wake e3_cov_inf0_init)
	(wake e3_cov_inf2_init)
	(e3_setup)
	(sleep_until (volume_test_objects "tv_e3_cleanup" (players)))
	(e3_cleanup)
)

(script static boolean e1_odst_cave_advance0_done
	(volume_test_objects_all "tv_e1_odst_cave_advance0" (ai_actors "e1_mars_odsts"))
)

(script static boolean e1_odst_cave_advance1_done
	(volume_test_objects_all "tv_e1_odst_cave_advance1" (ai_actors "e1_mars_odsts"))
)

(script command_script e1_odst_left0_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_entry/entry0)
	(cs_teleport e1_odst_entry/left0_temp_storage e1_odst_entry/entry0)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left1_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_entry/entry0)
	(cs_teleport e1_odst_entry/left1_temp_storage e1_odst_entry/entry0)
	(cs_pause 32000.0)
)

(script command_script e1_odst_right0_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_entry/entry0)
	(cs_teleport e1_odst_entry/right0_temp_storage e1_odst_entry/entry0)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left0_entry_return
	(cs_teleport e1_odst_entry/left0_return e1_odst_entry/entry_left0)
	(cs_go_to e1_odst_entry/entry_left0)
	(cs_face true e1_odst_entry/entry_left_look)
	(cs_crouch true)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left1_entry_return
	(cs_teleport e1_odst_entry/left1_return e1_odst_entry/entry_left1)
	(cs_go_to e1_odst_entry/entry_left1)
	(cs_face true e1_odst_entry/entry_left_look)
	(cs_pause 32000.0)
)

(script command_script e1_odst_right0_entry_return
	(cs_teleport e1_odst_entry/right0_return e1_odst_entry/entry_right0)
	(cs_go_to e1_odst_entry/entry_right0)
	(cs_face true e1_odst_entry/entry_right_look)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left0_entry_cont
	(cs_crouch true)
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 2.0)
	(cs_crouch false)
	(cs_go_to e1_odst_entry/entry2)
	(cs_aim true e1_odst_entry/stair_look)
	(cs_go_to e1_odst_entry/entry3)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_go_to e1_odst_entry/dest_left0)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left1_entry_cont
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_entry/entry2)
	(cs_aim true e1_odst_entry/stair_look)
	(cs_go_to e1_odst_entry/entry3)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_go_to e1_odst_entry/dest_left1)
	(cs_pause 32000.0)
)

(script command_script e1_odst_right0_entry_cont
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 0.5)
	(cs_go_to e1_odst_entry/entry2)
	(cs_aim true e1_odst_entry/stair_look)
	(cs_go_to e1_odst_entry/entry3)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_go_to e1_odst_entry/dest_right0)
	(cs_crouch true)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left0_failsafe0
	(cs_teleport e1_odst_entry/dest_left0 e1_odst_entry/dest_look)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_pause 65000.0)
)

(script command_script e1_odst_left1_failsafe0
	(cs_teleport e1_odst_entry/dest_left1 e1_odst_entry/dest_look)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_pause 65000.0)
)

(script command_script e1_odst_right0_failsafe0
	(cs_teleport e1_odst_entry/dest_right0 e1_odst_entry/dest_look)
	(cs_aim true e1_odst_entry/dest_look)
	(cs_crouch true)
	(cs_pause 65000.0)
)

(script command_script e1_mars_inf2_left0_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_mars_inf2_entry/left0)
	(cs_aim true e1_mars_inf2_entry/left_end_look)
	(cs_go_to e1_mars_inf2_entry/left_end0)
	(cs_crouch true)
	(cs_pause 65000.0)
)

(script command_script e1_mars_inf2_left1_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_mars_inf2_entry/left0)
	(cs_aim true e1_mars_inf2_entry/left_end_look)
	(cs_go_to e1_mars_inf2_entry/left_end1)
	(cs_crouch true)
	(cs_pause 65000.0)
)

(script command_script e1_mars_inf2_right0_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_mars_inf2_entry/right0)
	(cs_aim true e1_mars_inf2_entry/right_end_look)
	(cs_go_to e1_mars_inf2_entry/right_end0)
	(cs_crouch true)
	(cs_pause 65000.0)
)

(script command_script e1_mars_inf2_right1_entry
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_mars_inf2_entry/right0)
	(cs_aim true e1_mars_inf2_entry/right_end_look)
	(cs_go_to e1_mars_inf2_entry/right_end1)
	(cs_crouch true)
	(cs_pause 65000.0)
)

(script command_script e1_odst_left0_advance_sarge
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 0.5)
	(cs_enable_looking false)
	(cs_go_to e1_odst_advance_to_sarge/p0)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_go_to e1_odst_advance_to_sarge/left_end0)
	(e3_451_odst)
	(cs_crouch true)
	(cs_aim false e1_odst_advance_to_sarge/look)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left1_advance_sarge
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 1.0)
	(cs_enable_looking false)
	(cs_go_to e1_odst_advance_to_sarge/p0)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_go_to e1_odst_advance_to_sarge/left_end1)
	(cs_aim false e1_odst_advance_to_sarge/look)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_right0_advance_sarge
	(cs_ignore_obstacles true)
	(cs_enable_pathfinding_failsafe true)
	(cs_enable_looking false)
	(cs_go_to e1_odst_advance_to_sarge/p0)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_go_to e1_odst_advance_to_sarge/p1)
	(cs_aim false e1_odst_advance_to_sarge/look)
	(cs_go_to e1_odst_advance_to_sarge/right_end0)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left0_failsafe1
	(cs_teleport e1_odst_advance_to_sarge/left_end0 e1_odst_advance_to_sarge/look)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left1_failsafe1
	(cs_teleport e1_odst_advance_to_sarge/left_end1 e1_odst_advance_to_sarge/look)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_right0_failsafe1
	(cs_teleport e1_odst_advance_to_sarge/right_end0 e1_odst_advance_to_sarge/look)
	(cs_aim true e1_odst_advance_to_sarge/look)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left0_cover_sarge
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 0.75)
	(cs_go_to e1_odst_cover_sarge/left_end0)
	(cs_aim true e1_odst_cover_sarge/left_end_look)
	(cs_crouch true)
	(cs_enable_targeting true)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left1_cover_sarge
	(cs_enable_pathfinding_failsafe true)
	(cs_pause 0.75)
	(cs_go_to e1_odst_cover_sarge/left_end1)
	(cs_aim true e1_odst_cover_sarge/left_end_look)
	(cs_crouch true)
	(cs_enable_targeting true)
	(cs_pause 32000.0)
)

(script command_script e1_odst_right0_cover_sarge
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_cover_sarge/right_end0)
	(cs_aim true e1_odst_cover_sarge/right_end_look)
	(cs_crouch true)
	(cs_enable_targeting true)
	(cs_pause 32000.0)
)

(script command_script e1_odst_left0_sarge_fight
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_cover_sarge/left0_fight)
	(cs_crouch true)
	(cs_enable_targeting true)
	(sleep 32000)
)

(script command_script e1_odst_left1_sarge_fight
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_cover_sarge/left1_fight)
	(cs_enable_targeting true)
	(sleep 32000)
)

(script command_script e1_odst_right0_sarge_fight
	(cs_enable_pathfinding_failsafe true)
	(cs_go_to e1_odst_cover_sarge/right0_fight)
	(cs_crouch true)
	(cs_enable_targeting true)
	(sleep 32000)
)

(script command_script e1_odst_left0_cave_prep
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_targeting false)
	(cs_teleport e1_odst_through_cave/left0_start e1_odst_through_cave/left0_start_facing)
	(cs_enable_moving false)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_greande_idle" 0.0 true)
	(sleep 32000)
)

(script command_script e1_odst_left1_cave_prep
	(cs_ignore_obstacles true)
	(cs_enable_looking false)
	(cs_enable_targeting false)
	(cs_teleport e1_odst_through_cave/left1_start e1_odst_through_cave/left1_start_facing)
	(cs_enable_moving false)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_591_idle" 0.0 true)
	(sleep 32000)
)

(script command_script e1_odst_right0_cave_prep
	(cs_ignore_obstacles true)
	(cs_teleport e1_odst_through_cave/right0_start e1_odst_through_cave/start_facing)
	(cs_enable_looking true)
	(cs_enable_targeting false)
	(cs_enable_moving false)
	(cs_crouch true)
	(sleep 32000)
)

(script command_script e1_odst_left0_grenade_throw
	(object_create_anew "e1_odst_grenade")
	(sleep 30)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_grenade_toss" 0.0 true)
	(sleep 14)
	(objects_attach (ai_get_object ai_current_actor) "left_hand" "e1_odst_grenade" "")
	(sleep 10)
	(object_destroy "e1_odst_grenade")
	(effect_new "effects\bursts\frag_grenade_toss" "e1_odst_grenade_release")
	(sleep 20)
	(ai_place "e5_cov_inf_stunning_grunts")
	(sleep 18)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_greande_idle" 0.0 true)
	(sleep 32000)
)

(script command_script e1_odst_left1_grenade_throw
	(e5_591_odst)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_591" 1.0 true)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_591_idle" 0.0 true)
	(sleep 70)
	(e5_592_odst)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_592" 1.0 true)
	(cs_custom_animation "objects\characters\marine\e3\e3" "sin_marine_odst_591_idle" 0.0 true)
	(sleep 32000)
)

(script command_script e1_odst_right0_grenade_throw
	(cs_pause 32000.0)
)

(script command_script e1_odst_left0_enter_cave
	(cs_ignore_obstacles true)
	(cs_enable_moving false)
	(cs_stop_custom_animation)
	(cs_go_to e1_odst_through_cave/left0_0)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left1_enter_cave
	(cs_ignore_obstacles true)
	(cs_enable_moving false)
	(cs_stop_custom_animation)
	(cs_go_to e1_odst_through_cave/left1_0)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_right0_enter_cave
	(cs_ignore_obstacles true)
	(cs_enable_moving false)
	(cs_go_to e1_odst_through_cave/right0_0)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left0_exit_cave
	(cs_ignore_obstacles true)
	(if (not (volume_test_objects "tv_e1_odst_cave_positions" (ai_actors ai_current_actor)))
		(cs_teleport e1_odst_through_cave/left0_0 e1_odst_through_cave/cave_facing) (cs_pause 0.1))
	(cs_pause 0.1)
	(cs_go_to e1_odst_through_cave/exit0)
	(cs_go_to e1_odst_through_cave/left0_end)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_left1_exit_cave
	(cs_ignore_obstacles true)
	(if (not (volume_test_objects "tv_e1_odst_cave_positions" (ai_actors ai_current_actor)))
		(cs_teleport e1_odst_through_cave/left1_0 e1_odst_through_cave/cave_facing) (cs_pause 0.1))
	(cs_pause 0.5)
	(cs_go_to e1_odst_through_cave/exit0)
	(cs_go_to e1_odst_through_cave/left1_end)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_right0_exit_cave
	(cs_ignore_obstacles true)
	(if (not (volume_test_objects "tv_e1_odst_cave_positions" (ai_actors ai_current_actor)))
		(cs_teleport e1_odst_through_cave/right0_0 e1_odst_through_cave/cave_facing) (cs_pause 0.1))
	(cs_pause 0.6)
	(cs_go_to e1_odst_through_cave/exit0)
	(cs_go_to e1_odst_through_cave/right0_end)
	(cs_crouch true)
	(cs_enable_looking true)
	(cs_enable_targeting true)
	(cs_enable_moving false)
	(sleep 32000)
)

(script command_script e1_odst_begin_cave_advance0
	(cs_enable_pathfinding_failsafe true)
	(cs_force_combat_status 3)
	(cs_go_to e1_odst_advance_to_cave/p0)
	(cs_move_in_direction 45.0 1.0 0.0)
)

(script command_script e1_odst_begin_cave_advance1
	(cs_enable_pathfinding_failsafe true)
	(cs_force_combat_status 3)
	(cs_go_to e1_odst_advance_to_cave/p1)
	(cs_go_to e1_odst_advance_to_cave/p0)
	(cs_move_in_direction 45.0 1.0 0.0)
)

(script command_script e1_release_cs_deathgrip
	(cs_pause 0.1)
)

(script dormant e1_mars_failsafe0
	(sleep_until (volume_test_objects "tv_e1_failsafe0" (players)))
	(if (not (volume_test_objects "tv_e1_failsafe0_odst_positions" (ai_actors "e1_mars_inf0/odst0")))
		(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_failsafe0))
	(if (not (volume_test_objects "tv_e1_failsafe0_odst_positions" (ai_actors "e1_mars_inf0/odst1")))
		(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_failsafe0))
	(if (not (volume_test_objects "tv_e1_failsafe0_odst_positions" (ai_actors "e1_mars_inf1/odst0")))
		(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_failsafe0))
)

(script dormant e1_mars_failsafe1
	(sleep_until (volume_test_objects "tv_e1_failsafe1" (players)))
	(sleep_forever e1_mars_failsafe0)
	(if (not (volume_test_objects "tv_e1_failsafe1_odst_positions" (ai_actors "e1_mars_inf0/odst0")))
		(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_failsafe1))
	(if (not (volume_test_objects "tv_e1_failsafe1_odst_positions" (ai_actors "e1_mars_inf0/odst1")))
		(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_failsafe1))
	(if (not (volume_test_objects "tv_e1_failsafe1_odst_positions" (ai_actors "e1_mars_inf1/odst0")))
		(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_failsafe1))
)

(script dormant e1_mars_follow_through_cave
	(sleep_until (volume_test_objects "tv_e1_cave_prep" (players)))
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_cave_prep)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_cave_prep)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_cave_prep)
	(unit_impervious (ai_actors "e1_mars_inf0") true)
	(sleep_until (volume_test_objects "tv_e1_cave_go" (players)))
	(ai_kill_silent "e3_cov")
	(ai_kill_silent "e4_cov")
	(ai_kill_silent "e5_cov_inf5")
	(sleep_until (objects_can_see_object (player0) (ai_get_object "e1_mars_inf0/odst1") 10.0) 5 60)
	(sleep 20)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_grenade_throw)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_grenade_throw)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_grenade_throw)
	(sleep 70)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_enter_cave)
	(sleep 90)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_enter_cave)
	(sleep 10)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_enter_cave)
	(unit_impervious (ai_actors "e1_mars_inf0") false)
)

(script dormant e1_mars_follow_to_cave
	(sleep_until g_e5_turret_exploded 5)
	(sleep 100)
	(e5_572_odst)
	(cs_run_command_script "e1_mars_inf0" e1_odst_begin_cave_advance1)
	(cs_run_command_script "e1_mars_inf1" e1_odst_begin_cave_advance0)
	(ai_set_orders "e1_mars_inf0" "e1_mars_inf0_cave_advance0")
	(ai_set_orders "e1_mars_inf1" "e1_mars_inf0_cave_advance0")
)

(script dormant e1_mars_follow_to_sarge
	(sleep_until g_e1_mars_safe_to_go 5)
	(sleep_until (volume_test_objects "tv_e1_advance_sarge" (players)))
	(sleep_forever e1_mars_failsafe0)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_advance_sarge)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_advance_sarge)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_advance_sarge)
	(sleep_until (volume_test_objects "tv_e3_init" (players)))
	(sleep_until (<= (ai_living_count "e3_cov_stalkers") 1))
	(sleep_forever e1_mars_failsafe1)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_cover_sarge)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_cover_sarge)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_cover_sarge)
	(sleep_until g_e4_cov_grunt_wave_go)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_sarge_fight)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_sarge_fight)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_sarge_fight)
	(ai_set_orders "e1_mars_inf0" "e1_mars_inf0_cover_sarge")
	(ai_set_orders "e1_mars_inf1" "e1_mars_inf1_cover_sarge")
	(unit_impervious (ai_actors "e1_mars_inf0") false)
	(unit_impervious (ai_actors "e1_mars_inf1") false)
)

(script dormant e1_mars_init
	(ai_place "e1_mars_inf0")
	(ai_place "e1_mars_inf1")
	(ai_force_active "e1_mars_inf1" true)
	(ai_force_active "e1_mars_inf0" true)
	(object_cannot_take_damage (ai_actors "e1_mars_inf0"))
	(object_cannot_take_damage (ai_actors "e1_mars_inf1"))
	(unit_impervious (ai_actors "e1_mars_inf0") true)
	(unit_impervious (ai_actors "e1_mars_inf1") true)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_entry)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_entry)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_entry)
	(sleep_until g_e1_odsts_return 5)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_entry_return)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_entry_return)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_entry_return)
	(sleep_until g_e1_odsts_enter_hospital 5)
	(cs_run_command_script "e1_mars_inf0/odst0" e1_odst_left0_entry_cont)
	(cs_run_command_script "e1_mars_inf0/odst1" e1_odst_left1_entry_cont)
	(cs_run_command_script "e1_mars_inf1/odst0" e1_odst_right0_entry_cont)
)

(script static void joe_odsts_head_for_cave
	(set g_e1_odsts_begin_cave_advance true)
)

(script dormant e1_mars_inf2
	(ai_place "e1_mars_inf2")
	(cs_run_command_script "e1_mars_inf2/left0" e1_mars_inf2_left0_entry)
	(cs_run_command_script "e1_mars_inf2/left1" e1_mars_inf2_left1_entry)
	(cs_run_command_script "e1_mars_inf2/right0" e1_mars_inf2_right0_entry)
	(cs_run_command_script "e1_mars_inf2/right1" e1_mars_inf2_right1_entry)
	(sleep_until (volume_test_objects "tv_e1_street" (players)))
	(ai_erase "e1_mars_inf2")
)

(script static void e1_end
	(sleep_forever e1_mars_init)
	(sleep_forever e1_mars_failsafe0)
	(sleep_forever e1_mars_failsafe1)
	(sleep_forever e1_mars_follow_to_sarge)
	(sleep_forever e1_mars_follow_through_cave)
	(sleep_forever e1_mars_inf2)
	(sleep_forever e1_mars_follow_to_cave)
)

(script static void e1_cleanup
	(e1_end)
	(object_destroy_containing "e1_scenery")
	(ai_erase "e1_mars")
)

(script dormant e1_init
	(if debug
		(print "e1_init"))
	(wake e1_mars_init)
	(wake e1_mars_follow_to_sarge)
	(wake e1_mars_follow_to_cave)
	(wake e1_mars_follow_through_cave)
	(wake e1_mars_failsafe0)
	(wake e1_mars_failsafe1)
	(sleep_until (volume_test_objects "tv_e1_cleanup" (players)))
	(e1_cleanup)
)

(script static void e1_test
	(object_destroy_containing "medic")
	(wake e1_init)
)

(script continuous ambient_flak_explosions
	(sleep 5)
	(begin_random
		(begin
			(effect_new "effects\explosions\c_flak_explosion" "ambient_flak0")
			(sleep (random_range 20 60))
		)
		(begin
			(effect_new "effects\explosions\c_flak_explosion" "ambient_flak1")
			(sleep (random_range 20 60))
		)
		(begin
			(effect_new "effects\explosions\c_flak_explosion" "ambient_flak2")
			(sleep (random_range 20 60))
		)
		(begin
			(effect_new "effects\explosions\c_flak_explosion" "ambient_flak3")
			(sleep (random_range 20 60))
		)
		(begin
			(effect_new "effects\explosions\c_flak_explosion" "ambient_flak4")
			(sleep (random_range 20 60))
		)
	)
)

(script continuous ambient_gun_tower_explosions
	(sleep 5)
	(begin_random
		(begin
			(effect_new "effects\bursts\guntower_burst" "ambient_blast0")
			(sleep (random_range 150 200))
		)
		(begin
			(effect_new "effects\bursts\guntower_burst" "ambient_blast1")
			(sleep (random_range 150 200))
		)
		(begin
			(effect_new "effects\bursts\guntower_burst" "ambient_blast2")
			(sleep (random_range 150 200))
		)
	)
)

(script static void joe_begin_flak
	(wake ambient_flak_explosions)
)

(script static void joe_end_flak
	(sleep_forever ambient_flak_explosions)
)

(script static void joe_begin_guntower_blasts
	(wake ambient_gun_tower_explosions)
)

(script static void joe_end_guntower_blasts
	(sleep_forever ambient_gun_tower_explosions)
)

(script startup mission_main
	(sleep_forever e4_garbage_collecter)
	(sleep_forever warthog0_safety_net)
	(sleep_forever host_warthog_safety_net) ; DIGSITE COOPERATIVE EDIT
	(sleep_forever offhost_warthog_safety_net) ; DIGSITE COOPERATIVE EDIT
	(sleep_forever ambient_flak_explosions)
	(sleep_forever ambient_gun_tower_explosions)
	(object_destroy_containing "_fire")
	(object_destroy_containing "joes_tunnel_lights")
	(sleep_until g_joe_called_mission_start 2)
	(wake e1_init)
	(wake e3_init)
	(wake e4_init)
	(wake e5_init)
	(wake e6_init)
	(wake e8_init)
	(wake e9_init)
	(wake e10_init)
)

(script static void johnson_start
	(set global_demo_start true)
	(camera_predict_resources_at_point "briefing_1")
	(object_type_predict_high "objects\characters\marine\marine_johnson\marine_johnson")
	(bitmap_predict "scenarios\solo\earthcity\earthcity_e3\cinematics\projector\bitmaps\map_new_mombasa")
	(sleep 15)
	(object_create_anew "briefing_johnson")
	(object_create_anew "briefing_light")
	(sleep 30)
	(sound_impulse_predict "sound\temp\sgtjohnson\johnson_speech")
	(custom_animation_loop "briefing_johnson" "objects\characters\marine\marine_johnson\marine_johnson" "johnson_intro" false)
	(camera_set_animation "scenarios\solo\earthcity\earthcity_e3\cinematics\camera\camera" "camera_intro_johnson")
	(camera_set_field_of_view 75 0);CE to H2 FOV compensation
	
	(sleep 15)
	(fade_in 0.0 0.0 0.0 30)
	
	(dig_pp_briefing_2)
	;(sound_looping_start "sound\e3\foley\johnson_foley\johnson_foley" none 1.0)
	(sound_impulse_start "sound\e3\dialog\e3_000_johnson" "briefing_johnson" 1)
	
	(sleep 158)
	
	;(dig_pp_briefing_2)
	
	(sleep 20)
	(sleep 20)
	(sleep 52)

	(object_create_anew "projector")
	(device_set_position "projector" 0.9)
	(sleep 100)
	(object_create_anew "projector_map_light")
	(sleep 70)
	(object_create_anew "swagger_stick")
	(object_set_scale "swagger_stick" 0.7 0)
	(objects_attach "briefing_johnson" "right_hand" "swagger_stick" "right_hand")
	(sleep 400)
	(bitmap_predict "scenarios\solo\earthcity\earthcity_e3\cinematics\projector\bitmaps\map_new_mombasa2")
	(bitmap_predict "scenarios\solo\earthcity\earthcity_e3\cinematics\projector\bitmaps\map_new_mombasa3")
	(sleep 40)
	(object_destroy "projector_map_light")
	(object_create_anew "projector_grunt1_light")
	(sleep 20)
	(object_destroy "projector_grunt1_light")
	(object_create_anew "projector_grunt2_light")
	(sleep 20)
	(object_destroy "projector_grunt2_light")
	(object_create_anew "projector_grunt1_light")
	(sleep 20)
	(object_destroy "projector_grunt1_light")
	(object_create_anew "projector_grunt2_light")
	(sleep 20)
	(object_destroy "projector_grunt2_light")
	(object_create_anew "projector_grunt1_light")
	(sleep 20)
	(object_destroy "projector_grunt1_light")
	(object_create_anew "projector_grunt2_light")
	(sleep 20)
	(object_destroy "projector_grunt2_light")
	(object_create_anew "projector_grunt1_light")
	(sleep 20)
	(object_destroy "projector_grunt1_light")
	(object_create_anew "projector_grunt2_light")
	(sleep 20)
	(object_destroy "projector_grunt2_light")
	(object_create_anew "projector_grunt1_light")
	(sleep (- 143 60))
	(fade_out 0.0 0.0 0.0 10)
	(sleep 60)
	(object_destroy "swagger_stick")
	(object_destroy "briefing_johnson")
	(object_destroy "projector")
	(object_destroy "briefing_light")
	(object_destroy "projector_map_light")
)

(script static void mission_setup
	(objectives_clear)
	(game_can_use_flashlights 0)
	(ai_allegiance player human)
	(ai_allegiance covenant prophet)
	(ai_allegiance prophet covenant)
)

;========== CHECKPOINT SCRIPTS ==========
(script static void save_cutscene
	(data_mine_set_mission_segment "e3_earthcity_johnson_start")
)

(script static void save_intro
	(data_mine_set_mission_segment "e3_earthcity_intro")
)

;========== E3 Demo Mode, add player boons as needed ==========
(script static void demoman
	(object_cannot_die (player0) 1)
	(object_cannot_die (player1) 1)
)

(script startup e3_start
	(sound_class_set_gain ambient_machinery 0 0)
	(cinematic_snap_to_black)
	(mission_setup)
	(demoman)
	(object_teleport (player0) "johnson_player_0")
	(object_teleport (player1) "johnson_player_1")
	(intro_logo)

	(save_cutscene)
	(if (cinematic_skip_start)
		(begin
			(johnson_start)
		)
	)
	(cinematic_skip_stop)

	(sleep 90)
	(intro)
)