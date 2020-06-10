#<1-get Hostname from IP, 2-get IP from Hostname>
PATH_TO_CVS=$1
OPTION=$2
java -jar dns_search.jar $PATH_TO_CVS $OPTION
