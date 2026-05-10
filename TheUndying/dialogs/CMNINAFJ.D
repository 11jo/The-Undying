BEGIN ~CMNINAFJ~


/* General PC and Nina banters   */

IF ~Global("CM_NinaferTalk","GLOBAL",2)~ THEN BEGIN NinaQuestions
  SAY @0
++ @1 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",3)~ + NQ1
++ @2 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",3)~ + NQ1
END

IF ~~ NQ1
SAY @3
++ @4 + NQ2
END

IF ~~ NQ2
SAY @5
++ @6 + NQ3
END

IF ~~ NQ3
SAY @7
IF ~~ EXIT
END

// Nina chat 2

IF ~Global("CM_NinaferTalk","GLOBAL",4)~ THEN BEGIN NinaChat2
SAY @8
++ @9 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",5)~ + Liked_Home
++ @10 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",5)~ + Hated_Home
++ @11 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",5)~ + Ok_Home
++ @12 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",5)~ EXIT
END

IF ~~ Liked_Home
SAY @13
++ @14 + L_C1
++ @15 + L_C1
++ @16 EXIT
END

IF ~~ L_C1
SAY @17 IF ~~ THEN EXIT
END

IF ~~ Hated_Home
SAY @18
++ @19 EXIT
++ @20 EXIT
END

IF ~~ Ok_Home
SAY @21 IF ~~ THEN EXIT
END

// Nina chat 3

IF ~Global("CM_NinaferTalk","GLOBAL",6)~ THEN BEGIN NinaChat3
SAY @22
IF ~~ THEN REPLY @23 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",7)~ GOTO NC1
IF ~~ THEN REPLY @24 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",7)~ GOTO NC1
IF ~~ THEN REPLY @25 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",7)~ GOTO NC2
END

IF ~~ THEN BEGIN NC1
  SAY @26
IF ~~ THEN REPLY @27 GOTO NC3
END

IF ~~ THEN BEGIN NC2
  SAY @28 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NC3
  SAY @29
IF ~~ THEN REPLY @30 GOTO NC4
++ @31 + NC5
END

IF ~~ THEN BEGIN NC4
  SAY @32 IF ~~ THEN EXIT
END

IF ~~ NC5
SAY @33
++ @34 + NC6
++ @35 + NC7
++ @36 + NC8
END

IF ~~ NC6
SAY @37
IF ~~ EXIT
END

IF ~~ NC7
SAY @38
IF ~~ EXIT
END

IF ~~ NC8
SAY @39
IF ~~ EXIT
END

// Nina chat 4

IF ~Global("CM_NinaferTalk","GLOBAL",8)~ THEN BEGIN NinaChat4
SAY @40
++ @41 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",9)~ + N_S1
++ @42 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",9)~ + N_S2
++ @43 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",9)~ + N_S3
END

IF ~~ N_S1
SAY @44
++ @45 + N_S4
++ @46 + N_S5
END

IF ~~ N_S2
SAY @47
IF ~~ EXIT
END

IF ~~ N_S3
SAY @48
IF ~~ EXIT
END

IF ~~ N_S4
SAY @49
IF ~~ EXIT
END

IF ~~ N_S5
SAY @50
IF ~~ EXIT
END

// Nina chat 5

IF ~Global("CM_NinaferTalk","GLOBAL",10)~ THEN BEGIN NinaChat5
SAY @51
 ++ @52 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",11)~ + NC7a
 ++ @53 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",11)~ + NC7b
 ++ @54 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",11)~ + NC7c
 ++ @55 DO ~RealSetGlobalTimer("CM_NinaferTalkTimer","GLOBAL",3600) SetGlobal("CM_NinaferTalkCheck","GLOBAL",0) SetGlobal("CM_NinaferTalk","GLOBAL",11)~ + NC7d
END

IF ~~ NC7a
 SAY @56
 ++ @57 + NC7b
 ++ @58 + NC7c
 ++ @59 + NC7d
END

IF ~~ NC7b
 SAY @60
 ++ @61 + NC7bHis
 ++ @62 + NC7bScr
 ++ @63 + NC7bBored
END

IF ~~ NC7bHis
 SAY @64
 IF ~~ THEN EXIT
