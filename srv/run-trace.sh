PROJ=$(dirname $(readlink -f $0))

cd ${PROJ}

strace -f -- ./server "../run/server.sock" 2>&1 | tee ../srv.log
