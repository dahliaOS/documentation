import os
import datetime as DT

today = DT.date.today()
week_ago = today - DT.timedelta(days=7)
DATE_SYSTEM = today.strftime("%y%m%d")
DATE_TAG = week_ago.strftime("%y%m%d")
COMMIT_MSG = ('git commit -m "Bump changes to '+'v'+str(DATE_SYSTEM)+'"')

os.system('git pull')
os.system('rm .github/release.md')

line1 = ('echo "# dahliaOS documentation" >> .github/release.md')
line2 = ('echo "" >> .github/release.md')
line3 = ('echo "## changes" >> .github/release.md') 
line4 = ('echo "" >> .github/release.md')
line5 = ('echo "Compare to previous release [here](https://github.com/dahliaOS/documentation/compare/v'+str(DATE_TAG)+'...v'+str(DATE_SYSTEM)+')." >> .github/release.md')

os.system(line1)
os.system(line2)
os.system(line3)
os.system(line4)
os.system(line5)
os.system('cd ..')
os.system('git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"')
os.system('git config --local user.name "github-actions[bot]"')
os.system('git add --all')
os.system(COMMIT_MSG)
os.system('git push')
