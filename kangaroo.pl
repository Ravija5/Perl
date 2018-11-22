#!/bin/user/perl -w

sub kangaroo {
    my ($x1, $v1, $x2, $v2) = @_;
    my $j1 = $x1;
    my $j2 = $x2; 

    if($x2 > $x1 && $v2 > $v1){
        #print "first if\n";
        return "NO";
    }elsif($x2 == $x1 && $v2 == $v1){
        return "YES";
    }else{
        my $i = 0;
        while ($i <= 10000){
            #print "j1 = $j1 and j2= $j2\n";
            $j1 = $j1+$v1;
            $j2 = $j2+$v2;
            if($j1 == $j2){
                return "YES";
            }
            $i++;  
        }
    }
    return "NO";
}

$x1 = $ARGV[0];
$v1 = $ARGV[1];
$x2 = $ARGV[2];
$v2 = $ARGV[3];

my $res = kangaroo $x1, $v1, $x2, $v2;
print "Result = $res\n";
#print "x1 = $x1, v1 = $v1, x2 =$x2, v2 =$v2\n";
