_OaksLabRivalGrampsIsntAroundText::
	text "<RIVAL>: Ej" ; "<RIVAL>: Yo"
	line "<PLAYER>! Deda" ; "<PLAYER>! Gramps"
	cont "nije ovde!" ; "isn't around!"
	done

_OaksLabRivalGoAheadAndChooseText::
	text "<RIVAL>: Ha, ja" ; "<RIVAL>: Heh, I"
	line "ne moram biti" ; "don't need to be"
	cont "alav kao ti!" ; "greedy like you!"

	para "Hajde sad" ; "Go ahead and"
	line "biraj, <PLAYER>!" ; "choose, <PLAYER>!"
	done

_OaksLabRivalMyPokemonLooksStrongerText::
	text "<RIVAL>: Moj" ; "<RIVAL>: My"
	line "#MON izgleda" ; "#MON looks a"
	cont "mnogo jači." ; "lot stronger."
	done

_OaksLabThoseArePokeBallsText::
	text "To su #" ; "Those are #"
	line "LOPTE." ; "BALLs. They"
	cont "sadrže #MON!" ; "contain #MON!"
	done

_OaksLabYouWantCharmanderText::
	text "Dakle! Hoćeš" ; "So! You want the"
	line "vatrenog #MON," ; "fire #MON,"
	cont "ŽARDEVNJAK?" ; "CHARMANDER?"
	done

_OaksLabYouWantSquirtleText::
	text "Dakle! Hoćeš" ; "So! You want the"
	line "vodenog #MON," ; "water #MON,"
	cont "ŠKVIRTLA?" ; "SQUIRTLE?"
	done

_OaksLabYouWantBulbasaurText::
	text "Dakle! Hoćeš" ; "So! You want the"
	line "biljnog #MON," ; "plant #MON,"
	cont "LUKOSAUR?" ; "BULBASAUR?"
	done

_OaksLabMonEnergeticText::
	text "Ovaj #MON je" ; "This #MON is"
	line "baš živahan!" ; "really energetic!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> je dobio" ; "<PLAYER> received"
	line "jednog @" ; "a @"
	text_ram wNameBuffer
	text "!@" ; "!@"
	text_end

_OaksLabLastMonText::
	text "To je PROF.HRAST" ; "That's PROF.OAK's"
	line "zadnji #MON!" ; "last #MON!"
	done

_OaksLabOak1WhichPokemonDoYouWantText::
	text "HRAST: <PLAYER>," ; "OAK: Now, <PLAYER>,"
	line "kog #MON želiš" ; "which #MON do"
	cont "da uzmeš?" ; "you want?"
	done

_OaksLabOak1YourPokemonCanFightText::
	text "HRAST: Ako divlji" ; "OAK: If a wild"
	line "#MON naiđe," ; "#MON appears,"
	cont "tvoj #MON može" ; "your #MON can"
	cont "da se bori!" ; "fight against it!"
	done

_OaksLabOak1RaiseYourYoungPokemonText::
	text "HRAST: <PLAYER>," ; "OAK: <PLAYER>,"
	line "gaji svog mladog" ; "raise your young"
	cont "#MON u borbi" ; "#MON by making"
	cont "da ojača!" ; "it fight!"
	done

_OaksLabOak1DeliverParcelText::
	text "HRAST: O, <PLAYER>!" ; "OAK: Oh, <PLAYER>!"

	para "Kako je moj stari" ; "How is my old"
	line "#MON?" ; "#MON?"

	para "Pa, čini se da" ; "Well, it seems to"
	line "te baš voli." ; "like you a lot."

	para "Mora da si" ; "You must be"
	line "darovit kao" ; "talented as a"
	cont "#MON trener!" ; "#MON trainer!"

	para "Šta? Imaš" ; "What? You have"
	line "nešto za mene?" ; "something for me?"

	para "<PLAYER> preda" ; "<PLAYER> delivered"
	line "PAKET.@" ; "OAK's PARCEL.@"
	text_end

_OaksLabOak1ParcelThanksText::
	text_start
	para "To je posebna" ; "Ah! This is the"
	line "# LOPTA" ; "custom # BALL"
	cont "što sam poručio!" ; "I ordered!"
	cont "Hvala ti!" ; "Thank you!"
	done

_OaksLabOak1PokemonAroundTheWorldText::
	text "#MON širom" ; "#MON around the"
	line "sveta čekaju" ; "world wait for"
	cont "te, <PLAYER>!" ; "you, <PLAYER>!"
	done

