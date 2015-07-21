def job = "a"

print """
test"foo"\${job}
${job.length()}
"""
