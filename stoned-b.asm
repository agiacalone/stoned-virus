1000:0100 EA0500C007    JMP     07C0:0005
1000:0105 E99900        JMP     01A1
1000:0108 001B          ADD     [BP+DI],BL
1000:010A 0300          ADD     AX,[BX+SI]
1000:010C C8            *XXX
1000:010D E400          IN      AL,00
1000:010F 809F007C00    SBB     BYTE PTR [BX+7C00],00
1000:0114 001E5080      ADD     [8050],BL
1000:0118 FC            CLD
1000:0119 027217        ADD     DH,[BP+SI+17]
1000:011C 80FC04        CMP     AH,04
1000:011F 7312          JNB     0133
1000:0121 0AD2          OR      DL,DL
1000:0123 750E          JNZ     0133
1000:0125 33C0          XOR     AX,AX
1000:0127 8ED8          MOV     DS,AX
1000:0129 A03F04        MOV     AL,[043F]
1000:012C A801          TEST    AL,01
1000:012E 7503          JNZ     0133
1000:0130 E80700        CALL    013A
1000:0133 58            POP     AX
1000:0134 1F            POP     DS
1000:0135 2E            CS:
1000:0136 FF2E0900      JMP     FAR [0009]
1000:013A 53            PUSH    BX
1000:013B 51            PUSH    CX
1000:013C 52            PUSH    DX
1000:013D 06            PUSH    ES
1000:013E 56            PUSH    SI
1000:013F 57            PUSH    DI
1000:0140 BE0400        MOV     SI,0004
1000:0143 B80102        MOV     AX,0201
1000:0146 0E            PUSH    CS
1000:0147 07            POP     ES
1000:0148 BB0002        MOV     BX,0200
1000:014B 33C9          XOR     CX,CX
1000:014D 8BD1          MOV     DX,CX
1000:014F 41            INC     CX
1000:0150 9C            PUSHF
1000:0151 2E            CS:
1000:0152 FF1E0900      CALL    FAR [0009]
1000:0156 730E          JNB     0166
1000:0158 33C0          XOR     AX,AX
1000:015A 9C            PUSHF
1000:015B 2E            CS:
1000:015C FF1E0900      CALL    FAR [0009]
1000:0160 4E            DEC     SI
1000:0161 75E0          JNZ     0143
1000:0163 EB35          JMP     019A
1000:0165 90            NOP
1000:0166 33F6          XOR     SI,SI
1000:0168 BF0002        MOV     DI,0200
1000:016B FC            CLD
1000:016C 0E            PUSH    CS
1000:016D 1F            POP     DS
1000:016E AD            LODSW
1000:016F 3B05          CMP     AX,[DI]
1000:0171 7506          JNZ     0179
1000:0173 AD            LODSW
1000:0174 3B4502        CMP     AX,[DI+02]
1000:0177 7421          JZ      019A
1000:0179 B80103        MOV     AX,0301
1000:017C BB0002        MOV     BX,0200
1000:017F B103          MOV     CL,03
1000:0181 B601          MOV     DH,01
1000:0183 9C            PUSHF
1000:0184 2E            CS:
1000:0185 FF1E0900      CALL    FAR [0009]
1000:0189 720F          JB      019A
1000:018B B80103        MOV     AX,0301
1000:018E 33DB          XOR     BX,BX
1000:0190 B101          MOV     CL,01
1000:0192 33D2          XOR     DX,DX
1000:0194 9C            PUSHF
1000:0195 2E            CS:
1000:0196 FF1E0900      CALL    FAR [0009]
1000:019A 5F            POP     DI
1000:019B 5E            POP     SI
1000:019C 07            POP     ES
1000:019D 5A            POP     DX
1000:019E 59            POP     CX
1000:019F 5B            POP     BX
1000:01A0 C3            RET
1000:01A1 33C0          XOR     AX,AX
1000:01A3 8ED8          MOV     DS,AX
1000:01A5 FA            CLI
1000:01A6 8ED0          MOV     SS,AX
1000:01A8 BC007C        MOV     SP,7C00
1000:01AB FB            STI
1000:01AC A14C00        MOV     AX,[004C]
1000:01AF A3097C        MOV     [7C09],AX
1000:01B2 A14E00        MOV     AX,[004E]
1000:01B5 A30B7C        MOV     [7C0B],AX
1000:01B8 A11304        MOV     AX,[0413]
1000:01BB 48            DEC     AX
1000:01BC 48            DEC     AX
1000:01BD A31304        MOV     [0413],AX
1000:01C0 B106          MOV     CL,06
1000:01C2 D3E0          SAL     AX,CL
1000:01C4 8EC0          MOV     ES,AX
1000:01C6 A30F7C        MOV     [7C0F],AX
1000:01C9 B81500        MOV     AX,0015
1000:01CC A34C00        MOV     [004C],AX
1000:01CF 8C064E00      MOV     [004E],ES
1000:01D3 B9B801        MOV     CX,01B8
1000:01D6 0E            PUSH    CS
1000:01D7 1F            POP     DS
1000:01D8 33F6          XOR     SI,SI
1000:01DA 8BFE          MOV     DI,SI
1000:01DC FC            CLD
1000:01DD F3            REPZ
1000:01DE A4            MOVSB
1000:01DF 2E            CS:
1000:01E0 FF2E0D00      JMP     FAR [000D]
1000:01E4 B80000        MOV     AX,0000
1000:01E7 CD13          INT     13
1000:01E9 33C0          XOR     AX,AX
1000:01EB 8EC0          MOV     ES,AX
1000:01ED B80102        MOV     AX,0201
1000:01F0 BB007C        MOV     BX,7C00
1000:01F3 2E            CS:
1000:01F4 803E080000    CMP     BYTE PTR [0008],00
1000:01F9 740B          JZ      0206
1000:01FB B90700        MOV     CX,0007
1000:01FE BA8000        MOV     DX,0080
1000:0201 CD13          INT     13
1000:0203 EB49          JMP     024E
1000:0205 90            NOP
1000:0206 B90300        MOV     CX,0003
1000:0209 BA0001        MOV     DX,0100
1000:020C CD13          INT     13
1000:020E 723E          JB      024E
1000:0210 26            ES:
1000:0211 F6066C0407    TEST    BYTE PTR [046C],07
1000:0216 7512          JNZ     022A
1000:0218 BE8901        MOV     SI,0189
1000:021B 0E            PUSH    CS
1000:021C 1F            POP     DS
1000:021D AC            LODSB
1000:021E 0AC0          OR      AL,AL
1000:0220 7408          JZ      022A
1000:0222 B40E          MOV     AH,0E
1000:0224 B700          MOV     BH,00
1000:0226 CD10          INT     10
1000:0228 EBF3          JMP     021D
1000:022A 0E            PUSH    CS
1000:022B 07            POP     ES
1000:022C B80102        MOV     AX,0201
1000:022F BB0002        MOV     BX,0200
1000:0232 B101          MOV     CL,01
1000:0234 BA8000        MOV     DX,0080
1000:0237 CD13          INT     13
1000:0239 7213          JB      024E
1000:023B 0E            PUSH    CS
1000:023C 1F            POP     DS
1000:023D BE0002        MOV     SI,0200
1000:0240 BF0000        MOV     DI,0000
1000:0243 AD            LODSW
1000:0244 3B05          CMP     AX,[DI]
1000:0246 7511          JNZ     0259
1000:0248 AD            LODSW
1000:0249 3B4502        CMP     AX,[DI+02]
1000:024C 750B          JNZ     0259
1000:024E 2E            CS:
1000:024F C606080000    MOV     BYTE PTR [0008],00
1000:0254 2E            CS:
1000:0255 FF2E1100      JMP     FAR [0011]
1000:0259 2E            CS:
1000:025A C606080002    MOV     BYTE PTR [0008],02
1000:025F B80103        MOV     AX,0301
1000:0262 BB0002        MOV     BX,0200
1000:0265 B90700        MOV     CX,0007
1000:0268 BA8000        MOV     DX,0080
1000:026B CD13          INT     13
1000:026D 72DF          JB      024E
1000:026F 0E            PUSH    CS
1000:0270 1F            POP     DS
1000:0271 0E            PUSH    CS
1000:0272 07            POP     ES
1000:0273 BEBE03        MOV     SI,03BE
1000:0276 BFBE01        MOV     DI,01BE
1000:0279 B94202        MOV     CX,0242
1000:027C F3            REPZ
1000:027D A4            MOVSB
1000:027E B80103        MOV     AX,0301
1000:0281 33DB          XOR     BX,BX
1000:0283 FEC1          INC     CL
1000:0285 CD13          INT     13
1000:0287 EBC5          JMP     024E
1000:0289 07            POP     ES
1000:028A 59            POP     CX
1000:028B 6F            *XXX
1000:028C 7572          JNZ     0300
1000:028E 205043        AND     [BX+SI+43],DL
1000:0291 206973        AND     [BX+DI+73],CH
1000:0294 206E6F        AND     [BP+6F],CH
1000:0297 7720          JA      02B9
1000:0299 53            PUSH    BX
1000:029A 746F          JZ      030B
1000:029C 6E            *XXX
1000:029D 65            *XXX
1000:029E 64            *XXX
1000:029F 2107          AND     [BX],AX
1000:02A1 0D0A0A        OR      AX,0A0A
1000:02A4 004C45        ADD     [SI+45],CL
1000:02A7 47            INC     DI
1000:02A8 41            INC     CX
1000:02A9 4C            DEC     SP
1000:02AA 49            DEC     CX
1000:02AB 53            PUSH    BX
1000:02AC 45            INC     BP
1000:02AD 66            *XXX
1000:02AE 0204          ADD     AL,[SI]
1000:02B0 2C01          SUB     AL,01
1000:02B2 2C01          SUB     AL,01
1000:02B4 0B05          OR      AX,[DI]
1000:02B6 66            *XXX
1000:02B7 0200          ADD     AL,[BX+SI]
1000:02B9 0000          ADD     [BX+SI],AL
1000:02BB 0000          ADD     [BX+SI],AL
1000:02BD 0000          ADD     [BX+SI],AL
1000:02BF 0000          ADD     [BX+SI],AL
1000:02C1 0000          ADD     [BX+SI],AL
1000:02C3 0000          ADD     [BX+SI],AL
1000:02C5 0000          ADD     [BX+SI],AL
1000:02C7 0000          ADD     [BX+SI],AL
1000:02C9 0000          ADD     [BX+SI],AL
1000:02CB 0000          ADD     [BX+SI],AL
1000:02CD 0000          ADD     [BX+SI],AL
1000:02CF 0000          ADD     [BX+SI],AL
1000:02D1 0000          ADD     [BX+SI],AL
1000:02D3 0000          ADD     [BX+SI],AL
1000:02D5 0000          ADD     [BX+SI],AL
1000:02D7 0000          ADD     [BX+SI],AL
1000:02D9 0000          ADD     [BX+SI],AL
1000:02DB 0000          ADD     [BX+SI],AL
1000:02DD 0000          ADD     [BX+SI],AL
1000:02DF 0000          ADD     [BX+SI],AL
1000:02E1 0000          ADD     [BX+SI],AL
1000:02E3 0000          ADD     [BX+SI],AL
1000:02E5 0000          ADD     [BX+SI],AL
1000:02E7 0000          ADD     [BX+SI],AL
1000:02E9 0000          ADD     [BX+SI],AL
1000:02EB 0000          ADD     [BX+SI],AL
1000:02ED 0000          ADD     [BX+SI],AL
1000:02EF 0000          ADD     [BX+SI],AL
1000:02F1 0000          ADD     [BX+SI],AL
1000:02F3 0000          ADD     [BX+SI],AL
1000:02F5 0000          ADD     [BX+SI],AL
1000:02F7 0000          ADD     [BX+SI],AL
1000:02F9 0000          ADD     [BX+SI],AL
1000:02FB 0000          ADD     [BX+SI],AL
1000:02FD 0000          ADD     [BX+SI],AL
1000:02FF 0000          ADD     [BX+SI],AL
