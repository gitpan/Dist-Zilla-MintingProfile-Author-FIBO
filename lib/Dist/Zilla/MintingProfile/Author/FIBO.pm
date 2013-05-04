use strict;
use warnings;
package Dist::Zilla::MintingProfile::Author::FIBO;
# ABSTRACT: minting profiles for FIBO[nacci]
use Moose;

with 'Dist::Zilla::Role::MintingProfile::ShareDir';

1;

=head1 SYNOPSIS

Create a new distro.

    dzil new -P Author::FIBO -p distro Foo

    cd Foo
    vim lib/Foo.pm # and edit ABSTRACT

Add a new class.

    dzil new -P Author::FIBO -p class Foo::Class

=cut

