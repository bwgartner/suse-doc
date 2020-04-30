#! /bin/sh

OutputFN=${1%.md}.adoc

type pandoc || {
        echo "missing 'pandoc' binary, please install it"
        exit 1
}

pandoc \
	--atx-headers \
       	--verbose \
	--wrap=none \
	--toc \
	--reference-links \
	-s \
	-f markdown+smart \
	-o ${OutputFN} \
	$1

