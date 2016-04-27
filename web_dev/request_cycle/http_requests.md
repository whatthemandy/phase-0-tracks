### What are some common HTTP status codes?
200 OK - successful
301 Moved Permanently - this/all future requests should be directed to new uri
307 Temporary Redirect - requests should temporarily be directed to new uri
400 Bad Request - can't be completed, client error
403 Forbidden - valid request but access is denied
404 Not Found - couldn't be found but might be there in there in the future
503 Service Unavailable - server is down (usually temporary)

### What is the difference between a GET request and a POST request? When might each be used?
GET requests ask for data, and POST requests submit data.  GET might be used for a basic data request that doesn't change anything, and POST would be used when data is being transmitted that will change something.

### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are small pieces of data sent from a website and stored in web browsers while users are browsing the site.  Servers send cookies as HTTP headers in their responses to requests.

