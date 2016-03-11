#!/usr/bin/python3

from http.server import BaseHTTPRequestHandler, HTTPServer
PORT_NUMBER = 8080

class myHandler(BaseHTTPRequestHandler):

	#Handler for the GET requests
	def do_GET(self):
		self.send_response(200)
		self.send_header('Content-type','text/html')
		self.end_headers()
		# Send the html message
		self.wfile.write("sugar magnolia".encode())

try:
    server = HTTPServer(('', PORT_NUMBER), myHandler)
    server.serve_forever()
except KeyboardInterrupt:
    server.socket.close()
