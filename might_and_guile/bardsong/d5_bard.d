BEGIN ~D5_BARD~

IF ~Global("D5_FEAT","GLOBAL",1)~ THEN BEGIN d5_bard
 SAY @20009 // ~Choose a feat:~
 IF ~~ THEN REPLY @21021 GOTO d5_bard_1	//	morale aura
 IF ~~ THEN REPLY @21031 GOTO d5_bard_2	//	skald song
 IF ~~ THEN REPLY @21201 GOTO d5_bard_3	//	miscast aura
 IF ~~ THEN REPLY @21211 GOTO d5_bard_4	//	intimidation
 IF ~~ THEN REPLY @21221 GOTO d5_bard_5	//	bad luck
 IF ~CheckStatGT(myself,5,LEVEL)~ THEN REPLY @21411 GOTO d5_bard_6		//	blur
 IF ~CheckStatGT(myself,7,LEVEL)~ THEN REPLY @21421 GOTO d5_bard_7		//	mind blank
 IF ~CheckStatGT(myself,7,LEVEL)~ THEN REPLY @21431 GOTO d5_bard_8		//	invulnerability
 IF ~CheckStatGT(myself,7,LEVEL)~ THEN REPLY @21471 GOTO d5_bard_9		//	slow
END

IF ~~ THEN BEGIN d5_bard_1 // morale aura
 SAY @21022
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD02Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_2 // skald song
 SAY @21032
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD03Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_3 // miscast aura
 SAY @21202
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD20Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_4 // intimidation
 SAY @21212
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD21Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_5 // bad luck
 SAY @21222
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD22Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_6 // blur
 SAY @21412
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD41Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END
IF ~~ THEN BEGIN d5_bard_7 // mind blank
 SAY @21422
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD42Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END 
IF ~~ THEN BEGIN d5_bard_8 // invulnerability
 SAY @21432
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD43Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END 
IF ~~ THEN BEGIN d5_bard_9 // slow
 SAY @21472
 IF ~~ THEN REPLY @20098 DO ~ApplySpellRES("D5BD47Z",Myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_bard 
END 
