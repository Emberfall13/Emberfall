/*************
* Ammunition *
*************/
/datum/uplink_item/item/ammo
	item_cost = 20
	category = /datum/uplink_category/ammunition
	blacklisted = 1

/datum/uplink_item/item/ammo/a357
	name = ".357 Speedloader"
	path = /obj/item/ammo_magazine/s357

/datum/uplink_item/item/ammo/mc9mm_compact
	name = "Compact Pistol Magazine (9mm)"
	path = /obj/item/ammo_magazine/m9mm/compact

/datum/uplink_item/item/ammo/mc9mm
	name = "Pistol Magazine (9mm)"
	path = /obj/item/ammo_magazine/m9mm

/datum/uplink_item/item/ammo/mc9mm_large
	name = "Large Capacity Pistol Magazine (9mm)"
	path = /obj/item/ammo_magazine/m9mm/large
	item_cost = 40

/datum/uplink_item/item/ammo/c45m
	name = "Pistol Magazine (.45)"
	path = /obj/item/ammo_magazine/m45

/datum/uplink_item/item/ammo/c45map
	name = "Pistol Magazine (.45 AP)"
	path = /obj/item/ammo_magazine/m45/ap

/datum/uplink_item/item/ammo/s45m
	name = "Speedloader (.45)"
	path = /obj/item/ammo_magazine/s45

/datum/uplink_item/item/ammo/s45map
	name = "Speedloader  (.45 AP)"
	path = /obj/item/ammo_magazine/s45/ap

/datum/uplink_item/item/ammo/tommymag
	name = "Tommy Gun Magazine (.45)"
	path = /obj/item/ammo_magazine/m45tommy

/datum/uplink_item/item/ammo/tommymagap
	name = "Tommy Gun Magazine (.45 AP)"
	path = /obj/item/ammo_magazine/m45tommy/ap

/datum/uplink_item/item/ammo/tommydrum
	name = "Tommy Gun Drum Magazine (.45)"
	path = /obj/item/ammo_magazine/m45tommydrum
	item_cost = 40

/datum/uplink_item/item/ammo/tommydrumap
	name = "Tommy Gun Drum Magazine (.45 AP)"
	path = /obj/item/ammo_magazine/m45tommydrum/ap

/datum/uplink_item/item/ammo/darts
	name = "Darts"
	path = /obj/item/ammo_magazine/chemdart
	item_cost = 5

/datum/uplink_item/item/ammo/sniperammo
	name = "Anti-Materiel Rifle ammo box (12.7mm)"
	path = /obj/item/storage/box/sniperammo

/datum/uplink_item/item/ammo/c545
	name = "Rifle Magazine (5.56mm)"
	path = /obj/item/ammo_magazine/m556

/datum/uplink_item/item/ammo/c545/ext
	name = "Rifle Magazine (5.56mm Extended)"
	path = /obj/item/ammo_magazine/m556/ext

/datum/uplink_item/item/ammo/c545/ap
	name = "Rifle Magazine (5.56mm AP)"
	path = /obj/item/ammo_magazine/m556/ap

/datum/uplink_item/item/ammo/c545/ap/ext
	name = "Rifle Magazine (5.56mm AP Extended)"
	path = /obj/item/ammo_magazine/m556/ap/ext

/datum/uplink_item/item/ammo/c762
	name = "Rifle Magazine (7.62mm)"
	path = /obj/item/ammo_magazine/m762

/datum/uplink_item/item/ammo/c762/ap
	name = "Rifle Magazine (7.62mm AP)"
	path = /obj/item/ammo_magazine/m762/ap

/datum/uplink_item/item/ammo/a10mm
	name = "SMG Magazine (10mm)"
	path = /obj/item/ammo_magazine/m10mm

/datum/uplink_item/item/ammo/a556
	name = "Machinegun Magazine (5.56mm)"
	path = /obj/item/ammo_magazine/m556saw

/datum/uplink_item/item/ammo/a556/ap
	name = "Machinegun Magazine (5.56mm AP)"
	path = /obj/item/ammo_magazine/m556saw/ap

/datum/uplink_item/item/ammo/g12
	name = "12g Shotgun Ammo Box (Slug)"
	path = /obj/item/storage/box/shotgunammo

/datum/uplink_item/item/ammo/g12/beanbag
	name = "12g Shotgun Ammo Box (Beanbag)"
	path = /obj/item/storage/box/beanbags
	item_cost = 10 // Discount due to it being LTL.

/datum/uplink_item/item/ammo/g12/pellet
	name = "12g Shotgun Ammo Box (Pellet)"
	path = /obj/item/storage/box/shotgunshells

/datum/uplink_item/item/ammo/g12/stun
	name = "12g Shotgun Ammo Box (Stun)"
	path = /obj/item/storage/box/stunshells
	item_cost = 10 // Discount due to it being LTL.

/datum/uplink_item/item/ammo/g12/flash
	name = "12g Shotgun Ammo Box (Flash)"
	path = /obj/item/storage/box/flashshells
	item_cost = 10 // Discount due to it being LTL.

/datum/uplink_item/item/ammo/cell
	name = "weapon cell"
	path = /obj/item/cell/device/weapon

/datum/uplink_item/item/ammo/highcell
	name = "High capacity cell"
	path = /obj/item/cell/high
	item_cost = 15

/datum/uplink_item/item/ammo/supercell
	name = "Super capacity cell"
	path = /obj/item/cell/super
	item_cost = 30
/* Cell type not present on Cit
/datum/uplink_item/item/ammo/voidcell
	name = "Void cell"
	path = /obj/item/cell/device/recharge/alien/hybrid
	item_cost = DEFAULT_TELECRYSTAL_AMOUNT * 1.5
*/
