#!/bin/user/perl -w


foreach $arg (@ARGV){
    if( ($words{$arg}) && (($words{$arg} cmp "added") == 0)){
       next;    
    }else{
        $words{$arg} = "added";
        print "$arg ";
    }
}
print "\n";