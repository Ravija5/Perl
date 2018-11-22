#!/usr/bin/perl -w

sub lines(){
    my ($n) = @_;
    my $text;
    for (1..$n){
        $text .= <STDIN>;
    }
    return $text;
}

$line = lines(5);
print $line;