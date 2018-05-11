#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Usage: mkjwkset <public JWKSet file> <private JWKSet file>"
    exit 1
fi
echo "{\"keys\":[" > $1
echo "{\"keys\":[" > $2
java -jar json-web-key-generator.jar -t RSA -s 2048 -u enc -i e1 -p > e.tmp
head -n 9 e.tmp | tail -n 8 >> $2
tail -n 7 e.tmp >> $1
echo "," >> $1
echo "," >> $2
java -jar json-web-key-generator.jar -t RSA -s 2048 -u enc -i e1 -p > s.tmp
head -n 9 e.tmp | tail -n 8 >> $2
tail -n 7 s.tmp >> $1
echo "]}" >> $1
echo "]}" >> $2
rm *.tmp


