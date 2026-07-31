from http.server import BaseHTTPRequestHandler, HTTPServer
import json

class Handler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type","application/json")
        self.end_headers()

        response = {
            "message": "Hello Terraform Workspace Demo!"
        }

        self.wfile.write(json.dumps(response).encode())

server = HTTPServer(("0.0.0.0",8000), Handler)

print("Server running on port 8000")

server.serve_forever()