_AIBattleWithdrawText::  ;
	text_ram wTrainerName
	text " se po-" ; " with-"
	line "vukao @" ; "drew @"
	text_ram wEnemyMonNick
	text "!" ; "!"
	prompt

_AIBattleUseItemText::
	text_ram wTrainerName
	text_start
	line "koristio je @" ; "used @"
	text_ram wNameBuffer
	text_start
	cont "na @" ; "on @"
	text_ram wEnemyMonNick
	text "!" ; "!"
	prompt

_TradeWentToText::
	text_ram wStringBuffer
	text " otišao je" ; " went"
	line "kod @" ; "to @"
	text_ram wLinkEnemyTrainerName
	text "." ; "."
	done

_TradeForText::
	text "Za <PLAYER>-ovog" ; "For <PLAYER>'s"
	line "@" ; "@"
	text_ram wStringBuffer
	text "," ; ","
	done

_TradeSendsText::
	text_ram wLinkEnemyTrainerName
	text " šalje" ; " sends"
	line "@" ; "@"
	text_ram wNameBuffer
	text "." ; "."
	done

_TradeWavesFarewellText::
	text_ram wLinkEnemyTrainerName
	text " maše" ; " waves"
	line "za oproštaj" ; "farewell as"
	done

_TradeTransferredText::
	text_ram wNameBuffer
	text " je" ; " is"
	line "prebačen." ; "transferred."
	done

_TradeTakeCareText::
	text "Pazi dobro na" ; "Take good care of"
	line "@" ; "@"
	text_ram wNameBuffer
	text "." ; "."
	done

_TradeWillTradeText::
	text_ram wLinkEnemyTrainerName
	text " će" ; " will"
	line "menjati @" ; "trade @"
	text_ram wNameBuffer
	text_start
	done

_TradeforText::
	text "za <PLAYER>-ovog" ; "for <PLAYER>'s"
	line "@" ; "@"
	text_ram wStringBuffer
	text "." ; "."
	done

_PlaySlotMachineText::
	text "Aparat za slot!" ; "A slot machine!"
	line "Hoćeš igru?" ; "Want to play?"
	done

_OutOfCoinsSlotMachineText::
	text "Šteta!" ; "Darn!"
	line "Nema žetona!" ; "Ran out of coins!"
	done

_BetHowManySlotMachineText::
	text "Ulog koliko" ; "Bet how many"
	line "žetona?" ; "coins?"
	done

_StartSlotMachineText::
	text "Kreni!" ; "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Nema dosta" ; "Not enough"
	line "žetona!" ; "coins!"
	prompt

_OneMoreGoSlotMachineText::
	text "Još jedna" ; "One more "
	line "partija?" ; "go?"
	done

_LinedUpText::
	text " u nizu!" ; " lined up!"
	line "Osvojio je @" ; "Scored @"
	text_ram wStringBuffer
	text " žetona!" ; " coins!"
	done

_NotThisTimeText::
	text "Ne ovaj put!" ; "Not this time!"
	prompt

_YeahText::
	text "Da!@" ; "Yeah!@"
	text_end

_DexSeenOwnedText::
	text "#DEX   Viđeno:@" ; "#DEX   Seen:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text_start
	line "         Imaš:@" ; "         Owned:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text_end

_DexRatingText::
	text "#DEX Oc.<COLON>" ; "#DEX Rating<COLON>"
	done

_GymStatueText1::
	text_ram wGymCityName
	text_start
	line "#MON TERETANA" ; "#MON GYM"
	cont "VOÐA: @" ; "LEADER: @"
	text_ram wGymLeaderName
	text_start

	para "POBEDNIKI:" ; "WINNING TRAINERS:"
	line "<RIVAL>" ; "<RIVAL>"
	done

_GymStatueText2::
	text_ram wGymCityName
	text_start
	line "#MON TERETANA" ; "#MON GYM"
	cont "VOÐA: @" ; "LEADER: @"
	text_ram wGymLeaderName
	text_start

	para "POBEDNIKI:" ; "WINNING TRAINERS:"
	line "<RIVAL>" ; "<RIVAL>"
	cont "<PLAYER>" ; "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "#MON CENTARi" ; "#MON CENTERs"
	line "leče umorne," ; "heal your tired,"
	cont "ranjene ili" ; "hurt or fainted"
	cont "onesv. #MON!" ; "#MON!"
	done

_PewterCityPokecenterGuyText::
	text "Zev!" ; "Yawn!"

	para "Kad PUFKO" ; "When JIGGLYPUFF"
	line "zapeva, #MON" ; "sings, #MON"
	cont "se uspavaju..." ; "get drowsy..."

	para "...I ja..." ; "...Me too..."
	line "Hr..." ; "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "BIL ima mnogo" ; "BILL has lots of"
	line "#MON!" ; "#MON!"

	para "Skuplja i retke" ; "He collects rare"
	line "takođe!" ; "ones too!"
	done

_LavenderPokecenterGuyText::
	text "KOSTIĆ nosi" ; "CUBONEs wear"
	line "lobanje, zar ne?" ; "skulls, right?"

	para "Ljudi bi platili" ; "People will pay a"
	line "mnogo za jednu!" ; "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "Ako imaš previše" ; "If you have too"
	line "#MON, trebalo bi" ; "many #MON, you"
	cont "da ih spremiš" ; "should store them"
	cont "preko PC!" ; "via PC!"
	done

_RockTunnelPokecenterGuyText::
	text "Čuo sam da" ; "I heard that"
	line "DUHOVI opsedaju" ; "GHOSTs haunt"
	cont "LAVANDU GRAD!" ; "LAVENDER TOWN!"
	done

_UnusedBenchGuyText1::
	text "Voleo bih da" ; "I wish I could"
	line "uhvatim #MON." ; "catch #MON."
	done

_UnusedBenchGuyText2::
	text "Umoran sam od" ; "I'm tired from"
	line "sve zabave..." ; "all the fun..."
	done

_UnusedBenchGuyText3::
	text "SILF menadžer" ; "SILPH's manager"
	line "se krije u" ; "is hiding in the"
	cont "SAFARI ZONI." ; "SAFARI ZONE."
	done

