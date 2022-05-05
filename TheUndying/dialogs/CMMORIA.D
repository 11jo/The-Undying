BEGIN CMMORIA

CHAIN
IF ~Detect("cmninaf")
InParty("cmninaf")
!StateCheck("cmninaf",STATE_SLEEPING)~
THEN CMMORIA FathersDeath
@0
== CMNINAFJ @1 
== CMMORIA @2
== CMNINAFJ @3
== CMMORIA @4
== CMNINAFJ @5
= @6
END
 ++ @7 DO ~SetGlobal("CMNinaDadsDeath","GLOBAL",1)~ + DragonHunt
 ++ @8 + NoDragonHunt
 ++ @9 + CowardlyBastard

CHAIN CMMORIA DragonHunt
@10
== CMNINAFJ @11
DO ~AddexperienceParty(20000)~
EXIT


CHAIN CMMORIA NoDragonHunt
@12
== CMNINAFJ @13
DO ~LeaveParty()
EscapeArea()~
EXIT


CHAIN CMMORIA CowardlyBastard
@14
== CMNINAFJ @15
DO ~LeaveParty()
EscapeArea()~
EXIT





