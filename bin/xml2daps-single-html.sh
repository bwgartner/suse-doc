#! /bin/sh

type daps || {
        echo "missing 'daps' binary, please install it"
        exit 1
}

MyDC=$(ls DC* | head -1)
daps --verbosity=3 -d ${MyDC} html --single
