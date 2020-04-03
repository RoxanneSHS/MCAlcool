REPLACE ARAN

IF ~~ THEN BEGIN 47 
  SAY #43080
  IF ~~ GOTO MC_NEWARAN
END

END

APPEND ARAN

IF ~~ THEN BEGIN MC_NEWARAN
   SAY ~~
   IF ~~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
StartCutSceneMode()
StartCutScene("Movie03b")~ SOLVED_JOURNAL #47839  EXIT
END

END

INTERJECT ARAN 47 MCProposition
== KORGANJ IF ~!Dead("Korgan") InParty("Korgan")~ THEN @1
== MAZZYJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Mazzy") InParty("Mazzy")~ THEN @2
== KORGANJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Mazzy") InParty("Mazzy")~ THEN @3
== MAZZYJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Mazzy") InParty("Mazzy")~ THEN @4
== EDWINJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Edwin") InParty("Edwin")~ THEN @5
== ANOMENJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Anomen") InParty("Anomen")~ THEN @6
== NALIAJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Nalia") InParty("Nalia")~ THEN @7
== KELDORJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Keldorn") InParty("Keldorn")~ THEN @8
== CERNDJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Cernd") InParty("Cernd")~ THEN @9
== HAERDAJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @10
== AERIEJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Aerie") InParty("Aerie")~ THEN @11
== JANJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Jan") InParty("Jan")~ THEN @12
== YOSHJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Yoshimo") InParty("Yoshimo")~ THEN @13
== VICONJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Viconia") InParty("Viconia")~ THEN @14
== MINSCJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Minsc") InParty("Minsc")~ THEN @15
== JAHEIRAJ IF ~!Dead("Korgan") InParty("Korgan") !Dead("Jaheira") InParty("Jaheira")~ THEN @16
END BKORGAN MCDecisionTaverne

APPEND BKORGAN

IF ~~ THEN BEGIN MCDecisionTaverne
   SAY @17
   IF ~~ THEN REPLY @18 DO ~SetGlobal("MCRefus","LOCALS",1)~ GOTO MCRefus
   IF ~~ THEN REPLY @19 GOTO MCAccept
END

END

CHAIN
IF ~~ THEN BKORGAN MCRefus
@20
== NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @21
== KORGANJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @22
= IF ~!Dead("Nalia") InParty("Nalia") !Dead("Mazzy") InParty("Mazzy")~ THEN @23
= IF ~OR(2) Dead("Nalia") !InParty("Nalia") !Dead("Mazzy") InParty("Mazzy")~ THEN @24
== MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @25
== KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @26
== MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @27
== JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @28
== AERIEJ IF ~!Dead("Aerie") InParty("Aerie")~ THEN @29
== KELDORJ IF ~!Dead("Keldorn") InParty("Keldorn")~ THEN @30
== ANOMENJ IF ~!Dead("Anomen") InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @31
= IF ~!Dead("Anomen") InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @32
== VICONJ IF ~!Dead("Viconia") InParty("Viconia")~ THEN @33
== JANJ IF ~!Dead("Jan") InParty("Jan")~ THEN @34
== YOSHJ IF ~!Dead("Yoshimo") InParty("Yoshimo")~ THEN @35
== CERNDJ IF ~!Dead("Cernd") InParty("Cernd")~ THEN @36
== MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @37
== HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @38
== EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @39
END ARAN MC_NEWARAN

CHAIN
IF ~~ THEN BKORGAN MCAccept
@40 DO ~SetGlobal("MCPropositionBM","GLOBAL", 0) SetGlobal("MCPropositionAM","GLOBAL", 0) SetGlobal("MCProposition7V","GLOBAL", 0) SetGlobal("MCProposition5C","GLOBAL", 0)~
== MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @41 DO ~SetGlobal("MCProposition7V","GLOBAL", 1)~
== NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @42 DO ~SetGlobal("MCPropositionBM","GLOBAL", 1)~
== EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @43 DO ~SetGlobal("MCPropositionAM","GLOBAL", 1)~
== AERIEJ IF ~!Dead("Aerie") InParty("Aerie")~ THEN @44 DO ~SetGlobal("MCProposition7V","GLOBAL", 1)~
== ANOMENJ IF ~!Dead("Anomen") InParty("Anomen") Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @45
= IF ~!Dead("Anomen") InParty("Anomen") !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @46 DO ~SetGlobal("MCPropositionAM","GLOBAL", 1)~
== HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @47 DO ~SetGlobal("MCProposition5C","GLOBAL", 1)~
== MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @48 DO ~SetGlobal("MCPropositionAM","GLOBAL", 1)~
== EDWINJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Edwin") InParty("Edwin")~ THEN @49
== MINSCJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Edwin") InParty("Edwin")~ THEN @50
== YOSHJ IF ~!Dead("Yoshimo") InParty("Yoshimo")~ THEN @51 DO ~SetGlobal("MCPropositionBM","GLOBAL", 1)~
== VICONJ IF ~!Dead("Viconia") InParty("Viconia")~ THEN @52 DO ~SetGlobal("MCProposition7V","GLOBAL", 1)~
== JANJ IF ~!Dead("Jan") InParty("Jan")~ THEN @53
== KELDORJ IF ~!Dead("Keldorn") InParty("Keldorn")~ THEN @54 DO ~SetGlobal("MCProposition5C","GLOBAL", 1)~
== JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @55 DO ~SetGlobal("MCProposition7V","GLOBAL", 1)~
== KORGANJ IF ~NumInPartyAliveGT(2)~ THEN @56
END BKORGAN MCChoixTaverne

