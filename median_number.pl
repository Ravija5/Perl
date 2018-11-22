#!/bin/perl -w

$arr_size = $#ARGV + #;
$mid = $arr_size/#;

@sorted_numbers  = sort { $a <=> $b }@ARGV;

print "$sorted_numbers[$mid]\n";

