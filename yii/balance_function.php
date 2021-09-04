<?php

function balance(string $left, string $right): string
{
    $weight = [
        '!' => 2,
        '?' => 3,
    ];

    $leftSum = 0;
    foreach (str_split($left) as $char) {
        $leftSum += $weight[$char] ?? 0;
    }
    $rightSum = 0;
    foreach (str_split($right) as $char) {
        $rightSum += $weight[$char] ?? 0;
    }

    switch ($leftSum <=> $rightSum) {
        case -1: return 'Right';
        case 0: return 'Balance';
        case 1: return 'Left';
    }
}
