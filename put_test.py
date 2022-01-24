import requests
from bs4 import BeautifulSoup

base_url = "http://63.142.182.3/"

response = requests.get(base_url)

parsed_html = BeautifulSoup(response.content, "html.parser")

elements = response.find_all("br", class_="card-content")

print(parsed_html)
print(elements)
