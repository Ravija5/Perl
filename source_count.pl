#!/bin/user/perl -w
#Implemnting wc -l *.[ch]
use strict;



foreach my $file (glob "*.[ch]"){
    open FILE, '<', "$file" or die "haha";
    my $line_count = 0;

    while (my $line = <FILE>){
        $line_count += 1;
    }
    
    print "$line_count $file\n";
    close (FILE);
}   
