# Meir Elizarov - 20230618
log_file="everything.txt"
line1="535 Authentication failed"
line2="closing session"
# Axigen Multi line log extraxtion.
cat $log_file | grep "$line1" | cut -d':' -f4 | xargs -I{} \
grep "{}.*$line1\|{}.*$line2" $log_file
#
