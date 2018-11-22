#!/usr/bin/perl

$url = "http://www.handbook.unsw.edu.au/postgraduate/courses/2018/COMP9041.html";
open FILE, "wget -q -O- $url|" or die "Unopened";
while ($line = <FILE>) {
    print "In if\n";
    print $line;
}