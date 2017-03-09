<?php

// php has a datetime class

$raw = '22. 11. 1968';
$start = DateTime::createFromFormat('d. m. Y', $raw);

echo 'Start date: ' . $start->format('Y-m-d') . "\n";

// create a copy of $start and add one month and 6 days
$end = clone $start;
$end->add(new DateInterval('P1M6D'));

echo 'End date: ' . $end->format('Y-m-d') . "\n";

$diff = $end->diff($start);
echo 'Difference: ' . $diff->format('%m month, %d days (total: %a days)') . "\n";

// Can use standard comparison operators on datetime classes
if ($start < $end) {
    echo "Start is before end!\n";
}

// output all thursdays between $start and $end
$periodInterval = DateInterval::createFromDateString('first thursday');
$periodIterator = new DatePeriod($start, $periodInterval, $end, DatePeriod::EXCLUDE_START_DATE);

echo "Outputting all Thursdays in interval\n";
foreach ($periodIterator as $date) {
    // output each date in the period
    echo $date->format('Y-m-d') . "\n";
}

?>