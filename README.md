# German Administrative Areas 1 : 250 000

German Administrative Areas converted to GeoJSON format.

Source: [vg250_01-01.geo84.shape.ebenen.zip](https://daten.gdz.bkg.bund.de/produkte/vg/vg250_ebenen_0101/2019/vg250_01-01.geo84.shape.ebenen.zip)

Publisher: [Bundesamt für Kartographie und Geodäsie (BKG)](https://gdz.bkg.bund.de/index.php/default/catalog/product/view/id/788/s/verwaltungsgebiete-1-250-000-ebenen-stand-01-01-vg250-ebenen-01-01/category/8/?___store=default)

## Preparation

```
make all
```

This will download the zipped data, extract and convert the files to GeoJSON, and place the results in the `data` directory.

## Notes

Currently only 'Landkreise' (Districts) and 'Bundesländer' (State) are processed.

If you're interested in only a specific subset of the data, these services may offer more convenient access:
  - [The WFS Service from BKG](https://gdz.bkg.bund.de/index.php/default/wfs-verwaltungsgebiete-1-250-000-stand-01-01-wfs-vg250.html)
  - [OpenDataLab's GeoJSON Utilities](http://opendatalab.de/projects/geojson-utilities/)

## Requirements

Python3 is used, all dependencies are installed automatically into a Virtualenv
when using the `Makefile`.
Conversion to GeoJSON requires [ogr2ogr](https://gdal.org/programs/ogr2ogr.html).

## License

The Python files in `scripts` are released under an
[CC0 Public Dedication License](https://creativecommons.org/publicdomain/zero/1.0/).

Data is &copy; GeoBasis-DE / [BKG](http://www.bkg.bund.de) 2020 and released under the [Data licence Germany – attribution – Version 2.0](https://www.govdata.de/dl-de/by-2-0).
