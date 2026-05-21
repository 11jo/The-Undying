BEGIN ~CMWOLF~

IF ~RandomNum(4,1)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END





BEGIN ~CMSOLA~

IF ~RandomNum(4,1)
~ THEN BEGIN 0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
~ THEN BEGIN 1
  SAY @5 
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END




BEGIN ~CMNINA~

IF ~NumberOfTimesTalkedTo(0)
Global("NinaChat","GLOBAL",0)
~ THEN BEGIN 0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 1
  IF ~~ THEN REPLY @10 DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 2
  IF ~~ THEN REPLY @13 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("NinaChat","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))
~ EXIT
END

IF ~Global("NinaChat","GLOBAL",1)
~ THEN BEGIN 4
  SAY @16
  IF ~~ THEN REPLY @17 EXIT
  IF ~~ THEN REPLY @18 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @19
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))
~ EXIT
END




BEGIN ~CMLORDAS~

IF ~NumTimesTalkedTo(0)
Global("CmMystraBustQuest","GLOBAL",0)~ THEN BEGIN GreetingsToYou
  SAY @20
IF ~~ THEN REPLY @21 GOTO Interested
IF ~~ THEN REPLY @22 GOTO TurnedDown
END

IF ~~ THEN BEGIN Interested
  SAY @23
IF ~~ THEN REPLY @24 GOTO Details
END

IF ~~ THEN BEGIN TurnedDown
  SAY @25 IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~
EXIT
END

IF ~~ THEN BEGIN Details
  SAY @26
IF ~~ THEN REPLY @27
EXIT
END

IF ~NumTimesTalkedToGT(0)
!PartyHasItem("CMMISC03")
Global("CmMystraBustQuest","GLOBAL",0)
~ THEN BEGIN NoBust
  SAY @28
IF ~~ THEN REPLY @29 GOTO HurryUp
END

IF ~~ THEN BEGIN HurryUp
  SAY @30 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
PartyHasItem("CMMISC03")
Global("CmMystraBustQuest","GLOBAL",0)
~ THEN BEGIN HaveBust
  SAY @31 IF ~~ THEN DO ~TakePartyItem("CMMISC03")
							GivePartyGold(2000)
							SetGlobal("CmMystraBustQuest","GLOBAL",1)
							AddexperienceParty(12500)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CmMystraBustQuest","GLOBAL",1)
~ THEN BEGIN ReturnAgain
  SAY @32 IF ~~ THEN EXIT
END




BEGIN ~cmkat~

IF ~RandomNum(4,1)
~ THEN BEGIN 0
  SAY @33
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
~ THEN BEGIN 1
  SAY @34
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
~ THEN BEGIN 2
  SAY @35
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
~ THEN BEGIN 3
  SAY @36
  IF ~~ THEN EXIT
END




BEGIN ~CMGORC~

IF ~RandomNum(3,1)
~ THEN BEGIN 0
  SAY @37
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
~ THEN BEGIN 1
  SAY @38
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
~ THEN BEGIN 2
  SAY @39 
  IF ~~ THEN EXIT
END



BEGIN ~CMGABB~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 1
  IF ~~ THEN REPLY @42 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @45
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @46
  IF ~~ THEN REPLY @47 EXIT
END

IF ~!PartyHasItem("CMBOOK01")
Global("CmGotBook","GLOBAL",0)
~ THEN BEGIN 4
  SAY @48
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("CMBOOK01")
Global("CmGotBook","GLOBAL",0)
~ THEN BEGIN 5
  SAY @49
  IF ~~ THEN DO ~AddexperienceParty(25500)
~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @50
  IF ~~ THEN DO ~TakePartyItem("CMBOOK01")
					GivePartyGold(30000)
					SetGlobal("CmGotBook","GLOBAL",1)
~ EXIT
END

IF ~Global("GotBook","GLOBAL",1)
~ THEN BEGIN 7
  SAY @51
  IF ~~ THEN EXIT
END




BEGIN ~CMDUNKIN~ 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN you
  SAY @52
  ++ @53 + goaway
END

IF ~~ THEN BEGIN goaway
  SAY @54 
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN buzzoff 
  SAY @55 
  IF ~~ THEN EXIT
END




BEGIN ~CMDMERC~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @56
  ++ @57 + 4
  ++ @58 + 1
END

IF ~~ THEN BEGIN 1
  SAY @59
  ++ @60 + 2
  ++ @61 + 3
END

IF ~~ THEN BEGIN 2
  SAY @62
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CmDwarfMerchantHostile","GLOBAL",1)
					ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @64
  ++ @65 + 5
END

IF ~~ THEN BEGIN 5
  SAY @66
  ++ @65 + 6
END

IF ~~ THEN BEGIN 6
  SAY @67
  ++ @68 EXIT
END

IF ~NumTimesTalkedToGT(0)
~ THEN BEGIN 7
  SAY @69
  ++ @70  + 8
  ++ @71  + 9
  ++ @72 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @73
  IF ~~ THEN DO ~StartStore("cmmagin1",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @74
  IF ~~ THEN DO ~SetGlobal("CmDwarfMerchantHostile","GLOBAL",1)
					ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))~ EXIT
END

