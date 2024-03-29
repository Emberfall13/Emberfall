/obj/machinery/door/airlock/multi_tile/glass/polarized
	name = "Electrochromic Glass Airlock"

/obj/machinery/door/airlock/multi_tile/glass/polarized/Initialize(mapload)
	. = ..()
	create_fillers()

/obj/machinery/door/airlock/multi_tile/glass/polarized/toggle()
	. = ..()
	if(!operating)
		if(filler1)
			filler1.set_opacity(opacity)
			if(filler2)
				filler2.set_opacity(opacity)

/obj/machinery/door/airlock/multi_tile/glass/polarized/close()
	. = ..()
	if(filler1)
		filler1.set_opacity(!glass)
		if(filler2)
			filler2.set_opacity(!glass)
