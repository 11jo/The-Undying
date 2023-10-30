BEGIN ~BCMNINAF~


/*
IF WEIGHT #-1 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("NinaChats1","GLOBAL",0)
TimeGT(5)
TimeLT(9)
~ THEN BEGIN NinaSunset
  SAY ~Look at the sunset <CHARNAME>. Beautiful isn't?~
IF ~~ THEN REPLY ~It is nice to look at isn't Nina?~ DO ~SetGlobal("NinaChats1","GLOBAL",1)~ GOTO NS1
IF ~~ THEN REPLY ~I have not given it much thought Nina. Why bring it up?~ DO ~SetGlobal("NinaChats1","GLOBAL",1)~ GOTO NS1
IF ~~ THEN REPLY ~I don't really care to hear about your silly romantic ideas, you sound like someone I knew.~ DO ~SetGlobal("NinaChats1","GLOBAL",1)~ GOTO NS2
END

IF ~~ THEN BEGIN NS1
  SAY ~It reminds me of my home in the forest. You can see the light gently fade away and the shadows slowly creep in.~
IF ~~ THEN REPLY ~It reminds me of the times in Candlekeep when I was a child. I use to watch the sunset over the ocean and being amazed at the multiple colors it cast over the water. Since there is little light left we should get going before night sets in.~ GOTO NS3
END

IF ~~ THEN BEGIN NS2
  SAY ~Very well if that's how you want to act I'll say no more about it.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NS3
  SAY ~Ok lets get going then.~ IF ~~ THEN EXIT
END  */

/* After Spellhold   */


IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR2100")
Global("NinaBackground","GLOBAL",1)~ THEN BEGIN NinaJonBackground
  SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("NinaBackground","GLOBAL",2)~ GOTO HalfTruth
END

IF ~~ THEN BEGIN HalfTruth
  SAY @2
IF ~Race(Player1,ELF)~ THEN REPLY @3 GOTO FellowElf 
IF ~!Race(Player1,ELF)~ THEN REPLY @3 GOTO NotElf 
END

IF ~~ THEN BEGIN FellowElf
  SAY @4
IF ~~ THEN REPLY @5 GOTO EndHalfTruth
END

IF ~~ THEN BEGIN NotElf
  SAY @6
IF ~~ THEN REPLY @5 GOTO EndHalfTruth
END

IF ~~ THEN BEGIN EndHalfTruth
  SAY @7 IF ~~ THEN EXIT
END

/* After Spellhold in the Underdark      */

IF  
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("NinaDrowChat","GLOBAL", 0)
Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN BEGIN NinaHatesDrow
  SAY @8
IF ~~ THEN REPLY @9 DO ~SetGlobal("NinaDrowChat","GLOBAL",1)~ GOTO AgreedC
IF ~~ THEN REPLY @10 DO ~SetGlobal("NinaDrowChat","GLOBAL",1)~ GOTO F_U
END

IF ~~ THEN BEGIN AgreedC
  SAY @11 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F_U
  SAY @12 IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR2200")
Global("NinaDrowCity","GLOBAL",0)~ THEN BEGIN NinaUstNatha
  SAY @13
++ @14 DO ~SetGlobal("NinaDrowCity","GLOBAL",1)~ + Ust1
++ @15 DO ~SetGlobal("NinaDrowCity","GLOBAL",1)~ + Ust2
END

IF ~~ Ust1
SAY @16 IF ~~ THEN EXIT
END

IF ~~ Ust2
SAY @17 IF ~~ THEN EXIT
END




//   Nina & Class Chats

IF WEIGHT #-1 
~See(Player1)
Class(Player1,MAGE_ALL)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("NinaChatMage","GLOBAL",0)~ THEN BEGIN FellowMage
SAY @18
++ @19 DO ~SetGlobal("NinaChatMage","GLOBAL",1)~ + M_Gorion
++ @20 DO ~SetGlobal("NinaChatMage","GLOBAL",1)~ + M_Taught
++ @21 DO ~SetGlobal("NinaChatMage","GLOBAL",1)~ + M_NoChat
END

