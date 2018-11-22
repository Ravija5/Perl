#!/bin/user/perl -w
#find largest file
use strict;
my $max = 0;
my $max_file = "";

foreach my $file (@ARGV){
    open my $f, '<', "$file" or die;
    my @lines = <$f>;
    my $line_length = $#lines+1;
    if ($line_length > $max ){
        $max = $line_length;
        $max_file = $file;  
    }
    close($f);
}
print "$max_file\n";

open my $k, '<', "$max_file" or die;
my @linesK = <$k>;
 
foreach my $file(@ARGV){
    open my $g, '<', "$file" or die;
    # my @l = <$g>;
    # my $i = 0;
    # my $flag = 1;
    # foreach (@l){ 
    #     if(!(($_ cmp $linesK[$i] ) == 0)){
    #         $flag = 0;
    #     }
    #     if($flag eq 0){
    #         print "$file not equal\n";
    #         $flag == 1;
    #     }
    #     $i++;
    # }
}

