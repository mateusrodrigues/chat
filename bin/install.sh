#!/bin/bash

# chat
# Written by: Mateus Rodrigues de Morais
# Chat rooms are located at: /etc/chat.d/rooms
# Chat logs are located at: /etc/chat.d/logs

ROOMS_DIR="/etc/chat.d/rooms"
LOG_FOLDER="/etc/chat.d/logs"
LOG_FILE="/etc/chat.d/logs/chatlog.log"

mkdir $ROOMS_DIR -p
mkdir $LOG_FOLDER -p

touch $LOG_FILE

chmod a+rwxt $ROOMS_DIR
chmod 755 $LOG_FOLDER
chmod a+rw $LOG_FILE

SRC_DIR=$(dirname $0)

cp ${SRC_DIR}/chat /usr/local/bin/

chmod 755 /usr/local/bin/chat
