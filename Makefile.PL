use inc::Module::Install;

name 'novus-thai-schema';
all_from 'lib/novus/thai/schema.pm';

build_requires 'Test::Perl::Critic';

requires 'DBIx::Class' => '0.08250';
requires 'WWW::Curl::Simple';
requires 'Try::Tiny';
requires 'Data::Dumper';

test_requires 'Test::More';
test_requires 'novus::thai::schema';
test_requires 'novus::thai::utils';

auto_install;

WriteAll;
