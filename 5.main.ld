MEMORY {
    /* 'ORIGIN' can be org and 'LENGTH' can be 'len' or 'l' */
    ROM : ORIGIN = 0xA000, LENGTH = 0x1000
    RAM : ORIGIN = 0xC000, LENGTH = 0x1000
}

/* 5 - placing to 2 memory banks RAM and ROM */

SECTIONS {

    .init : {
        5.* (init_text)
    }

    .text : {

        5.* (.text)
    } > ROM AT > ROM

    .rodata : {
        5.* (.rodata)
        _data_src_start_ = .;
    }  > ROM AT > ROM

/* Virtual address for ROM availabe at ROM */
    .data : {
        _data_dst_start_ = .;
        5.* (.data)
        _data_dst_end_ = .;
    }  > RAM AT > ROM

/* Explcitly include .bss, otherwise the below discard statement will discard it */
    .bss : {
        _bss_start_ = .;
        5.* (.bss)
        _bss_end_ = .;
    } > RAM AT > RAM

/* Linker can automatically put this also to RAM after data */
/*
    .bss : {
        5.* (.bss)
    }  > RAM
*/
/* or just load directly in RAM
    .bss : {
        5.* (.bss)
    }  > RAM AT > RAM
*/

    /* Discards whatever is not being used */
    /DISCARD/ : {
        5.* (*)
    }


}

/* 4.0 */
/*
SECTIONS {
    .text : {
        4.main.o (.text)
        4.main.o (.data)
        4.main.o (.bss)
    } > SOME_NAME
}
*/
/* 3.1 - Have individual sections */
/*
SECTIONS {
    .text : {
        3.main.o (.text)
    } > SOME_NAME

    .data : {
        3.main.o (.data)
    }  > SOME_NAME

    .bss : {
        3.main.o (.bss)
    }  > SOME_NAME
}
*/

/* 3.0 - Everything goes to .text section */
/*
SECTIONS {
    .text : {
        3.main.o (.text)
        3.main.o (.data)
        3.main.o (.bss)
    } > SOME_NAME
}
*/