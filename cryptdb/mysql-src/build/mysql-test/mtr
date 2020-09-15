#!/usr/bin/perl
# Call mtr in out-of-source build
$ENV{MTR_BINDIR} = "/home/zy/cryptdb/mysql-src/build";
chdir("/home/zy/cryptdb/mysql-src/mysql-test");
exit(system($^X, "/home/zy/cryptdb/mysql-src/mysql-test/mysql-test-run.pl", @ARGV) >> 8);
