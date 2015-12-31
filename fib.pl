# perl fib.pl - 345.10891 seconds
use warnings;
use strict;
use Time::HiRes qw( time );

sub fib {
   my ($n) = @_;
   if($n <= 0) {
       return 0;
   }
   if($n <= 2) {
       return 1;
   }
   return fib($n-1) + fib($n-2);
}

$| = 1; # autoflush on
my $start = time();
foreach (1..42) {
    my $result = fib($_);
    print("$result ")
}
my $end = time();
printf("\n%f s\n", ($end - $start));
