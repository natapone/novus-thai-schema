use utf8;
package novus::thai::schema::Result::FeedCategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::FeedCategory

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

=head1 TABLE: C<feed_category>

=cut

__PACKAGE__->table("feed_category");

=head1 ACCESSORS

=head2 feedid

  data_type: 'integer'
  is_nullable: 0

=head2 categoryid

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "feedid",
  { data_type => "integer", is_nullable => 0 },
  "categoryid",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</feedid>

=item * L</categoryid>

=back

=cut

__PACKAGE__->set_primary_key("feedid", "categoryid");
__PACKAGE__->belongs_to('feed' => 'novus::thai::schema::Result::Feed', { id => 'feedid' } );
__PACKAGE__->belongs_to('category' => 'novus::thai::schema::Result::Category', { id => 'categoryid' } );

# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-16 19:50:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wx677NU450ZiajjBtBlC4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
