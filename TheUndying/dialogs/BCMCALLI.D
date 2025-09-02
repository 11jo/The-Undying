BEGIN ~BCMCALLI~



// Fighter talks

IF WEIGHT #-1
~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("CallistoFighterTalk1","GLOBAL",0)
Class(Player1,FIGHTER_ALL)~ THEN BEGIN FighterChat
 SAY @0
 ++ @1 DO ~SetGlobal("CallistoFighterTalk1","GLOBAL",1)~ + fc1
 ++ @2 DO ~SetGlobal("CallistoFighterTalk1","GLOBAL",1)~ + fc2
 ++ @3 DO ~SetGlobal("CallistoFighterTalk1","GLOBAL",1)~ + fc3
END

IF ~~ fc1
 SAY @4
 ++ @5 + fc1a
 ++ @6 + fc1b
END

IF ~~ fc1a
 SAY @7
  ++ @8 + fcCalLrnFight
END

IF ~~ fc2
 SAY @9
 IF ~~ THEN EXIT
END

IF ~~ fc3
 SAY @10
 ++ @11 + fc3a
 ++ @12 + fc2
 ++ @13 + fc3b11
END

IF ~~ fc3a
 SAY @14
 ++ @15 + fcCalLrnFight
END

IF ~~ fc3b11
 SAY @16
 ++ @17 + fcCalLrnFight
END

IF ~~ fcCalLrnFight
 SAY @18
 ++ @19 + fcCalLrnFight1
END

IF ~~ fcCalLrnFight1
 SAY @20
 ++ @21 + fcCalLrnFight2
END

IF ~~ fcCalLrnFight2
 SAY @22
 ++ @23 + fcCalLrnFight3
END

IF ~~ fcCalLrnFight3
 SAY @24
 = @25
 = @26
 IF ~~ THEN EXIT
END

IF WEIGHT #-1
~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("CallistoFighterTalk2","GLOBAL",0)
!Class(Player1,FIGHTER_ALL)~ THEN BEGIN FighterChatb
 SAY @27
 ++ @1 DO ~SetGlobal("CallistoFighterTalk2","GLOBAL",1)~ + fc1b
 ++ @2 DO ~SetGlobal("CallistoFighterTalk2","GLOBAL",1)~ + fc2b
 ++ @28 DO ~SetGlobal("CallistoFighterTalk2","GLOBAL",1)~ + fc3b
END

IF ~~ fc1b
 SAY @4
 ++ @5 + fc1ab
 ++ @6 + fc3ab
END

IF ~~ fc1ab
 SAY @7
  ++ @8 + fcCalLrnFightb
END

IF ~~ fc2b
 SAY @29
 IF ~~ THEN EXIT
END

IF ~~ fc3b
 SAY @10
 ++ @11 + fc3ab
 ++ @12 + fc2b
 ++ @13 + fc3bb
END

IF ~~ fc3ab
 SAY @30
 ++ @15 + fcCalLrnFightb
END

IF ~~ fc3bb
 SAY @31
 ++ @32 + fcCalLrnFightb
END

IF ~~ fcCalLrnFightb
 SAY @18
 ++ @19 + fcCalLrnFight1b
END

IF ~~ fcCalLrnFight1b
 SAY @33
 ++ @21 + fcCalLrnFight2b
END

IF ~~ fcCalLrnFight2b
 SAY @22
 ++ @23 + fcCalLrnFight3b
END

IF ~~ fcCalLrnFight3b
 SAY @24
 = @25
 = @26
 IF ~~ THEN EXIT
END


/*
//////////////
History revelations with PC. Must have confronted and killed Belmin the elf hater.
/////////////
*/

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0400")
Global("CalliHistory1","GLOBAL",1)
OR(4)
Alignment(Player1,MASK_GOOD) 
Alignment(Player1,LAWFUL_NEUTRAL)
Alignment(Player1,NEUTRAL)
Alignment(Player1,CHAOTIC_NEUTRAL)
Global("CalHistReveal1","GLOBAL",0)~ THEN BEGIN reveal1
SAY @34
++ @35 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chr1
++ @36 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chrLeave
++ @37 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chr2
END

IF ~~ chr1
SAY @38
++ @39 + chr1a
++ @40 + chrLeave
END

IF ~~ chr1a
SAY @41
=
@42
END

IF ~~ chr2
SAY @43
=
@44
++ @39 + chr1a
++ @40 + chrLeave
END

IF ~~ chrLeave
SAY @45
++ @46 + chrL1
++ @47 + chr1
END

IF ~~ chrL1
SAY @48
  IF ~~ THEN DO ~LeaveParty() 
  SetGlobal("CalliJoined","GLOBAL",0)
  Enemy()
ChangeAIScript("CALLIX",OVERRIDE)
~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
AreaCheck("AR0400")
Global("CalliHistory1","GLOBAL",1)
Alignment(Player1,MASK_EVIL)
Global("CalHistReveal1","GLOBAL",0)~ THEN BEGIN reveal2
SAY @49
++ @35 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chrE1
++ @50 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chrenjoy
++ @37 DO ~SetGlobal("CalHistReveal1","GLOBAL",1)~ + chrE2
END

IF ~~ chrE1
SAY @38
++ @51 + chrE1a
END

IF ~~ chrE1a
SAY @52
IF ~~ THEN EXIT
END

IF ~~ chrE2
SAY @43
=
@44
++ @51 + chrE1a
END

IF ~~ chrenjoy
SAY @53
IF ~~ THEN EXIT
END


/*
////////////////////////
Global CalliGood = Redemption Banters
Global CalliEvil = Evil or have not been redeemed Banters
///////////////////////
*/


/*
///////////////////////////////
NPC Banters
//////////////////////////////
*/

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("BCalliKorgan1","GLOBAL",0)~ THEN BCMCALLI CalliKorgan1
@54 
DO ~SetGlobal("BCalliKorgan1","GLOBAL",1)~
== BKORGAN @55
== BCMCALLI @56
== BKORGAN @57
== BCMCALLI @58
== BKORGAN @59
== BCMCALLI @60
== BKORGAN @61
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
CombatCounter(0)
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliKorgan2","GLOBAL",0)~ THEN BKORGAN CalliKorgan2
@62
DO ~SetGlobal("BCalliKorgan2","GLOBAL",1)~
== BCMCALLI @63
== BKORGAN @64
== BCMCALLI @65
= @66
== BKORGAN @67
== BCMCALLI @68
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("BCalliAnomen1","GLOBAL",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BCMCALLI Knightquestion
@69
DO ~SetGlobal("BCalliAnomen1","GLOBAL",1)~
== BANOMEN @70
== BCMCALLI @71
== BANOMEN @72
== BCMCALLI @73
== BANOMEN @74
== BCMCALLI @75
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliJan1","GLOBAL",0)~ THEN BJAN Annoy1
@76
DO ~SetGlobal("BCalliJan1","GLOBAL",1)~
== BCMCALLI @77
== BJAN @78
== BCMCALLI @79
== BJAN @80
== BCMCALLI @81
== BJAN @82
== BCMCALLI @83
== BJAN @84
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliJan2","GLOBAL",0)~ THEN BJAN Annoy2
@85
DO ~SetGlobal("BCalliJan2","GLOBAL",1)~
== BCMCALLI @86
== BJAN @87
== BCMCALLI @88
== BJAN @89
== BCMCALLI @90
== BJAN @91
== BCMCALLI @92
== BJAN @93
== BCMCALLI @94
== BJAN @95
== BCMCALLI @96
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("BCalliAerie1","GLOBAL",0)~ THEN BCMCALLI CalliAerieTorture1
@97
DO ~SetGlobal("BCalliAerie1","GLOBAL",1)~
== BAERIE @98
== BCMCALLI @99
== BAERIE @100
== BCMCALLI @101
== BAERIE @102
== BCMCALLI @103
== BAERIE @104
== BCMCALLI @105
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
CombatCounter(0)
HPPercentLT("Aerie",20)
!HP("Aerie",1)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("BCalliAerie2","GLOBAL",0)~ THEN BCMCALLI CalliAerieCombat1
@106 
DO ~SetGlobal("BCalliAerie2","GLOBAL",1)~
== BAERIE @107
== BCMCALLI @108
== BAERIE @109
== BCMCALLI @110
== BAERIE @111
== BCMCALLI @112
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",STATE_SLEEPING)
Global("BCalliAerie3","GLOBAL",0)~ THEN BAERIE CalliAerie3
@113
DO ~SetGlobal("BCalliAerie3","GLOBAL",1)~
== BCMCALLI @114
== BAERIE @115
== BCMCALLI @116
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("BCalliJaheira1","GLOBAL",0)~ THEN BCMCALLI CalliJaheira1
@117 
DO ~SetGlobal("BCalliJaheira1","GLOBAL",1)~
== BJAHEIR @118
== BCMCALLI @119
== BJAHEIR @120
== BCMCALLI @121
== BJAHEIR @122
== BCMCALLI @123
== BJAHEIR @124
== BCMCALLI @125
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("BCalliJaheira2","GLOBAL",0)~ THEN BCMCALLI CalliJaheira2
@126
DO ~SetGlobal("BCalliJaheira2","GLOBAL",1)~
== BJAHEIR @127
== BCMCALLI @128
== BJAHEIR @129
== BCMCALLI @130
== BJAHEIR @131
== BCMCALLI @132
== BJAHEIR @133
== BCMCALLI @134
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("BCalliMazzy1","GLOBAL",0)~ THEN BCMCALLI CalliMazzy1
@135
DO ~SetGlobal("BCalliMazzy1","GLOBAL",1)~
== BMAZZY @136
== BCMCALLI @137
== BMAZZY @138
== BCMCALLI @139
== BMAZZY @140
== BCMCALLI @141
== BMAZZY @142
== BCMCALLI @143
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliMazzy2","GLOBAL",0)~ THEN BMAZZY CalliMazzy2
@144
DO ~SetGlobal("BCalliMazzy2","GLOBAL",1)~
== BCMCALLI @145
=  @146
== BMAZZY @147
== BCMCALLI @148
== BMAZZY @149
== BCMCALLI @150
=  @151
== BMAZZY @152
== BCMCALLI @153
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("BCalliMinsc1","GLOBAL",0)~ THEN BCMCALLI CalliMinsc1
@154
DO ~SetGlobal("BCalliMinsc1","GLOBAL",1)~
== BMINSC @155
== BCMCALLI @156
== BMINSC @157
== BCMCALLI @158
== BMINSC @159
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliMinsc2","GLOBAL",0)~ THEN BMINSC CalliMinsc2
@160
DO ~SetGlobal("BCalliMinsc2","GLOBAL",1)~
== BCMCALLI @161
== BMINSC @162
== BCMCALLI @163
== BMINSC @164
== BCMCALLI @165
== BMINSC @166
== BCMCALLI @167
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("BCalliNalia1","GLOBAL",0)~ THEN BCMCALLI CalliNalia1
@168
DO ~SetGlobal("BCalliNalia1","GLOBAL",1)~
== BNALIA @169
== BCMCALLI @170
= @171
== BNALIA @172
== BCMCALLI @173
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("BCalliKeldorn1","GLOBAL",0)~ THEN BCMCALLI CalliKel1
@174
DO ~SetGlobal("BCalliKeldorn1","GLOBAL",1)~
== BKELDOR @175
== BCMCALLI @176
= 
@177
== BKELDOR @178
== BCMCALLI @179
== BKELDOR @180
== BCMCALLI @181
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliKeldorn2","GLOBAL",0)~ THEN BKELDOR CalliKel2
@182
DO ~SetGlobal("BCalliKeldorn2","GLOBAL",1)~
== BCMCALLI @183
== BKELDOR @184
== BCMCALLI @185
= @186
== BKELDOR @187
== BCMCALLI @188
== BKELDOR @189
EXIT

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
TimeOfDay(DAY)
AreaType(OUTDOOR)
Global("BCalliCernd1","GLOBAL",0)~ THEN BCMCALLI CalliCernd
@190
DO ~SetGlobal("BCalliCernd1","GLOBAL",1)~
== BCERND @191
== BCMCALLI @192
== BCERND @193
== BCMCALLI @194
== BCERND @195
== BCMCALLI @196
== BCERND @197
EXIT


CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("BCalliHaer1","GLOBAL",0)~ THEN BCMCALLI CalliHaer1
@198 
DO ~SetGlobal("BCalliHaer1","GLOBAL",1)~
== BHAERDA @199
== BCMCALLI @200
== BHAERDA @201
== BCMCALLI @202
== BHAERDA @203
== BCMCALLI @204
EXIT

CHAIN
IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliHaer2","GLOBAL",0)~ THEN BHAERDA CalliHaer2
@205
DO ~SetGlobal("BCalliHaer2","GLOBAL",1)~
== BCMCALLI @206
== BHAERDA @207
== BCMCALLI @208
== BHAERDA @209
== BCMCALLI @210
== BHAERDA @211
== BCMCALLI @212
= @213
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("BCalliEdwin1","GLOBAL",0)~ THEN BCMCALLI CalliEdwin1
@214
DO ~SetGlobal("BCalliEdwin1","GLOBAL",1)~
== BEDWIN @215
== BCMCALLI @216
== BEDWIN @217
== BCMCALLI @218
== BEDWIN @219
== BCMCALLI @220
== BEDWIN @221
EXIT

CHAIN
IF ~InParty("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("BCalliEdwin2","GLOBAL",0)~ THEN BCMCALLI CalliEdwin2
@222  DO ~SetGlobal("BCalliEdwin2","GLOBAL",1)~
== BEDWIN @223
== BCMCALLI @224
== BEDWIN @225
== BCMCALLI @226
== BEDWIN @227
== BCMCALLI @228
= @229
== BEDWIN @230
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("BCalliValygar1","GLOBAL",0)~ THEN BCMCALLI CalliValygar1
@231
DO ~SetGlobal("BCalliValygar1","GLOBAL",1)~
== BVALYGA @232
== BCMCALLI @233
== BVALYGA @234
== BCMCALLI @235
== BVALYGA @236
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("BCalliValygar2","GLOBAL",0)~ THEN BCMCALLI CalliValygar2
@237
DO ~SetGlobal("BCalliValygar2","GLOBAL",1)~
== BVALYGA @238
== BCMCALLI @239
== BVALYGA @240
= @241
== BCMCALLI @242
== BVALYGA @243
== BCMCALLI @244
== BVALYGA @245
== BCMCALLI @246
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("BCalliYoshimo1","GLOBAL",0)~ THEN BCMCALLI CalliYoshimo1
@247
DO ~SetGlobal("BCalliYoshimo1","GLOBAL",1)~
== BYOSHIM @146
== BCMCALLI @248
== BYOSHIM @249
== BCMCALLI @250
= @251
== BYOSHIM @252
== BCMCALLI @253
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("BCalliYoshimo2","GLOBAL",0)~ THEN BCMCALLI CalliYoshimo2
@254
DO ~SetGlobal("BCalliYoshimo2","GLOBAL",1)~
== BYOSHIM @255
== BCMCALLI @256
== BYOSHIM @257
== BCMCALLI @258
== BYOSHIM @259
== BCMCALLI @260
EXIT

// Multiple NPC banters 

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("BCalliHaerAerie1","GLOBAL",0)~ THEN BCMCALLI CalliHaerAerie1
@261
DO ~SetGlobal("BCalliHaerAerie1","GLOBAL",1)~
== BHAERDA @262
== BCMCALLI @263
= @264
= @265
= @266
= @267
== BAERIE @268
== BHAERDA @269
== BCMCALLI @270
== BAERIE @271
== BCMCALLI @272
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("BCalliKorganMinsc1","GLOBAL",0)~ THEN BCMCALLI CalliKorganMinsc1
@273
DO ~SetGlobal("BCalliKorganMinsc1","GLOBAL",1)~
== BKORGAN @274
== BMINSC @275
== BCMCALLI @276
== BKORGAN @277
== BMINSC @278
== BCMCALLI @279
EXIT

/* ***********************  Other NPC Mod banters ***************************************** */


CHAIN IF ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("BCalliNina1","GLOBAL",0)~ THEN BCMCALLI CalliNina1
@280
DO ~SetGlobal("BCalliNina1","GLOBAL",1)~
== BCMNINAF @281
== BCMCALLI @282
== BCMNINAF @283
== BCMCALLI @284
== BCMNINAF @285
EXIT

CHAIN IF ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("BCalliNina2","GLOBAL",0)~ THEN BCMNINAF CalliNina2
@286
DO ~SetGlobal("BCalliNina2","GLOBAL",1)~
== BCMCALLI @287
== BCMNINAF @288
== BCMCALLI @289
== BCMNINAF @290
== BCMCALLI @291
== BCMNINAF @292
EXIT

CHAIN IF ~AreaCheck("AR1602")
InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",CD_STATE_NOTVALID)
Global("BCalliNina3","GLOBAL",0)~ THEN BCMCALLI CalliNina3
@293
DO ~SetGlobal("BCalliNina3","GLOBAL",1)~
== BCMNINAF @294
== BCMCALLI @295
== BCMNINAF @296
= @297
== BCMCALLI @298
== BCMNINAF @299
== BCMCALLI @300
= @301
EXIT