_VermilionPokecenterGuyText::
	text "Tačno je da" ; "It is true that a"
	line "viši nivo" ; "higher level"
	cont "#MON će biti" ; "#MON will be"
	cont "jači..." ; "more powerful..."

	para "Ali svi #MON" ; "But, all #MON"
	line "imaju slabe" ; "will have weak"
	cont "tačke prema" ; "points against"
	cont "odr. tipovima." ; "specific types."

	para "Zato nema" ; "So, there is no"
	line "uvek jakog" ; "universally"
	cont "#MON." ; "strong #MON."
	done

_CeladonCityPokecenterGuyText::
	text "Da imam BAJK," ; "If I had a BIKE,"
	line "išao bih na" ; "I would go to"
	cont "BICIKLISTČKI" ; "CYCLING ROAD!"
	cont "ROAD!"
	done

_FuchsiaCityPokecenterGuyText::
	text "Ako proučavaš" ; "If you're studying "
	line "#MON, idi u" ; "#MON, visit"
	cont "SAFARI ZONU." ; "the SAFARI ZONE."

	para "Ima svakakvih" ; "It has all sorts"
	line "retkih #MON." ; "of rare #MON."
	done

_CinnabarPokecenterGuyText::
	text "#MON još može" ; "#MON can still"
	line "da uči tehnike" ; "learn techniques"
	cont "posle otkazane" ; "after canceling"
	cont "evolucije." ; "evolution."

	para "Evolucija može" ; "Evolution can wait"
	line "čekati dok se" ; "until new moves"
	cont "ne nauče potezi." ; "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "Bilo bi sjajno" ; "It would be great"
	line "da ELITNA ČETV." ; "if the ELITE FOUR"
	cont "dođe i zgazi" ; "came and stomped"
	cont "TIM RAKETA!" ; "TEAM ROCKET!"
	done

_SaffronCityPokecenterGuyText2::
	text "TIM RAKETA je" ; "TEAM ROCKET took"
	line "pobegao! Možemo" ; "off! We can go"
	cont "opet bezbedno!" ; "out safely again!"
	cont "Baš super!" ; "That's great!"
	done

_CeladonCityHotelText::
	text "Sestra me je" ; "My sis brought me"
	line "dovela na odmor!" ; "on this vacation!"
	done

_BookcaseText::
	text "Prepuno" ; "Crammed full of"
	line "#MON knjiga!" ; "#MON books!"
	done

_NewBicycleText::
	text "Sjajan novi" ; "A shiny new"
	line "BICIKL!" ; "BICYCLE!"
	done

_PushStartText::
	text "Pritisni START" ; "Push START to"
	line "za MENI!" ; "open the MENU!"
	done

_SaveOptionText::
	text "SAČUVAJ opcija je" ; "The SAVE option is"
	line "na MENI" ; "on the MENU"
	cont "ekranu." ; "screen."
	done

_StrengthsAndWeaknessesText::
	text "Svi #MON tipovi" ; "All #MON types"
	line "imaju jake i" ; "have strong and"
	cont "slabe tačke" ; "weak points"
	cont "jedni na druge." ; "against others."
	done

_TimesUpText::
	text "SPIKER:" ; "PA: Ding-dong!"
	line "Ding-dong!"

	para "Vreme je isteklo!" ; "Time's up!"
	prompt

_GameOverText::
	text "SPIKER: Tvoja " ; "PA: Your SAFARI"
	line "SAFARI IGRA je" ; "GAME is over!"
	cont "gotova!"
	done

_CinnabarGymQuizIntroText::
	text "#MON Kviz!" ; "#MON Quiz!"

	para "Ako pogodiš," ; "Get it right and"
	line "vrata se otvaraju" ; "the door opens to"
	cont "u sledeću sobu!" ; "the next room!"

	para "Ako omaneš," ; "Get it wrong and"
	line "čeka te trener!" ; "face a trainer!"

	para "Ako želiš da" ; "If you want to"
	line "sačuvaš svog" ; "conserve your"
	cont "#MON za" ; "#MON for the"
	cont "VOÐU..." ; "GYM LEADER..."

	para "Onda odgovori!" ; "Then get it right!"
	line "Počnimo!" ; "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
	text "GUSENICA se" ; "CATERPIE evolves"
	line "razvija u" ; "into BUTTERFREE?"
	cont "LEPTOSLOB?"
	done

_CinnabarQuizQuestionsText2::
	text "Postoji 9" ; "There are 9"
	line "sertif. #MON" ; "certified #MON"
	cont "BEÐA?" ; "LEAGUE BADGEs?"
	done

_CinnabarQuizQuestionsText3::
	text "PUNOGLAV se" ; "POLIWAG evolves 3"
	line "razvija 3 puta?" ; "times?"
	done

_CinnabarQuizQuestionsText4::
	text "Da li su potezi" ; "Are thunder moves"
	line "groma dobri na" ; "effective against"
	cont "ground element-" ; "ground element-"  todo: address
	cont "type #MON?" ; "type #MON?"  todo: address
	done

_CinnabarQuizQuestionsText5::
	text "#MON istog" ; "#MON of the"
	line "tipa i nivoa" ; "same kind and"
	cont "nisu sasvim" ; "level are not"
	cont "isti?" ; "identical?"
	done

_CinnabarQuizQuestionsText6::
	text "TM28 sadrži" ; "TM28 contains"
	line "NADGROBNIK?" ; "TOMBSTONER?"
	done

_CinnabarGymQuizCorrectText::
	text "Potpuno si" ; "You're absolutely"
	line "u pravu!" ; "correct!"

	para "Prođi dalje!@" ; "Go on through!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "Žao mi je! Greška!" ; "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#MON časopisi!" ; "#MON magazines!"

	para "#MON sveske!" ; "#MON notebooks!"

	para "#MON grafikoni!" ; "#MON graphs!"
	done

_BillsHouseMonitorText::
	text "Separator je" ; "TELEPORTER is"
	line "prikazan na" ; "displayed on the"
	cont "PC monitoru." ; "PC monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> je pokr." ; "<PLAYER> initiated"
	line "separator" ; "TELEPORTER's Cell"
	cont "ćelije!@" ; "Separator!@"
	text_end

