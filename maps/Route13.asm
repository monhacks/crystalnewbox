	object_const_def
	const ROUTE13_YOUNGSTER1
	const ROUTE13_YOUNGSTER2
	const ROUTE13_POKEFAN_M1
	const ROUTE13_HIKER1
	const ROUTE13_HIKER2

Route13_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmAlex:
	trainer POKEFANM, ALEX, EVENT_BEAT_POKEFANM_ALEX, PokefanmAlexSeenText, PokefanmAlexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAlexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmJoshua:
	trainer POKEFANM, JOSHUA, EVENT_BEAT_POKEFANM_JOSHUA, PokefanmJoshuaSeenText, PokefanmJoshuaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmJoshuaAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperPerry:
	trainer BIRD_KEEPER, PERRY, EVENT_BEAT_BIRD_KEEPER_PERRY, BirdKeeperPerrySeenText, BirdKeeperPerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperPerryAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperBret:
	trainer BIRD_KEEPER, BRET, EVENT_BEAT_BIRD_KEEPER_BRET, BirdKeeperBretSeenText, BirdKeeperBretBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBretAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerKenny:
	trainer HIKER, KENNY, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end

Route13TrainerTips:
	jumptext Route13TrainerTipsText

Route13Sign:
	jumptext Route13SignText

Route13DirectionsSign:
	jumptext Route13DirectionsSignText

Route13HiddenCalcium:
	hiddenitem CALCIUM, EVENT_ROUTE_13_HIDDEN_CALCIUM

PokefanmAlexSeenText:
	text "¡Arrodíllate ante"
	line "mi regio Pokémon!"
	done

PokefanmAlexBeatenText:
	text "¿Qué? ¡Te burlas"
	line "de la realeza!"
	done

PokefanmAlexAfterBattleText:
	text "¿Acaso no quiere"
	line "ser rey todo el"
	cont "mundo?"
	done

PokefanmJoshuaSeenText:
	text "¡Jijiji! ¿Quieres"
	line "luchar contra mi"
	cont "grupo de Pikachu?"
	done

PokefanmJoshuaBeatenText:
	text "¡Pi, Pikachu!"
	done

PokefanmJoshuaAfterBattleText:
	text "Parece que tienes"
	line "muchos Pokémon,"

	para "pero Pikachu es el"
	line "mejor."
	done

BirdKeeperPerrySeenText:
	text "La agilidad es"
	line "la clave de los"
	cont "Pokémon pájaro."
	done

BirdKeeperPerryBeatenText:
	text "Me venciste con"
	line "tu velocidad…"
	done

BirdKeeperPerryAfterBattleText:
	text "Tus Pokémon"
	line "están muy bien"
	cont "entrenados."
	done

BirdKeeperBretSeenText:
	text "Mira mis Pokémon."

	para "Fíjate en su color"
	line "y en su plumaje."
	done

BirdKeeperBretBeatenText:
	text "¡Vaya! ¡No soy lo"
	line "bastante bueno!"
	done

BirdKeeperBretAfterBattleText:
	text "Los Pokémon son"
	line "felices si los"
	cont "pones guapos."
	done

HikerKennySeenText:
	text "Debería ir al"
	line "Túnel Roca para"
	cont "conseguir un Onix."
	done

HikerKennyBeatenText:
	text "He perdido…"
	done

HikerKennyAfterBattleText:
	text "Parece que las"
	line "formas geológicas"
	cont "no cambian."

	para "Pero sí que"
	line "cambian, aunque"
	cont "poco a poco."
	done

Route13TrainerTipsText:
	text "PISTAS ENTRENADOR"

	para "¡Mira! Allí, a la"
	line "izquierda del"
	cont "poste"
	done

Route13SignText:
	text "Ruta 13 hacia el"
	line "Norte al Puente"
	cont "Silencio"
	done

Route13DirectionsSignText:
	text "Hacia el Norte"
	line "Al Pueblo Lavanda"

	para "Hacia el Oeste"
	line "A Ciudad Fucsia"
	done

Route13_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route13TrainerTips
	bg_event 51, 13, BGEVENT_READ, Route13Sign
	bg_event 35, 15, BGEVENT_READ, Route13DirectionsSign
	bg_event 21, 15, BGEVENT_ITEM, Route13HiddenCalcium

	def_object_events
	object_event 34,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperPerry, -1
	object_event 27, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperBret, -1
	object_event 25, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmJoshua, -1
	object_event 60,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerHikerKenny, -1
	object_event  4,  8, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmAlex, -1
