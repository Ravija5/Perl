#!/bin/user/perl -w
use Data::Dumper;

my $bnum = 0;
my @brackets;
my $arr_index = 0;
my $open_brac = 0;

while (my $line = <STDIN>){
    my @chars = split //, $line;
    foreach my $char (@chars){
        #print "$arr_index \n";
        #print "Comparing char ---> $char\n";
        if($char eq "("){
            $open_brac++;
            $bnum++;
            print "BNUM ( = $open_brac\n";
            #print "$bnum ";
            push @brackets, $char;
            $arr_index++;
            print "Array index = $arr_index\n";
            print "-------------\n"
        }elsif($char eq ")"){
            $bnum = $arr_index;
            print "Array index = $arr_index\n";
           
            print "BNUM ) = $bnum\n";
            #print "$bnum ";
            pop @brackets;
            $arr_index--;
            print "-------------\n"
        }
    }
}