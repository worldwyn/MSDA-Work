import re
record = '1 Germany | W 3 | T 4 | W 2'
rank = re.search('(^[0-9])', record)
print ('Rank: ',rank.group(1))

country = re.search('\s([A-Z]\S[a-z]\S+)', record)
print ()
print ('Country: ', country.group(1))

print ()
results = re.search('\s[|]\s([W,T,L]\s[1-9])\s[|]\s([W,T,L]\s[1-9])\s[|]\s([W,T,L]\s[1-9])', record)
print ('Results: \n')
print (results.group(1))
print ()
print (results.group(2))
print ()
print (results.group(3))
                 



