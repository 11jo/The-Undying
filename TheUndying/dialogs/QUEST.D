BEGIN ~CMALISKA~
BEGIN ~CMNASTOR~
BEGIN ~CMALURA~
BEGIN ~CMMARIUS~
BEGIN ~CMCORMAK~
BEGIN ~CMVALIS~
BEGIN ~CMSORAN~

CHAIN
IF ~Detect("callisto")
InParty("callisto")
Global("CalliFoundValis","GLOBAL",0)~ THEN CMVALIS Confront1
@0 DO ~SetGlobal("CalliFoundValis","GLOBAL",1)~
== CMCALLIJ @1
== CMVALIS @2
== CMCALLIJ @3
= @4
== CMVALIS @5
== CMCALLIJ @6
== CMVALIS @7
== CMCALLIJ @8
== CMVALIS @9
== CMCALLIJ @10
== CMVALIS @11 DO ~Enemy() Attack("callisto")~
EXIT

CHAIN
IF ~Detect("callisto")
InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliFoundValis","GLOBAL",1)
Global("CalliFoundCormak","GLOBAL",0)~ THEN CMCORMAK Confront2
@12 DO ~SetGlobal("CalliFoundCormak","GLOBAL",1)~
== CMCALLIJ @13
== CMCORMAK @14
== CMCALLIJ @15
== CMCORMAK @16
= @17
== CMCALLIJ @18
== CMCORMAK @19
== CMCALLIJ @20
== CMCORMAK @21 DO ~SetGlobal("CmCormakAttack","GLOBAL",1) Enemy() Attack("callisto")~
EXIT

CHAIN
IF ~Detect("callisto")
InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliFoundMarius","GLOBAL",0)~ THEN CMMARIUS Confront3
@22 DO ~SetGlobal("CalliFoundMarius","GLOBAL",1)~
== CMCALLIJ @23
== CMMARIUS @24
== CMCALLIJ @25
== CMMARIUS @26
= @27
== CMCALLIJ @28
== CMMARIUS @29
= @30
== CMCALLIJ @31
== CMMARIUS @32 DO ~SetGlobal("CmMariusAttack","GLOBAL",1) Enemy() Attack("callisto")~
EXIT

CHAIN
IF WEIGHT #-1 ~Detect("callisto")
InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliFoundDrow","GLOBAL",0)~ THEN CMNASTOR CalliFoundDrow
@33 DO ~SetGlobal("CalliFoundDrow","GLOBAL",1)~
== CMALISKA @34
== CMCALLIJ @35
== CMNASTOR @36
== CMCALLIJ @37
== CMALISKA @38
== CMNASTOR @39
== CMALISKA @40
== CMALURA @41
== CMALISKA @42
== CMALURA @43
== CMCALLIJ @44
== CMNASTOR @45
== CMALISKA @46
== CMALURA @47
== CMCALLIJ @48
== CMALISKA @49
== CMNASTOR @50
== CMALISKA @51
== CMALURA @52
== CMCALLIJ @53
== CMNASTOR @54
== CMALISKA @55 DO ~SetGlobal("CmAliskaAttack","GLOBAL",1) Enemy() Attack("callisto")~
EXIT

/* *************** Added content 11/26/08 ******************** */

CHAIN
IF ~Detect("callisto")
InParty("callisto")
See("callisto")
!StateCheck("callisto",CD_STATE_NOTVALID)
Global("CalliFoundSoran","GLOBAL",0)~ THEN CMSORAN ConfrontOldParty
@56 DO ~SetGlobal("CalliFoundSoran","GLOBAL",1)~
== CMCALLIJ @57
== CMSORAN @58
== CMCALLIJ @59
== CMSORAN @60
== CMCALLIJ @61
== CMSORAN @62 DO ~SetGlobal("CmSoranAttack","GLOBAL",1) Enemy() Attack("callisto")~
EXIT