_OaksLabOak1ReceivedPokeballsText::
	text "HRAST: Ne možeš" ; "OAK: You can't get"
	line "sve znati o" ; "detailed data on"
	cont "#MON samo" ; "#MON by just"
	cont "gledajući." ; "seeing them."

	para "Moraš da ih" ; "You must catch"
	line "uhvatiš! Uzmi" ; "them! Use these"
	cont "ovo za hvatanje" ; "to capture wild"
	cont "#MON." ; "#MON."

	para "<PLAYER> dobi 5" ; "<PLAYER> got 5"
	line "# LOPTE!@" ; "# BALLs!@"
	text_end

_OaksLabGivePokeballsExplanationText::
	text_start
	para "Kad divlji" ; "When a wild"
	line "#MON naiđe," ; "#MON appears,"
	cont "na potezu je!" ; "it's fair game."

	para "Samo baci #" ; "Just throw a #"
	line "LOPTU i probaj" ; "BALL at it and try"
	line "da ga uhvatiš!" ; "to catch it!"

	para "To ne uspe uvek," ; "This won't always"
	line "naravno." ; "work, though."

	para "Zdrav #MON" ; "A healthy #MON"
	line "može pobeći." ; "could escape. You"
	cont "Treba sreće!" ; "have to be lucky!"
	done

_OaksLabOak1ComeSeeMeSometimesText::
	text "HRAST: Navrati" ; "OAK: Come see me"
	line "ponekad." ; "sometimes."

	para "Želim da znam" ; "I want to know how"
	line "kako ti #DEX" ; "your #DEX is"
	cont "napreduje." ; "coming along."
	done

_OaksLabOak1HowIsYourPokedexComingText::
	text "HRAST: Drago mi" ; "OAK: Good to see "
	line "je! Kako ti" ; "you! How is your "
	cont "#DEX ide?" ; "#DEX coming? "
	cont "Daj da bacim" ; "Here, let me take"
	cont "pogled!" ; "a look!"
	prompt

_OaksLabPokedexText::
	text "Kao enciklopedija" ; "It's encyclopedia-"
	line "ali su stranice" ; "like, but the"
	cont "prazne!" ; "pages are blank!"
	done

_OaksLabOak2Text::
	text "?" ; "?"
	done

_OaksLabGirlText::
	text "PROF.HRAST je" ; "PROF.OAK is the"
	line "stručnjak za" ; "authority on"
	cont "#MON!" ; "#MON!"

	para "Mnogi #MON" ; "Many #MON"
	line "treneri ga baš" ; "trainers hold him"
	cont "poštuju!" ; "in high regard!"
	done

_OaksLabRivalFedUpWithWaitingText::
	text "<RIVAL>: Deda!" ; "<RIVAL>: Gramps!"
	line "Dosadilo mi je" ; "I'm fed up with"
	cont "čekanje!" ; "waiting!"
	done

_OaksLabOakChooseMonText::
	text "HRAST: <RIVAL>?" ; "OAK: <RIVAL>?"
	line "Da razmislim..." ; "Let me think..."

	para "A, da, tačno!" ; "Oh, that's right,"
	line "Rekoh ti da" ; "I told you to"
	cont "dođeš! Čekaj!" ; "come! Just wait!"

	para "Evo, <PLAYER>!" ; "Here, <PLAYER>!"

	para "Ovde su 3" ; "There are 3"
	line "#MON ovde!" ; "#MON here!"

	para "Haha!" ; "Haha!"

	para "Oni su u" ; "They are inside"
	line "# LOPTIMA." ; "the # BALLs."

	para "Kad sam bio mlad" ; "When I was young,"
	line "bio sam pravi" ; "I was a serious"
	cont "#MON trener!" ; "#MON trainer!"

	para "Sad kad sam star," ; "In my old age, I"
	line "imam samo 3," ; "have only 3 left,"
	cont "ali ti možeš" ; "but you can have"
	cont "jednog! Biraj!" ; "one! Choose!"
	done

_OaksLabRivalWhatAboutMeText::
	text "<RIVAL>: Hej!" ; "<RIVAL>: Hey!"
	line "Deda! A šta" ; "Gramps! What"
	cont "sa mnom?" ; "about me?"
	done

_OaksLabOakBePatientText::
	text "HRAST: Mirno!" ; "OAK: Be patient!"
	line "<RIVAL>, i ti" ; "<RIVAL>, you can"
	cont "dobijaš jednog!" ; "have one too!"
	done

_OaksLabOakDontGoAwayYetText::
	text "HRAST: Hej! Ne" ; "OAK: Hey! Don't go"
	line "idi još!" ; "away yet!"
	done

