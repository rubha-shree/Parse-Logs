# Parse-Logs

Write a simple parser in perl to parse logs which come in the following format 

-#122.166.120.126, 75.126.76.5 - - [31/Aug/2009:01:25:01 -0500] 'GET /aircel/obd/jobs?vendor=voicegate&msisdn=919738308604&input=1&experience=4&start=20090817182938&pass=vgpass1729vg HTTP/1.1' 200 29 '-' '-' 'Mozilla/5.0 (X11; U; Linux i686; en-US;rv:1.9.0.13) Gecko/2009073021 Firefox/3.0.13' 3817 'outdialer' '919738308604' '1:4'

a) parses logs should be storing msisdn, input and url separately

b)also write a separate script to write this data into a table
