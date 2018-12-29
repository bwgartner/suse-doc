#! /bin/sh

MyDC=$(ls DC* | head -1)

daps --verbosity=3 -d ${MyDC} pdf
