#!/bin/zsh

# Demo file for sed commands
echo "Original file contents:"
echo "-----------------------"
cat file.txt

# 1. Substitute Command - Replace occurrences of "old" with "new" in a file
echo "\n1. Substitute Command - Replace 'line' with 'sentence':"
sed 's/line/sentence/g' file.txt

# 2. Delete Command - Delete lines containing a specific pattern from a file
echo "\n2. Delete Command - Delete lines containing 'contains':"
sed '/contains/d' file.txt

# 3. Print Command - Print specific lines from a file
echo "\n3. Print Command - Print lines 2 to 4:"
sed -n '2,4p' file.txt

# 4. Insert Command - Insert text before a specific line in a file
echo "\n4. Insert Command - Insert 'Inserted line' before line 3:"
sed '3i\Inserted line' file.txt

# 5. Append Command - Append text after a specific line in a file
echo "\n5. Append Command - Append 'Appended line' after line 4:"
sed '4a\Appended line' file.txt
