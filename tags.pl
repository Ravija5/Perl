#!/user/bin/perl -w



foreach $url (@ARGV) {
    $webpage = `wget -q -O- '$url'`; #get the webpage
    $webpage =~ tr/A-Z/a-z/; #change letters
    $webpage =~ s/<!--.*?-->//g; #remove comments
    @tags = $webpage =~ /<\s*(\w+)/g;
    foreach $tag (@tags) {
        $tag_count{$tag}++;
    }
}
foreach $tag (sort keys %tag_count) {
    print "$tag $tag_count{$tag}\n";
}