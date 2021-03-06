package SNMP::Insight::MIB::Utils;

#ABSTRACT: Functions for dealing with MIB data

use strict;
use warnings;

#VERSION:

use base qw( Exporter );
our @EXPORT_OK = qw( sysObjectID2vendor vendor2sysObjectID);

my $ENTERPRISES_OID = "1.3.6.1.4.1";

# WARNING:
# vaules must be valid to create package names,
# e.g. SNMP::Insigh::Device::$value

my %ID_VENDOR_MAP = (
    9     => 'Cisco',
    11    => 'HP',
    18    => 'BayRS',
    42    => 'Sun',
    43    => '3Com',
    45    => 'Baystack',
    171   => 'Dell',
    207   => 'Allied',
    244   => 'Lantronix',
    311   => 'Microsoft',
    318   => 'APC',
    674   => 'Dell',
    1872  => 'AlteonAD',
    1916  => 'Extreme',
    1991  => 'Foundry',
    2021  => 'NetSNMP',
    2272  => 'Passport',
    2636  => 'Juniper',
    2925  => 'Cyclades',
    3076  => 'Altiga',
    3224  => 'Netscreen',
    3375  => 'F5',
    3417  => 'BlueCoatSG',
    4526  => 'Netgear',
    5624  => 'Enterasys',
    5951  => 'Netscaler',
    6027  => 'Force10',
    6486  => 'AlcatelLucent',
    6527  => 'Timetra',
    8072  => 'NetSNMP',
    9303  => 'PacketFront',
    10002 => 'Ubiquiti',
    11898 => 'Orinoco',
    12325 => 'Pf',
    12356 => 'Fortinet',
    12532 => 'Neoteris',
    14179 => 'Airespace',
    14525 => 'Trapeze',
    14823 => 'Aruba',
    14988 => 'Mikrotik',
    17163 => 'Steelhead',
    25506 => 'H3C',
    26543 => 'IBMGbTor',
    30065 => 'Arista',
    35098 => 'Pica8',
);

=func sysObjectID2vendor

Try to extract a vendor string from a sysObjectID.

=cut

sub sysObjectID2vendor {
    my ($id) = @_;
    defined $id or return "NO VENDOR";

    $id =~ /^\.?1\.3\.6\.1\.4\.1\.(\d+)/ and return $ID_VENDOR_MAP{$1};
    return "UNKNOWN";
}

=func vendor2sysObjectID

Try to extract a sysObjectID enterprise prefix from a vendor string.
Returns undef if vendor is unknown.

=cut

sub vendor2sysObjectID {
    my $vendor = shift;
    defined $vendor or return;

    my %VENDOR_ID_MAP = reverse %ID_VENDOR_MAP;

    if ( defined $VENDOR_ID_MAP{$vendor} ) {
        return $ENTERPRISES_OID . "." . $VENDOR_ID_MAP{$vendor};
    }
    else {
        return;
    }
}

1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 4
# cperl-indent-parens-as-block: t
# End:
