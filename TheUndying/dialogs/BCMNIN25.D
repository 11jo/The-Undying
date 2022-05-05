BEGIN ~BCMNIN25~

// Begin Anomen Romance. Also begin Nina in depression after father's death.

CHAIN IF
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("AnomenRomanceActive","GLOBAL",3)
Global("25NinaAnoRomance","GLOBAL",0)~ THEN BANOME25 AnoConcerned
@0 DO ~SetGlobal("25NinaAnoRomance","GLOBAL",1)~
== BCMNIN25 @1
== BANOME25 @2
== BCMNIN25 @3
== BANOME25 @4
== BCMNIN25 @5
== BANOME25 @6
== BCMNIN25 @7
EXIT

CHAIN IF
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("25NinaViconia","GLOBAL",0)~ THEN BVICON25 ViccyBitch
@8 DO ~SetGlobal("25NinaViconia","GLOBAL",1)~
== BCMNIN25 @9
== BVICON25 @10
== BAERIE25 @11
== BVICON25 @12
== BCMNIN25 @13
== BVICON25 @14
== BCMNIN25 @15
EXIT

CHAIN IF
~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("25NinaAerie1","GLOBAL",0)~ THEN BCMNIN25 AerieNina1
@16 DO ~SetGlobal("25NinaAerie1","GLOBAL",1)~
== BAERIE25 @17
== BCMNIN25 @18
== BAERIE25 @19
== BCMNIN25 @20
== BAERIE25 @21
== BCMNIN25 @22
EXIT

CHAIN IF
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("25NinaMazzy1","GLOBAL",0)~ THEN BMAZZY25 MazzyNina1
@23 DO ~SetGlobal("25NinaMazzy1","GLOBAL",1)~
== BCMNIN25 @24
== BMAZZY25 @25
== BCMNIN25 @26
== BMAZZY25 @27
== BCMNIN25 @28
== BMAZZY25 @29
EXIT


CHAIN IF
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("25NinaMinsc","GLOBAL",0)~ THEN BMINSC25 FriendsFamily
@30 DO ~SetGlobal("25NinaMinsc","GLOBAL",1)~
== BCMNIN25 @31
== BMINSC25 @32
== BCMNIN25 @33
== BMINSC25 @34
== BCMNIN25 @35
== BMINSC25 @36
== BCMNIN25 @37
== BMINSC25 @38
== BCMNIN25 @39
== BMINSC25 @40
== BCMNIN25 @41
EXIT

CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenRomanceActive","GLOBAL",3)
Global("25NinaAnoRomance","GLOBAL",1)
Global("25NinaAnoConcern","GLOBAL",0)~ THEN BCMNIN25 NinaAnoConcerned
@42 DO ~SetGlobal("25NinaAnoRomance","GLOBAL",2)~
== BANOME25 @43
== BCMNIN25 @44
== BANOME25 @45
== BCMNIN25 @46
== BANOME25 @47
= @48
== BCMNIN25 @49
== BANOME25 @50
== BCMNIN25 @51
== BANOME25 @52
EXIT

// After Depression

CHAIN IF 
~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("25NinaSarevok1","GLOBAL",1)~ THEN BCMNIN25 SareNina1
@53
== BSAREV25 @54
== BCMNIN25 @55
== BSAREV25 @56
== BCMNIN25 @57
== BSAREV25 @58
EXIT

CHAIN IF
~InParty("cmninaf")
See("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)
Global("25NinaNalia1","GLOBAL",0)~ THEN BNALIA25 NaliaNina1
@59
== BCMNIN25 @60
= @61
== BNALIA25 @62
== BCMNIN25 @63
== BNALIA25 @64
== BCMNIN25 @65
EXIT

CHAIN IF
~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
TimeOfDay(DAY)
AreaType(OUTDOOR)
Global("25NinaMazzy1","GLOBAL",1)
Global("25NinaMazzy2","GLOBAL",0)~ THEN BCMNIN25 MazzyNina2
@66
== BMAZZY25 @67
== BCMNIN25 @68
== BMAZZY25 @69
== BCMNINAF @70
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("25NinaCernd1","GLOBAL",0)~
THEN BCMNIN25 OutdoorsAgain
@71 DO ~SetGlobal("25NinaCernd1","GLOBAL",1)~
== BCERND25 @72
== BCMNIN25 @73
== BCERND25 @74
== BCMNIN25 @75
== BCERND25 @76
== BCMNIN25 @77
== BCERND25 @78
== BCMNIN25 @79
EXIT 

CHAIN IF
~InParty("Imoen2")
See("Imoen2")
Global("25NinaImoen1","GLOBAL",0)~
THEN BCMNIN25 SpellTalk
@80 DO ~SetGlobal("25NinaImoen1","GLOBAL",1)~
== BIMOEN25 @81
== BCMNIN25 @82
== BIMOEN25 @83
== BCMNIN25 @84
== BIMOEN25 @85
== BCMNIN25 @86
== BIMOEN25 @87
== BCMNIN25 @88
== BIMOEN25 @89
== BCMNIN25 @90
EXIT