END

IF ~~ NC7bScr
 SAY @65
 IF ~~ THEN EXIT
END

IF ~~ NC7bBored
 SAY @66
 IF ~~ THEN EXIT
END

IF ~~ NC7c
 SAY @67
 ++ @68 + NC7cEgo
 ++ @69 + NC7cFriends
 ++ @70 + NC7cWealth
 ++ @71 + NC7cHonor
END

IF ~~ NC7cEgo
   SAY @72
 IF ~~ THEN EXIT
END

IF ~~ NC7cFriends
 SAY @73
 IF ~~ THEN EXIT
END

IF ~~ NC7cWealth
 SAY @74
 IF ~~ THEN EXIT
END

IF ~~ NC7cHonor
 SAY @75
 IF ~~ THEN EXIT
END

IF ~~ NC7d
 SAY @76
 ++ @68 + NC7cEgo
 ++ @69 + NC7cFriends
 ++ @77 + NC7cWealth
 ++ @78 + NC7cHonor
END



// Old first quest

IF ~Global("FoundThievesC","GLOBAL",1)
Global("MystraQuest","GLOBAL",0)
Dead("cmlillian")
PartyHasItem("CMBOOK99")~ THEN BEGIN HappyNina
SAY @79
= @80 IF ~~ THEN DO ~SetGlobal("FoundThievesC","GLOBAL",2)~ EXIT
END

/*
 Truth revealed info
*/

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("NinaKnowsElhan","GLOBAL",1)~ THEN BEGIN NinaElhanRemark
 SAY @81
++ @82 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",2)~ + NER1
++ @83 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",2)~ + NER2
END

IF ~~ NER1
SAY @84
++ @85 + NER3
++ @86 + NER3
END

IF ~~ NER2
SAY @87
++ @88 + NER3
++ @86 + NER3
END

IF ~~ NER3
SAY @89
IF ~~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR2800")
Global("NinaHomeAttack","GLOBAL",0)~ THEN BEGIN NinaHomeAttack
  SAY @90
++ @91 DO ~SetGlobal("NinaHomeAttack","GLOBAL",1)~ GOTO NinaHomeFlames
++ @92 DO ~SetGlobal("NinaHomeAttack","GLOBAL",1)~ GOTO NinaHomeFlames
END

IF ~~ NinaHomeFlames
SAY @93
++ @94 + StartExplaining
++ @95 + StartExplaining
END

IF ~~ StartExplaining
SAY @96
++ @97 + Ur_Right
++ @98 + Ur_Right
++ @99 + NinaBegs
END

IF ~~ NinaBegs
SAY @100
++ @101 + Ur_Right
++ @102 + Ur_Right
END

IF ~~ Ur_Right
SAY @103
IF ~~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR2807")
Dead("dragblac")
CombatCounter(0)
Global("NinaDragon1","GLOBAL",0)~ THEN BEGIN NinaDragon
  SAY @104
++ @105 DO ~SetGlobal("NinaDragon1","GLOBAL",1)~ + N_D1
++ @106 DO ~SetGlobal("NinaDragon1","GLOBAL",1)~ + N_D2
END

IF ~~ N_D1
SAY @107
++ @108 + N_D3
++ @109 + N_D4
++ @110 + N_D2
END

IF ~~ N_D2
SAY @111
IF ~~ EXIT
END

IF ~~ N_D3
SAY @112
IF ~~ EXIT
END

IF ~~ N_D4
SAY @113
IF ~~ EXIT
END



// Reputation dialogues

IF ~ReputationLT(Player1,2)
Global("NinaTooEvil","GLOBAL",0)
~ THEN BEGIN TooEvil
  SAY @114
IF ~~ THEN DO ~LeaveParty() EscapeAreaMove("AR0406",470,1490,0)~ EXIT
END

IF ~AreaCheck("AR0502")
	Global("Nina_EnteredTanner2","AR0502",0)~ THEN BEGIN TannerComment
  SAY @115
  IF ~~ THEN DO ~SetGlobal("Nina_EnteredTanner2","AR0502",1)~ EXIT
END

