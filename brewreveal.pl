#!/usr/bin/env perl

use strict;
use warnings;

use Git::Repository;

use v5.14;

use constant REVEAL_GIT_URL => 'git@github.com:hakimel/reveal.js.git';


my $dir = shift || "/tmp";

my $repo = Git::Repository->new( work_tree => $dir,
				 { git => '/usr/bin/git' } );

$repo->run("clone", REVEAL_GIT_URL, $dir );