_BillsHousePokemonListText1::
	text "BIL-ova omilj." ; "BILL's favorite"
	line "#MON lista!" ; "#MON list!"
	prompt

_BillsHousePokemonListText2::
	text "Kog #MON" ; "Which #MON do"
	line "želiš da vidiš?" ; "you want to see?"
	done

_OakLabEmailText::
	text "Ovde je e-mail" ; "There's an e-mail"
	line "poruka!" ; "message here!"

	para "..." ; "..."

	para "Poziv svim" ; "Calling all"
	line "#MON trenerima!" ; "#MON trainers!"

	para "Elitni treneri" ; "The elite trainers"
	line "#MON LIGE" ; "of #MON LEAGUE"
	cont "su spremni za" ; "are ready to take"
	cont "sve izazivače!" ; "on all comers!"

	para "Donesi najbolje" ; "Bring your best"
	line "#MON i vidi" ; "#MON and see"
	cont "kako stojiš kao" ; "how you rate as a"
	cont "trener!" ; "trainer!"

	para "#MON LIGA" ; "#MON LEAGUE HQ"
	line "INDIGO PLATO" ; "INDIGO PLATEAU"

	para "PS: PROF.HRAST," ; "PS: PROF.OAK,"
	line "posetite nas!" ; "please visit us!"
	cont "..." ; "..."
	done

_GameCornerCoinCaseText::
	text "Treba KUT. NOV.!" ; "A COIN CASE is"
	line "obavezno!" ; "required!"
	done

_GameCornerNoCoinsText::
	text "Nemaš" ; "You don't have"
	line "žetone!" ; "any coins!"
	done

_GameCornerOutOfOrderText::
	text "POREMEĆENO" ; "OUT OF ORDER"
	line "Pokvareno je." ; "This is broken."
	done

_GameCornerOutToLunchText::
	text "NA RUČAK" ; "OUT TO LUNCH"
	line "Rezervisano." ; "This is reserved."
	done

_GameCornerSomeonesKeysText::
	text "Nečiji ključevi!" ; "Someone's keys!"
	line "Vratiće se." ; "They'll be back."
	done

_JustAMomentText::
	text "Samo trenutak." ; "Just a moment."
	done

TMNotebookText::
	text "Ovo je brošura" ; "It's a pamphlet"
	line "o TMovima." ; "on TMs."

	para "..." ; "..."

	para "Ukupno ima 50" ; "There are 50 TMs"
	line "TMova." ; "in all."

	para "Postoji i 5" ; "There are also 5"
	line "HMova koji se" ; "HMs that can be"
	cont "koriste više put." ; "used repeatedly."

	para "KOMPANIJA SILF@"; "SILPH CO.@"
	text_end

_TurnPageText::
	text "Okreni stranu?" ; "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "DEVOJKA: Hej! Ne" ; "GIRL: Hey! Don't"
	line "gledaj beleške!@" ; "look at my notes!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Pogledao si" ; "Looked at the"
	line "svesku!" ; "notebook!"

	para "Prva strana..." ; "First page..."

	para "# LOPTE služe" ; "# BALLs are"
	line "za hvatanje" ; "used to catch"
	cont "#MON." ; "#MON."

	para "Do 6 #MON" ; "Up to 6 #MON"
	line "možeš nositi." ; "can be carried."

	para "Ljudi koji gaje" ; "People who raise"
	line "i teraju #MON" ; "and make #MON"
	cont "na borbu zovu se" ; "fight are called"
	cont "#MON treneri." ; "#MON trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Druga strana..." ; "Second page..."

	para "Zdrav #MON" ; "A healthy #MON"
	line "se teže hvata," ; "may be hard to"
	cont "zato ga oslabi" ; "catch, so weaken"
	cont "prvo!" ; "it first!"

	para "Otrov, opek. i" ; "Poison, burns and"
	line "druga šteta su" ; "other damage are"
	cont "delotvorni!" ; "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Treća strana..." ; "Third page..."

	para "#MON treneri" ; "#MON trainers"
	line "traže druge za" ; "seek others to"
	cont "#MON borbe." ; "engage in #MON"
	cont " " ; "fights."

	para "Borbe se stalno" ; "Battles are"
	line "vode u #MON" ; "constantly fought"
	cont "TERETANI." ; "at #MON GYMs."
	prompt

_ViridianSchoolNotebookText4::
	text "Četvrta strana..." ; "Fourth page..."

	para "Cilj #MON" ; "The goal for"
	line "trenera je da" ; "#MON trainers"
	cont "pobede top 8" ; "is to beat the "
	cont "#MON" ; "top 8 #MON"
	cont "VOÐE TERETANE." ; "GYM LEADERs."

	para "Uradi to pa" ; "Do so to earn the"
	line "stekni pravo..." ; "right to face..."

	para "Na ELITNU ČETV." ; "The ELITE FOUR of"
	line "#MON LIGE!" ; "#MON LEAGUE!"
	prompt

_EnemiesOnEverySideText::
	text "Neprijatelji" ; "Enemies on every"
	line "sa svih strana!" ; "side!"
	done

_WhatGoesAroundComesAroundText::
	text "Kako seješ," ; "What goes around"
	line "tako žanješ!" ; "comes around!"
	done

_FightingDojoText::
	text "BORBENI DODŽO" ; "FIGHTING DOJO"
	done

_IndigoPlateauHQText::
	text "INDIGO PLATO" ; "INDIGO PLATEAU"
	line "#MON LIGA" ; "#MON LEAGUE HQ"
	done

_RedBedroomSNESText::
	text "<PLAYER> igra" ; "<PLAYER> is"
	line "SNES!" ; "playing the SNES!"
	cont "...Dobro!" ; "...Okay!"
	cont "Vreme je za put!" ; "It's time to go!"
	done

_Route15UpstairsBinocularsText::
	text "Pogledao si kroz" ; "Looked into the"
	line "dvogled..." ; "binoculars..."

	para "Velika, sjajna" ; "A large, shining"
	line "ptica leti" ; "bird is flying"
	cont "ka moru." ; "toward the sea."
	done

