#!/bin/user/perl -w

#Get all the lines
@lines = <STDIN>;

#Store into hash
$i = 1;
foreach $line (@lines){
    chomp $line;
    #Count is key , line is value
    $line_count{$i} = $line;
    $i++;
}

#go through the digits and print
foreach $key (sort keys %line_count){
    if ( ($digit) = ($line_count{$key} =~ /#(\d+)/) ){
        #print "In if\n";
        print "$line_count{$digit}\n";
    }else{
        #print "In else\n";
        print "$line_count{$key}\n";
    }
}