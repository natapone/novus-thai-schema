use utf8;
package novus::thai::schema::Result::Sysconfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Sysconfig

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<sysconfig>

=cut

__PACKAGE__->table("sysconfig");

=head1 ACCESSORS

=head2 configname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 configvalue

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "configname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "configvalue",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</configname>

=back

=cut

__PACKAGE__->set_primary_key("configname");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-25 14:36:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ULeAeJJ0YmZkH0xuCWiQsw
# These lines were loaded from '/home/dong/src/NPC/novus-thai-utils/lib/novus/thai/schema/Result/Sysconfig.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

use utf8;
package novus::thai::schema::Result::Sysconfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Sysconfig

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<sysconfig>

=cut

__PACKAGE__->table("sysconfig");

=head1 ACCESSORS

=head2 configname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 configvalue

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "configname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "configvalue",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</configname>

=back

=cut

__PACKAGE__->set_primary_key("configname");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-25 14:36:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0IlEvq5ghg1Y64tEw+gubw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/home/dong/src/NPC/novus-thai-utils/lib/novus/thai/schema/Result/Sysconfig.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
