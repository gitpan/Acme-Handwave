package Acme::Handwave;

use 5.004;
use strict;
use warnings;
use Carp qw(croak);

require Exporter;

use vars qw($VERSION @EXPORT @ISA);

@ISA = qw(Exporter);
@EXPORT = qw(handwave);
$VERSION = '0.01';

=head1 NAME

Acme::Handwave - Get the result you want without tedious algorithms or
real programming

=head1 SYNOPSIS

  use Acme::Handwave;

  my %foo = (bar =>  143,
             baz =>  156,
             quxx => 543);

  my %result = handwave(data =>     \%foo,
                        expected => {bar => 333,
                                     baz => 332,
                                     quxx => 331});

  my $string = "this string needs transmogrifying";

  $string = handwave(data => $string,
                     expected => "this string is transmogrified");

  my @foobar = qw(a  b  c  d  e  f g);

  my @barfoo = handwave(data => \@foobar,
                        expected => ['h', 'i', 'j']);

=head1 DESCRIPTION

Spent hours trying to tweak that algorithm, but never quite getting
the result you're expecting? Now you can bypass all of that hassle
with new, whiter-than-white Acme::Handwave.

Just give it the data structure you're trying to manipulate, and the
result you've been expecting.

A little handwaving magic later, and presto! The result you were
looking for.

=head2 EXPORT

handwave()

=head1 METHODS

=over 4

=item handwave

C<handwave> takes 2 arguments - the piece of data or datastructure you
want to operate on, and the piece of data or datastructure you were
expecting to get in return. No more messy hand-rolled data munging
routines. Just handwave(). The parameters you pass to it should be
named as follows:

=over 4

=item data

The datastructure/object/whatever you're operating on. You need to
pass arrays or hashes as references, because I'm lazy.

=item expected

What you want to see after the magic handwaving is complete

=back

=back

=cut

sub handwave {
  my %args = @_;

  if (!$args{data}) { croak "How can I handwave without data to wave over?"; }
  if (!$args{expected}) { croak "I can't handwave if I don't know what to give back when the waving is done"; }

  if (ref($args{expected}) eq "HASH") {
    return %{$args{expected}};
  } elsif (ref($args{expected}) eq "ARRAY") {
    return @{$args{expected}};
  } else {
    return $args{expected};
  }
}

=head1 SEE ALSO

The rest of the Acme:: namespace

Stuff by 'Simon Batistoni' - I'm in the process of changing my name
right now.

=head1 AUTHOR

Simon Kent, E<lt>simon@hitherto.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2002 by Simon Kent

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;









