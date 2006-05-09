# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

use Test;
BEGIN { plan tests => 3 };

use Statistics::Forecast qw(:all);
ok(1); 

# test 2: test if calc imported okay
my $FCAST = new Statistics::Forecast("My teste forecast");
ok(defined &calc);
    
# test 3: calc the future value
my @Y = (1,3,7,12);
my @X = (1,2,3,4);


$FCAST->{DataX} = \@X;
$FCAST->{DataY} = \@Y;
$FCAST->{NextX} = 8;
$FCAST->calc;

ok($FCAST->{ForecastY} eq 26.1);
