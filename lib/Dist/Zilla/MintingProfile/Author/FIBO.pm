use strict;
use warnings;
package Dist::Zilla::MintingProfile::Author::FIBO;
{
  $Dist::Zilla::MintingProfile::Author::FIBO::VERSION = '20130507';
}
# ABSTRACT: minting profiles for FIBO[nacci]
use Moose;

with 'Dist::Zilla::Role::MintingProfile::ShareDir';

1;

=head1 SYNOPSIS

Install stuff.

    cpan Task::BeLike::FIBO

Create a new distro.

    dzil new -P Author::FIBO -p distro Foo

    cd Foo
    vim lib/Foo.pm # and edit ABSTRACT

Add a new class.

    dzil new -P Author::FIBO -p class Foo::Bar

Add a role.

    dzil new -P Author::FIBO -p role Foo::Role::Bar

Add a minter.

    dzil new -P Author::FIBO -p minter Dist::Zilla::MintingProfile::Foo

Create a new bundle.

    dzil new -P Author::FIBO -p bundle Task::Foo

    cd Task-Foo
    vim lib/Task/Foo.pm # and edit ABSTRACT

=cut

