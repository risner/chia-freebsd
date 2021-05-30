Currently it breaks during build:
LookupError: setuptools-scm was unable to detect version for '/usr/ports/finance/chia/work/chia-blockchain-1.1.6'.

Make sure you're either building from a fully intact git repository or PyPI tarballs. Most other sources (such as GitHub's tarballs, a git checkout without the .git folder) don't contain the necessary metadata and will not work.

For example, if you're using pip, instead of https://github.com/user/proj/archive/master.zip use git+https://github.com/user/proj.git#egg=proj

I'm trying to avoid using git clone, as other python ports don't seem to try that. But it can't figure out how to setup without the .git directory.

Once I'm past this, I'll need to also wrangle all the python prereqs in /usr/local/lib/python3.8/site-packages instead of venv. I've already issued a NEW PORT for clvm_rs.
