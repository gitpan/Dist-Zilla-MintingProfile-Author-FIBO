package {{$name}};
use Moose;
use MooseX::StrictConstructor;
use namespace::autoclean;

use Try::Tiny;


has 'foo' => (
is=>'ro',
isa=>'',
writer=>'_foo',
);

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 SYNOPSIS

=head1 DESCRIPTION

=cut

