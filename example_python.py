import requests
import json

class SwisClient:
    def __init__(self, hostname, username, password):
        self.baseUrl = "https://%s:17778/SolarWinds/InformationService/v3/Json/" % hostname)
        self.credentials = (username, password)

    def _req(self, fragment, data)
        return requests.request("POST", self.baseUrl + fragment,
                                data = json.dumps(data),
                                verify = False,
                                auth = self.credentials,
                                headers = {'Content-Type': 'application/json'})  
    def query(self, query):
        return self._req("Query", {'query': query})

    def update(self, uri, **properties):
        self._req(uri, properties)

