<?php

// Declaring namespace
namespace languageLove;

// a \ before a class or function tells the compiler to refer to a
// function in the global namespace

function fopen() {
    $file = \fopen();    // Our function name is the same as an internal function.
                         // Execute the function from the global space by adding '\'.
}

function arrayIterate() {
    $iterator = new \ArrayIterator();    // ArrayIterator is an internal class. Using its name without a backslash
                                         // will attempt to resolve it within your namespace.
}

?>