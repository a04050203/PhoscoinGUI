# PhoscoinGUI
Ubuntu :
open terminal
    try this command :
    
    apt install build-essential libqt4-dev qt5-qmake cmake qttools5-dev libqt5webkit5-dev qttools5-dev-tools qt5-default python-sphinx texlive-latex-base inotify-tools openssl libssl-dev libdb++-dev libminiupnpc-dev git sqlite3 libsqlite3-dev g++ libpng-dev git g++ gedit python gcc make libbz2-dev libdb-dev libssl-dev openssl libreadline-dev autoconf libtool git libleveldb-dev libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev automake nano
    
then do this command : 

    git clone https://github.com/Phoscoin/PhoscoinGUI
    cd PhoscoinGui
    git clone https://github.com/Phoscoin/Phoscoin PhoscoinCli
    
then try this:

    cmake -project && qmake
    cat Makefile-prepend Makefile > $$.tmp && mv $$.tmp Makefile
    cd PhoscoinCli
    make
    cd ..
    make
   
And voila! The gui is in the bin Folder!
