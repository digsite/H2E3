;	+|+|+|	DIGSITE BREADCRUMBS, 100% WHOLE WHEAT
(global boolean dig_moth_visible false)
(global short dig_moth_index 0)

;	+|+|+|	NAVPOINT STATICS (stubbed into the main script so we can use the globals above + the logic below)
(script static void dig_moth_1 (set dig_moth_index 1) (print "Nav: 1"))
(script static void dig_moth_2 (set dig_moth_index 2) (print "Nav: 2"))
(script static void dig_moth_3 (set dig_moth_index 3) (print "Nav: 3"))
(script static void dig_moth_4 (set dig_moth_index 4) (print "Nav: 4"))
(script static void dig_moth_5 (set dig_moth_index 5) (print "Nav: 5"))
(script static void dig_moth_6 (set dig_moth_index 6) (print "Nav: 6"))
(script static void dig_moth_7 (set dig_moth_index 7) (print "Nav: 7"))
(script static void dig_moth_8 (set dig_moth_index 8) (print "Nav: 8"))
(script static void dig_moth_9 (set dig_moth_index 9) (print "Nav: 9"))
(script static void dig_moth_10 (set dig_moth_index 10) (print "Nav: 10"))

(script static void dig_moth_codex (print "dig_moth_codex") (inspect dig_moth_index))
(script static void dig_moth_display_time (sleep 90))

(script static unit moth_perez (unit (list_get (ai_actors "bandaged_marine") 0)))
(script static unit moth_odst (unit (list_get (ai_actors "e1_mars_inf0") 0)))
(script static unit moth_hog (unit (list_get (ai_vehicle_get "e7_mars_warthog0/driver") 0)))
(script static unit moth_hog2 (unit (list_get (ai_vehicle_get "e7_mars_warthog_cooperative/driver") 0)))
(script static unit moth_ghost (unit (list_get (ai_vehicle_get "e10_cov_ghosts0/driver0") 0)))

(script static void dig_moth_logic
	(print "dig_moth_logic")
	(if (> dig_moth_index 0)
		(sound_impulse_start "sound\ui\waypoint" none 1.0)
	)
	(cond
		(	(= dig_moth_index 1) (print "dig_moth = 1");	NAVPOINT 1 - CPL. PEREZ
			(activate_team_nav_point_object default player (moth_perez) 0.45) (sleep 2)
			(deactivate_team_nav_point_object player (moth_perez)) (sleep 2)
			(activate_team_nav_point_object default player (moth_perez) 0.45) (dig_moth_display_time)
			(deactivate_team_nav_point_object player (moth_perez))
		)
		(	(= dig_moth_index 2) (print "dig_moth = 2");	NAVPOINT 2 - SGT. BANKS	
			(activate_team_nav_point_object default player "sgt_banks" 0.5) (sleep 2)
			(deactivate_team_nav_point_object player "sgt_banks") (sleep 2)
			(activate_team_nav_point_object default player "sgt_banks" 0.5) (dig_moth_display_time)
			(deactivate_team_nav_point_object player "sgt_banks")
		)
		(	(= dig_moth_index 3) (print "dig_moth = 3");	NAVPOINT 3 - SMG
			(activate_team_nav_point_flag default player "f_smg_handoff" 0.8) (sleep 2)
			(deactivate_team_nav_point_flag player "f_smg_handoff") (sleep 2)
			(activate_team_nav_point_flag default player "f_smg_handoff" 0.8) (dig_moth_display_time)
			(deactivate_team_nav_point_flag player "f_smg_handoff")
		)
		(	(= dig_moth_index 4) (print "dig_moth = 4");	NAVPOINT 4 - ODST
			(activate_team_nav_point_object default player (moth_odst) 0.7) (sleep 2)
			(deactivate_team_nav_point_object player (moth_odst)) (sleep 2)
			(activate_team_nav_point_object default player (moth_odst) 0.7) (dig_moth_display_time)
			(deactivate_team_nav_point_object player (moth_odst))
		)
		(	(= dig_moth_index 5) (print "dig_moth = 5");	NAVPOINT 5 - CAVE
			(activate_team_nav_point_flag default player "nav_phalanx" 1) (sleep 2)
			(deactivate_team_nav_point_flag player "nav_phalanx") (sleep 2)
			(activate_team_nav_point_flag default player "nav_phalanx" 1) (dig_moth_display_time)
			(deactivate_team_nav_point_flag player "nav_phalanx")
		)
		(	(= dig_moth_index 6) (print "dig_moth = 6");	NAVPOINT 6 - WARTHOGS
			(activate_team_nav_point_object default player (moth_hog) 1.2) (sleep 2)
			(deactivate_team_nav_point_object player (moth_hog)) (sleep 2)
			(activate_team_nav_point_object default player (moth_hog) 1.2) (dig_moth_display_time)
			(deactivate_team_nav_point_object player (moth_hog))
		)
		(	(= dig_moth_index 8) (print "dig_moth = 8");	NAVPOINT 8 - AMBUSH
			(activate_team_nav_point_flag default player "nav_ambush" 1) (sleep 2)
			(deactivate_team_nav_point_flag player "nav_ambush") (sleep 2)
			(activate_team_nav_point_flag default player "nav_ambush" 1) (dig_moth_display_time)
			(deactivate_team_nav_point_flag player "nav_ambush")
		)
		(	(= dig_moth_index 9) (print "dig_moth = 9");	NAVPOINT 9 - GHOST HIJACK
			(activate_team_nav_point_object default player (moth_ghost) 1.4) (sleep 2)
			(deactivate_team_nav_point_object player (moth_ghost)) (sleep 2)
			(activate_team_nav_point_object default player (moth_ghost) 1.4) (dig_moth_display_time)
			(deactivate_team_nav_point_object player (moth_ghost))
		)
		(	(= dig_moth_index 10) (print "dig_moth = 10");	NAVPOINT 10 - HIGHWAY ONRAMP
			(activate_team_nav_point_flag default player "nav_highway" 0.6) (sleep 2)
			(deactivate_team_nav_point_flag player "nav_highway") (sleep 2)
			(activate_team_nav_point_flag default player "nav_highway" 0.6) (dig_moth_display_time)
			(deactivate_team_nav_point_flag player "nav_highway")
		)
	)	(player_action_test_reset)
)

(script continuous dig_moth_input;	Listen for active press of vision mode, run logic if detected
	(sleep_until (player_action_test_vision_trigger) 10)
	(if (player_action_test_vision_trigger)
		(dig_moth_logic)
	)
)