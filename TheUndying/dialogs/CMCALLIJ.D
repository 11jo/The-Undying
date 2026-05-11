BEGIN ~CMCALLIJ~

// Zero signal

IF ~Global("CallistoJoinTalk","GLOBAL",1)~ THEN BEGIN pc_chat1
SAY @0
++ @1 DO ~SetGlobal("CallistoJoinTalk","GLOBAL",2)~ + swordarm
++ @2 DO ~SetGlobal("CallistoJoinTalk","GLOBAL",2)~ + warlord
++ @3 DO ~SetGlobal("CallistoJoinTalk","GLOBAL",2)~ + notalk
++ @4 DO ~SetGlobal("CallistoJoinTalk","GLOBAL",2)~ + crazy
END

IF ~~ swordarm
SAY @5
++ @6 EXIT
++ @7 + evilfighter
++ @8 + lgfighter
++ @9 + nfighter
END

IF ~~ evilfighter
SAY @10
IF ~~ THEN EXIT
END

IF ~~ lgfighter
SAY @11
IF ~~ THEN EXIT
END

IF ~~ nfighter
SAY @12
++ @13 + crazy
END

IF ~~ warlord
SAY @14
++ @15 + warlord2
END

IF ~~ warlord2
SAY @16
++ @17 + crazy
++ @18 + warlord3
END

IF ~~ warlord3
SAY @19
IF ~~ THEN EXIT
END

IF ~~ notalk
SAY @20
IF ~~ THEN EXIT
END

IF ~~ crazy
SAY @21
IF ~~ THEN EXIT
END

// Second Chat

IF ~Global("CallistoTalk","GLOBAL",2)~ THEN BEGIN pc_chat2
SAY @22
++ @23 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",3)~ + pcc2a
++ @24 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",3)~ + pcc2b
++ @25 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",3)~ + pcc2c
END

IF ~~ pcc2a
SAY @26
++ @27 + pcc2b
++ @25 + pcc2c
END

IF ~~ pcc2b
SAY @28
++ @29 + pcc2b1
++ @30 + pcc2b2
++ @31 + pcc2b3
END

IF ~~ pcc2b1
SAY @32
IF ~~ THEN EXIT
END

IF ~~ pcc2b2
SAY @33
IF ~~ THEN EXIT
END

IF ~~ pcc2b3
SAY @34
IF ~~ THEN EXIT
END

IF ~~ pcc2c
SAY @35
++ @36 + pcc2b
END


/* New dialogs 11/--/07 */

// Third Chat


IF ~Global("CallistoTalk","GLOBAL",4)~ THEN BEGIN CalliTalk8
SAY @37
 ++ @38 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",5)~ + CT8a
 ++ @39 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",5)~ + CT8a
 ++ @40 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",5)~ + CT8a
 ++ @41 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",5)~ + CT8b
END

IF ~~ THEN BEGIN CT8a
SAY @42
++ @43 + CT8c
++ @44 + CT8b
++ @45 + CT8c
END

IF ~~ THEN BEGIN CT8b
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT8c
SAY @47
++ @48 + CT8d
++ @49 + CT8e
++ @50 + CT8e
END

IF ~~ THEN BEGIN CT8d
SAY @51
++ @52 + CT8f
++ @53 + CT8f
END

IF ~~ THEN BEGIN CT8e
SAY @54
 ++ @55 + CT8g
 ++ @56 + CT8g
END

IF ~~ THEN BEGIN CT8f
SAY @57
= @58
= @59
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT8g
SAY @60
= @58
= @59
IF ~~ THEN EXIT
END

// Fourth Chat


IF ~Global("CallistoTalk","GLOBAL",6)~ THEN BEGIN CalliTalk10
SAY @61
 ++ @62 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",7)~ + CT10a
 ++ @63 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",7)~ + CT10b
 ++ @64 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",7)~ + CT10c
 ++ @65 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",7)~ + CT10d
