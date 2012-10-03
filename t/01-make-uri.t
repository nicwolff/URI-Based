#!perl -T

use Test::More 0.88;

BEGIN { use_ok('URI::Based'); }

my $uri = URI::Based->new( 'http://angel.net/~nic' );

ok( $uri, 'created URI::Based object' );

is(
	$uri->with( '/path/to/add', param1 => 'some value' )->as_string,
	'http://angel.net/~nic/path/to/add?param1=some+value',
	'adds path and query to base URI'
);

done_testing();
