# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

use Test::More tests => 2;
BEGIN { use_ok('Acme::Handwave') };

#########################

# quick basic handwave test

my $data = "handwaving is fun";

ok(handwave(data=> $data,
            expected => "handwaving is magic") == "handwaving is magic",
   "basic handwave");