IF ~~ M_Gorion
SAY @22
++ @23 + M_Spell1
++ @24 EXIT
++ @25 + M_Arrogant
END

IF ~~ M_Taught
SAY @26
++ @27 + M_Gorion
END

IF ~~ M_NoChat
SAY @28
IF ~~ EXIT
END

IF ~~ M_Spell1
SAY @29
IF ~~ EXIT
END

IF ~~ M_Arrogant
SAY @30
IF ~~ EXIT
END

IF WEIGHT #-1 
~See(Player1)
Class(Player1,FIGHTER_ALL)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("NinaChatFighter","GLOBAL",0)~ THEN BEGIN FellowFighter
SAY @31
++ @32 DO ~SetGlobal("NinaChatFighter","GLOBAL",1)~ + F_Taught
++ @21 DO ~SetGlobal("NinaChatFighter","GLOBAL",1)~ + F_NoChat
END

IF ~~ F_Taught
SAY @33
++ @34 + Nina_Learned
++ @35 EXIT
++ @36 + Nina_Learned
END

IF ~~ F_NoChat
SAY @28
IF ~~ EXIT
END

IF ~~ Nina_Learned
SAY @37
++ @38 + Nina_HardLessons
END

IF ~~ Nina_HardLessons
SAY @39
= @40
++ @41 + N_HL2
++ @42 + N_HL3
END

IF ~~ N_HL2
SAY @43
IF ~~ EXIT
END

IF ~~N_HL3
SAY @44
IF ~~ EXIT
END

/* IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,PALADIN_ALL)
Global("NinaChatPaladin","GLOBAL",0)~ THEN BEGIN NinaPaladin
 SAY ~~
 ++ ~~ DO ~SetGlobal("NinaChatPaladin","GLOBAL",1)~ GOTO NinaPaladin1
 ++ ~~ DO ~SetGlobal("NinaChatPaladin","GLOBAL",1)~ GOTO NinaPaladin2
 ++ ~~ DO ~SetGlobal("NinaChatPaladin","GLOBAL",1)~ GOTO NinaPaladin3
END */

/* Happiness & Reputation */

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,4)
ReputationLT(Player1,8)
Global("NinaRep1","GLOBAL",0)~ THEN BEGIN NinaRep1
  SAY @45
++ @46 DO ~SetGlobal("NinaRep1","GLOBAL",1)~ + PissOff
++ @47 DO ~SetGlobal("NinaRep1","GLOBAL",1)~  + AllWell
END

IF ~~ PissOff
SAY @48 IF ~~ THEN EXIT
END

IF ~~ AllWell
SAY @49 IF ~~ THEN EXIT
END

/*    End Korgan Nina Fight     */

IF ~~ PcMadNina
SAY @50
++ @51 EXIT
END

// New content 2011

// Anomen, Ninafer and PC triangle check In other words its me or else

IF ~Global("Nina_MeOrElse","GLOBAL",1)~ NinaCharacterConflict
SAY @52
++ @53 DO ~SetGlobal("Nina_MeOrElse","GLOBAL",2)~ + NCC1
++ @54 DO ~SetGlobal("Nina_MeOrElse","GLOBAL",2)~ + NCC2
++ @55 DO ~SetGlobal("Nina_MeOrElse","GLOBAL",2)~ + NCC3
END

IF ~~ NCC1
SAY @56
++ @57 + NCC1a
++ @58 + NCC2
++ @59 + NCC3
END

IF ~~ NCC1a
SAY @60
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END


IF ~~ NCC2
SAY @61
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ NCC3
SAY @62
IF ~~ DO ~SetGlobal("NinaAnomenRomanceKill","GLOBAL",1)~ EXIT
END

//  NPC banters

CHAIN IF ~InParty("Aerie")
See("Aerie")
CombatCounter(0)
!StateCheck("Aerie",STATE_SLEEPING)
Global("NinaAerie1","GLOBAL",0)~ THEN BCMNINAF AerieMagic
@63 DO ~SetGlobal("NinaAerie1","GLOBAL",1)~
== BAERIE @64
== BCMNINAF @65
== BAERIE @66
== BCMNINAF @67
== BAERIE @68
== BCMNINAF @69
EXIT

