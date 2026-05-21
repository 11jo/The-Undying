BEGIN ~WEENUG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
							Enemy()
							Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
							Enemy()
							Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))~ EXIT
END




BEGIN ~HAMM1~

IF ~~ THEN BEGIN 0
  SAY @10
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
  IF ~!Dead("cmhamm01")~ THEN GOTO 2
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 2
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 4
  IF ~!Dead("cmhamm01")~ THEN GOTO 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 3
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 1
END

IF ~~ THEN BEGIN 1
  SAY @11
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
  IF ~!Dead("cmhamm01")~ THEN GOTO 2
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 2
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 4
END

IF ~~ THEN BEGIN 2
  SAY @12
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
END




BEGIN ~HAMM2~

IF ~~ THEN BEGIN 0
  SAY @13
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN GOTO 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
  IF ~!Dead("cmhamm02")~ THEN GOTO 2
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 4
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 3
  IF ~!Dead("cmhamm02")~ THEN GOTO 1
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 0
END

IF ~~ THEN BEGIN 1
  SAY @14
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN GOTO 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
  IF ~!Dead("cmhamm02")~ THEN GOTO 2
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 4
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 3
END

IF ~~ THEN BEGIN 2 
  SAY @15
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
  IF ~!Dead("cmhamm02")~ THEN GOTO 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
END

IF ~~ THEN BEGIN 3
  SAY @16
  IF ~~ THEN EXTERN ~HAMM3~ 1
  IF ~!Dead("cmhamm03")~ THEN EXTERN ~HAMM3~ 5
END



BEGIN ~HAMM3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
					Enemy()
					Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @20
  IF ~~ THEN GOTO 1
  IF ~!Dead("cmhamm03")~ THEN GOTO 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 2
  IF ~!Dead("cmhamm03")~ THEN GOTO 4
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 1
  IF ~!Dead("cmhamm03")~ THEN GOTO 3
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 1
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 0
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 0
END

IF ~~ THEN BEGIN 3
  SAY @21
  IF ~~ THEN GOTO 1
  IF ~!Dead("cmhamm03")~ THEN GOTO 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 2
  IF ~!Dead("cmhamm03")~ THEN GOTO 4
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 1
END

IF ~~ THEN BEGIN 4
  SAY @22
  IF ~~ THEN GOTO 1
  IF ~!Dead("cmhamm03")~ THEN GOTO 5
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 3
  IF ~!Dead("cmhamm01")~ THEN EXTERN ~HAMM1~ 2
  IF ~!Dead("cmhamm02")~ THEN EXTERN ~HAMM2~ 2
END

IF ~~ THEN BEGIN 5
  SAY @23
  IF ~~ THEN GOTO 1
END



BEGIN ~CMSHAR1~

IF ~True()~ THEN BEGIN Shar1
  SAY @24
IF ~~ THEN REPLY @25 DO ~SetGlobal("CmFoundThievesC","GLOBAL",1)~ GOTO BiteMe
IF ~~ THEN REPLY @26 GOTO GoAway
END

IF ~~ THEN BEGIN BiteMe
  SAY @27 IF ~~ THEN DO ~SetGlobal("CmSharFight","GLOBAL",1)
							Enemy()
~ EXIT
END
 
IF ~~ THEN BEGIN GoAway
  SAY @28
IF ~~ THEN EXIT
END


BEGIN ~CMNIFA02~

IF ~RandomNum(5,1)
~ THEN BEGIN 0
  SAY @29
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
~ THEN BEGIN 1
  SAY @30
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
~ THEN BEGIN 2
  SAY @31
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
~ THEN BEGIN 3
  SAY @32
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
~ THEN BEGIN 4
  SAY @33
  IF ~~ THEN EXIT
END

BEGIN ~CMNIFA01~

IF ~NumTimesTalkedTo(0)
Global("CmFarmQuest","GLOBAL",0)~ THEN BEGIN GreetingsToYou
  SAY @34
IF ~~ THEN REPLY @35 GOTO Interested
IF ~~ THEN REPLY @36 GOTO TurnedDown
END

IF ~~ THEN BEGIN Interested
  SAY @37
IF ~~ THEN REPLY @38 GOTO Details
END

IF ~~ THEN BEGIN TurnedDown
  SAY @39 IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~
EXIT
END

IF ~~ THEN BEGIN Details
  SAY @40
IF ~~ THEN REPLY @41
EXIT
END

IF ~NumTimesTalkedToGT(0)
!PartyHasItem("MISC7H")
Global("CmFarmQuest","GLOBAL",0)
~ THEN BEGIN NoItem
  SAY @42
IF ~~ THEN REPLY @43 GOTO HurryUp
END

IF ~~ THEN BEGIN HurryUp
  SAY @44 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
PartyHasItem("MISC7H")
Global("CmFarmQuest","GLOBAL",0)
~ THEN BEGIN HaveItem
  SAY @45 IF ~~ THEN DO ~TakePartyItem("MISC7H")
							GivePartyGold(10)
							SetGlobal("CmFarmQuest","GLOBAL",1)
							AddexperienceParty(6000)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CmFarmQuest","GLOBAL",1)
~ THEN BEGIN ReturnAgain
  SAY @46 IF ~~ THEN EXIT
END

