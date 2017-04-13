"""
Remember to load changes in .bashrc with the following:
    $ source ~/.bashrc
"""



"""
Bash - Formatting CLI Tenable Results
---------------------------------------------------
Formats ugly output of command line Tenable scan results.
"""

cat $1 | sed 's/\,/ /g' |\
awk '{
  if ($0 ~/^Solution :/ ) {
  printf ","
  printf "%s",$0
  } else if ($0 ~/^See Also :/ ) {
  printf ","
  printf "%s",$0
  } else if ($0 ~/\[[A-Z]*\]/ ) {
  printf "\n%s",$0
  printf ","
  gsub(/^.*\[/,"")
  gsub(/\]/,"")
  printf "%s",$0
  printf ","
  } else {
  printf "%s ",$0
  }
}'
  


"""
Unix - OpenSSL Cipher Check
---------------------------------------------------
Checks for a certain cipher.
Use command without an option at the end to get option list.
"""

    $ openssl s_client -connect google.com:443 -tls1_2



"""
Unix - Checking Free Space on Current Partition
---------------------------------------------------
Checks how much free space is available on current partition.
Made an alias for this by configuring the .bashrc file.
"""

    $ df -Ph . | tail -1 | awk '{print $4}'



"""
Bash - Formatting CLI Tenable Results
---------------------------------------------------
"""

#Compress
    $ tar -zcvf file.tar.gz directory/file.jpg

#Decompress
    $ tar -zxvf file.tar.gz



"""
Bash - See Directories Ordered by Size
---------------------------------------------------
"""

$ du -hs * | sort -hr




