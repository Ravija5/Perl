#!/bin/user/perl -w

use Data::Dumper;

my %count;

while ($line = <>) {
    $line =~ tr/A-Z/a-z/;
    foreach $word ($line =~ /([a-z]+)/) {
        print "$word\n";
        $count{$word}++;
    }
    #  @sorted_words = sort { $count{a} <=> $count{b} keys %count;

}
#print Dumper(\%word_freq);