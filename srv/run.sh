PROJ=$(dirname $(readlink -f $0))

cd ${PROJ}

./server "../run/server.sock" 2>&1