END

IF ~~ THEN BEGIN CT10a
SAY @66
 ++ @67 + CT10a1
 ++ @68 + CT10a2
END

IF ~~ THEN BEGIN CT10a1
SAY @69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT10a2
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT10b
SAY @71
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT10c
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN CT10d
SAY @73
= @74
 ++ @75 + CT10d1
 ++ @76 + CT10d2
END

IF ~~ THEN BEGIN CT10d1
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT10d2
SAY @78
IF ~~ THEN EXIT
END

// Fifth Chat

IF ~Global("CallistoTalk","GLOBAL",8)~ THEN BEGIN CalliTalk12
SAY @79
++ @80 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",9)~ + CT12a
++ @81 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",9)~ + CT12b
++ @82 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",9)~ + CT12c
++ @83 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",9)~ + CT12d
END

IF ~~ THEN CT12a
SAY @84
 ++ @85 + CT12e
 ++ @86 + CT12f
 ++ @87 + CT12e
 ++ @88 + CT12g
END

IF ~~ THEN BEGIN CT12b
SAY @89
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT12c
SAY @90
++ @80 + CT12a
++ @91 + CT12b
END

IF ~~ THEN BEGIN CT12d
SAY @92
 ++ @85 + CT12e
 ++ @93 + CT12f
 ++ @87 + CT12e
 ++ @88 + CT12g
END

IF ~~ THEN BEGIN CT12e
SAY @94
 ++ @95 + CT12e1
 ++ @96 + CT12e1
END


IF ~~ THEN BEGIN CT12e1
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT12f
SAY @98
= @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT12g
SAY @100
 ++ @101 + CT12g1
END

IF ~~ THEN BEGIN CT12g1
SAY @102
IF ~~ THEN EXIT
END

// Sixth Chat

IF ~Global("CallistoTalk","GLOBAL",10)~ THEN BEGIN CalliTalk14
SAY @103
 ++ @104 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",11)~ + CT14a
 ++ @105 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",11)~ + CT14b
 ++ @106 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",11)~ + CT14c
END

IF ~~ THEN BEGIN CT14a
SAY @107
 ++ @108 + CT14d
 ++ @109 + CT14e
 ++ @110 + CT14f
END

IF ~~ THEN BEGIN CT14b
SAY @111
 ++ @108 + CT14d
 ++ @109 + CT14e
 ++ @110 + CT14f
END

IF ~~ THEN BEGIN CT14c
SAY @112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT14d
SAY @113
 ++ @114 + CT14d1
 ++ @115 + CT14d2
 ++ @116 + CT14d2
END

IF ~~ THEN BEGIN CT14d1
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT14d2
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT14e
SAY @119
= @120
 ++ @121 + CT14e1
 ++ @122 + CT14e2
 ++ @123 + CT14e1
END

IF ~~ THEN BEGIN CT14e1
SAY @124
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT14e2
SAY @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT14f
SAY @126
= @127
IF ~~ THEN EXIT
END

// Seventh Chat


IF ~Global("CallistoTalk","GLOBAL",12)~ THEN BEGIN CalliTalk16
SAY @128
 ++ @129 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",13)~ + CT16a
 ++ @130 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",13)~ + CT16b
 ++ @131 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",13)~ + CT16b
 ++ @132 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",13)~ + CT16c
END

IF ~~ THEN BEGIN CT16a
SAY @133
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT16b
SAY @134
 ++ @135 + CT16c
 ++ @136 + CT16d
 ++ @137 + CT16a
 ++ @138 + CT16c
END

IF ~~ THEN BEGIN CT16c
SAY @139
 ++ @140 + CT16a
 ++ @141 + CT16e
 ++ @142 + CT16d
 ++ @143 + CT16f
END

IF ~~ THEN BEGIN CT16d
SAY @144
 ++ @145 + CT16d1
 ++ @146 + CT16d2
 ++ @147 + CT16d1
 ++ @148 + CT16d1
