use utf8;
package novus::thai::schema::Result::Keyword;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Keyword

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

=head1 TABLE: C<keyword>

=cut

__PACKAGE__->table("keyword");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'keyword_id_seq'

=head2 redirectid

  data_type: 'integer'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 length

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 weight

  data_type: 'smallint'
  default_value: 100
  is_nullable: 1

=head2 is_stopword

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 active

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "keyword_id_seq",
  },
  "redirectid",
  { data_type => "integer", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "length",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "weight",
  { data_type => "smallint", default_value => 100, is_nullable => 1 },
  "is_stopword",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "active",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<keyword_name_key>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("keyword_name_key", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-25 11:33:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kuc23jE7XVcRuDaDoEu3ZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
