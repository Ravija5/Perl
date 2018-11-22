#!/user/bin/perl -w
use strict;
use Data::Dumper;

my $grades_line = <>;

my @grades = split /\s+/, $grades_line;
#print Dumper(\@grades);

foreach my $grade (@grades){
    #print "GRADE = $grade\n";   
    if(int($grade) % 5 == 0){
        print "$grade ";
    }elsif(int($grade) < 38){
        print "$grade ";
    }elsif($grade >= 38){
        my $q = int(int($grade)/5);
        my $next = ($q+1)*5;
        #print "Q = $q and next = $next\n";
        if(($next - int($grade)) < 3){
            $grade = $next;
            print "$grade ";
        }else{
            print "$grade ";
        }
    }
}
