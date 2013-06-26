use utf8;
package novus::thai::schema::Result::Feed;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

novus::thai::schema::Result::Feed

=cut

use strict;
use warnings;
use WWW::Curl::Simple;
use Try::Tiny;
use Data::Dumper;
use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<feed>

=cut

__PACKAGE__->table("feed");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'feed_id_seq'

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 link

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 sourceid

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 lasttimestamp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 active

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=head2 scrapetype

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "feed_id_seq",
  },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "link",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "sourceid",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "lasttimestamp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "active",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "scrapetype",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");
__PACKAGE__->has_many('feed_categories' => 'novus::thai::schema::Result::FeedCategory', { "foreign.feedid" => "self.id" }, {join_type => 'left'});
__PACKAGE__->many_to_many('categories' => 'feed_categories', 'category');
__PACKAGE__->has_many('items' => 'novus::thai::schema::Result::Item', { "foreign.feedid" => "self.id" }, {join_type => 'left'});
__PACKAGE__->belongs_to('source' => 'novus::thai::schema::Result::Source', { "foreign.id" => "self.sourceid" });

# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-12-16 19:50:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uwq2RwfVaQFelcCP29NWgg

=head3 fetch

Fetch xml from feed url and save as text file

=cut

sub config {
    my $config = novus::thai::utils->get_config();
    return $config;
}

sub fetch {
    my ($self, $path) = @_;
#    $self->result_source->schema->resultset('AreaFeed')->find_or_create({
#        feed => $self->id,
#        area => $areaid,
#    });
    
    my $config = $self->config;
    $path = $config->{'novus-thai-root'}.'/novus_thai_data';
    
#    print Dumper($self->_get_link($self->link)) ;
    
    my $feed_result = {};
    my $feed_url = $self->link;
    do {
        $feed_result = $self->_get_link($feed_url);
        $feed_url = $feed_result->{'location'} if $feed_result->{'status'} == -1;
        
    } until ($feed_result->{'status'} == 1 or $feed_result->{'status'} == 0 ); 
    
    
    if ($feed_result->{'status'} == 1) {
        # print to file
        my $filename = "T".time."F".$self->id.".xml";
        open (XMLFILE, ">$path/$filename");
        print XMLFILE $feed_result->{'content'};
        close (XMLFILE); 
        
        return $filename;
    } else {
        return $feed_result->{'error_status'}
    }
    
}

sub _get_link {
    my ($self, $url) = @_;
    
    my $curl = WWW::Curl::Simple->new(timeout=>5);
    my $res;
    my $result = {};
    
    try {
        $res = $curl->get($url);
    } catch {
        warn "Death link: ".$url; # not $@
        $result->{'status'}  = -2;
    };
    
    if ($res->is_redirect) {
        $result->{'location'} = $res->header('location');
        $result->{'status'}  = -1;
    } elsif ($res->is_success) {
        $result->{'content'} = $res->content;
        $result->{'status'}  = 1;
    } else {
        $result->{'status'}  = 0;
        $result->{'error_status'}  = $res->status_line;
    }
    
    return $result;
}


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
