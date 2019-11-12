#! /bin/bash
#! /bin/bash
# username.sh
# author isabella

echo "Usernames must begin with a lowercase letter, may contain digits underscores, and lowercase letters, and be at least 3 but no more than 12 characters"
echo "Enter a username: "
read NAME
#while echo "$NAME" | egrep -v "^[a-z][0-9 ]?\^.{3,12}$" > /dev/null 2>&1
while echo "$NAME" | grep -E -v -x '^[a-z](([0-9][_])?)[^\/?!*;:#@$&+,%=]{2,11}' > /dev/null 2>&1

do
        echo "You must enter a username that satisfies the requirements!"
        echo "Enter a valid username: "
        read NAME
done
echo "Thank you"