_AerodactylFossilText::
	text "AERODAKT fosil" ; "AERODACTYL Fossil"
	line "Prastari i" ; "A primitive and"
	cont "retki #MON." ; "rare #MON."
	done

_KabutopsFossilText::
	text "KABUTOPS fosil" ; "KABUTOPS Fossil"
	line "Prastari i" ; "A primitive and"
	cont "retki #MON." ; "rare #MON."
	done

_LinkCableHelpText1::
	text "SAVETI" ; "TRAINER TIPS"

	para "Korišćenje Game" ; "Using a Game Link"
	line "Link Cable" ; "Cable"
	prompt

_LinkCableHelpText2::
	text "Koji naslov" ; "Which heading do"
	line "želiš da čitaš?" ; "you want to read?"
	done

_LinkCableInfoText1::
	text "Kad povežeš" ; "When you have"
	line "GAME BOY sa" ; "linked your GAME"
	cont "drugim GAME BOY," ; "BOY with another"
	cont "pričaj sa" ; "GAME BOY, talk to"
	cont "službenikom desno" ; "the attendant on"
	cont "u svakom" ; "the right in any"
	cont "#MON CENTAR." ; "#MON CENTER."
	prompt

_LinkCableInfoText2::
	text "KOLOSEUM ti" ; "COLOSSEUM lets"
	line "dozvoljava borbu" ; "you play against"
	cont "sa prijateljem." ; "a friend."
	prompt

_LinkCableInfoText3::
	text "CENTAR RAZMENE" ; "TRADE CENTER is"
	line "služi za razmenu" ; "used for trading"
	cont "#MON." ; "#MON."
	prompt

_ViridianSchoolBlackboardText1::
	text "Tabla opisuje" ; "The blackboard"
	line "#MON" ; "describes #MON"
	cont "STATUS promene" ; "STATUS changes"
	cont "u borbi." ; "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Koji naslov" ; "Which heading do"
	line "želiš da čitaš?" ; "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "#MON ne može" ; "A #MON can't"
	line "da napadne kad" ; "attack if it's"
	cont "spava!" ; "asleep!"

	para "#MON ostaje" ; "#MON will stay"
	line "uspavan i posle" ; "asleep even after"
	cont "borbe." ; "battles."

	para "Koristi RAZBUÐ." ; "Use AWAKENING to"
	line "da ga probudiš!" ; "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "Kad je otrovan," ; "When poisoned, a"
	line "#MON gubi" ; "#MON's health"
	cont "zdravlje stalno." ; "steadily drops."

	para "Otrov ostaje" ; "Poison lingers"
	line "posle borbe." ; "after battles."

	para "Koristi PROTIVOT." ; "Use an ANTIDOTE"
	line "za lečenje!" ; "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paraliza može da" ; "Paralysis could"
	line "pokvari #MON" ; "make #MON"
	cont "poteze!" ; "moves misfire!"

	para "Paraliza ostaje" ; "Paralysis remains"
	line "posle borbe." ; "after battles."

	para "Koristi LEK PARA." ; "Use PARLYZ HEAL"
	line "za lečenje!" ; "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "Opekotina smanjuje" ; "A burn reduces"
	line "snagu i brzinu." ; "power and speed."
	cont "I nanosi" ; "It also causes"
	cont "stalnu štetu." ; "ongoing damage."

	para "Opekotine ostaju" ; "Burns remain"
	line "posle borbe." ; "after battles."

	para "Koristi LEK OPEK." ; "Use BURN HEAL to"
	line "za lečenje!" ; "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "Ako je zaleđen," ; "If frozen, a"
	line "#MON postaje" ; "#MON becomes"
	cont "skroz nepokretan!" ; "totally immobile!"

	para "Ostaje zaleđen" ; "It stays frozen"
	line "i posle kraja" ; "even after the"
	cont "borbe." ; "battle ends."

	para "Koristi LEK MRAZA" ; "Use ICE HEAL to"
	line "da odledi #MON!" ; "thaw out #MON!"
	prompt

_VermilionGymTrashText::
	text "Ne, ovde je" ; "Nope, there's"
	line "samo smeće." ; "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hej! Ispod" ; "Hey! There's a"
	line "smeća je prekidač!" ; "switch under the"
	cont "" ; "trash!"
	cont "Uključi ga!" ; "Turn it on!"

	para "Prva el. brava" ; "The 1st electric"
	line "je otvorena!@" ; "lock opened!@"
	text_end

_VermilionGymTrashSuccessText2::
	text "Hej! Ispod je" ; "Hey! There's"
	line "još jedan" ; "another switch"
	cont "prekidač!" ; "under the trash!"
	cont "Uključi ga!" ; "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "Druga el. brava" ; "The 2nd electric"
	line "je otvorena!" ; "lock opened!"

	para "Motoriz. vrata" ; "The motorized door"
	line "su otvorena!@" ; "opened!@"
	text_end

_VermilionGymTrashFailText::
	text "Ne! Ovde je" ; "Nope! There's"
	line "samo smeće." ; "only trash here."
	cont "Hej! El. brave" ; "Hey! The electric"
	cont "su resetovane.@" ; "locks were reset!@"
	text_end

_FoundHiddenItemText::
	text "<PLAYER> našao" ; "<PLAYER> found"
	line "@" ; "@"
	text_ram wNameBuffer
	text "!@" ; "!@"
	text_end

_HiddenItemBagFullText::
	text "Ali <PLAYER> nema" ; "But, <PLAYER> has"
	line "više mesta za" ; "no more room for"
	cont "druge predmete!" ; "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> našao" ; "<PLAYER> found"
	line "@" ; "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " žetona!@" ; " coins!@"
	text_end

_FoundHiddenCoins2Text::
	text "<PLAYER> našao" ; "<PLAYER> found"
	line "@" ; "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " žetona!@" ; " coins!@"
	text_end

_DroppedHiddenCoinsText::
	text_start
	para "Ups! Ispali su" ; "Oops! Dropped"
	line "neki žetoni!" ; "some coins!"
	done

