<?php

if ($argc !== 2) {
    echo "Usage: php switch.php [number]\n";
    exit(1);
}

function switchTest($a) {

    // switch statements operate off the == operator
    switch ($a) {
        case 1:
            echo "case 1\n";
            break;
        case 2:
            echo "case 2 with fallthrough logic\n";
        case 3:
            echo "case 3\n";
            break;
        default:
            echo "default case\n";
            break;
    }

    return 1;
}

switchTest($argv[1]);

?>