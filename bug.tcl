proc badproc {a b} { puts stderr "$a $b" ; return } 
puts [badproc a b]