_IndigoPlateauStatuesText1::
	text "INDIGO PLATO" ; "INDIGO PLATEAU"
	prompt

_IndigoPlateauStatuesText2::
	text "Krajnji cilj" ; "The ultimate goal"
	line "svih trenera!" ; "of trainers!"
	cont "#MON LIGA" ; "#MON LEAGUE HQ"

_IndigoPlateauStatuesText3::
	text "Najviši" ; "The highest"
	line "#MON autoritet" ; "#MON authority"
	cont "#MON LIGA" ; "#MON LEAGUE HQ"
	done

_PokemonBooksText::
	text "Prepuno" ; "Crammed full of"
	line "#MON knjiga!" ; "#MON books!"
	done

_DiglettSculptureText::
	text "To je skulptura" ; "It's a sculpture"
	line "KOPAČKA." ; "of DIGLETT."
	done

_ElevatorText::
	text "Ovo je" ; "This is an"
	line "lift." ; "elevator."
	done

_TownMapText::
	text "MAPA GRADA.@"; "A TOWN MAP.@"
	text_end

_PokemonStuffText::
	text "Vau! Brdo" ; "Wow! Tons of"
	line "#MON stvari!" ; "#MON stuff!"
	done

_OutOfSafariBallsText::
	text "PA: Ding-dong!" ; "PA: Ding-dong!"

	para "Nemaš više" ; "You are out of"
	line "SAFARI LOPTE!" ; "SAFARI BALLs!"
	prompt

_WildRanText::
	text "Divlji @" ; "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "pobegao!" ; "ran!"
	prompt

_EnemyRanText::
	text "Protivnik @" ; "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "pobegao!" ; "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>-u" ; "<USER>'s"
	line "šteti otrov!" ; "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>-a" ; "<USER>'s"
	line "peče opekotina!" ; "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "SEMENKA isis." ; "LEECH SEED saps"
	line "<USER>!" ; "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Protivnički @" ; "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "je pao!" ; "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> dobio ¥@" ; "<PLAYER> got ¥@"
	text_bcd wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "za pobedu!" ; "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> pobedio" ; "<PLAYER> defeated"
	line "@" ; "@"
	text_ram wTrainerName
	text "!" ; "!"
	prompt

_PlayerMonFaintedText::
	text_ram wBattleMonNick
	text_start
	line "je pao!" ; "fainted!"
	prompt

_UseNextMonText::
	text "Sledeći #MON?" ; "Use next #MON?"
	done

_Rival1WinText::
	text "<RIVAL>: Da! Zar" ; "<RIVAL>: Yeah! Am"
	line "nisam sjajan?" ; "I great or what?"
	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> nema" ; "<PLAYER> is out of"
	line "više #MON!" ; "useable #MON!"

	para "<PLAYER> se" ; "<PLAYER> blacked"
	line "onesvestio!" ; "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> izgubio" ; "<PLAYER> lost to"
	line "od @" ; "@"
	text_ram wTrainerName
	text "!" ; "!"
	prompt

_TrainerAboutToUseText::
	text_ram wTrainerName
	text " će" ; " is"
	line "sad koristiti" ; "about to use"
	cont "@" ; "@"
	text_ram wEnemyMonNick
	text "!" ; "!"

	para "Da li će" ; "Will <PLAYER>"
	line "<PLAYER> menjati" ; "change #MON?"
	done

_TrainerSentOutText::
	text_ram wTrainerName
	text " je" ; " sent"
	line "poslao @" ; "out @"
	text_ram wEnemyMonNick
	text "!" ; "!"
	done

_NoWillText::
	text "Nema volje" ; "There's no will"
	line "za borbu!" ; "to fight!"
	prompt

_CantEscapeText::
	text "Ne možeš pobeći!" ; "Can't escape!"
	prompt

_NoRunningText::
	text "Ne! Ne možeš" ; "No! There's no"
	line "pobeći od" ; "running from a"
	cont "trenerske borbe!" ; "trainer battle!"
	prompt

_GotAwayText::
	text "Bezbedno pobegao!" ; "Got away safely!"
	prompt

_ItemsCantBeUsedHereText::
	text "Predmeti se ne" ; "Items can't be"
	line "koriste ovde." ; "used here."
	prompt

_AlreadyOutText::
	text_ram wBattleMonNick
	text " je" ; " is"
	line "već napolju!" ; "already out!"
	prompt

_MoveNoPPText::
	text "Nema PP za" ; "No PP left for"  todo: address
	line "ovaj potez!" ; "this move!"
	prompt

_MoveDisabledText::
	text "Potez je" ; "The move is"
	line "onesposobljen!" ; "disabled!"
	prompt

_NoMovesLeftText::
	text_ram wBattleMonNick
	text " nema" ; " has no"
	line "više poteza!" ; "moves left!"
	done

_MultiHitText::
	text "Pogodio" ; "Hit the enemy"
	line "@"
	text_decimal wPlayerNumHits, 1, 1
	text " puta!" ; " times!"
	prompt

_ScaredText::
	text_ram wBattleMonNick
	text " je" ; " is too"
	line "previše uplašen!" ; "scared to move!"
	prompt

_GetOutText::
	text "DUH: Odlazi..." ; "GHOST: Get out..."
	line "Odlazi..." ; "Get out..."
	prompt

_FastAsleepText::
	text "<USER>" ; "<USER>"
	line "tvrdo spava!" ; "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>" ; "<USER>"
	line "se probudio!" ; "woke up!"
	prompt

_IsFrozenText::
	text "<USER>" ; "<USER>"
	line "je skroz zaleđen!" ; "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>-u" ; "<USER>'s"
	line "je puna paraliza!" ; "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>" ; "<USER>"
	line "se trznuo!" ; "flinched!"
	prompt

_MustRechargeText::
	text "<USER>" ; "<USER>"
	line "mora da se puni!" ; "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>-u" ; "<USER>'s"
	line "više nije blok.!" ; "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>" ; "<USER>"
	line "je zbunjen!" ; "is confused!"
	prompt

