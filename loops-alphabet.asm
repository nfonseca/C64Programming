; 10 SYS (49152)

*=$801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
          jsr            $e544     
          ldx            #64     ; initaiaze X with 65. ASCII A
LOOP      txa
          sta            1024    ; works fine
          jsr            $e716   ; d oesnt work on emulator
          inx
          cpx            #91
          bne            LOOP
          rts
