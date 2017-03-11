<?php

// $argc is the argument count of your script
// the first argument is always the name of the script
if ($argc !== 2) {
  echo "Usage: php helloName.php [name]\n";
  exit(1);
}

//$argv is an array of arguments
$name = $argv[1];
echo "Hello, $name!\n";
