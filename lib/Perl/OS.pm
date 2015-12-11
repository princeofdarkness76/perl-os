package Perl::OS;
use strict;
use warnings;

sub abort() {
	kill(6, $$);
}

1;