END

IF ~~ THEN BEGIN CT16d1
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT16d2
SAY @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT16e
SAY @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT16f
SAY @152
 ++ @145 + CT16d1
 ++ @146 + CT16d2
 ++ @147 + CT16d1
 ++ @148 + CT16d1
END

// New 2011

// Eighth Chat

IF ~Global("CallistoTalk","GLOBAL",14)~ THEN BEGIN CalliTalk08
SAY @153
 ++ @154 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",15)~ + CT08a
 ++ @155 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",15)~ + CT08b
 ++ @156 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",15)~ + CT08b
 ++ @157 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",15)~ + CT08c
END

IF ~~ CT08a
SAY @158
IF ~~ THEN EXIT
END

IF ~~ CT08b
SAY @159
 ++ @160 + CT08b1
 ++ @161 + CT08b2
 ++ @162 + CT08b1
 ++ @163 + CT08b3
END

IF ~~ CT08b1
SAY @164
IF ~~ THEN EXIT
END

IF ~~ CT08b2
SAY @165
IF ~~ THEN EXIT
END

IF ~~ CT08b3
SAY @166
IF ~~ THEN EXIT
END

IF ~~ CT08c
SAY @167
 ++ @168 + CT08b1
 ++ @161 + CT08b2
 ++ @162 + CT08b1
 ++ @163 + CT08b3
END

// Nineth Chat


IF ~Global("CallistoTalk","GLOBAL",16)~ THEN BEGIN CalliTalk09
SAY @169
 ++ @129 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",17)~ + CT09a
 ++ @170 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",17)~ + CT09b
 ++ @171 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",17)~ + CT09c
 ++ @172 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",17)~ + CT09d
END

IF ~~ THEN BEGIN CT09a
SAY @173
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT09b
SAY @174
++ @175 + CT09b1
++ @176 + CT09b2
++ @177 + CT09b3
END

IF ~~ THEN BEGIN CT09b1
SAY @178
= @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT09b2
SAY @180
= @181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT09b3
SAY @182
= @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT09c
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT09d
SAY @184
= @185
IF ~~ THEN EXIT
END

// Tenth Chat


IF ~Global("CallistoTalk","GLOBAL",18)~ THEN BEGIN CalliTalk010
SAY @186
 ++ @129 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",19)~ + CT010a
 ++ @187 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",19)~ + CT010b
 ++ @188 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",19)~ + CT010c
 ++ @189 DO ~RealSetGlobalTimer("CallistoTalkTimer","GLOBAL",3600) SetGlobal("CallistoTalkCheck","GLOBAL",0) SetGlobal("CallistoTalk","GLOBAL",19)~ + CT010d
END

IF ~~ THEN BEGIN CT010a
SAY @190
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT010b
SAY @191
= @192
= @193
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT010c
SAY @191
= @192
= @194
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CT010d
SAY @195
= @192
= @193
IF ~~ THEN EXIT
END

// End timed banters

IF ~AreaCheck("AR0502")
Global("Calli_EnteredTanner2","AR0502",0)~ THEN BEGIN ShopComment
  SAY @196
  IF ~~ THEN DO ~SetGlobal("Calli_EnteredTanner2","AR0502",1)
~ EXIT
END

IF ~AreaCheck("AR2600")
See(Player1)
Global("CmCalliEndGameS","AR2600",0)~ THEN BEGIN SuicideByCop
SAY @197
 ++ @198 DO ~SetGlobal("CmCalliEndGameS","AR2600",1)~ + SbC1
 ++ @199 DO ~SetGlobal("CmCalliEndGameS","AR2600",1)~ + SbC1
 ++ @200 DO ~SetGlobal("CmCalliEndGameS","AR2600",1)~ + SbC2
END

