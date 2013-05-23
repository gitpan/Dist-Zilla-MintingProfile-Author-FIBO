
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;

use File::ShareDir::Install;
install_share module => "Dist::Zilla::MintingProfile::Author::FIBO", "profiles";


my %WriteMakefileArgs = (
  "ABSTRACT" => "minting profiles for FIBO[nacci]",
  "AUTHOR" => "G. Casati <fibo\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "File::ShareDir::Install" => "0.03"
  },
  "DISTNAME" => "Dist-Zilla-MintingProfile-Author-FIBO",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::MintingProfile::Author::FIBO",
  "PREREQ_PM" => {
    "Dist::Zilla::Plugin::AutoPrereqs" => 0,
    "Dist::Zilla::Plugin::AutoVersion" => 0,
    "Dist::Zilla::Plugin::PerlTidy" => "0.13",
    "Dist::Zilla::Plugin::PkgVersion" => 0,
    "Dist::Zilla::Plugin::Prereqs" => 0,
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => 0,
    "Dist::Zilla::PluginBundle::Basic" => 0,
    "MooseX::StrictConstructor" => "0.19"
  },
  "TEST_REQUIRES" => {},
  "VERSION" => 20130523,
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