CHAIN IF
~See("cmninaf")
InParty("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("BelminNina","AR0700",0)~ THEN BELMIN NinaBelminNut
@116
DO ~SetGlobal("BelminNina","AR0700",1)~
== CMNINAFJ @117
== BELMIN @118
== CMNINAFJ @119
== BELMIN @120
== CMNINAFJ @121
END


/* CHAIN IF WEIGHT #-1
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
THEN salvanas NinaSalvanas
~Well, well what do we have here? Such a lovely looking elf you are my lady. Such fine golden blond hair that I would love to run my hands through. My name is Salvanas. Mayhaps we can get to know each other in a very personal way.~
== CMNINAFJ ~Ugh. You are quite the forward one yes? I really don't..~
== SALVANAS ~Come my lovely, I can feel the power of your passion drawing to me. How I desire to run my hands through your soft golden blond hair.~
== CMNINAFJ ~Not to be rude or anything but touch me and you won't have any hands to feel with. (Nina reaches for her sword.)~
== SALVANAS ~I see your "point". Perhaps some other time when you are in the mood for romance?~
EXIT  */

// Salvanas the pervert chat.

CHAIN IF WEIGHT #-1
~See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaSalvanas","LOCALS",0)~
 THEN SALVANAS NinSalvanas
@122
=
@123 DO ~SetGlobal("NinaSalvanas","LOCALS",1)~
== CMNINAFJ @124
== SALVANAS @125
== CMNINAFJ @126
== SALVANAS @127
== CMNINAFJ @128
== SALVANAS @129
== CMNINAFJ @130
== SALVANAS @131
== CMNINAFJ @132
EXIT


/* CHAIN IF WEIGHT #-1
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaCragmoon","GLOBAL",0)~
THEN MURCRAG NinaCrag
~Ninafer bless be, it's so nice to see you again child. How are you doing these days?~ DO ~SetGlobal("NinaCragmoon","GLOBAL",1)~
== CMNINAFJ ~I am doing fine, thanks for asking. How has your herbal medicine practice been going?~
== MURCRAG ~It's been going fine deary, I've made a few cures with them and made some potions. But I've not made much progress other then that. These old bones do not move like they use to.~
== CMNINAFJ ~That's a shame to hear. I guess you have not found anything to restore youthfulness in the old?~
== MURCRAG ~No I have not unfortunately. You still look as young as the day I last saw you Nina.~
== CMNINAFJ ~Why thank you for saying that. We elves do not show our age like humans.~
== MURCRAG ~Hmm yes I forgot about that. Wish I was born as an elf but fate decreeds who we are in the end I suppose. Well I should get back to tendin my potions Nina. Nice to see you once again.~
== CMNINAFJ ~It was nice to see you again also Mrs. Cragmoon. Farwell.~
EXIT */

CHAIN IF WEIGHT #-1 ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaTown7","GLOBAL",0)~ THEN FTOWN7 NinaTown7
@133
DO ~SetGlobal("NinaTown7","GLOBAL",1)~
== CMNINAFJ @134
EXIT

CHAIN  IF WEIGHT #-1 ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaUrchin1","GLOBAL",0)~ THEN URCHIN1 NinaUrchin1
@135
DO ~SetGlobal("NinaUrchin1","GLOBAL",1)~
== CMNINAFJ @136
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaUrchin2","GLOBAL",0)~ THEN URCHIN2 NinaUrchin2
@137
DO ~SetGlobal("NinaUrchin2","GLOBAL",1)~
== CMNINAFJ @138
== URCHIN2 @139
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("NinaUrchin3","GLOBAL",0)~ THEN URCHIN3 NinaUrchin3
@140
DO ~SetGlobal("NinaUrchin3","GLOBAL",1)~
== CMNINAFJ
@141
== URCHIN3
@142
== CMNINAFJ
@143
EXIT

INTERJECT REEDLE 2 NinaFishMonger
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@144
== REEDLE IF ~InParty("cmninaf")~ THEN
@145 DO ~TakePartyGold(2)~
END REEDLE 3

I_C_T BHNALLA 16 NinaNalla
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@146
END

I_C_T BODHI 4 NinaBodhi
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@147
END

I_C_T BODHI 20 NinaBodhi2
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@148
END

I_C_T C6BODHI 4 NinaC6bodhiChat
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@149
END

I_C_T CERND 70 NinaCerndMeeting
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@150
END

I_C_T COHRVALE 1 NinaCohrvale
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @151
 == COHRVALE
 @152
END

INTERJECT_COPY_TRANS COPGREET 1 NinaFrankie
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @153
END

I_C_T2 CUSTOM 0 NinaCustom
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@154
END

INTERJECT_COPY_TRANS DELCIA 0 NinaDelcia1
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @155
== DELCIA
 @156
END

INTERJECT_COPY_TRANS DELCIA 17 NinaDelcia2
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @155
END

I_C_T EDWIN 3 NinaEdwin
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@157
END

I_C_T EDWINJ 10 NinaEdwinNether
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@158
== EDWIN IF ~InParty("cmninaf")~ THEN
@159
END

I_C_T2 HAEGAN 1 NinaHaegan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@160
END

I_C_T HELLJON 7 NinaFYouIrenicus
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@161
END

I_C_T HELLJON 8 NinaFYouIrenicus
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@161
END

I_C_T HELLJON 9 NinaFYouIrenicus
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@161
END

I_C_T HELLJON 10 NinaFYouIrenicus
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@161
END

I_C_T HENDAK 4 NinaHendakMeet
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@162
END

INTERJECT_COPY_TRANS HENDAK 17 NinaHendak
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @163
END

I_C_T IMOEN2 22 NinaLeaveImoen
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@164
END

INTERJECT_COPY_TRANS ISAEA 28 NinaNaliaKidnap
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@165
END

I_C_T KELDORJ 23 NinaKeldornAdultery
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@166
END

I_C_T ISAEA 29 NinaNaliaKidnap
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@167
=
@168
END

I_C_T JAHEIRAJ 54 NinaJaheiraPoison
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@169
== JAHEIRAJ IF ~InParty("cmninaf")~ THEN
@170
END

INTERJECT_COPY_TRANS KELDORJ 23 NinaMariaAdultery
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@171
=
@172
END

I_C_T LEHTIN 10 NinaLehtin
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@173
END

INTERJECT_COPY_TRANS LYROS 24 NinaXzar
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @174
== LYROS
 @175
END

I_C_T MAEVAR 17 NinaMaevarSteal
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@176
END

I_C_T MAZZYJ 115 KetoMazzyPoison
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@177
END

I_C_T NALIAJ 79 NinaNaliaFuneral
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@178
END

I_C_T NALIAJ 169 HeirComment
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @179
END


I_C_T pircor03 0 NinaMalePros
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@180
END


I_C_T pircor03 1 NinaMalePros
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@180
END


I_C_T pircor03 2 NinaMalePros
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@180
END

I_C_T PLAYER1 5 NinaSeesSlayer
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@181
END

I_C_T PLAYER1 15 NinaLonkTheMad
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@182
END

I_C_T PLAYER1 16 NinaIrenicusDead
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@183
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@184
END

INTERJECT_COPY_TRANS PLAYER1 25 NinaInHell
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@185
=
@186
END

I_C_T PPAPHRIL 4 NinaAphril
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@187
END

I_C_T PPIRENI2 0 NinaJon
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@188
END

I_C_T PPIRENI2 35 NinaJon2
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@189 DO ~SetGlobal("NinaBackground","GLOBAL",1)~
END

I_C_T PPSAEM3 51 NinaSaemonGith
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@190
END

INTERJECT_COPY_TRANS PPSAEM 58 NinaSaemon
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @191
END

I_C_T RENAL 22 NinaRenal
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@192
END

/* I_C_T RIFTG03 7 NinaAmaunatorGod
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
~A forgotten god? A god that is dead but not.~
=
~He has the device that the Unseeing Eye wants? Odd.~
END */

I_C_T RIFTG03 29 NinaGodDeath
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@193
END

I_C_T SAHKNG01 36 NinaSahking
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@194
END

I_C_T SAMIA 24 NinaSamia
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @195
END

INTERJECT_COPY_TRANS SLAVERM 0 NinaSlaverMage
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @196
END

I_C_T SURLY 17 NinaSurly
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@197
END

I_C_T TOLGER 80 NinaTolgerias
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @198
END

INTERJECT_COPY_TRANS TRGRD03 9 NinaTradmeetGuard
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @199
END

I_C_T UDDEMON 9 NinaDemon
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@200 DO ~LeaveParty() Enemy()~
END

I_C_T UDDEMON 11 NinaDemon
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@200 DO ~LeaveParty() Enemy()~
END

I_C_T UDPHAE01 61 NinaPhaereGnomes
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@201
END

INTERJECT_COPY_TRANS UDPHAE01 151 NinaDeceivePhaere
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@202
END


I_C_T UDSILVER 26 NinaSilver
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@203
END

I_C_T UDSIMYAZ 5 NinaSimyaz
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@204
END

I_C_T UDSIMYAZ 17 NinaSimyaz
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@205
END

INTERJECT_COPY_TRANS UDSOLA01 117 NinaKillSola
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@206
==UDSOLA01
@207
END

INTERJECT_COPY_TRANS UDSOLA01 162 NinaMistrustSola
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@208
END

I_C_T UHMAY01 18 NinaImnesProblem
== CMNINAFJ IF ~GlobalGT("Chapter","GLOBAL","%bg2_chapter_5%")
InParty("cmninaf")~ THEN @209
END

I_C_T UHMAY01 18 NinaImnesProblem1
== CMNINAFJ IF ~!GlobalGT("Chapter","GLOBAL","%bg2_chapter_5%")
InParty("cmninaf")~ THEN @210
END

I_C_T VALYGAR 4 NinaValygarWanted
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
 @211 
END

I_C_T VALYGAR 43 NinaValygarMeet
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@212
END

I_C_T VICONI 2 NinaVicciGreet
== CMNINAFJ IF ~InParty("cmninaf")~ THEN 
@213
END

INTERJECT_COPY_TRANS YUSUF 2 NinaYusuf
== CMNINAFJ IF ~InParty("cmninaf")~ THEN
@214
END


/* //////////////////////////// Background Information */

I_C_T C6ELHAN2 1 NinaElhan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN @215
== C6ELHAN2 @216 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",1)RealSetGlobalTimer("NinaElhanTime","GLOBAL",1500)~
END

I_C_T C6ELHAN2 2 NinaElhan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN @215
== C6ELHAN2 @216 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",1)RealSetGlobalTimer("NinaElhanTime","GLOBAL",1500)~
END

I_C_T C6ELHAN2 3 NinaElhan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN @215
== C6ELHAN2 @216 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",1)RealSetGlobalTimer("NinaElhanTime","GLOBAL",1500)~
END

I_C_T C6ELHAN2 4 NinaElhan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN @215
== C6ELHAN2 @216 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",1)RealSetGlobalTimer("NinaElhanTime","GLOBAL",1500)~
END

I_C_T C6ELHAN2 5 NinaElhan
== CMNINAFJ IF ~InParty("cmninaf")~ THEN @215
== C6ELHAN2 @217 DO ~SetGlobal("NinaKnowsElhan","GLOBAL",1)RealSetGlobalTimer("NinaElhanTime","GLOBAL",1500)~
END

EXTEND_BOTTOM PLAYER1 33 
IF ~InParty("cmninaf")
Global("NinaTOLTalk","GLOBAL",0)~ THEN DO ~SetGlobal("NinaTOLTalk","GLOBAL",1)~ GOTO TreeOfLifeChat
END

APPEND PLAYER1
IF ~~ THEN BEGIN TreeOfLifeChat
SAY @218
IF ~~ THEN REPLY @219 EXTERN CMNINAFJ LetsGo
IF ~~ THEN REPLY @220 EXTERN CMNINAFJ NotGoing
IF ~~ THEN REPLY @221 EXTERN CMNINAFJ NoChance
END
END

APPEND CMNINAFJ
IF ~~ THEN BEGIN LetsGo
SAY @222
IF ~~ GOTO NinaThanks
END

IF ~~ THEN BEGIN NinaThanks
SAY @223
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN NotGoing
SAY @224
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN NoChance
SAY @225
IF ~~ GOTO NinaThanks
END
END


