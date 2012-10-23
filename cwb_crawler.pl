#!/usr/bin/env perl

use 5.010;
use LWP::Simple;
use JSON;
use encoding 'utf8';
use Data::Dumper;
{
    package Data::Dumper;
    sub qquote { return shift; }
}
$Data::Dumper::Useperl = 1;

my $content = get $ARGV[0];
my $perl_obj = decode_json $content;
say Dumper $perl_obj;