APPEND BKORGAN

IF ~~ THEN BEGIN MCChoixTaverne
   SAY @57
   IF ~~ THEN REPLY @58 DO ~SetGlobal("MCChoixCC","GLOBAL", 1)~ GOTO MCChoixCC
   IF ~Global("MCPropositionBM", "GLOBAL", 1)~ THEN REPLY @59 DO ~SetGlobal("MCChoixBM","GLOBAL", 1)~ GOTO MCChoixBM
   IF ~Global("MCProposition7V", "GLOBAL", 1)~ THEN REPLY @60 DO ~SetGlobal("MCChoix7V","GLOBAL", 1)~ GOTO MCChoix7V
   IF ~Global("MCProposition5C", "GLOBAL", 1)~ THEN REPLY @61 DO ~SetGlobal("MCChoix5C","GLOBAL", 1)~ GOTO MCChoix5C
   IF ~Global("MCPropositionAM", "GLOBAL", 1)~ THEN REPLY @62 DO ~SetGlobal("MCChoixAM","GLOBAL", 1)~ GOTO MCChoixAM
END

END

CHAIN
IF ~~ THEN BKORGAN MCChoixCC
 @63
 == JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @64
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @65
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @66
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Minsc") InParty("Minsc")~ THEN @67
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @68
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @69
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @70
 = IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Valygar") InParty("Valygar")~ THEN @71
 == VALYGARJ IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Valygar") InParty("Valygar")~ THEN @72
 == NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @73
 == KORGANJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @74
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @75
 == KORGANJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @76
 == EDWINJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Edwin") InParty("Edwin")~ THEN @77
 END ARAN MC_NEWARAN

CHAIN
IF ~~ THEN BKORGAN MCChoixBM
@78
== EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @79
== NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @80
== KORGANJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @81
== NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @82
== KORGANJ IF ~GlobalGT("DelciaLeave","GLOBAL",0) !Dead("Nalia") InParty("Nalia")~ THEN @83
== EDWINJ IF ~GlobalGT("DelciaLeave","GLOBAL",0) !Dead("Nalia") InParty("Nalia") !Dead("Edwin") InParty("Edwin")~ THEN @84
== JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @85
== MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @86
== KORGANJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @87
== MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @88
== NALIAJ IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Nalia") InParty("Nalia")~ THEN @89
== EDWINJ IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Nalia") InParty("Nalia") !Dead("Edwin") InParty("Edwin")~ THEN @90
== HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @91
== YOSHJ IF ~!Dead("Yoshimo") InParty("Yoshimo") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @92
END ARAN MC_NEWARAN

