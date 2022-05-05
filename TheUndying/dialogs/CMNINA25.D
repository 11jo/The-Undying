BEGIN ~CMNINA25~

IF ~Global("NinaferSummoned","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("NinaferSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @2 
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 
  SAY @5 
  IF ~~ THEN REPLY @6 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 4 
  SAY @8 
  IF ~~ THEN REPLY @9 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY @11 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1685.1437])
Face(0)~ EXIT
END

IF ~Global("NinaferSummoned","GLOBAL",2)~ THEN BEGIN 6 
  SAY @12 
  IF ~~ THEN REPLY @13 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 
  SAY @15 
  IF ~~ THEN EXIT
END
