<?php

/**
 * Heredoc is a type of syntax that behaves like double quote strings
 * but supports multiline strings with needing to concatenating them
 */

$a = "poop";

// Initialize with <<<EOD
$heredocString = <<<EOD
The quick brown fox
jumped over the lazy
dog.

Since this is a double
quote style string \$a will be $a.

EOD;

echo $heredocString;


?>