_OaksLabRivalIllTakeThisOneText::
	text "<RIVAL>: Onda ću" ; "<RIVAL>: I'll take"
	line "uzeti ovog!" ; "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> dobija" ; "<RIVAL> received"
	line "jednog @" ; "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabRivalIllTakeYouOnText::
	text "<RIVAL>: Čekaj" ; "<RIVAL>: Wait"
	line "<PLAYER>!" ; "<PLAYER>!"
	cont "Da proverimo" ; "Let's check out"
	cont "naše #MON!" ; "our #MON!"

	para "Hajde, boriću" ; "Come on, I'll take"
	line "se s tobom!" ; "you on!"
	done

_OaksLabRivalIPickedTheWrongPokemonText::
	text "ŠTA?" ; "WHAT?"
	line "Neverovatno!" ; "Unbelievable!"
	cont "Uzeo sam" ; "I picked the"
	cont "loš #MON!" ; "wrong #MON!"
	prompt

_OaksLabRivalAmIGreatOrWhatText::
	text "<RIVAL>: Da! Zar" ; "<RIVAL>: Yeah! Am"
	line "nisam sjajan?" ; "I great or what?"
	prompt

_OaksLabRivalSmellYouLaterText::
	text "<RIVAL>: Važi!" ; "<RIVAL>: Okay!"
	line "Teraću svog" ; "I'll make my"
	cont "#MON da se" ; "#MON fight to"
	cont "ojača!" ; "toughen it up!"

	para "<PLAYER>! Deda!" ; "<PLAYER>! Gramps!"
	line "Vidimo se!" ; "Smell you later!"
	done

_OaksLabRivalGrampsText::
	text "<RIVAL>: Deda!" ; "<RIVAL>: Gramps!"
	done

_OaksLabRivalWhatDidYouCallMeForText::
	text "<RIVAL>: Zašto si" ; "<RIVAL>: What did"
	line "me zvao?" ; "you call me for?"
	done

_OaksLabOakIHaveARequestText::
	text "HRAST: A da!" ; "OAK: Oh right! I"
	line "Imam molbu" ; "have a request"
	cont "za vas dvoje." ; "of you two."
	done

_OaksLabOakMyInventionPokedexText::
	text "Na stolu je" ; "On the desk there"
	line "moj izum," ; "is my invention,"
	cont "#DEX!" ; "#DEX!"

	para "Automatski" ; "It automatically"
	line "beleži podatke" ; "records data on"
	cont "o #MON koje" ; "#MON you've"
	cont "si video/uhv.!" ; "seen or caught!"

	para "To je vrhunska" ; "It's a hi-tech"
	line "enciklopedija!" ; "encyclopedia!"
	done

_OaksLabOakGotPokedexText::
	text "HRAST: <PLAYER> i" ; "OAK: <PLAYER> and"
	line "<RIVAL>! Uzmite" ; "<RIVAL>! Take"
	cont "ovo sa sobom!" ; "these with you!"

	para "<PLAYER> dobi" ; "<PLAYER> got"
	line "HRASTOV #DEX!@" ; "#DEX from OAK!@"
	text_end

_OaksLabOakThatWasMyDreamText::
	text "Da napravim" ; "To make a complete"
	line "potpun vodič o" ; "guide on all the"
	cont "svim #MON na" ; "#MON in the"
	cont "svetu..." ; "world..."

	para "To mi je bio san!" ; "That was my dream!"

	para "Ali, prestar sam!" ; "But, I'm too old!"
	line "Ne mogu više!" ; "I can't do it!"

	para "Zato želim vas" ; "So, I want you two"
	line "da ispunite" ; "to fulfill my"
	cont "moj san!" ; "dream for me!"

	para "Pokrenite se," ; "Get moving, you"
	line "vas dvoje!" ; "two!"

	para "Ovo je veliki" ; "This is a great"
	line "poduhvat u" ; "undertaking in"
	cont "#MON istor.!" ; "#MON history!"
	done

_OaksLabRivalLeaveItAllToMeText::
	text "<RIVAL>: Važi" ; "<RIVAL>: Alright"
	line "Deda! Ostavi" ; "Gramps! Leave it"
	cont "meni sve!" ; "all to me!"

	para "<PLAYER>, žao mi" ; "<PLAYER>, I hate to"
	line "je, ali mi ne" ; "say it, but I"
	cont "trebaš!" ; "don't need you!"

	para "Znam! Ja ću" ; "I know! I'll"
	line "uzeti MAPU GRADA" ; "borrow a TOWN MAP"
	cont "od sestre!" ; "from my sis!"

	para "Reći ću joj" ; "I'll tell her not"
	line "da ti ne da," ; "to lend you one,"
	cont "<PLAYER>! Haha!" ; "<PLAYER>! Hahaha!"
	done

_OaksLabScientistText::
	text "Proučavam #MON" ; "I study #MON as"
	line "kao POMOČNIK"  ; "PROF.OAK's AIDE."
	cont "HRASTA."
	done
