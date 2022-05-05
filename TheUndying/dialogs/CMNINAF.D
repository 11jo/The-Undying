BEGIN ~CMNINAF~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greeting
 SAY @0
IF ~Alignment([PC], MASK_EVIL)~ THEN REPLY @1 GOTO GetLost
IF ~!Alignment([PC], MASK_EVIL)~ THEN REPLY @1 GOTO OfferJoin
END

IF ~~ THEN BEGIN GetLost
  SAY @2 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN OfferJoin
 SAY @3
IF ~~ THEN REPLY @4 GOTO Explain
END

IF ~~ THEN BEGIN Explain
 SAY @5
IF ~~ THEN REPLY @6 GOTO NinaJoin
IF ~~ THEN REPLY @7 GOTO NinaRejected
END

IF ~~ THEN BEGIN NinaJoin
  SAY @8
IF ~~ THEN REPLY @9 DO ~SetGlobal("NinaJoin", "GLOBAL", 1) AddexperienceParty(9500)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN NinaRejected
  SAY @10 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Return
  SAY @11
IF ~~ THEN REPLY @6 GOTO NinaJoin
IF ~~ THEN REPLY @7 GOTO NinaRejected
END
