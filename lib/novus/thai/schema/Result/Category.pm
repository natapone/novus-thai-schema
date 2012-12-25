use utf8;
package novus::thai::schema::Result::Category;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Category

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

=head1 TABLE: C<category>

=cut

__PACKAGE__->table("category");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'category_id_seq'

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

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
    sequence          => "category_id_seq",
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "rank",
  { data_type => "smallint", default_value => 9, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");
__PACKAGE__->has_many('feed_categories' => 'novus::thai::schema::Result::FeedCategory', { "foreign.categoryid" => "self.id" }, {join_type => 'left'});
__PACKAGE__->many_to_many('feeds' => 'feed_categories', 'feed');

# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-16 19:50:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p+j2DNEiXm+HXi8iDMhA9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
