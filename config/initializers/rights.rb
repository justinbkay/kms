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
RIGHTS[:administrator] = [[]] + RIGHTS[:staff]
RIGHTS[:superuser] = [[]] + RIGHTS[:staff]
