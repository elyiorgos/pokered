_Route1Youngster1MartSampleText::
	text "Ćao! Radim u" ; "Hi! I work at a"
	line "#MON" ; "#MON MART."
	cont "prodavnici."

	para "Baš je zgodna" ; "It's a convenient"
	line "radnja, pa" ; "shop, so please"
	cont "svrati kod nas u" ; "visit us in"
	cont "VIRIDIJAN GRAD." ; "VIRIDIAN CITY."

	para "Znam, daću ti" ; "I know, I'll give"
	line "uzorak!" ; "you a sample!"
	cont "Izvoli!" ; "Here you go!"
	prompt

_Route1Youngster1GotPotionText::
	text "<PLAYER> dobi" ; "<PLAYER> got"
	line "@" ; "@"
	text_ram wStringBuffer
	text "!@" ; "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "Imamo i" ; "We also carry"
	line "# LOPTE za" ; "# BALLs for"
	cont "hvatanje #MON!" ; "catching #MON!"
	done

_Route1Youngster1NoRoomText::
	text "Nosiš previše" ; "You have too much"
	line "stvari sa sobom!" ; "stuff with you!"
	done

_Route1Youngster2Text::
	text "Vidiš one ivice" ; "See those ledges"
	line "pored puta?" ; "along the road?"

	para "Malo je strašno," ; "It's a bit scary,"
	line "ali možeš da" ; "but you can jump"
	cont "skočiš s njih." ; "from them."

	para "Tako se vraćaš" ; "You can get back"
	line "u PALET GRAD" ; "to PALLET TOWN"
	cont "mnogo brže." ; "quicker that way."
	done

_Route1SignText::
	text "RUTA 1" ; "ROUTE 1"
	line "PALET GRAD -" ; "PALLET TOWN -"
	cont "VIRIDIJAN GRAD" ; "VIRIDIAN CITY"
	done
