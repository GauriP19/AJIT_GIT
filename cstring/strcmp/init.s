.global _start;
_start:
        set 0x0, %sp
        clr %fp

        set 0x1, %l0            ! window 0 is marked invalid...  we start at window 7
        wr %l0, 0x0, %wim       !

        ! trap table.
        set     trap_table_base, %l0
        wr      %l0, 0x0, %tbr

        ! enable traps.
        set 0x10E0, %l0
        wr %l0, %psr

        call main
        nop

        ta 0
