#!/usr/bin/perl -w
use strict;
use warnings;
use utf8;

use Test::More tests => 5;
BEGIN { use_ok('novus::thai::schema') };

use novus::thai::schema;
use novus::thai::utils;
use Data::Dumper;

my $config = novus::thai::utils->get_config();
my $schema = novus::thai::schema->connect(
                                $config->{connect_info}[0], 
                                $config->{connect_info}[1], 
                                $config->{connect_info}[2], 
                                $config->{connect_info}[3], 
                                );

my $source = $schema->resultset('Source')->find(1);
is($source->name,"arip","Source id 1 is Arip");

my $feeds = $source->feeds;
my $feed = $feeds->find(1);
is($feed->link,'http://www.arip.co.th/rss/rss_news_rich.xml',"Url of Arip is correct");

# get feeds and categories
$feed = $schema->resultset('Feed')->find(60);

my $categories = $feed->categories;

my @cat_read;
while (my $category = $categories->next) {
    push(@cat_read, $category->id);
    
}

my @cats_result = (2, 16);
is_deeply(\@cat_read, \@cats_result, "Return categories of feed correctly");

my $category = $schema->resultset('Category')->find(2);
$feeds = $category->feeds;

my @feed_read;
while (my $feed = $feeds->next) {
    push(@feed_read, $feed->id);
}

my @feed_result = (1, 9, 10, 26, 55, 60, 67, 72, 78, 101, 103, 111, 121);
is_deeply(\@feed_read, \@feed_result, "Return feeds of category correctly");

