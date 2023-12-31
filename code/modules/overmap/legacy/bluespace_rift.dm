/obj/overmap/bluespace_rift
	name = "bluespace rift"
	desc = "Some sort of bluespace rift. Who knows where it leads?"
	icon = 'icons/modules/overmap/entity.dmi'
	icon_state = "portal"
	color = "#2288FF"

	known = 0 // Shows up on nav computers automatically
	scannable = TRUE // If set to TRUE will show up on ship sensors for detailed scans

	var/obj/overmap/bluespace_rift/partner
	var/paused

/obj/overmap/bluespace_rift/Initialize(mapload, new_partner)
	. = ..()
	if(new_partner)
		pair(new_partner)

/obj/overmap/bluespace_rift/proc/pair(obj/overmap/bluespace_rift/new_partner)
	if(istype(new_partner))
		partner = new_partner
		new_partner.partner = src

/obj/overmap/bluespace_rift/proc/take_this(atom/movable/AM)
	paused = TRUE
	AM.forceMove(get_turf(src))
	paused = FALSE

/obj/overmap/bluespace_rift/Crossed(atom/movable/AM)
	if(istype(AM, /obj/overmap/entity/visitable/ship) && !paused && partner)
		partner.take_this(AM)
	else
		return ..()

/obj/overmap/bluespace_rift/attack_ghost(mob/observer/dead/user)
	if(!partner && user?.client?.holder)
		var/response = tgui_alert(user, "You appear to be staff. This rift has no exit point. If you want to make one, move to where you want it to go, and click 'Make Here', otherwise click 'Cancel'", "Bluespace Rift", list("Cancel","Make Here"))
		if(response == "Make Here")
			new type(get_turf(user), src)
	else if(partner)
		user.forceMove(get_turf(partner))
		to_chat(user, SPAN_NOTICE("Your ghostly form is pulled through the rift!"))
	else
		return ..()
