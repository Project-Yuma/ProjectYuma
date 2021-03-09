//open/floor turfs

/turf/exterior/sand/wasteland
	icon = 'mods/fallout/icons/rebase/turfs/wasteland.dmi'
	icon_state = "wasteland"
	possible_states = 0
	icon_edge_layer = -1
	icon_has_corners = FALSE

/turf/exterior/sand/wasteland/melt()
	if(icon_state != "glass")
		icon = 'icons/turf/exterior/sand.dmi'
		. = ..()

/turf/exterior/sand/wasteland/on_update_icon()
	cut_overlays()
	if(prob(8))
		add_overlay(image('icons/turf/flooring/decals.dmi', "asteroid[rand(0,9)]"))
		return
	if (prob(5))
		add_overlay(image('mods/fallout/icons/flora/flora.dmi', "tall_grass_[rand(1,8)]"))
		return

	if (prob(3))
		add_overlay(image('icons/obj/flora/ausflora.dmi', "[pick("first","leafy","reed","pale","stalky","grassy")]bush_[rand(1,3)]"))
		return

	if(prob(25))
		icon_state = "wasteland[rand(1,33)]"

/turf/exterior/sand/wasteland/Initialize()
	. = ..()
	update_icon()

/turf/exterior/dirt/wasteland
	icon = 'mods/fallout/icons/rebase/turfs/wasteland.dmi'
	icon_state = "dirt"
	possible_states = 0
	icon_edge_layer = -1
	icon_has_corners = FALSE

/* // Use /turf/exterior/wildgrass instead!
/turf/exterior/wasteland/grass
*/

/turf/exterior/wildgrass/dry
	color = "#ae9e66"

/* // Use /turf/exterior/concrete/reinforced/road instead!
/turf/exterior/wasteland/asphalt
/turf/exterior/wasteland/asphalt/middle
/turf/exterior/wasteland/asphalt/cracked
*/

/* // Use /obj/structure/rubble instead!
/turf/exterior/wasteland/rubble
*/

/* // Use /turf/exterior/water and /turf/exterior/sand instead!
/turf/exterior/wasteland/beach
/turf/exterior/wasteland/river
/turf/exterior/wasteland/river/shallow
/turf/exterior/wasteland/river/deep
*/

/*
/turf/exterior/wasteland/forest 
*/
// /turf/exterior/wasteland/snow // Use /turf/exterior/snow instead!


