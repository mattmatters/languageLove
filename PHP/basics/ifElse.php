<?php

// Features standard branching for if else statements
function testIfTrue1($a) {
    if ($a) {
        return true;
    } else {
        return false;
    }
}

// Casts $a as a boolean and returns result
function testIfTrue2($a) {
    return (bool) $a;
}

// Note: var_export() converts result to string
echo "testIfTrue1(0) will return ".var_export(testIfTrue1(0), true)."\n";
echo "testIfTrue1(1) will return ".var_export(testIfTrue1(1), true)."\n";
echo "testIfTrue2(0) will return ".var_export(testIfTrue1(0), true)."\n";
echo "testIfTrue2(1) will return ".var_export(testIfTrue1(1), true)."\n";
