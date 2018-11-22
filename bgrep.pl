#!/usr/bin/perl -w

die "Usage: bgrep <file> <string>" if @ARGV != 2;
open F, "<$ARGV[0]" or die "Can open $ARGV[0]: $!";
while ($line = <F>) {
    # depends on $ARGV[1] not containing regex characters  (see \Q)
    if ($line =~ /$ARGV[1]/) {
        $line =~ s/$ARGV[1]/($ARGV[1])/g;
        print $line;
    }
}