#!/bin/usr/perl -w
use strict;


sub printLines{
    my ($line_num, $file) = @_;
    #print "Line s = $line_num\n";
    #print "File = $file\n";

    open FILE_R, '<', "$file" or die "Can't read $file\n";
    my $counter = 0;
    while (my $line = <FILE_R>){
        chomp $line;
        if ($counter == $line_num){
            print "$line\n";
            last;
        }
        $counter++;
    }
    close (FILE_R);
}


my $file = $ARGV[0];
my $line_count = 0;

open FILE_R, "<", "$file" or die "Couldnt read $file\n";
while(<FILE_R>){
    $line_count++;
}
close(FILE_R);

#print "Total lines = $line_count\n";
if( $line_count % 2 == 0){
    my $mid_line1 = ($line_count/2) -1 ;
    my $mid_line2 = $mid_line1 + 1;
    #print "mid lines = $mid_line1 and $mid_line2\n";
    printLines($mid_line1, $file);
    #print "First line done\n";
    printLines($mid_line2, $file);
    #print "second line done\n";
}else{
    my $mid_line1 = (($line_count / 2) + 0.5) -1;
    printLines($mid_line1, $file);
    #print "mid line = $mid_line1\n";
}