<?php

/**
 * Nowdoc is a type of syntax that behaves like single quote strings
 * but supports multiline strings with needing to concatenating them
 */

// Initialize with <<<'EOD'
$nowDocString = <<<'EOD'
The quick brown fox
jumped over the lazy
dog.

Since this is a single
quote style string $a will
not parse.

EOD;

echo $nowDocString;


?>