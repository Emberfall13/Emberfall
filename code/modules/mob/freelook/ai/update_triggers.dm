#define BORG_CAMERA_BUFFER 30

// ROBOT MOVEMENT

// Update the portable camera everytime the Robot moves.
// This might be laggy, comment it out if there are problems.
/mob/living/silicon/var/updating = 0

/mob/living/silicon/robot/Move()
	var/oldLoc = src.loc
	. = ..()
	if(.)
		if(provides_camera_vision())
			if(!updating)
				updating = 1
				spawn(BORG_CAMERA_BUFFER)
					if(oldLoc != src.loc)
						GLOB.cameranet.updatePortableCamera(src.camera)
					updating = 0

/mob/living/silicon/AI/Move()
	var/oldLoc = src.loc
	. = ..()
	if(.)
		if(provides_camera_vision())
			if(!updating)
				updating = 1
				spawn(BORG_CAMERA_BUFFER)
					if(oldLoc != src.loc)
						GLOB.cameranet.updateVisibility(oldLoc, 0)
						GLOB.cameranet.updateVisibility(loc, 0)
					updating = 0

#undef BORG_CAMERA_BUFFER

// CAMERA

// An addition to deactivate which removes/adds the camera from the chunk list based on if it works or not.

/obj/machinery/camera/deactivate(user as mob, var/choice = 1)
	..(user, choice)
	if(src.can_use())
		GLOB.cameranet.addCamera(src)
	else
		src.set_light(0)
		GLOB.cameranet.removeCamera(src)

/obj/machinery/camera/Initialize(mapload)
	. = ..()
	//Camera must be added to global list of all cameras no matter what...
	if(GLOB.cameranet.cameras_unsorted || !SSticker)
		GLOB.cameranet.cameras += src
		GLOB.cameranet.cameras_unsorted = 1
	else
		dd_insertObjectList(GLOB.cameranet.cameras, src)
	update_coverage(1)

/obj/machinery/camera/Destroy()
	clear_all_networks()
	GLOB.cameranet.cameras -= src
	return ..()
