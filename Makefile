FILES = VG250_KRS VG250_LAN
TARGETS = $(addprefix data/, $(addsuffix .geojson, $(FILES)))

all: $(TARGETS)

data/%.geojson: download
	./scripts/convert.sh $(basename $(notdir $@))

download: venv
	./venv/bin/python scripts/download.py

venv: scripts/requirements.txt
	[ -d ./venv ] || python3 -m venv venv
	./venv/bin/pip install --upgrade pip
	./venv/bin/pip install -Ur scripts/requirements.txt
	touch venv

clean:
	rm -rf data/*.geojson
	rm -rf files/*.zip

clean-venv:
	rm -rf venv

.PHONY: clean clean-venv download