CHAIN IF ~InParty("cmninaf")
See("cmninaf")
AreaType(FOREST)
Global("NinaCernd1","GLOBAL",0)
!StateCheck("cmninaf",STATE_SLEEPING)~ THEN BCERND Herbal
@70 DO ~SetGlobal("NinaCernd1","GLOBAL",1)~
== BCMNINAF @71
== BCERND @72
== BCMNINAF @73
== BCERND @74
== BCMNINAF @75
EXIT

CHAIN IF ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaEdwin1","GLOBAL",0)~ THEN BEDWIN EdwinDislike
@76
== BCMNINAF @77 DO ~SetGlobal("NinaEdwin1","GLOBAL",1)~
== BEDWIN @78
== BCMNINAF @79
== BEDWIN @80
== BCMNINAF @81
== BEDWIN @82
END

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("NinaHaer1","GLOBAL",0)~ THEN BCMNINAF NinaHaerChat1
@83
DO ~SetGlobal("NinaHaer1","GLOBAL",1)~
== BHAERDA @84
== BCMNINAF @85
== BHAERDA @86
== BCMNINAF @87
== BHAERDA @88
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("NinaImoen1","GLOBAL",0)~ THEN BCMNINAF ImoenChat
@89 DO ~SetGlobal("NinaImoen1","GLOBAL",1)~
== IMOEN2J @90 
== BCMNINAF @91
== IMOEN2J @92
== BCMNINAF @93
== IMOEN2J @94
== BCMNINAF @95
== IMOEN2J @96
== BCMNINAF @97
== IMOEN2J @98
== BCMNINAF @99
== IMOEN2J @100
== BCMNINAF @101
== IMOEN2J @102
EXIT

CHAIN
IF ~InParty("cmninaf")
AreaType("Outdoor")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaJaheira1","GLOBAL",0)~ THEN BJAHEIR TreeHugging
@103 DO ~SetGlobal("NinaJaheira1","GLOBAL",1)~
== BCMNINAF
@104
== BJAHEIR
@105
== BCMNINAF @106
== BJAHEIR @107
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("NinaJaheira2","GLOBAL",0)~ THEN BCMNINAF KnowPc
@108 DO ~SetGlobal("NinaJaheira2","GLOBAL",1)~
== BJAHEIR @109
== BCMNINAF @110
== BJAHEIR @111
== BCMNINAF @112
== BJAHEIR @113
== BCMNINAF @114
== BJAHEIR @115
== BCMNINAF @116
== BJAHEIR @117
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("NinaJaheira3","GLOBAL",0)~ THEN BCMNINAF KhalidTalk
@118 DO ~SetGlobal("NinaJaheira3","GLOBAL",1)~
== BJAHEIR @119
== BCMNINAF @120
== BJAHEIR @121
EXIT

CHAIN IF
~InParty("cmninaf")
See("cmninaf")
CombatCounter(0)
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaKeldornTalk1","GLOBAL",0)~ THEN BKELDOR Fighters
@122 DO ~SetGlobal("NinaKeldornTalk1","GLOBAL",1)~
== BCMNINAF @123 
== BKELDOR @124
== BCMNINAF @125
== BKELDOR @126
== BCMNINAF @127
== BKELDOR @128
== BCMNINAF @129
== BKELDOR @130
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("NinaKorgan1","GLOBAL",0)~ THEN BCMNINAF VileDwarf
@131
DO ~SetGlobal("NinaKorgan1","GLOBAL",1)~
== BKORGAN
@132
== BCMNINAF
@133
== BKORGAN
@134
== BCMNINAF
@135
== BKORGAN
@136
== BCMNINAF
@137
EXIT

