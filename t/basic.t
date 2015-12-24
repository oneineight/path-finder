#! perl6

use v6;

use Test;

use Path::Iterator;

is-deeply(Path::Iterator.name(rx/\.pm$/).file.in('lib').map(~*).list, ( 'lib/Path/Iterator.pm', ), 'Find only .pm file in lib');
is-deeply(Path::Iterator.depth(1).skip-hidden.file.contents(rx/description/).in.map(~*).list, ( 'META.info', ), 'Find only file in root that contains "description"');

done-testing();