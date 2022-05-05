BEGIN ~CMKFC~

IF ~True()
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~StartStore("cmkfc01",LastTalkedToBy(Myself))
~ EXIT
END




BEGIN ~CMNINAMY~

IF ~NumTimesTalkedTo(0)
Global("CMMystraQuest","GLOBAL",0)~ THEN BEGIN HiThere
  SAY @8
IF ~~ THEN REPLY @9 GOTO PcInterested
IF ~~ THEN REPLY @10 GOTO PcTurnedDown
END

IF ~~ THEN BEGIN PcInterested
  SAY @11
IF ~~ THEN REPLY @12 GOTO Details
END

IF ~~ THEN BEGIN PcTurnedDown
  SAY @13 IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ 
EXIT
END

IF ~~ THEN BEGIN Details
  SAY @14
IF ~~ THEN REPLY @15 DO ~SetGlobal("AcceptQuestC","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
!PartyHasItem("CMBOOK99")
Global("CMMystraQuest","GLOBAL",0)
~ THEN BEGIN NoBook
  SAY @16
IF ~~ THEN REPLY @17 GOTO HurryUp
END

IF ~~ THEN BEGIN HurryUp
  SAY @18 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
PartyHasItem("CMBOOK99")
Global("CMMystraQuest","GLOBAL",0)
~ THEN BEGIN HaveBook
  SAY @19 IF ~~ THEN DO ~TakePartyItem("CMBOOK99")
GivePartyGold(1000) SetGlobal("CMMystraQuest","GLOBAL",1) AddexperienceParty(12500)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CMMystraQuest","GLOBAL",1)
~ THEN BEGIN Shopping
  SAY @20
IF ~~ THEN REPLY @21 GOTO StartStore
IF ~~ THEN REPLY @22 GOTO ComeBack
END

IF ~~ THEN BEGIN StartStore
  SAY @23 
  IF ~~ THEN DO ~StartStore("cmninamy",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN ComeBack
  SAY @24 IF ~~ THEN EXIT
END





BEGIN ~CMNINAST~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0 
  SAY @25 
  IF ~~ THEN REPLY @26 GOTO 1
  IF ~~ THEN REPLY @27 GOTO 2
  IF ~~ THEN REPLY @28 GOTO 3
END

IF ~~ THEN BEGIN 1 
  SAY @29 
  IF ~~ THEN REPLY @30 GOTO 2
  IF ~~ THEN REPLY @31 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @32 
  IF ~~ THEN DO ~StartStore("cmninast",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN 3 
  SAY @33 
  IF ~~ THEN EXIT
  
END

IF ~True()
~ THEN BEGIN 4 
  SAY @34 
  IF ~~ THEN REPLY @35 GOTO 1
  IF ~~ THEN REPLY @36 GOTO 2
  IF ~~ THEN REPLY @37 GOTO 3
END




BEGIN ~CMTUS01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN CmStore1
SAY @38
IF ~~ THEN REPLY @39 GOTO CS1_2
IF ~~ THEN REPLY @40 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN CS1_2
SAY @41
IF ~~ THEN DO ~StartStore("cmtus01",LastTalkedToBy(Myself))~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN CS1_3
SAY @42
IF ~~ THEN REPLY @43 GOTO CS1_2
IF ~~ THEN REPLY @44 EXIT
END




BEGIN ~CMTUS02~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN CmStore2
SAY @45
IF ~~ THEN REPLY @46 GOTO CS2_2
IF ~~ THEN REPLY @47 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN CS2_2
SAY @41
IF ~~ THEN DO ~StartStore("cmtus02",LastTalkedToBy(Myself))~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN CS2_3
SAY @42
IF ~~ THEN REPLY @43 GOTO CS2_2
IF ~~ THEN REPLY @44 EXIT
END



BEGIN ~CMTUS03~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN CmStore3
SAY @38
IF ~~ THEN REPLY @46 GOTO CS3_2
IF ~~ THEN REPLY @48 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN CS3_2
SAY @49
IF ~~ THEN DO ~StartStore("cmtus03",LastTalkedToBy(Myself))~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN CS3_3
SAY @42
IF ~~ THEN REPLY @43 GOTO CS3_2
IF ~~ THEN REPLY @44 EXIT
END



BEGIN ~CMDRWP~

IF ~True()~ THEN BEGIN 0
  SAY @50 
  IF ~~ THEN REPLY @51 DO ~StartStore("tempeil",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY  @52 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @53
  IF ~~ THEN EXIT
END
