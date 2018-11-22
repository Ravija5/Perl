#!/usr/bin/perl

use strict;
use warnings;

# Complete the birthdayCakeCandles function below.
sub birthdayCakeCandles {
    my (@arr) = @_;
    my @sorted_arr = sort @arr;
    print @sorted_arr;
}


my $ar_count = <>;
$ar_count =~ s/\s+$//;

my $ar = <>;
$ar =~ s/\s+$//;
my @ar = split /\s+/, $ar;

my $result = birthdayCakeCandles \@ar;

print "$result\n";
