/datum/computer_file/program/suit_sensors
	filename = "sensormonitor"
	filedesc = "Suit Sensors Monitoring"
	tguimodule_path = /datum/tgui_module_old/crew_monitor/ntos
	program_icon_state = "crew"
	program_key_state = "med_key"
	program_menu_icon = "heart"
	extended_desc = "This program connects to life signs monitoring system to provide basic information on crew health."
	required_access = ACCESS_MEDICAL_MAIN
	requires_ntnet = 1
	network_destination = "crew lifesigns monitoring system"
	size = 11
