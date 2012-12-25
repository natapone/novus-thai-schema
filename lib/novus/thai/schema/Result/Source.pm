use utf8;
package novus::thai::schema::Result::Source;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Source

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

=head1 TABLE: C<source>

=cut

__PACKAGE__->table("source");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'source_id_seq'

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 rank

  data_type: 'smallint'
  default_value: 9
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "source_id_seq",
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "rank",
  { data_type => "smallint", default_value => 9, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");
__PACKAGE__->has_many('feeds' => 'novus::thai::schema::Result::Feed', { "foreign.sourceid" => "self.id" }, {join_type => 'left'});

# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-16 19:50:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OeaDYZ6mvJJdHpS4VuuUsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
