/usr/ports/finance/py-chia-blockchain\
\
TODO\
Run requirements:\
py-concurrent-log-handler submitted -> https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=256268 \
py-clvm_rs submitted -> https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=256251 \
py-clvm_tools port of version 0.4.3 needs to be created. I was able to create it - but I had to download from github the tar file. Pypi only had wheel.\
\
Needs to link to my NEW PORT for clvm_rs. I have submitted this to be added 5/29/21.\
\
This error MAY need to be resolved, but I don't know how to do so:\
package init file 'build_scripts/__init__.py' not found (or not a regular file)\
\
I'm not yet sure these are an error, and I'll keep researching:\
===> Creating unique files: Move MAN files needing SUFFIX\
===> Creating unique files: Move files needing SUFFIX\
\
RUN_DEPENDS=    clvm_rs>=0.1.7:finance/libclvm_rs causes `make clean` to show twice:\
===>  Cleaning for clvm_rs-0.1.7\
===>  Cleaning for clvm_rs-0.1.7\
This is just a .so file, no python code.\
\
Potential problems:\
May need to depend on a system wide keychain such as sysutils/pwsafe.\
\
I must actually test functionality.\
\
Of note, their original FreeBSD instructions are here:\
https://github.com/Chia-Network/chia-blockchain/wiki/FreeBSD-Install
