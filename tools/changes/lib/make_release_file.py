import os
import datetime
import subprocess as sp

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
    previous_release = sp.getoutput('git describe --tags --abbrev=0 @^')
    commit_log = sp.getoutput('git log --oneline '+(previous_release)+'..@')
    os.system('echo - [ ]( ) https://github.com/dahliaOS/'+(repo)+'/commit/ '+(commit_log)+' >> '+(FILE))
    log1 = ("awk -F' ' '{ print")
    log2 = (' $1" "$2" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$3" "$5 $6" "$4')
    log3 = (" }'<.github/commit_log.txt >> "+(FILE)+" ")
    commit_log_string = sp.getoutput((log1)+(log2)+(log3))
    print (commit_log_string) # debug only
    os.system('rm .github/commit_log.txt')
    os.system('cd ..')
    os.system('git config user.name github-actions')
    os.system('git config user.email "action@github.com"')
    os.system('git add --all')
    os.system('git commit -m "Bump changes to '+'v'+str(DATE_SYSTEM)+'"')
    os.system('git push')
