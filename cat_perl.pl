#!/usr/bin/perl

for $filename (@ARGV){
    open F, '<', $filename or 
        die "File did not open";

    while($line = <F>){
        print $line;
    }
}