CHAIN
IF ~~ THEN BKORGAN MCChoix5C
 @93
 == JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @94
 == KORGANJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @95
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @96
 == HAERDAJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @97
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @98
 == HAERDAJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @99
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @100
 == HAERDAJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @101
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @102
 == KORGANJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @103
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @104
// == HAERDAJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Haerdalis") InParty("Haerdalis")~ THEN ~Il vaut peut-être mieux que je ne me produise pas devant un tel public.~
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @105
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @106
 == VALYGARJ IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Valygar") InParty("Valygar")~ THEN @107
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy") !Dead("Valygar") InParty("Valygar")~ THEN @108
 == NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @109
 == MAZZYJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Mazzy") InParty("Mazzy")~ THEN @110
 == JANJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Mazzy") InParty("Mazzy") !Dead("Jan") InParty("Jan")~ THEN @111
 = IF ~!Dead("Nalia") InParty("Nalia") !Dead("Mazzy") InParty("Mazzy") !Dead("Jan") InParty("Jan")~ THEN @112
 == MAZZYJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Mazzy") InParty("Mazzy") !Dead("Jan") InParty("Jan")~ THEN @113
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @114
 = IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @115
 == KORGANJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @116
 = IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @117
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~  THEN @118
 = IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Aerie") InParty("Aerie")~ THEN @119
 == AERIEJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Aerie") InParty("Aerie")~ THEN @120
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Keldorn") InParty("Keldorn")~ THEN @121
 == KELDORJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Keldorn") InParty("Keldorn")~ THEN @122
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Mazzy") InParty("Mazzy")~ THEN @123
 == MAZZYJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Mazzy") InParty("Mazzy")~ THEN @124
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Valygar") InParty("Valygar")~ THEN @125
 == VALYGARJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Valygar") InParty("Valygar")~ THEN @126
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Nalia") InParty("Nalia")~ THEN @127
 == NALIAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Nalia") InParty("Nalia")~ THEN @128
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Minsc") InParty("Minsc")~ THEN @129
 == MINSCJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Minsc") InParty("Minsc")~ THEN @130
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Minsc") InParty("Minsc")~ THEN @131
 == MINSCJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Minsc") InParty("Minsc")~ THEN @132
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Anomen") InParty("Anomen")~ THEN @133
 == ANOMENJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Anomen") InParty("Anomen")~ THEN @134
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Anomen") InParty("Anomen")~ THEN @135
 == ANOMENJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Anomen") InParty("Anomen")~ THEN @136
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Yoshimo") InParty("Yoshimo")~ THEN @137
 == YOSHJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Yoshimo") InParty("Yoshimo")~ THEN @138
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Cernd") InParty("Cernd")~ THEN @139
 == CERNDJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Cernd") InParty("Cernd")~ THEN @140
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jan") InParty("Jan")~ THEN @141
 == JANJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jan") InParty("Jan")~ THEN @142
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Viconia") InParty("Viconia")~ THEN @143
 == VICONJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Viconia") InParty("Viconia")~ THEN @144
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @145
 == HAERDAJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @146
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @147
 == HAERDAJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @148
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @149
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jaheira") InParty("Jaheira")~ THEN @150
 == JAHEIRAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jaheira") InParty("Jaheira")~ THEN @151
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jaheira") InParty("Jaheira")~ THEN @152
 = IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Jaheira") InParty("Jaheira")~ THEN @153
 == HAERDAJ IF ~OR(2) Dead("Jaheira") !InParty("Jaheira") !Dead("Haerdalis") InParty("Haerdalis")~ THEN @154
END ARAN MC_NEWARAN

CHAIN
IF ~~ THEN BKORGAN MCChoix7V
 @155 
 == JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @156
 == KORGANJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @157
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @158
 == KORGANJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @159
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @160
 == KORGANJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @161
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @162
 == NALIAJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Nalia") InParty("Nalia")~ THEN @163
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @164
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @165
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @166
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @167
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @168
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @169
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @170
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @171
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @172
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @173
 == NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @174
 == AERIEJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Aerie") InParty("Aerie")~ THEN @175
 == NALIAJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Aerie") InParty("Aerie")~ THEN @176
 == KORGANJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Aerie") InParty("Aerie")~ THEN @177
 == MAZZYJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Aerie") InParty("Aerie") !Dead("Mazzy") InParty("Mazzy")~ THEN @178
 == KORGANJ IF ~!Dead("Nalia") InParty("Nalia") !Dead("Aerie") InParty("Aerie") !Dead("Mazzy") InParty("Mazzy")~ THEN @179
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @180
 == AERIEJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Aerie") InParty("Aerie")~ THEN @181
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Aerie") InParty("Aerie")~ THEN @182
 == VICONJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Viconia") InParty("Viconia")~ THEN @183
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis") !Dead("Viconia") InParty("Viconia")~ THEN @184
END ARAN MC_NEWARAN

CHAIN
IF ~~ THEN BKORGAN MCChoixAM
 @185
 == JAHEIRAJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @186
 == KORGANJ IF ~!Dead("Jaheira") InParty("Jaheira")~ THEN @187
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc")~ THEN @188
 == EDWINJ IF ~!Dead("Edwin") InParty("Edwin")~ THEN @189
 = IF ~!Dead("Edwin") InParty("Edwin") !Dead("Minsc") InParty("Minsc")~ THEN @190
 == MINSCJ IF ~!Dead("Minsc") InParty("Minsc") !Dead("Edwin") InParty("Edwin")~ THEN @191
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @192
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @193
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @194
 == KORGANJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @195
 == MAZZYJ IF ~!Dead("Mazzy") InParty("Mazzy")~ THEN @196
 == HAERDAJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @197
 == KORGANJ IF ~!Dead("Haerdalis") InParty("Haerdalis")~ THEN @198
 == NALIAJ IF ~!Dead("Nalia") InParty("Nalia")~ THEN @199
 == KORGANJ IF ~GlobalGT("DelciaLeave","GLOBAL",0) !Dead("Nalia") InParty("Nalia")~ THEN @200
 == MINSCJ IF ~GlobalGT("DelciaLeave","GLOBAL",0) !Dead("Nalia") InParty("Nalia") !Dead("Minsc") InParty("Minsc")~ THEN @201
 == JANJ IF ~GlobalGT("DelciaLeave","GLOBAL",0) !Dead("Nalia") InParty("Nalia") !Dead("Jan") InParty("Jan")~ THEN @202
END ARAN MC_NEWARAN
