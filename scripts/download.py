import requests
import requests_cache
from utils import root
from os.path import basename

cache = root / '.cache'
requests_cache.install_cache(str(cache))

url = 'https://daten.gdz.bkg.bund.de/produkte/vg/vg250_ebenen_0101/2019/vg250_01-01.geo84.shape.ebenen.zip'

response = requests.get(url)
response.raise_for_status()

filepath = root / 'files' / basename(url)
with open(filepath, 'wb') as f:
    f.write(response.content)
