.text
.file "floatadd.c"
.globl  add
.p2align  2
.type add,@function
add:
  save %sp, -120, %sp
  st %i1, [%fp+-12]
  st %i0, [%fp+-16]
  ld [%fp+-12], %f0
  ld [%fp+-16], %f1
  st %i0, [%fp+-4]
  st %i1, [%fp+-8]
  ld [%fp+-4], %f2
  ld [%fp+-8], %f3
  fadds %f2, %f3, %f2
  st %f0, [%fp+-20]
  fmovs %f2, %f0
  st %f1, [%fp+-24]
  ret
  restore
