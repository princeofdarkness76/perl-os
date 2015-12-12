package Perl::OS;
use strict;
use warnings;

sub abort {
	kill(6, $$);
}

sub chdir {
	my $path = shift;
	chdir($path) or die "Failed: $!";
}

1;