CHAIN IF ~InParty("cmninaf")
See("cmninaf")
CombatCounter(0)
HPPercentLT("Korgan",30)
!HP("Korgan",1)
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaKorgan1","GLOBAL",1)
Global("NinaKorganBitch","GLOBAL",0)~ THEN BKORGAN KorganWhine
@138 DO ~SetGlobal("NinaKorganBitch","GLOBAL",1)~
== BCMNINAF @139
== BKORGAN @140
== BCMNINAF @141
== BKORGAN @142
== BCMNINAF @143
END BKORGAN EndOfWhine

CHAIN
IF ~InParty("cmninaf")
See("cmninaf")
AreaCheck("AR2000")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaMazzy1","GLOBAL",0)~ THEN BMAZZY Gods
@144 DO ~SetGlobal("NinaMazzy1","GLOBAL",1)~
== BCMNINAF
@145
== BMAZZY
@146
== BCMNINAF
@147
== BMAZZY
@148
== BCMNINAF
@149
== BMAZZY
@150 
== BCMNINAF
@151
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NinaMinsc1","GLOBAL",0)~ THEN BCMNINAF Minsc_BooFood
@152 DO ~SetGlobal("NinaMinsc1","GLOBAL",1)~
== BMINSC @153
== BCMNINAF @154
== BMINSC @155
== BCMNINAF @156
== BMINSC @157
== BCMNINAF @158
== BMINSC @159
== BCMNINAF @160
== BMINSC @161
== BCMNINAF @162
== BMINSC @163
== BCMNINAF @164
== BMINSC @165
== BCMNINAF @166
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
CombatCounter(0)
HPPercentLT("Minsc",20)
!HP("Minsc",1)
!StateCheck("Minsc",STATE_SLEEPING)
Global("NinaMinsc2","GLOBAL",0)~ THEN BCMNINAF MinscWounded
@167 DO ~SetGlobal("NinaMinsc2","GLOBAL",1)~
== BMINSC @168
== BCMNINAF @169
== BMINSC @170
== BCMNINAF @171
== BMINSC @172
== BCMNINAF @173 // IF ~~ THEN DO ~MoveToObject("Minsc")~ //
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("NinaNalia1","GLOBAL",0)~ THEN BCMNINAF NaliaChat1
@174 DO ~SetGlobal("NinaNalia1","GLOBAL",1)~
== BNALIA @175
== BCMNINAF @176
== BNALIA @177
== BCMNINAF @178
== BNALIA @179
== BCMNINAF @180
== BNALIA @181
== BCMNINAF @182
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("NinaValygar1","GLOBAL",0)~ THEN BCMNINAF FoulMagic
@183
DO ~SetGlobal("NinaValygar1","GLOBAL",1)~
== BVALYGA @184
== BCMNINAF @185
== BVALYGA @186
== BCMNINAF @187
== BVALYGA @188
== BCMNINAF @189
== BVALYGA @190
EXIT

CHAIN IF ~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaViconia1","GLOBAL",0)~ THEN BVICONI Dislike
@191 DO ~SetGlobal("NinaViconia1","GLOBAL",1)~
== BCMNINAF @192
== BVICONI @193
== BCMNINAF @194
== BVICONI @195
== BCMNINAF @196
== BVICONI @197
EXIT

//  Anomen stuff


// Anomen is a knight first check

CHAIN
IF ~Global("NinaAnomenKnightTalk","GLOBAL",2)~ THEN BCMNINAF AnomenIsKnight
@198
DO ~SetGlobal("NinaAnomenKnightTalk","GLOBAL",3)~
== BANOMEN
@199
== BCMNINAF
@200
== BANOMEN
@201
== BCMNINAF
@202
EXIT


// Obvious Anomen flirts with Nina

CHAIN
IF ~Global("NinaAnomenTalk1","GLOBAL",2)~ THEN BANOMEN AnomenKnight_1
@203
DO ~SetGlobal("NinaAnomenTalk1","GLOBAL",3)~
== BCMNINAF @204
= @205
== BANOMEN @206
== BCMNINAF @207
== BANOMEN @208
== BCMNINAF @209
== BANOMEN @210
== BCMNINAF @211 DO ~SetGlobal("NinaAnomenMatch","GLOBAL",1)~
EXIT



