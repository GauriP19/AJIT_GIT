.global page_table_setup
page_table_setup:
   set PAGE_TABLE_BASE, %g1
   !PTD: context=0, index=0, level=0, child_p_addr=0x400, p_addr=0x1000
   ! *(PAGE_TABLE_BASE + 0x1000) = ptd(PAGE_TABLE_BASE + 0x400)
   ! make PTD from 0x400
   set 0x400, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x1000, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=1,  ppnr=0x0, p_addr=0x400, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x400) = 0x8e (pte)
   set 0x8e, %g2
   set 0x400, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=64, level=1, child_p_addr=0x0, p_addr=0x500
   ! *(PAGE_TABLE_BASE + 0x500) = ptd(PAGE_TABLE_BASE + 0x0)
   ! make PTD from 0x0
   set 0x0, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x500, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=2,  ppnr=0x80000, p_addr=0x0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x0) = 0x808e (pte)
   set 0x808e, %g2
   set 0x0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=255, level=1, child_p_addr=0x2fc, p_addr=0x7fc
   ! *(PAGE_TABLE_BASE + 0x7fc) = ptd(PAGE_TABLE_BASE + 0x200)
   ! make PTD from 0x2fc
   set 0x200, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x7fc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=63, level=2, child_p_addr=0x1fc, p_addr=0x2fc
   ! *(PAGE_TABLE_BASE + 0x2fc) = ptd(PAGE_TABLE_BASE + 0x100)
   ! make PTD from 0x1fc
   set 0x100, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x2fc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=63, level=3,  ppnr=0xff000, p_addr=0x1fc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1fc) = 0xff8e (pte)
   set 0xff8e, %g2
   set 0x1fc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=1, index=1, level=0, child_p_addr=0xc00, p_addr=0x1004
   ! *(PAGE_TABLE_BASE + 0x1004) = ptd(PAGE_TABLE_BASE + 0xc00)
   ! make PTD from 0xc00
   set 0xc00, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x1004, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=1, index=0, level=1,  ppnr=0x0, p_addr=0xc00, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xc00) = 0x8e (pte)
   set 0x8e, %g2
   set 0xc00, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=1, index=64, level=1, child_p_addr=0x800, p_addr=0xd00
   ! *(PAGE_TABLE_BASE + 0xd00) = ptd(PAGE_TABLE_BASE + 0x800)
   ! make PTD from 0x800
   set 0x800, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xd00, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=1, index=0, level=2,  ppnr=0x80000, p_addr=0x800, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x800) = 0x808e (pte)
   set 0x808e, %g2
   set 0x800, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=1, index=255, level=1, child_p_addr=0xafc, p_addr=0xffc
   ! *(PAGE_TABLE_BASE + 0xffc) = ptd(PAGE_TABLE_BASE + 0xa00)
   ! make PTD from 0xafc
   set 0xa00, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xffc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=1, index=63, level=2, child_p_addr=0x9fc, p_addr=0xafc
   ! *(PAGE_TABLE_BASE + 0xafc) = ptd(PAGE_TABLE_BASE + 0x900)
   ! make PTD from 0x9fc
   set 0x900, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xafc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=1, index=63, level=3,  ppnr=0xff000, p_addr=0x9fc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9fc) = 0xff8e (pte)
   set 0xff8e, %g2
   set 0x9fc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   retl;
   nop;
! done: page_table_setup
! start: set context-table-pointer = PAGE_TABLE_BASE + 0x1000
.global set_context_table_pointer
set_context_table_pointer:
   set PAGE_TABLE_BASE, %g1
   set 0x1000, %g5
   add %g5, %g1, %g2
   srl  %g2, 0x4, %g2
   or  %g2, 0x1, %g2
   set 0x100, %g3
   sta %g2, [%g3] 0x4
   retl;
   nop;
! done: set  context-table-pointer
.align 1024
PAGE_TABLE_BASE: .skip 5120
