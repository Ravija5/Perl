!/bin/user/perl -w

foreach $file (@ARGV) {
    open my $f, '<', $file or die "Can not open $file: $!";
    @lines = <$f>;
    close $f;

    foreach $line (@lines) {
        $line =~ s/\d/#/g;
    }

    open my $g, '>', $file or die "Can not open $file: $!";
    print $g @lines;
    close $g;
}