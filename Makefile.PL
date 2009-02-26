use inc::Module::Install;

name     'MooseX-Types-DateTimeX';
all_from 'lib/MooseX/Types/DateTimeX.pm';
author   'Evan Carroll <me@evancarroll.com>';
license  'perl';

requires 'Moose'              => '0.41'; # class_type
requires 'MooseX::Types'      => '0.04';
requires 'namespace::clean'   => '0.08';

requires 'MooseX::Types::DateTime' => '0.04';

requires 'DateTimeX::Easy' => '0.085';
# All used by DateTime::Easy (no purpose to explicitly specify what we don't use directly)
## requires 'Time::Duration::Parse' => '0.06';
## requires 'DateTime::Format::DateParse' => '0.04';
## requires 'DateTime::Format::Natural'   => '0.71';
## requires 'DateTime::Format::Flexible'  => '0.05';

test_requires 'Test::use::ok'    => '0.02';
test_requires 'Test::Exception'  => '0.27';
test_requires 'Test::More';

auto_install;

WriteAll;
