import json

with open('your-unformatted-json-file', 'r') as f:
  obj = json.loads(f.read())

with open('your-formatted-json-file', 'w+') as w:
  w.write(json.dumps(obj, indent=4))