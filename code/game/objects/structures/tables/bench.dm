// todo: de-table

/obj/structure/table/bench
	name = "bench frame"
	icon = 'icons/obj/bench.dmi'
	icon_state = "frame"
	desc = "It's a bench, for putting things on. Or standing on, if you really want to."
	can_reinforce = 0
	flipped = -1
	density = 0
	depth_projected = FALSE
	base_name = "bench"

/obj/structure/table/bench/CanAllowThrough(atom/movable/mover)
	return 1
