/usr/ports/finance/py-chia-blockchain\
\
TODO\
Build requirements:\
py-cryptography port needs to support 3.4.7, currently only supports 3.3.2 release. I failed to compile this.\
Run requirements:\
py-yaml port needs to support 5.4.1, currently only supports 5.3.1 release. I was able to create it.\
py-setproctitle port needs to support 1.2.2, currently only supports 1.1.10 release. I was able to compile this by changing numbers.\
py-keyrings.cryptfile port of version 1.3.4 needs to be created, I was able to create it. However it conflicts with py-keyring-18.0.1.\
py-keyring port needs to support 23.0.1, currently only sypports 18.0.1. I was able to compile this, and replacing allows py-keyrings.cryptfile.\
py-concurrent-log-handler port of version 0.9.19 needs to be created, I was able to create it.\
py-bitstring port needs to support 3.1.7, currently only supports 3.1.5. I was able to create it.\
py-aiosqlite port needs to support 0.17.0, currently only supports 0.15.0. I was able to create it.\
py-aiohttp port needs to support 3.7.4, currently only supports 3.6.2. I was able to create it.\
py-aiohttp port needs to support 5.0.1, currently only supports 4.7.0. I was able to create it.\
py-clvm_tools port of version 0.4.3 needs to be created. I was able to create it - but I had to download from github the tar file. Pypi only had wheel. Also has clvm-tools vs clvm_tools naming issues upstream.\
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