_HurtItselfText::
	text "Povredio se u" ; "It hurt itself in"
	line "svojoj zbunji!" ; "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>-u" ; "<USER>'s"
	line "zbunjenost prošla!" ; "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>" ; "<USER>"
	line "skuplja energiju!" ; "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>" ; "<USER>"
	line "oslobodi energiju!" ; "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>-ov" ; "<USER>'s"
	line "besni napad!" ; "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>-ov" ; "<USER>'s"
	line "napad traje!" ; "attack continues!"
	done

_CantMoveText::
	text "<USER>" ; "<USER>"
	line "ne može da se mrda!" ; "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>-ov" ; "<USER>'s"
	line "@" ; "@"
	text_ram wNameBuffer
	text " je" ; " is"
	cont "blokiran!" ; "disabled!"
	prompt

_ActorNameText::
	text "<USER>@" ; "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "koristi @" ; "used @"
	text_end

_UsedMove2Text::
	text_start
	line "koristi @" ; "used @"
	text_end

_UsedInsteadText::
	text "umesto," ; "instead,"
	cont "@" ; "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer
	text "@" ; "@"

_EndUsedMove1Text::
	text "!" ; "!"
	done

_EndUsedMove2Text::
	text "!" ; "!"
	done

_EndUsedMove3Text::
	text "!" ; "!"
	done

_EndUsedMove4Text::
	text "!" ; "!"
	done

_EndUsedMove5Text::
	text "!" ; "!"
	done

_AttackMissedText::
	text "<USER>-ov" ; "<USER>'s"
	line "napad promaši!" ; "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>" ; "<USER>"
	line "je nastavio i" ; "kept going and"
	cont "slupao se!" ; "crashed!"
	prompt

_UnaffectedText::
	text "<TARGET>-u" ; "<TARGET>'s"
	line "ne smeta!" ; "unaffected!"
	prompt

_DoesntAffectMonText::
	text "Ne utiče na" ; "It doesn't affect"
	line "<TARGET>!" ; "<TARGET>!"
	prompt

_CriticalHitText::
	text "Kritičan udarac!" ; "Critical hit!"
	prompt

_OHKOText::
	text "Jednim udarcem!" ; "One-hit KO!"
	prompt

_LoafingAroundText::
	text_ram wBattleMonNick
	text " se" ; " is"
	line "zabušava." ; "loafing around."
	prompt

_BeganToNapText::
	text_ram wBattleMonNick
	text " je" ; " began"
	line "zadremao!" ; "to nap!"
	prompt

_WontObeyText::
	text_ram wBattleMonNick
	text " ne" ; " won't"
	line "sluša!" ; "obey!"
	prompt

_TurnedAwayText::
	text_ram wBattleMonNick
	text " se" ; " turned"
	line "okrenuo!" ; "away!"
	prompt

_IgnoredOrdersText::
	text_ram wBattleMonNick
	text_start
	line "ignoriše naredbe!" ; "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "ZAMENA je" ; "The SUBSTITUTE"
	line "primila udarac za" ; "took damage for"
	cont "<TARGET>!" ; "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>-ov" ; "<TARGET>'s"
	line "ZAMENA puče!" ; "SUBSTITUTE broke!"
	prompt

_BuildingRageText::
	text "<USER>-ov" ; "<USER>'s"
	line "BES raste!" ; "RAGE is building!"
	prompt

_MirrorMoveFailedText::
	text "OGLEDALO" ; "The MIRROR MOVE"
	next "nije uspeo!" ; "failed!"
	prompt

_HitXTimesText::
	text "Pogodio @" ; "Hit @"
	text_decimal wEnemyNumHits, 1, 1
	text " puta!" ; " times!"
	prompt

_GainedText::
	text_ram wNameBuffer
	text " dobio" ; " gained"
	line "@" ; "@"
	text_end

_WithExpAllText::
	text "uz ISK. SVIMA" ; "with EXP.ALL,"
	cont "@" ; "@"
	text_end

_BoostedText::
	text "pojačanih" ; "a boosted"
	cont "@" ; "@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 4
	text " ISK. poena!" ; " EXP. Points!"
	prompt

_GrewLevelText::
	text_ram wNameBuffer
	text " je" ; " grew"
	line "na nivo @" ; "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@" ; "!@"
	text_end

_WildMonAppearedText::
	text "Divlji @" ; "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "se pojavio!" ; "appeared!"
	prompt

_HookedMonAttackedText::
	text "Upecani" ; "The hooked"
	line "@" ; "@"
	text_ram wEnemyMonNick
	text_start
	cont "napade!" ; "attacked!"
	prompt

_EnemyAppearedText::
	text_ram wEnemyMonNick
	text_start
	line "se pojavio!" ; "appeared!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " želi" ; " wants"
	line "da se bori!" ; "to fight!"
	prompt

_UnveiledGhostText::
	text "VIZOR SILF-a" ; "SILPH SCOPE"
	line "otkri" ; "unveiled the"
	cont "ko je DUH!" ; "GHOST's identity!"
	prompt

_GhostCantBeIDdText::
	text "Šteta! DUH" ; "Darn! The GHOST"
	line "ne može da se ID!" ; "can't be ID'd!"
	prompt

_GoText::
	text "Kreni! @" ; "Go! @"
	text_end

_DoItText::
	text "Uradi to! @" ; "Do it! @"
	text_end

_GetmText::
	text "Napadni! @" ; "Get'm! @"
	text_end

_EnemysWeakText::
	text "Protivnik slabi!" ; "The enemy's weak!"
	line "Napadni! @" ; "Get'm! @"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!" ; "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text " @" ; " @"
	text_end

_EnoughText::
	text "dosta!@" ; "enough!@"
	text_end

_OKExclamationText::
	text "OK!@" ; "OK!@"
	text_end

_GoodText::
	text "dobro!@" ; "good!@"
	text_end

_ComeBackText::
	text_start
	line "Vrati se!" ; "Come back!"
	done

_SuperEffectiveText::
	text "Baš je" ; "It's super"
	line "delotvorno!" ; "effective!"
	prompt

_NotVeryEffectiveText::
	text "Nije baš" ; "It's not very"
	line "delotvorno..." ; "effective..."
	prompt

_SafariZoneEatingText::
	text "Divlji @" ; "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "jede!" ; "is eating!"
	prompt

