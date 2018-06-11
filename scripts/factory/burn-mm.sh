#!/bin/bash
cd /home/factory/Avalon-extras/scripts/factory
make isedir=/home/factory/Xilinx/14.6/ISE_DS reflash MM_PLATFORM=$1

if [ $? -ne 0 ]; then
    echo -e "\n\n"
    echo -e "\033[1;31m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;31m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;31m+++++  +++++  +++++    +++++    +++++\033[0m"
    echo -e "\033[1;31m+      +   +  +   +   +     +   +   +\033[0m"
    echo -e "\033[1;31m+++++  +++++  +++++  +       +  +++++\033[0m"
    echo -e "\033[1;31m+      +++    +++     +     +   +++  \033[0m"
    echo -e "\033[1;31m+++++  +  ++  +  ++    +++++    +  ++\033[0m"
    echo -e "\033[1;31m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;31m--------------------------------------------------------------------------------------\033[0m"
else
    echo -e "\n\n"
    echo -e "\033[1;32m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;32m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;32m  +++++    +   +\033[0m"
    echo -e "\033[1;32m +     +   + +  \033[0m"
    echo -e "\033[1;32m+       +  +    \033[0m"
    echo -e "\033[1;32m +     +   + +  \033[0m"
    echo -e "\033[1;32m  +++++    +   +\033[0m"
    echo -e "\033[1;32m--------------------------------------------------------------------------------------\033[0m"
    echo -e "\033[1;32m--------------------------------------------------------------------------------------\033[0m"
fi

echo -e "\n\n"
