BEGIN ~CMCALLIP~

IF ~Global("CalliJoined","GLOBAL",1)~ THEN BEGIN KickOut
  SAY @0
   ++ @1 GOTO ko1
   ++ @2 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN ko1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CalliJoined","GLOBAL",0)
					EscapeArea()~
EXIT
END



