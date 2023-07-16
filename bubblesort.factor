: bubble-sort ( seq -- sorted-seq )
  dup length 1 - [ 0 swap [ > ] dip [ swap [ > ] bi* [ nip ] when ] each ] each ;

! Example usage
{ 5 2 9 1 5 6 } bubble-sort .
