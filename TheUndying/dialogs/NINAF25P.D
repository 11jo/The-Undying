BEGIN ~CMNIN25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("KickedOut","LOCALS",0)
							JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("KickedOut","LOCALS",1)
												MoveToPointNoInterrupt([1685.1437])
												Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("KickedOut","LOCALS",1)
											CreateVisualEffectObject("SPDIMNDR",Myself)
											Wait(2)
											MoveBetweenAreas("AR4500",[1685.1437],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @2 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @4 
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",0)
							JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @8 
  IF ~~ THEN EXIT
END
