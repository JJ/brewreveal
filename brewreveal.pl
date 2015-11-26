#!/usr/bin/env perl

use strict;
use warnings;

use Git::Repository;
use File::Path;


use v5.14;

use constant REVEAL_GIT_URL => 'git@github.com:hakimel/reveal.js.git';


my $dir = shift || "/tmp";

Git::Repository->run( clone => REVEAL_GIT_URL, "--depth=1", $dir,
		      { git => '/usr/bin/git',
			quiet => 1 } );

my $r = Git::Repository->new( git_dir => $dir );


