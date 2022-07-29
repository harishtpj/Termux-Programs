#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

print "Enter no 1: ";
my $a = <STDIN>;
chomp $a;
print "Enter no 2: ";
my $b = <STDIN>;
chomp $b;

my $c = $a + $b;
say "$a + $b = $c";