# bash shell to fix up nasty looking file names
# G Neuenkirchen 13 APR 2020

# This is how google named their files from hangouts.
# The names were not compatible with my cloud drive and this script will sanitize them in mass

# example #1 - yes, the next line is a file name
# inputContent?fileName=%2Fdata%2Fuser_de%2F0%2Fcom.google.android.inputmethod.latin%2Ffiles%2Fgif32682133276709324960&packageName=com.google.android.gif

for x in inputContent*
do 
    mv "$x" "$(echo "$x" | sed 's/.*2F//' | sed 's/&package.*/.gif/')"
done

# example #2
# 8448368101818019525?account_id=1.jpg
# just get rid of ?account_id=

for x in *
do
    mv "$x" "$(echo "$x" | sed 's/?account_id=//')" 
done
