#!/usr/bin/env bash

ogr2ogr -f GeoJSON \
        -a_srs epsg:4326 \
        data/vg250-landkreise.geojson \
        /vsizip/files/vg250_01-01.geo84.shape.ebenen.zip/vg250_2019-01-01.geo84.shape.ebenen/vg250_ebenen/VG250_KRS.dbf
