use LWP::UserAgent;
use strict;
use warnings;

print "Enter Url: (eg: 'http://www.perl.com')";
chomp (my $url = <>);
#my $url = 'http://www.perl.com';

my $ua = LWP::UserAgent->new;
my $response = $ua->get( $url );
open(my $fh, '>', 'output.html');
print $fh $response->content if $response->is_success;

print "I'm done!\n";
close $fh;
