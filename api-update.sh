#!/bin/sh

rm -rf api/*

./bin/sphinx-apidoc -e -H'SpreadFlow Core' -o api/spreadflow_core src/SpreadFlowCore/spreadflow_core
./bin/sphinx-apidoc -e -H'Filesystem Observer' -o api/spreadflow_observer_fs src/SpreadFlowObserverFS/spreadflow_observer_fs
./bin/sphinx-apidoc -e -H'Exiftool Processor' -o api/spreadflow_proc_exiftool src/SpreadFlowProcExiftool/spreadflow_proc_exiftool