IF ~~ SbC1
SAY @201
++ @202 + SbC1A
++ @203 + SbC1A
++ @204 + SbC1B
++ @205 + SbC1A
END

IF ~~ SbC1A
SAY @206
= @207
++ @208 + TheBitternessofDeath
++ @209 + TheBitternessofDeath
++ @210 + TheBitternessofDeath
++ @211 + TheBitternessofDeath
END

IF ~~ SbC1B
SAY @212
++ @213 + TheBitternessofDeath
++ @214 + TheBitternessofDeath
++ @215 + TheBitternessofDeath
END

IF ~~ SbC2
SAY @216
= @207
++ @217 + TheBitternessofDeath
++ @218 + TheBitternessofDeath
++ @210 + TheBitternessofDeath
++ @211 + TheBitternessofDeath
END

IF ~~ TheBitternessofDeath
SAY @219
IF ~~ THEN DO ~LeaveParty()
Enemy() ChangeAIScript("CALLIX",OVERRIDE)
~ EXIT
END
  



// Hates drow. Leaving dialog. //

IF ~InParty("Viconia")~ THEN BEGIN CalVicLeave
  SAY @220
  IF ~~ THEN DO ~SetGlobal("CalliJoined","GLOBAL",0) LeaveParty() EscapeArea()
  ~ EXIT
END

IF ~InParty("Yasraena")~ THEN BEGIN CalYasLeave
  SAY @220
  IF ~~ THEN DO ~SetGlobal("CalliJoined","GLOBAL",0) LeaveParty() EscapeArea()
  ~ EXIT
END

IF ~InParty("Solaufein")~ THEN BEGIN CalSolLeave
  SAY @221
  IF ~~ THEN DO ~SetGlobal("CalliJoined","GLOBAL",0) LeaveParty() EscapeArea()
  ~ EXIT
END


// Interjections //

I_C_T VICONI 2 CalliVicciGreet
== CMCALLIJ IF ~InParty("callisto")~ THEN @222
END

I_C_T AERIEJ 5 CalliDeadComment
== CMCALLIJ IF ~InParty("callisto")~ THEN @223
= @224
END 

I_C_T AERIEJ 6 CalliDeadComment
== CMCALLIJ IF ~InParty("callisto")~ THEN @223
= @224
END

I_C_T ANOMENJ 52 CalliAnoSis
== CMCALLIJ   IF ~InParty("callisto")~ THEN
 @225
END

// I_C_T2 ANOMENJ 104 CalliAnoEnemy
// == CMCALLIJ IF ~InParty("callisto")~ THEN
// ~Oh the poor little twit was lead down the wrong path. Boo hoo!~
// == ANOMENJ IF ~InParty("callisto")~ THEN
// ~Damn your soul! I will kill you first Callisto!~ DO ~LeaveParty()
// Enemy()~
// == CMCALLIJ IF ~InParty("callisto")~ THEN
// ~Come and get some tin head!~
// END

I_C_T ANOMENJ 232 CalliCommentKel
== CMCALLIJ IF ~InParty("callisto")~ THEN
@226
END

I_C_T CERND 70 CalliCernd1
== CMCALLIJ IF ~InParty("callisto")~ THEN 
@227
END

I_C_T EDWIN 10 CalliEdwin
== CMCALLIJ IF ~InParty("callisto")~ THEN 
@228
END

I_C_T EDWINJ 10 CalliEdwinScroll
== CMCALLIJ IF ~InParty("callisto")~ THEN
@229
== EDWIN IF ~InParty("callisto")~ THEN
@230
END

I_C_T HAERDAJ 35 CalliHaer1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@231
END

I_C_T IMOEN2 22 CalliLeaveImoen
== CMCALLIJ IF ~InParty("callisto")~ THEN 
@232
END

I_C_T JAHEIRAJ 54 CalliJah1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@233
== JAHEIRAJ IF ~InParty("callisto")~ THEN
@234
END

