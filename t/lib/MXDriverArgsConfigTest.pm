#
# This file is part of MouseX-SimpleConfig
#
# This software is copyright (c) 2011 by Infinity Interactive.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use utf8;
use strict;
use Modern::Perl;    ## no critic (UselessNoCritic,RequireExplicitPackage)

=encoding utf8

=cut

package MXDriverArgsConfigTestBase;
use Mouse;

has 'inherited_ro_attr' => ( is => 'ro', isa => 'Str' );

no Mouse;
1;

package MXDriverArgsConfigTest;
use Mouse;
extends 'MXDriverArgsConfigTestBase';
with 'MouseX::SimpleConfig';

has 'direct_attr' => ( is => 'ro', isa => 'Int' );

has 'req_attr' => ( is => 'rw', isa => 'Str', required => 1 );

sub config_any_args {
    return +{ driver_args => { General => { -LowerCaseNames => 1 } } };
}

no Mouse;
1;
