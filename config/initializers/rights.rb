RIGHTS = {}
RIGHTS[:staff] = [
                  ['sessions', 'destroy']
                 ]
RIGHTS[:administrator] = [[]]
RIGHTS[:superuser] = [[]] + RIGHTS[:staff]