I_C_T JAHEIRAJ 112 CalliJah2
== CMCALLIJ IF ~InParty("callisto")~ THEN
@235
END

I_C_T KELDORJ 23 CalliKelWife
== CMCALLIJ IF ~InParty("callisto")~ THEN
@236
END

I_C_T KORGANJ 34 CalliKorgan1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@237
== KORGANJ IF ~InParty("callisto")~ THEN
@238
END

I_C_T VALYGAR 4 CalliValygarWanted
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @239
END

I_C_T YOSHJ 113 CalliYoshimoBetray
== CMCALLIJ IF ~InParty("callisto")~ THEN
@240
END

I_C_T BODHI 6 CalliBodhiDeal1
== CMCALLIJ IF ~InParty("callisto")~ THEN 
@241
END

// I_C_T BODHI 13 CalliBodhiDeal2
// == CMCALLIJ IF ~InParty("callisto")~ THEN
// ~Nothing I like more than the smell of spilt blood.~
// END

I_C_T COHRVALE 1 CalliCohrvale
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @242
 == COHRVALE
 @243
END

I_C_T COPGREET 1 CalliPitfight
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @244
END

I_C_T DELCIA 0 CalliDelcia1
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @245
== DELCIA
 @246
END

I_C_T DELCIA 17 CalliDelcia2
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @245
== DELCIA
 @246
END

I_C_T SURLY 17 CalliSurly
== CMCALLIJ IF ~InParty("callisto")~ THEN
@247
== AERIEJ IF ~InParty("Aerie") InParty("callisto")~ THEN
@248
== CMCALLIJ IF ~InParty("callisto") InParty("Aerie")~ THEN
@249
END

I_C_T DFISHER 3 CalliFishy
== CMCALLIJ IF ~InParty("callisto")~ THEN
@250
== DFISHER IF ~InParty("callisto")~ THEN
@251
== CMCALLIJ IF ~InParty("callisto")~ THEN
@252
END

INTERJECT_COPY_TRANS FIRAMB01 2 CalliWindWerewolf
== CMCALLIJ   IF ~InParty("callisto")~ THEN
 @253
== FIRAMB01
 @254
END

I_C_T BHOISIG 19 CalliOisig
== CMCALLIJ IF ~InParty("callisto")~ THEN
@255
END

I_C_T HENDAK 17 CalliHendak
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @256
END

INTERJECT_COPY_TRANS HERVO 11 CalliHervo
== CMCALLIJ IF ~InParty("callisto")~ THEN
@257
END

I_C_T ISAEA 28 CalliIsaea
== CMCALLIJ IF ~InParty("callisto")~ THEN
@258
=
@259
END

INTERJECT_COPY_TRANS JUGDAR01 2 CalliDaar
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @260
END

I_C_T LYROS 24 CalliXzar
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @261
== LYROS @262
END

I_C_T RIFTG03 7 CalliAmaunatorGod
== CMCALLIJ IF ~InParty("callisto")~ THEN
@263
= @264
END

I_C_T RIFTW01 7 CalliGuardian2
== CMCALLIJ IF ~InParty("callisto")~ THEN
@265
= @266
END

I_C_T RIFTG03 29 CalliGodDeath
== CMCALLIJ IF ~InParty("callisto")~ THEN
@267
END

I_C_T MAEVAR 16 CalliMaevarSteal1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@268
END

I_C_T MAEVAR 17 CalliMaevarSteal2
== CMCALLIJ IF ~InParty("callisto")~ THEN
@269
END

I_C_T MAEVAR 31 CalliMaevarTraitor
== CMCALLIJ IF ~InParty("callisto")~ THEN
@270
END

/* I_C_T STGUARD2 4 CalliSt2Guard
== CMCALLIJ IF ~InParty("callisto")~ THEN
~What I suggest is, and I mean it deep down in my cold heart, get out of my face!~
END   */

I_C_T RENAL 22 CalliRenal1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@271
END

