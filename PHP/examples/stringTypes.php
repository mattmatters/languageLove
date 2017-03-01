<?php

$variable = "poop";

// Single Quote
echo 'This is a literal string. It will not parse special characters like \n or \t';
echo "\n";
echo 'Literal strings will also not reference variables like $variable';

echo "\n\n";

// Double Quote
echo "This is a double quote string.  It will parse special characters like newline\n";
echo "\t It also will parse variable values\n";
echo "\t Such as variable = $variable\n";

// to separate variable names from characters, wrap variable in {}

echo "I take {$variable}s\n";

?>