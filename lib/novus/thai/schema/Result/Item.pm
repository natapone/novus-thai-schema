use utf8;
package novus::thai::schema::Result::Item;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Item

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

=head1 TABLE: C<item>

=cut

__PACKAGE__->table("item");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'item_id_seq'

=head2 feedid

  data_type: 'integer'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=head2 link

  data_type: 'varchar'
  is_nullable: 0
  size: 2048

=head2 category

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 pubdate

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 media

  data_type: 'varchar'
  is_nullable: 1
  size: 2048

=head2 timestamp

  data_type: 'integer'
  is_nullable: 0

=head2 scrape

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 scrapetype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "item_id_seq",
  },
  "feedid",
  { data_type => "integer", is_nullable => 0 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 1024 },
  "link",
  { data_type => "varchar", is_nullable => 0, size => 2048 },
  "category",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "pubdate",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "media",
  { data_type => "varchar", is_nullable => 1, size => 2048 },
  "timestamp",
  { data_type => "integer", is_nullable => 0 },
  "scrape",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "scrapetype",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<item_link_key>

=over 4

=item * L</link>

=back

=cut

__PACKAGE__->add_unique_constraint("item_link_key", ["link"]);


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-26 14:38:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YKd6X5cy+W1MMNTwYM0iEQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
