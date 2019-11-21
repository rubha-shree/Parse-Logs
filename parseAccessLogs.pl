#!/usr/bin/perl

require "./pushLogsToDb.pm";

use Getopt::Long;

GetOptions(
	'log=s' => \$log
);

print "\n LOG: " . $log;

if ($log =~ /(\/.*)\?.*\&{1}msisdn\=(\d+)\&{1}input\=(\d+)\&/) {

($url, $msisdn, $input) = ($log =~ /\s(\/.*)\?.*\&{1}msisdn\=(\d+)\&{1}input\=(\d+)\&/);

#print "\n URL: " . $url . "\n msisdn:" . $msisdn . "\n input: " . $input . "\n";

pushToDb($url, $msisdn, $input);
} else {
	print "\n Log is in invalid format";
}