/*  More Anomen Nina Flirts */

CHAIN
IF ~Global("NinaAnomenFlirting","GLOBAL",2)~ THEN BANOMEN AnoNinaFlirts1
@212
= @213 DO ~SetGlobal("NinaAnomenFlirting","GLOBAL",3)~
== BCMNINAF @214
== BANOMEN @215
== BCMNINAF @216
== BANOMEN @217
== BCMNINAF @218
EXIT

CHAIN IF ~Global("NinaAnomenFlirting2","GLOBAL",2)~ THEN BCMNINAF AnoNinaFlirts2
@219 DO ~SetGlobal("NinaAnomenFlirting2","GLOBAL",3)~
== BANOMEN @220
== BCMNINAF @221
== BANOMEN @222
== BCMNINAF @223
== BANOMEN @224
== BCMNINAF @225
EXIT

CHAIN IF ~Global("NinaAnomenFlirting3","GLOBAL",2)~ THEN BCMNINAF AnoNinaFlirts3
@226 DO ~SetGlobal("NinaAnomenFlirting3","GLOBAL",3)~
== BANOMEN @227
== BCMNINAF @228
== BANOMEN @229
== BCMNINAF @230
== BANOMEN @231
== BCMNINAF @232
== BANOMEN @233
= @234
== BCMNINAF @235
= @236
EXIT

// New 2011
// Nina and Anomen romance

CHAIN IF ~Global("NinaAnomenRomance","GLOBAL",2)~ THEN BCMNINAF AnoNinaRomance
@237 DO ~SetGlobal("NinaAnomenRomance","GLOBAL",3)~
== BANOMEN @238
== BCMNINAF @239
== BANOMEN @240
== BCMNINAF @241
== BANOMEN @242
== BCMNINAF @243
== BANOMEN @244
== BCMNINAF @245
= @246
== BANOMEN @247
= @248
EXIT


// Friends. Duty and honor begin.

CHAIN
IF ~Global("NinaAnomenTalkR","GLOBAL",2)
~ THEN BANOMEN AnomenKnight_2
@203
DO ~SetGlobal("NinaAnomenTalkR","GLOBAL",3) SetGlobal("NinaAnomenRomanceKill","GLOBAL",1)~
== BCMNINAF @249
== BANOMEN @250
== BCMNINAF @251
= @252
== BANOMEN @253
== BCMNINAF @254 DO ~SetGlobal("NinaAnoHardship","GLOBAL",1)~
EXIT

//  Anomen & Nina Talk about PC

CHAIN IF ~Global("NinaAnomenFriendW","GLOBAL",2)~ THEN BCMNINAF NinaAnoPc
@255 DO ~SetGlobal("NinaAnomenFriendW","GLOBAL",3)~
== BANOMEN @256
== BCMNINAF @257
== BANOMEN @258
== BCMNINAF @259
EXIT

// Anomen is Not a Knight Romance kill for Nina

CHAIN
IF ~Global("NinaAnomenKnightTalk2","GLOBAL",2)~ THEN BCMNINAF AnomenNotKnight
@260
DO ~SetGlobal("NinaAnomenKnightTalk2","GLOBAL",3) SetGlobal("NinaAnomenRomanceKill","GLOBAL",1)~
== BANOMEN @261
== BCMNINAF @262
== BANOMEN @263
EXIT



// Dialogs removed as of 2011

/* Anomen is Not Knight stuff */

/* Anomen is not a knight first check */


/* CHAIN
IF ~
AreaCheck("AR0300")
InParty("cmninaf")
Global("AnomenIsNotKnight","GLOBAL",1)
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("NinaAnomenTalk1b","GLOBAL",1)~ THEN BANOMEN AnomenNotKnight_1
~Ninafer, I would like to apologize for how I acted to you before. The disappointment of not becoming a knight with the Radiant Heart got the best of me. I acted in a very childish manner to you and I am sorry.~
DO ~SetGlobal("NinaAnomenTalk1b","GLOBAL",2)~
== BCMNINAF ~Hey don't worry about it Anomen. I can understand how the disappointment got to you.~
= @205
== BANOMEN @206
== BCMNINAF @207
== BANOMEN @208
== BCMNINAF @209
== BANOMEN @210
== BCMNINAF @211 DO ~SetGlobal("NinaAnoMatch","GLOBAL",1)~
EXIT    */






