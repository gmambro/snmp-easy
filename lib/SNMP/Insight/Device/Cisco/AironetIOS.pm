package SNMP::Insight::Device::Cisco::AironetIOS;

# ABSTRACT: Support for Cisco AironetIOS devices

use Moose::Role;
use namespace::autoclean;

#VERSION:

with 'SNMP::Insight::Device::Cisco',
  'SNMP::Insight::MIB::Bridge',
  'SNMP::Insight::MIB::EtherLike',

  #CiscoConfig
  ;

warn "To be implemented yet";

1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 4
# cperl-indent-parens-as-block: t
# End:

