MEMORY {
    /* 'ORIGIN' can be org and 'LENGTH' can be 'len' or 'l' */
    SOME_NAME : ORIGIN = 0xA000, LENGTH = 0x1000
}

/* 3.1 - Have individual sections */
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