import os
import datetime as DT

today = DT.date.today()
week_ago = today - DT.timedelta(days=7)
DATE_SYSTEM = today.strftime("%y%m%d")
DATE_TAG = week_ago.strftime("%y%m%d")

os.system('git pull')
os.system('rm .github/release.md')
os.system('echo "# dahliaOS documentation" >> .github/release.md')
os.system('echo "" >> .github/release.md')
os.system('echo "## changes" >> .github/release.md')
os.system('echo "" >> .github/release.md')
os.system('echo "Compare to previous release [here](https://github.com/dahliaOS/documentation/compare/v'+str(DATE_TAG)+'...v'+str(DATE_SYSTEM)+')." >> .github/release.md')
os.system('cd ..')
os.system('git config --global user.name "dahliaOS-bot"')
os.system('git config --global user.email dahliaosofficial@gmail.com')
os.system('git add --all')
os.system('git commit -m "Bump changes to '+'v'+str(DATE_SYSTEM)+'"')
os.system('git push')
