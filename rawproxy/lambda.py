import requests


def lambda_handler(event, context):
    return requests.get(f"https://{event.get('rawPath')}").text
