/datum/artifact_effect/roboheal
	name = "robotic healing"
	var/last_message

/datum/artifact_effect/roboheal/New()
	..()
	effect_type = pick(EFFECT_ELECTRO, EFFECT_PARTICLE)

/datum/artifact_effect/roboheal/DoEffectTouch(var/mob/user)
	if(user)
		if (istype(user, /mob/living/silicon/robot))
			var/mob/living/silicon/robot/R = user
			to_chat(R, "<font color=#4F49AF>Your systems report damaged components mending by themselves!</font>")
			R.adjustBruteLoss(rand(-10,-30))
			R.adjustFireLoss(rand(-10,-30))
			return 1

/datum/artifact_effect/roboheal/DoEffectAura()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/silicon/robot/M in range(src.effectrange,T))
			if(world.time - last_message > 200)
				to_chat(M, "<font color=#4F49AF>SYSTEM ALERT: Beneficial energy field detected!</font>")
				last_message = world.time
			M.adjustBruteLoss(-1)
			M.adjustFireLoss(-1)
			M.update_health()
		return 1

/datum/artifact_effect/roboheal/DoEffectPulse()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/silicon/robot/M in range(src.effectrange,T))
			if(world.time - last_message > 200)
				to_chat(M, "<font color=#4F49AF>SYSTEM ALERT: Structural damage has been repaired by energy pulse!</font>")
				last_message = world.time
			M.adjustBruteLoss(-10)
			M.adjustFireLoss(-10)
			M.update_health()
		return 1
