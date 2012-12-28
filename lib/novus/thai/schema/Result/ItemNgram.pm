use utf8;
package novus::thai::schema::Result::ItemNgram;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::ItemNgram

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

=head1 TABLE: C<item_ngram>

=cut

__PACKAGE__->table("item_ngram");

=head1 ACCESSORS

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 ngram_by_id

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=head2 term

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 ngram_length

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "ngram_by_id",
  { data_type => "varchar", is_nullable => 0, size => 1024 },
  "term",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "ngram_length",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemid>

=item * L</ngram_by_id>

=back

=cut

__PACKAGE__->set_primary_key("itemid", "ngram_by_id");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-28 11:48:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7JgudNOO4UlhKAX6V2ukjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
