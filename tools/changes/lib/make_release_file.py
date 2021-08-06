import os
import datetime

def main(repo):
    now = datetime.date.today()
    # daily release: previous_release = now - datetime.timedelta(days=1)
    # weekly release: previous_release = now - datetime.timedelta(days=7)
    previous_release = now - datetime.timedelta(days=7)
    DATE_SYSTEM = now.strftime("%y%m%d")
    DATE_TAG = previous_release.strftime("%y%m%d")
    FILE='.github/release.md'

    os.system('git pull')
    os.system('rm '+(FILE))
    os.system('echo "# dahliaOS '+(repo)+'" >> '+(FILE))
    os.system('echo "" >> '+(FILE))
    os.system('echo "## changes" >> '+(FILE))
    os.system('echo "" >> '+(FILE))
    os.system('echo "Compare to previous release [here](https://github.com/dahliaOS/'+(repo)+'/compare/v'+str(DATE_TAG)+'...v'+str(DATE_SYSTEM)+')." >> .github/release.md')
    os.system('cd ..')
    os.system('git config user.name github-actions')
    os.system('git config user.email "action@github.com"')
    os.system('git add --all')
    os.system('git commit -m "Bump changes to '+'v'+str(DATE_SYSTEM)+'"')
    os.system('git push')