_SafariZoneAngryText::
	text "Divlji @" ; "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "je ljut!" ; "is angry!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> pokupio" ; "<PLAYER> picked up"
	line "je ¥@" ; "¥@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!" ; "!"
	prompt

_ClearSaveDataText::
	text "Obriši sve" ; "Clear all saved"
	line "sačuvane podatke?" ; "data?"
	done

_WhichFloorText::
	text "Koji sprat" ; "Which floor do"
	line "želiš? " ; "you want? "
	done

_PartyMenuNormalText::
	text "Izaberi #MON." ; "Choose a #MON."
	done

_PartyMenuItemUseText::
	text "Na kog #MON" ; "Use item on which"
	line "da koristiš?" ; "#MON?"
	done

_PartyMenuBattleText::
	text "Kog #MON" ; "Bring out which"
	line "izvesti?" ; "#MON?"
	done

_PartyMenuUseTMText::
	text "Na kog #MON" ; "Use TM on which"
	line "TM?" ; "#MON?"
	done

_PartyMenuSwapMonText::
	text "Premesti #MON" ; "Move #MON"
	line "gde?" ; "where?"
	done

_PotionText::
	text_ram wNameBuffer
	text_start
	line "oporavio se za @" ; "recovered by @"
	text_decimal wHPBarHPDifference, 2, 3
	text "!" ; "!"
	done

_AntidoteText::
	text_ram wNameBuffer
	text " je" ; " was"
	line "izlečen od otrova!" ; "cured of poison!"
	done

_ParlyzHealText::
	text_ram wNameBuffer
	text "'s" ; "'s"
	line "bez paralize!" ; "rid of paralysis!"
	done

_BurnHealText::
	text_ram wNameBuffer
	text "'s" ; "'s"
	line "opek. izlečena!" ; "burn was healed!"
	done

_IceHealText::
	text_ram wNameBuffer
	text " je" ; " was"
	line "odleđen!" ; "defrosted!"
	done

_AwakeningText::
	text_ram wNameBuffer
	text_start
	line "se probudio!" ; "woke up!"
	done

_FullHealText::
	text_ram wNameBuffer
	text "'s" ; "'s"
	line "zdravlje vraćeno!" ; "health returned!"
	done

_ReviveText::
	text_ram wNameBuffer
	text_start
	line "je oživljen!" ; "is revitalized!"
	done

_RareCandyText::
	text_ram wNameBuffer
	text " je" ; " grew"
	line "na nivo @" ; "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@" ; "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER>" ; "<PLAYER> turned on"
	line "uključio je PC." ; "the PC."
	prompt

_AccessedBillsPCText::
	text "Pristup BIL-ovom" ; "Accessed BILL's"
	line "PC." ; "PC."

	para "Pristupio sistem" ; "Accessed #MON"
	line "čuvanje #MON." ; "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Pristupio nečijem" ; "Accessed someone's"
	line "PC." ; "PC."

	para "Pristupio sistem" ; "Accessed #MON"
	line "čuvanja #MON." ; "Storage System."
	prompt

_AccessedMyPCText::
	text "Pristupio mom PC." ; "Accessed my PC."

	para "Pristupio sistem" ; "Accessed Item"
	line "čuvanja stvari." ; "Storage System."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER>" ; "<PLAYER> turned on"
	line "uključio je PC." ; "the PC."
	prompt

_WhatDoYouWantText::
	text "Šta želiš" ; "What do you want"
	line "da radiš?" ; "to do?"
	done

_WhatToDepositText::
	text "Šta želiš" ; "What do you want"
	line "da odložiš?" ; "to deposit?"
	done

_DepositHowManyText::
	text "Koliko?" ; "How many?"
	done

_ItemWasStoredText::
	text_ram wNameBuffer
	text " je" ; " was"
	line "odložen preko PC." ; "stored via PC."
	prompt

_NothingToDepositText::
	text "Nemaš ništa" ; "You have nothing"
	line "za odlaganje." ; "to deposit."
	prompt

_NoRoomToStoreText::
	text "Nema mesta za" ; "No room left to"
	line "čuvanje stvari." ; "store items."
	prompt

_WhatToWithdrawText::
	text "Šta želiš" ; "What do you want"
	line "da uzmeš?" ; "to withdraw?"
	done

_WithdrawHowManyText::
	text "Koliko?" ; "How many?"
	done

_WithdrewItemText::
	text "Uzeo je" ; "Withdrew"
	line "@" ; "@"
	text_ram wNameBuffer
	text "." ; "."
	prompt

_NothingStoredText::
	text "Nema ničeg" ; "There is nothing"
	line "odloženog." ; "stored."
	prompt

_CantCarryMoreText::
	text "Ne možeš nositi" ; "You can't carry"
	line "više stvari." ; "any more items."
	prompt

_WhatToTossText::
	text "Šta želiš" ; "What do you want"
	line "da baciš?" ; "to toss away?"
	done

_TossHowManyText::
	text "Koliko?" ; "How many?"
	done

_AccessedHoFPCText::
	text "Pristupio sajtu" ; "Accessed #MON"
	line "#MON LIGE." ; "LEAGUE's site."

	para "Pristupio listu" ; "Accessed the HALL"
	line "KUĆE SLAVNIH." ; "OF FAME List."
	prompt

_SwitchOnText::
	text "Uključi!" ; "Switch on!"
	prompt

_WhatText::
	text "Šta?" ; "What?"
	done

_DepositWhichMonText::
	text "Kog #MON" ; "Deposit which"
	line "da odložiš?" ; "#MON?"
	done

_MonWasStoredText::
	text_ram wStringBuffer
	text " je" ; " was"
	line "u Kut. @" ; "stored in Box @"
	text_ram wBoxNumString
	text "." ; "."
	prompt

_CantDepositLastMonText::
	text "Ne možeš odložiti" ; "You can't deposit"
	line "posl. #MON!" ; "the last #MON!"
	prompt

_BoxFullText::
	text "Ups! Ovaj Kut." ; "Oops! This Box is"
	line "je pun #MON." ; "full of #MON."
	prompt

