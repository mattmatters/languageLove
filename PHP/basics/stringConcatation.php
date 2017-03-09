<?php

// concatenating assignment operator (.=)
$a  = 'Multi-line example';
$a .= "\n";
$a .= 'of what not to do';
$a .= "\n";

// vs

// concatenation operator (.)
// new-line with indentation is best practice for long concat operations
$b = 'Multi-line example'
    . "\n"
    . 'of what to do'
    . "\n";

echo $a;
echo $b;

?>