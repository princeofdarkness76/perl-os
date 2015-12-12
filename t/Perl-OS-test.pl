use Perl::OS;

sub abort {
	Perl::OS::abort();
	return 1000; #this line should not execute
}

die if (abort() == 1000);
