#!/bin/sh

set -e -x

if [ ! -x "$SPHINXAPIDOC" ]; then
    if [ -d "$PYTHONUSERBASE" ] && command -v "$PYTHONUSERBASE/bin/sphinx-apidoc" >/dev/null 2>&1; then
        SPHINXAPIDOC="$PYTHONUSERBASE/bin/sphinx-apidoc"
    elif command -v sphinx-apidoc >/dev/null 2>&1; then
        SPHINXAPIDOC=sphinx-apidoc
    else
        echo >&2 "The sphinx-apidoc command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)"
        exit 1
    fi
fi

rm -rf api/*

"$SPHINXAPIDOC" -e -H'SpreadFlow Core'      -o api/spreadflow_core          src/spreadflow-core/spreadflow_core              src/spreadflow-core/spreadflow_core/test
"$SPHINXAPIDOC" -e -H'Delta Processor'      -o api/spreadflow_delta         src/spreadflow-delta/spreadflow_delta            src/spreadflow-delta/spreadflow_delta/test
"$SPHINXAPIDOC" -e -H'Exiftool Processor'   -o api/spreadflow_exiftool      src/spreadflow-exiftool/spreadflow_exiftool      src/spreadflow-exiftool/spreadflow_exiftool/test
"$SPHINXAPIDOC" -e -H'BSON Message Format'  -o api/spreadflow_format_bson   src/spreadflow-format-bson/spreadflow_format_bson src/spreadflow-format-bson/spreadflow_format_bson/test
"$SPHINXAPIDOC" -e -H'JsonLD Processor'     -o api/spreadflow_jsonld        src/spreadflow-jsonld/spreadflow_jsonld          src/spreadflow-jsonld/spreadflow_jsonld/test
"$SPHINXAPIDOC" -e -H'MongoDB Storage'      -o api/spreadflow_mongodb       src/spreadflow-mongodb/spreadflow_mongodb        src/spreadflow-mongodb/spreadflow_mongodb/test
"$SPHINXAPIDOC" -e -H'Filesystem Observer'  -o api/spreadflow_observer_fs   src/spreadflow-observer-fs/spreadflow_observer_fs src/spreadflow-observer-fs/spreadflow_observer_fs/test
"$SPHINXAPIDOC" -e -H'PDF Processor'        -o api/spreadflow_pdf           src/spreadflow-pdf/spreadflow_pdf                src/spreadflow-pdf/spreadflow_pdf/test
"$SPHINXAPIDOC" -e -H'Thumbor Processor'    -o api/spreadflow_thumbor       src/spreadflow-thumbor/spreadflow_thumbor        src/spreadflow-thumbor/spreadflow_thumbor/test
"$SPHINXAPIDOC" -e -H'XSLT Processor'       -o api/spreadflow_xslt          src/spreadflow-xslt/spreadflow_xslt              src/spreadflow-xslt/spreadflow_xslt/test
