: merge-sort ( seq -- sorted-seq )
  length 1 <= [ drop ] [ 2dup middle swap 1 + [ take ] dip merge-sort swap [ drop ] dip merge-sort merge ] if ;

! Helper word to merge two sorted sequences
: merge ( seq seq -- merged-seq )
  [ [ < ] [ first ] [ second ] ] 2bi
  [ [ > ] [ rest ] [ first ] ] 2bi
  [ [ < ] [ second ] [ first ] ] 2bi ;

! Example usage
{ 5 2 9 1 5 6 } merge-sort .
