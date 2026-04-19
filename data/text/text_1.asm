_CardKeySuccessText1::
	text "To!@" ; "Bingo!@"
	text_end

_CardKeySuccessText2::
	text_start
	line "KARTI. KLJUČ" ; "The CARD KEY"
	cont "je otvorio vrata!" ; "opened the door!"
	done

_CardKeyFailText::
	text "Šteta! Treba mu" ; "Darn! It needs a"
	line "KARTI. KLJUČ!" ; "CARD KEY!"
	done

_TrainerNameText::
	text_ram wNameBuffer
	text ": @" ; ": @"
	text_end

_NoNibbleText::
	text "Ni da zagrize!" ; "Not even a nibble!"
	prompt

_NothingHereText::
	text "Izgleda da nema" ; "Looks like there's"
	line "ničega ovde." ; "nothing here."
	prompt

_ItsABiteText::
	text "Oho!" ; "Oh!"
	line "Zagrizlo je!" ; "It's a bite!"
	prompt

_ExclamationText::
	text "!" ; "!"
	done

_GroundRoseText::
	text "Tlo se negde" ; "Ground rose up"
	line "podiglo!" ; "somewhere!"
	done

_BoulderText::
	text "Ovo zahteva" ; "This requires"
	line "SNAGU za pomak!" ; "STRENGTH to move!"
	done

_MartSignText::
	text "Sve što ti treba" ; "All your item"
	line "od stvari!" ; "needs fulfilled!"
	cont "#MON PRODAVNICA" ; "#MON MART"
	done

_PokeCenterSignText::
	text "Leči svoj #MON!" ; "Heal Your #MON!"
	line "#MON CENTAR" ; "#MON CENTER" #
	done

_FoundItemText::
	text "<PLAYER> je našao" ; "<PLAYER> found"
	line "@" ; "@"
	text_ram wStringBuffer
	text "!@" ; "!@"
	text_end

_NoMoreRoomForItemText::
	text "Nema mesta za" ; "No more room for"
	line "predmete!" ; "items!"
	done

_OaksAideHiText::
	text "Ćao! Sećaš me?" ; "Hi! Remember me?"
	line "Ja sam HRASTOV" ; "I'm PROF.OAK's"
	cont "POMOĆNIK!" ; "AIDE!"

	para "Ako si uhvatio @" ; "If you caught @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "vrsta #MON," ; "kinds of #MON,"
	cont "treba da ti dam" ; "I'm supposed to"
	cont "@" ; "give you an"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "!" ; "!"

	para "Dakle, <PLAYER>!" ; "So, <PLAYER>! Have"
	line "Jesi li uhvatio" ; "you caught at"
	cont "bar @" ; "least @"
	text_decimal hOaksAideRequirement, 1, 3
	text " vrsta" ; " kinds of"
	cont "#MON?" ; "#MON?"
	done

_OaksAideUhOhText::
	text "Da vidimo..." ; "Let's see..."
	line "Ups! Imaš" ; "Uh-oh! You have"
	cont "samo @" ; "caught only @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text_start
	cont "vrsta #MON!" ; "kinds of #MON!"

	para "Treba ti @" ; "You need @"
	text_decimal hOaksAideRequirement, 1, 3
	text " vrsta" ; " kinds"
	line "ako želiš" ; "if you want the"
	cont "@" ; "@"
	text_ram wOaksAideRewardItemName
	text "." ; "."
	done

_OaksAideComeBackText::
	text "Aha. Razumem." ; "Oh. I see."

	para "Kad skupiš @" ; "When you get @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "vrsta, vrati se" ; "kinds, come back"
	cont "po @" ; "for @"
	text_ram wOaksAideRewardItemName
	text "." ; "."
	done

_OaksAideHereYouGoText::
	text "Sjajno! Imaš" ; "Great! You have"
	line "uhvaćeno @" ; "caught @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text " vrsta " ; " kinds "
	cont "#MON!" ; "of #MON!"
	cont "Čestitam!" ; "Congratulations!"

	para "Izvoli!" ; "Here you go!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> je dobio" ; "<PLAYER> got the"
	line "@" ; "@"
	text_ram wOaksAideRewardItemName
	text "!@" ; "!@"
	text_end

_OaksAideNoRoomText::
	text "Aha! Vidim da" ; "Oh! I see you"
	line "nemaš mesta" ; "don't have any"
	cont "za poklon" ; "room for the"
	cont "@" ; "@"
	text_ram wOaksAideRewardItemName
	text "." ; "."
	done
