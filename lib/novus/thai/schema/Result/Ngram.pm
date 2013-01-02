use utf8;
package novus::thai::schema::Result::Ngram;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Ngram

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

=head1 TABLE: C<ngram>

=cut

__PACKAGE__->table("ngram");

=head1 ACCESSORS

=head2 ngramid

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=head2 term

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 document_frequency

  data_type: 'integer'
  is_nullable: 1

=head2 ngram_length

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ngramid",
  { data_type => "varchar", is_nullable => 0, size => 1024 },
  "term",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "document_frequency",
  { data_type => "integer", is_nullable => 1 },
  "ngram_length",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ngramid>

=back

=cut

__PACKAGE__->set_primary_key("ngramid");

=head1 UNIQUE CONSTRAINTS

=head2 C<ngram_term_key>

=over 4

=item * L</term>

=back

=cut

__PACKAGE__->add_unique_constraint("ngram_term_key", ["term"]);


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-30 22:28:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:753rNCCpX1DgF7BeTq0a9g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
