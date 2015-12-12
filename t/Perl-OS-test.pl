use Perl::OS;

sub abort_test {
	Perl::OS::abort();
	return 1000; #this line should not execute
}

sub chdir_and_getcwd_test {
	my $path = shift;
	Perl::OS::chdir($path);
	return Perl::OS::getcwd();
}

#die if (abort_test() == 1000);

my $path = 'c:/';
die if (chdir_and_getcwd_test($path) ne $path);

