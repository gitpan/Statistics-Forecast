NAME

Statistics::Forecast

DESCRIPTION

This is a Oriented Object module that calculates a future value by using existing values. The new value is calculated by using linear regression.

SYNOPSIS

   use Statistics::Forecast;

Create forecast object

   my $FCAST = new Statistics::Forecast("My Forecast Name");

Add data

   $FCAST->{DataX} = \@Array_X;
   $FCAST->{DataY} = \@Array_Y;
   $FCAST->{NextX} = $NextX;

Calculate the result

   $FCAST->calc;

Get the result

   my $Result_Forecast = $FCAST->{ForecastY);

INTERNALS

The equation for Forecast is:

   a+bx, where 'x' is the predicted value and
       _    _
   a = y + bx

   b = sum((x+x)(y-y))/sum(x-x)**2

METHODS

new
    Receives a forecast name, only to remember and returns the blessed data structure as a Statistics::Forecast object. 

     my $FCAST = new Statistics::Forecast("My Forecast");

calc
    Calculate and return the forecast value. 

     $FCAST->calc;

dump
    Prints data for debuging propose. 

     $FCAST->dump;

SumX
    Returns the sum of X values. 

     my $SumOfX = $FCAST->{SumX};

SumY
    Returns the sum of Y values. 

     my $SumOfY = $FCAST->{SumY};

SumXX
    Returns the sum of X**2 values. 

     my $SumOfXX = $FCAST->{SumXX};

SumXY
    Returns the sum of X * Y values. 

     my $SumOfXY = $FCAST->{SumXY};

AvgX
    Returns the average of X values. 

     my $AvgX = $FCAST->{AvgX};

AvgY
    Returns the average of Y values. 

     my $AvgY = $FCAST->{AvgY};

N
    Return the number of X values. 

     my $N = $FCAST->{N};

EXAMPLE

   use Statistics::Forecast;

   my @Y = (1,3,7,12);
   my @X = (1,2,3,4);

   my $FCAST = new Statistics::Forecast("My Forecast");

   $FCAST->{DataX} = \@X;
   $FCAST->{DataY} = \@Y;
   $FCAST->{NextX} = 8;
   $FCAST->calc;

   print "The Forecast ", $FCAST->{ForecastName};
   print " has the forecast value: ", $FCAST->{ForecastY}, "\n";

AUTHOR

This module was developed by Alex Falcao (webmaster@brfic.com)

STATUS OF THE MODULE

This is the first version and calculates forecast value.

VERSION

0.1

COPYRIGHT

This module is released for free public use under a GPL license.