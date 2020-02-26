# path + name of the perl module
package os::tutoOS::snmp::plugin;

# load needed libraries
use strict;
use warnings;
use base qw(centreon::plugins::script_snmp);
use Data::Dumper;

sub new {
    # those are our subroutine private arguments.
    my ($class, %options) = @_;

    # create $self object
    my $self = $class->SUPER::new(package => __PACKAGE__, %options);

    # tell perl to search method called on the $self object within our package/class os::tutoOS::snmp::plugin
    bless $self, $class;

    # initiate version our plugin
    $self->{version} = '0.1';

    # initiate modes of our plugin
    %{$self->{modes}} = (
        'users'     => 'os::tutoOS::snmp::mode::users',
        'distrib'   => 'os::tutoOS::snmp::mode::distrib'
    );

    # return our object so we can use it later
    return $self;
}

# return true for require package
1;

__END__

# documentation using perl pod
=head1 PLUGIN DESCRIPTION

Check tutoOS operating system using SNMP.

=cut
