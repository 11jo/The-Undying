BEGIN CALLISTO

IF ~NumTimesTalkedTo(0)~ THEN BEGIN CalliMeet
 SAY @0
 ++ @1 + CalliMeet2
 ++ @2 + CalliMeet3
 END

 IF ~~ CalliMeet2
 SAY @3
 ++ @4 + CalliMeet4
 ++ @5 + Perfect
 ++ @6 + SoBeIt
 END
 
 IF ~~ CalliMeet3
 SAY @7
 IF ~~ EXIT
END

IF ~~ CalliMeet4
SAY @8
IF ~~ EXIT
END

IF ~~ Perfect
SAY @9
 IF ~~ THEN DO ~/* AddJournalEntry(@2000,QUEST) */ SetGlobal("CalliJoined","GLOBAL",1) SetGlobal("CallistoBA","GLOBAL",1) JoinParty()~
EXIT
END

IF ~~ SoBeIt
SAY @10
IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CalliJoined","GLOBAL",0)~ THEN BEGIN Return
SAY @11
++ @12 + Perfect
++ @13 + CalliMeet4
END

