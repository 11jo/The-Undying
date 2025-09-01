EXTEND_TOP FATESP %fatesp_state_ninafer% #%fatesp_transition_ninafer%
	IF ~!Dead("cmninaf")
		!InMyArea("cmninaf")
		Global("NinaferSummoned","GLOBAL",0)~ THEN REPLY @0 DO ~CreateVisualEffect("SPPORTAL",[2000.1230])
																Wait(2)
																CreateCreature("CMNINA25",[2000.1230],0)
																SetGlobal("NinaferSummoned","GLOBAL",1)~ GOTO 8
	END

/* CHAIN IF ~True()~
THEN MYSTAVCM MystraAvatar
~Greetings my faithful follower, Ninafer. I wish a word with you.~
== CMNIN25J ~M-Mystra?? Anything you wish of me my Lady, anything at all. (Ninafer bows before Mystra.)~
== MYSTAVCM ~I have been watching you Ninafer and I am pleased by your progress as a defender of The Weave and of my faithful. You have suffered in your journey my child, of which I am sorry for, but sacrifices must be made on the quest of life.~
== CMNIN25J ~An apology is not necessary my Lady. The choices I made are mine and mine alone. I have done what I thought was required and would not change my choices no matter what it may have cost me. I will forever be Yours and do Your bidding.~
== MYSTAVCM ~Your dedication is admirable my child. I do from time to time reward those who have done great service to me.~
== CMNIN25J ~A reward is not necessary my Lady.~
== MYSTAVCM ~I think it is my child. Here take this.~ IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("MYSTAVCM")~ 
EXIT */

/* BEGIN ~MYSTAVCM~

IF ~GlobalGT("NinaGifted","GLOBAL",0)~ 
SAY ~ */
