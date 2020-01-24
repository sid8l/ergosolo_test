import sys

import requests
import xml.etree.ElementTree as ET

URL = "http://www.cbr.ru/scripts/XML_daily.asp"
CHAR_CODES = ("USD", "EUR")


def get_xml(url):
    try:
        result = requests.get(url)
        result.raise_for_status()
        return result.text
    except (requests.RequestException, ValueError):
        return False


def get_rate(root, char_codes):
    rates = {}
    for char_code in char_codes:
        try:
            rate = root.find(f"Valute[CharCode='{char_code}']").find("Value").text
            rate = float(rate.replace(",", "."))
            rates[char_code] = rate
        except (AttributeError, ValueError) as err:
            sys.exit(err)
    return rates


if __name__ == "__main__":
    xml = get_xml(URL)
    if xml:
        root = ET.fromstring(xml)
        result = get_rate(root, CHAR_CODES)
        print(result)
