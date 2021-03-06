use 5.008;
use strict;
use warnings FATAL => 'all';
use Test::More;

use_ok 'SNMP::Insight::MIB::BGP4';
use_ok 'SNMP::Insight::MIB::Bridge';
use_ok 'SNMP::Insight::MIB::Cisco_CDP';
use_ok 'SNMP::Insight::MIB::Cisco_PortSecurity';
use_ok 'SNMP::Insight::MIB::Cisco_RTTMON';
use_ok 'SNMP::Insight::MIB::Cisco_PAGP';
use_ok 'SNMP::Insight::MIB::Cisco_VTP';
use_ok 'SNMP::Insight::MIB::Cisco_StpExtensions';
use_ok 'SNMP::Insight::MIB::Entity';
use_ok 'SNMP::Insight::MIB::EtherLike';
use_ok 'SNMP::Insight::MIB::Fortinet';
use_ok 'SNMP::Insight::MIB::HostResources';
use_ok 'SNMP::Insight::MIB::IEEE8023_LAG';
use_ok 'SNMP::Insight::MIB::IFMIB';
use_ok 'SNMP::Insight::MIB::IP';
use_ok 'SNMP::Insight::MIB::Juniper';
use_ok 'SNMP::Insight::MIB::OSPF';
use_ok 'SNMP::Insight::MIB::QBridge';
use_ok 'SNMP::Insight::MIB::SNMPv2';
use_ok 'SNMP::Insight::MIB::UCD';

done_testing;
1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 4
# cperl-indent-parens-as-block: t
# End:
