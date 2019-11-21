#!/usr/bin/perl
use strict;
use warnings;
use v5.10; # for say() function
 
use DBI;
# MySQL database configuration
my $dsn = "DBI:mysql:perlmysqldb";
my $username = "root";
my $password = "Dhana26sundar#";
 
# connect to MySQL database
my %attr = ( PrintError=>0,  # turn off error reporting via warn()
             RaiseError=>1);   # turn on error reporting via die()           
my $dbh;

my $sql = "INSERT INTO logdata(url,msisdn,input) VALUES(?,?,?)";
 
sub connect_to_db {
 
$dbh  = DBI->connect($dsn,$username,$password, \%attr);
 
#say "Connected to the MySQL database.";

}

sub pushToDb {
	my $url = $_[0];
	my $msisdn = $_[1];
	my $input = $_[2];

	#print "\n DB URL: " . $url . "\n msisdn:" . $msisdn . "\n input: " . $input . "\n";
	
	connect_to_db();

	my $stmt = $dbh->prepare($sql);

	if($stmt->execute($url, $msisdn, $input)){
    		say "inserted successfully";
  	} else {
		say "insertion failed";
	}

	$stmt->finish();
	$dbh->disconnect();
}


1;

