import screed, sys

for record in screed.open(sys.argv[1]):
    if 'nifh' in record.name.lower():
        print ">" + record.name.split(' ')[0]
        print record.sequence
