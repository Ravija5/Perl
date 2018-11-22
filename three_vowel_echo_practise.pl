#!/user/bin/perl -w
use strict;

foreach my $arg (@ARGV){
    if ($arg =~ /[aeiouAEIOU]{3}/){
        print "$arg\n";
    }
}