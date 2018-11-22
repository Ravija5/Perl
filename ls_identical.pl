#!/bin/perl -w
use strict;
use File::Compare;
use File::Basename;

my $dir1 = $ARGV[0];
my $dir2 = $ARGV[1];


foreach my $file1 (glob "$dir1/*"){
    foreach my $file2 (glob "$dir2/*"){
        if(basename($file1) eq basename($file2) and compare($file1, $file2)==0){
            print basename($file1)."\n";
        }
    }
}
    

