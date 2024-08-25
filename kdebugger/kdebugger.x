PHDRS
{
    headers PT_LOAD PHDRS;
    text PT_LOAD;
    data PT_LOAD;
    bss PT_LOAD;
}

SECTIONS
{
    . = SIZEOF_HEADERS;
    
    .text : {
        *(.text)
    } :text
    
    .rodata : {
        *(.rodata)
        *(.rodata.*)
    } :text
    
    .data : {
        *(.data)
        *(.got)
        *(.got.*)
    } :data
    
    .bss : {
        *(.bss)
        *(COMMON)
    } :bss
}
