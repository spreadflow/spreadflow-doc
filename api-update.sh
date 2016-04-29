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

"$SPHINXAPIDOC" -e -H'SpreadFlow Core'      -o api/spreadflow_core          src/spreadflowcore/spreadflow_core              src/spreadflowcore/spreadflow_core/test
"$SPHINXAPIDOC" -e -H'Delta Processor'      -o api/spreadflow_delta         src/spreadflowdelta/spreadflow_delta            src/spreadflowdelta/spreadflow_delta/test
"$SPHINXAPIDOC" -e -H'Exiftool Processor'   -o api/spreadflow_exiftool      src/spreadflowexiftool/spreadflow_exiftool      src/spreadflowexiftool/spreadflow_exiftool/test
"$SPHINXAPIDOC" -e -H'JsonLD Processor'     -o api/spreadflow_jsonld        src/spreadflowjsonld/spreadflow_jsonld          src/spreadflowjsonld/spreadflow_jsonld/test
"$SPHINXAPIDOC" -e -H'MongoDB Storage'      -o api/spreadflow_mongodb       src/spreadflowmongodb/spreadflow_mongodb        src/spreadflowmongodb/spreadflow_mongodb/test
"$SPHINXAPIDOC" -e -H'Filesystem Observer'  -o api/spreadflow_observer_fs   src/spreadflowobserverfs/spreadflow_observer_fs src/spreadflowobserverfs/spreadflow_observer_fs/test
"$SPHINXAPIDOC" -e -H'PDF Processor'        -o api/spreadflow_pdf           src/spreadflowpdf/spreadflow_pdf                src/spreadflowpdf/spreadflow_pdf/test
"$SPHINXAPIDOC" -e -H'Thumbor Processor'    -o api/spreadflow_thumbor       src/spreadflowthumbor/spreadflow_thumbor        src/spreadflowthumbor/spreadflow_thumbor/test
"$SPHINXAPIDOC" -e -H'XSLT Processor'       -o api/spreadflow_xslt          src/spreadflowxslt/spreadflow_xslt              src/spreadflowxslt/spreadflow_xslt/test