I_C_T RENAL 47 CalliRenal2
== CMCALLIJ IF ~InParty("callisto")~ THEN
@272
END

I_C_T RENAL 69 CalliRenal3
== CMCALLIJ IF ~InParty("callisto")~ THEN
@273
END

I_C_T SAMIA 24 CalliSamia
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @274
END

I_C_T SLAVERM 0 CalliSlaverMage
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @275
END

I_C_T SPPAIN 0 CalliPaina
== CMCALLIJ IF ~InParty("callisto")~ THEN
@276
== SPPAIN @277
END

I_C_T TOLGER 80 CalliTolgerias
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @278
END  

INTERJECT_COPY_TRANS2 TRGRD03 9 CalliTradmeetGuard
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @279
END

I_C_T PPSAEM 59 CalliSaemonBetrays
== CMCALLIJ IF ~InParty("callisto")~ THEN
@280
END

I_C_T PPSAEM2 19 CalliSaemonSpellhold
== CMCALLIJ IF ~InParty("callisto")~ THEN
@281
END

I_C_T RAELIS 79 CalliBountyBribe
== CMCALLIJ IF ~InParty("callisto")~ THEN
@282
END

I_C_T DADROW18 3 CalliDadrow18
== CMCALLIJ IF ~InParty("callisto")~ THEN
@283
END

INTERJECT_COPY_TRANS UDDEMON 8 CalliDemonEggs
== CMCALLIJ IF ~InParty("callisto")~ THEN
@284
== UDDEMON
@285
END

I_C_T UDPHAE01 151 CalliPhaere
== CMCALLIJ IF ~InParty("callisto")~ THEN
@286
END

I_C_T UDSILVER 9 CalliAdalon
== CMCALLIJ IF ~InParty("callisto")~ THEN 
@287
END

I_C_T UDSILVER 34 CalliAdalon1
== CMCALLIJ IF ~InParty("callisto")~ THEN
 @288
=
 @289
END

I_C_T UDSOLA01 117 CalliSola
== CMCALLIJ IF ~InParty("callisto")~ THEN
@290
END

I_C_T UDSOLA01 118 CalliSola1
== CMCALLIJ IF ~InParty("callisto")~ THEN
@291
END

I_C_T YUSUF 2 CalliYusuf
== CMCALLIJ IF ~InParty("callisto")~ THEN
@292
END

/* INTERJECT PLAYER1 33 CalliTreeofLife
== PLAYER1 IF ~InParty("callisto")~ THEN
~(You turn your gaze upon Callisto, the female elven warrior who has sought revenge to those who killed her family.)~
END
++ ~Callisto, I go to face Irenicus. You do not have to follow me. What I am about to do is very dangerous.~ EXTERN CMCALLIJ CalliTreeofLife1a
++ ~Irenicus awaits. Are you with me or not?~ EXTERN CMCALLIJ CalliTreeofLife2a
++ ~I go forth to fight a great battle. I need your warrior skills Callisto.~ EXTERN CMCALLIJ CalliTreeofLife3a    */


/* APPEND CMCALLIJ
IF ~~ THEN BEGIN CalliTreeofLife1a
SAY ~(Callisto smiles at you, looks deep into your eyes, the fire that burns there makes you feel nervous.) I am going with you <CHARNAME>. I would not miss this, not at all.~
COPY_TRANS PLAYER1 33
END  */

/* IF ~~ THEN BEGIN CalliTreeofLife2a
SAY ~Worry not, I will be right behind you.~
COPY_TRANS PLAYER1 33
END */

/* IF ~~ THEN BEGIN CalliTreeofLife3a
SAY ~(Callisto smiles at you, she looks deep into your eyes, the fire that burns there makes you feel nervous.) It will be a great battle <CHARNAME>, for both of us. Trust me.~
COPY_TRANS PLAYER1 33
END
END */

