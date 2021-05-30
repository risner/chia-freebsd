# Testing, until I resolve how to do python ports correctly.

all:
	echo NEXT step

.cloned-in-gitdir:
	-mkdir gitdir
	(cd gitdir; git clone --recurse-submodules https://github.com/Chia-Network/chia-blockchain.git -b latest)
	touch .cloned-in-gitdir
