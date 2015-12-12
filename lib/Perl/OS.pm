package Perl::OS;
use strict;
use warnings;

use Cwd ();

sub abort {
	kill(6, $$);
}

sub chdir {
	my $path = shift;
	chdir($path) or die "Failed: $!";
}

sub getcwd {
	return Cwd::cwd();
};

1;
