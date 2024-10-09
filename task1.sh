ps aux | grep -e '[b]ash ./infinite.sh' -e '[b]ash infinite.sh' | awk '{cmd = "kill -9 "$2; system(cmd); print "process "$2" has been killed"}'