_MonIsTakenOutText::
	text_ram wStringBuffer
	text " je" ; " is"
	line "izvađen." ; "taken out."
	cont "Uzeo je @" ; "Got @"
	text_ram wStringBuffer
	text "." ; "."
	prompt

_NoMonText::
	text "Šta? Ovde nema" ; "What? There are"
	line "#MON!" ; "no #MON here!"
	prompt

_CantTakeMonText::
	text "Ne možeš uzeti" ; "You can't take"
	line "više #MON." ; "any more #MON."

	para "Prvo odloži" ; "Deposit #MON"
	line "#MON." ; "first."
	prompt

_ReleaseWhichMonText::
	text "Kog #MON" ; "Release which"
	line "osloboditi?" ; "#MON?"
	done

_OnceReleasedText::
	text "Kad oslobodiš," ; "Once released,"
	line "@" ; "@"
	text_ram wStringBuffer
	text " je zauvek" ; " is"
	cont "slobodan. OK?" ; "gone forever. OK?"
	done

_MonWasReleasedText::
	text_ram wStringBuffer
	text " je" ; " was"
	line "pušten napolje." ; "released outside."
	cont "Ćao @" ; "Bye @"
	text_ram wStringBuffer
	text "!" ; "!"
	prompt

_RequireCoinCaseText::
	text "Treba KUT. NOV.!@" ; "A COIN CASE is"
	line "@" ; "required!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "Menjamo tvoje" ; "We exchange your"
	line "žetone za nagr." ; "coins for prizes."
	prompt

_WhichPrizeText::
	text "Koju nagradu" ; "Which prize do"
	line "želiš?" ; "you want?"
	done

_HereYouGoText::
	text "Izvoli!@" ; "Here you go!@"
	text_end

_SoYouWantPrizeText::
	text "Dakle, želiš" ; "So, you want"
	line "@" ; "@"
	text_ram wNameBuffer
	text "?" ; "?"
	done

_SorryNeedMoreCoinsText::
	text "Žao mi je, treba" ; "Sorry, you need"
	line "više žetona.@"; "more coins.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "Ups! Nemaš" ; "Oops! You don't"
	line "dovoljno mesta.@"; "have enough room.@"
	text_end

_OhFineThenText::
	text "O, dobro onda.@"; "Oh, fine then.@"
	text_end

_GetDexRatedText::
	text "Hoćeš da ti" ; "Want to get your"
	line "ocenim #DEX?" ; "#DEX rated?"
	done

_ClosedOaksPCText::
	text "Veza sa PROF." ; "Closed link to"
	line "HRAST-ovog PC.@"; "PROF.OAK's PC.@"
	text_end

_AccessedOaksPCText::
	text "Pristup PROF." ; "Accessed PROF."
	line "HRAST-ovog PC." ; "OAK's PC."

	para "Pristup #DEX" ; "Accessed #DEX"
	line "Rating System." ; "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Gde bi" ; "Where would you"
	line "želeo da ideš?" ; "like to go?"
	done

_PleaseWaitText::
	text "OK, sačekaj" ; "OK, please wait"
	line "samo trenutak." ; "just a moment."
	done

_LinkCanceledText::
	text "Veza je" ; "The link was"
	line "otkazana." ; "canceled."
	done

_OakSpeechText1::
	text "Zdravo!" ; "Hello there!"
	line "Dobro došao u" ; "Welcome to the"
	cont "svet #MON!" ; "world of #MON!"

	para "Ja sam HRAST!" ; "My name is OAK!"
	line "Ljudi me zovu" ; "People call me"
	cont "#MON PROF!" ; "the #MON PROF!"
	prompt

_OakSpeechText2A::
	text "Ovaj svet je" ; "This world is"
	line "naseljen" ; "inhabited by"
	cont "stvorenjima" ; "creatures called"
	cont "zvanim #MON!@" ; "#MON!@"
	text_end

_OakSpeechText2B::
	text_start

	para "Za neke ljude," ; "For some people,"
	line "#MON su" ; "#MON are"
	cont "ljubimci Drugi ih" ; "pets. Others use"
	cont "koriste za borbe." ; "them for fights."

	para "Ja..." ; "Myself..."

	para "Proučavam #MON" ; "I study #MON"
	line "kao profesiju." ; "as a profession."
	prompt

_IntroducePlayerText::
	text "Prvo, kako se" ; "First, what is"
	line "zoveš?" ; "your name?"
	prompt

_IntroduceRivalText::
	text "Ovo je moj unuk." ; "This is my grand-"
	line "On ti je rival" ; "son. He's been"
	cont "još od bebe." ; "your rival since"
	cont "" ; "you were a baby."

	para "...Hm, kako se" ; "...Erm, what is"
	line "ono beše zove?" ; "his name again?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!" ; "<PLAYER>!"

	para "Tvoja lična" ; "Your very own"
	line "#MON legenda" ; "#MON legend is"
	cont "sad počinje!" ; "about to unfold!"

	para "Svet snova i" ; "A world of dreams"
	line "avantura sa" ; "and adventures"
	cont "#MON" ; "with #MON"
	cont "te čeka! Hajde!" ; "awaits! Let's go!"
	done

_DoYouWantToNicknameText::
	text "Da li želiš" ; "Do you want to"
	line "da daš nadimak" ; "give a nickname"
	cont "@" ; "to @"
	text_ram wNameBuffer
	text "?" ; "?"
	done

_YourNameIsText::
	text "Dakle, tvoje" ; "Right! So your"
	line "ime je <PLAYER>!" ; "name is <PLAYER>!"
	prompt

_HisNameIsText::
	text "Tačno! Sad se" ; "That's right! I"
	line "sećam! Zove se" ; "remember now! His"
	cont "<RIVAL>!" ; "name is <RIVAL>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text " i" ; " and"
	line "@" ; "@"
	text_ram wNameBuffer
	text " će" ; " will"
	cont "biti razmenjeni." ; "be traded."
	done

_TextIDErrorText::
	text_decimal hTextID, 1, 2
	text " GREŠKA." ; " ERROR."
	done

_ContCharText::
	text "<_CONT>@" ; "<_CONT>@"
	text_end
