#!/bin/user/perl -w

# courtesy aek@cse.unsw.EDU.AU
# letter count- count number of occurrences of each letter

# map letters to counts
my %lettercount = ();
while (<>) {
        chomp;

        # remove anything but letters and numbers
        s/[^A-Za-z0-9]//g;

        # split the line into an array of characters
        @chars = split //;
        foreach $letter (@chars) {
                # record count in hash table
                $lettercount{$letter}++;
        }
}

# output count of each letter, sorted on the keys (letters)
foreach $letter (sort keys %lettercount) {
        print "'$letter' occurred $lettercount{$letter} times\n";
        # (look up count for each letter from table)
}