RIGHTS = {}
RIGHTS[:staff] = [
                  ['sessions', 'destroy'],
                  ['office_direct_referrals', 'new'],
                  ['office_direct_referrals', 'create'],
                  ['office_direct_referrals', 'index'],
                  ['office_direct_referrals', 'edit'],
                  ['office_direct_referrals', 'update'],
                  ['office_direct_referrals', 'student_search']
                 ]
RIGHTS[:administrator] = [
                          ['detention_dates', 'index'],
                          ['detention_dates', 'show'],
                          ['detention_dates', 'update']
                         ] + RIGHTS[:staff]
RIGHTS[:superuser] = [
                      ['users', 'new'],
                      ['users', 'create'],
                      ['users', 'index'],
                      ['users', 'edit'],
                      ['users', 'update'],
                      ['students', 'new'],
                      ['students', 'create'],
                      ['students', 'index'],
                      ['students', 'edit'],
                      ['students', 'update'],
                      ['students', 'search'],
                      ['students', 'office_direct_referrals']
                     ] + RIGHTS[:administrator] + RIGHTS[:staff]
