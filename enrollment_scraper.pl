#!/usr/bin/perl -w
    
@ARGV >= 1 or die "Usage: $0 [COURSE_CODE]";
$class_util = 'http://classutil.unsw.edu.au/';
$suffix = '_S2.html';
#get all course codes from args and check they are valid courses
foreach $course (@ARGV){
    ($course =~ /^[A-Z]{4}[0-9]{4}$/ ) or die "$course is not a valid course";
    ($subject) = ($course =~ /^([A-Z]{4})/);
    #building url
    $url = "$class_util"."$subject"."$suffix";


    #getting the data with wget which is a shell prohram which downloads http version of websites
    #- means standard output
    # -| means pipe stdout into file handle. if there's nothing onrhs, it means pipe into file handle
    open F, "-|", "wget -q -O- $url" or die "Couldnt download $url";

    $found = 0;
    while($line = <F>){
        chomp $line;

        #print "$line\n";
        if ($line =~ /class="cucourse"/ && $line =~ /<b>$course/){
            #we are in the right section 
            $found = 1;
        } elsif ($found == 1 && $line =~ /class="cucourse"/ && $line =~ /<b>[A-Z]{4}[0-9]{4}/) {
            #then we are in a differnet section 
            last; #break
        } elsif ($found == 1 && $line =~ /LEC/ && !($line =~ /Closed/) && ($line =~ /[0-9]+%/)) {
            #we found the percent full line
            ($perc_full) = ($line =~ /([0-9]+%)/);
            print "$course lecture is $perc_full % full\n";
        }
    
        
    }

}