INTERJECT PLAYER1 5 CallistoSlayer
== CMCALLIJ IF ~InParty("callisto")~ THEN
@293
=
@294
END
++ @295 EXTERN CMCALLIJ CallistoSlayer1a
++ @296 EXTERN CMCALLIJ CallistoSlayer2a
++ @297 EXTERN CMCALLIJ CallistoSlayer3a
++ @298 EXTERN CMCALLIJ CallistoSlayer4a

APPEND CMCALLIJ
IF ~~ THEN BEGIN CallistoSlayer1a
SAY @299
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CallistoSlayer2a
SAY @300
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CallistoSlayer3a
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CallistoSlayer4a
SAY @302
IF ~~ THEN EXIT
END
END

CHAIN IF WEIGHT #-1 ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("callistosalvanas","LOCALS",0)~ THEN SALVANAS CalliSal
@303
DO ~SetGlobal("callistosalvanas","LOCALS",1)~
== CMCALLIJ @304
== SALVANAS @305
== CMCALLIJ @306
== SALVANAS @307
== CMCALLIJ @308
== SALVANAS @309
== CMCALLIJ @310
== SALVANAS @311
== CMCALLIJ @312
EXIT


CHAIN
 IF WEIGHT #-1 ~See("callisto")
    InParty("callisto")
    Global("CallistoBelminAttack","AR0700",0)~ THEN BELMIN CalliBelminAttack
    @313
 DO ~SetGlobal("CallistoBelminAttack","AR0700",1) SetGlobal("CalliHistory1","GLOBAL",1)~
  == CMCALLIJ IF ~See("callisto") InParty("callisto")~ THEN
     @314
  == BELMIN @315
  == CMCALLIJ IF ~See("callisto") InParty("callisto")~ THEN
     @316
  == BELMIN @317
  == CMCALLIJ IF ~See("callisto") InParty("callisto")~ THEN
     @318
  == BELMIN @319 DO ~SetGlobal("CalliHistory1","GLOBAL",1) Enemy() Attack("callisto")~
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliWaylane","LOCALS",0)~ THEN WAYLANE CalliWaylaneSell
@320
DO ~SetGlobal("CalliWaylane","LOCALS",1)~
== CMCALLIJ @321
== WAYLANE @322
== CMCALLIJ @323
== WAYLANE @324
== CMCALLIJ @325
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliUrchin1","LOCALS",0)~ THEN URCHIN1 CalliUrchin1
@326
DO ~SetGlobal("CalliUrchin1","LOCALS",1)~
== CMCALLIJ @327
== URCHIN1 @328
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliUrchin2","LOCALS",0)~ THEN URCHIN2 CalliUrchin2
@329
DO ~SetGlobal("CalliUrchin2","LOCALS",1)~
== CMCALLIJ @330
== URCHIN2 @331
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliUrchin3","LOCALS",0)~ THEN URCHIN3 CalliUrchin3
@332
DO ~SetGlobal("CalliUrchin3","LOCALS",1)~
== CMCALLIJ @333
== URCHIN3 @334
== CMCALLIJ @335
== URCHIN3 @336
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliSlumm1","LOCALS",0)~ THEN SLUMM1 CalliSlumm1
@337
DO ~SetGlobal("CalliSlumm1","LOCALS",1)~
== CMCALLIJ @338
EXIT

CHAIN IF WEIGHT #-1
~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliSlumm2","LOCALS",0)~ THEN SLUMM2 CalliSlumm2
@339
DO ~SetGlobal("CalliSlum2","LOCALS",1)~
== CMCALLIJ @340
== SLUMM2 @341
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliThumb","LOCALS",0)~ THEN THUMB CalliThumb
@342 DO ~SetGlobal("CalliThumb","LOCALS",1)~
== CMCALLIJ @343
== THUMB @344
== CMCALLIJ @345
== THUMB @346
== CMCALLIJ @347
END THUMB 0




