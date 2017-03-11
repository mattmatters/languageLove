<?php

/*
  http://www.phptherightway.com/pages/The-Basics.html
  Like Javascript, PHP is a bit finicky when it comes to comparisons.
  == will ignore datatypes and coerce the value into whatever type matches
  === is the strict equality operator and compares datatypes
*/

$a = 5;   // 5 as an integer

// Ignores datatype
var_dump($a == 5);       // compare value; return true
var_dump($a == '5');     // compare value (ignore type); return true

// Compares datatype
var_dump($a === 5);      // compare type/value (integer vs. integer); return true
var_dump($a === '5');    // compare type/value (integer vs. string); return false

$stringPosition = strpos('testing', 'test');

// Equality comparisons
if ($stringPosition) {    // 'test' is found at position 0, which is interpreted as the boolean 'false'
    echo "test was found in testing at position $stringPosition \n";
}

// vs. strict comparisons
if ($stringPosition !== false) {    // true, as strict comparison was made (0 !== false)
    echo "test was found in testing at position $stringPosition \n";
}
