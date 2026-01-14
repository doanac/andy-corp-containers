#!/bin/sh -e

PORT="${PORT-8080}"
MSG="${MSG-OK}"

RESPONSE="HTTP/1.1 200 OK\r\n\r\n${MSG}\r\n"

echo "ANDY starting server loop"

while true; do
	echo -en "$RESPONSE" | nc -l -p "${PORT}" || true
	echo "= $(date) ============================="
done
