#!/usr/bin/env bash

FILENAME=$1

ogr2ogr -f GeoJSON \
        -a_srs epsg:4326 \
        data/"$FILENAME".geojson \
        /vsizip/files/vg250_01-01.geo84.shape.ebenen.zip/vg250_2019-01-01.geo84.shape.ebenen/vg250_ebenen/"$FILENAME".dbf