// Nina and Anomen romance kill


// Friends. Duty and honor begin.

/* CHAIN
IF ~
AreaCheck("AR0300")
InParty("cmninaf")
GlobalLT("Chapter","GLOBAL","%bg2_chapter_4%")
Global("AnomenIsNotKnight","GLOBAL",1)
Global("NinaAnomenTalk1b","GLOBAL",1)
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN BANOMEN AnomenNotKnight_2
~Ninafer, I would like to apologize for how I acted to you before. The disappointment of not becoming a knight with the Radiant Heart got the best of me. I acted in a very childish manner to you and I am sorry.~
DO ~SetGlobal("NinaAnomenTalk1b","GLOBAL",2)~
== BCMNINAF ~Hey don't worry about it Anomen. I can understand how the disappointment got to you.~
== BANOMEN ~Thank you for being understanding. I worked long and hard for it and it was for naught. Life goes on I suppose.~
== BCMNINAF ~Life does indeed go on Anomen. Learn from your mistakes and you will not repeat them.~
= ~Has <CHARNAME> been supportive for you? I bet she has been by your side throughout this ordeal.~
== BANOMEN ~Yes my lady been there for me. She has been by my side since the trials began and now the rejection of the Order. For this I am grateful to her.~
== BCMNINAF @254 DO ~SetGlobal("NinaAnoHardship","GLOBAL",1)~
EXIT */


/* Anomen stuff End  */

/* IF  
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
GlobalGT("Chapter","GLOBAL","%bg2_chapter_3%")
Global("NinaHomeChat","GLOBAL", 0)
~ THEN BEGIN NinaHome
  SAY ~Hey <CHARNAME> I was wondering if I could ask you a personal question about Gorion.~
IF ~~ THEN REPLY ~Sure Nina what is it?~ DO ~SetGlobal("NinaHomeChat","GLOBAL",1)~ GOTO NinaRoots
END

IF ~~ THEN BEGIN NinaRoots
  SAY ~Was Gorion a good father even though he was your adopted father? Do you ever wonder about your mother and her family?~
IF ~~ THEN REPLY ~He was a very good father to me, very protective and stern at times. He wanted me to excel with my studies and not goof around. I never knew anything about my mother or her family, Gorion says nothing about her. Why do you ask?~ GOTO NR1
++ ~I am not really interested in talking about Gorian Nina. Why do you ask?~ + Later1
END

IF ~~ THEN BEGIN NR1
  SAY ~I was "adopted" myself and do not really remember or know much about my family. We lived in a village that was attacked by drow raiders. My parents were killed along with a majority of the townsfolk. I do not recall much about that dreadful day since I was very young at the time.~
=
~I had an older sister but I know nothing about her or what happened to her. Her body was never found in the carnage. She may have been taken captive or her body burned to ash since a lot of the dwellings were reduced to smoldering cinders.~
IF ~~ THEN REPLY ~That sounds dreadful Nina, I am so sorry for your loss.~ GOTO NR2
END

IF ~~ THEN BEGIN NR2
  SAY ~(A tear runs down her cheek.) I am sorry <CHARNAME> I don't know why I even brought this up. I don't want to talk about it any more.~ IF ~~ THEN EXIT
END

IF ~~ Later1
SAY ~Umm nothing I guess. We should get going.~ IF ~~ DO ~SetGlobal("NinaHomeLater","GLOBAL",1)~ EXIT
END
*/

/* Appends  */

APPEND BKORGAN

IF ~~ EndOfWhine
SAY @264
++ @265 + StopIt
END

IF ~~ StopIt
SAY @266
++ @267 + KeepItUp
END

IF ~~ KeepItUp
SAY @268
++ @269 EXTERN BCMNINAF PcMadNina
END


END

