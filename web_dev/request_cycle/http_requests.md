1. Common HTTP status codes include:
  * 4xx: Client Error
    + 400 Bad Request - HTTP request was sent with invalid syntax
    + 401 Unauthorized - User trying to access the resource has not been authenticated, or has not been authenticated correctly. User must provide credentials to be able to view the protected resource.
    + 403 Forbidden: 
      - Valid request was made, but server is refusing to serve the request due to a lack of permission to access the requested resource. 
      - .htaccess file has been used to deny access of certain resources to specific IP addresses or ranges. 
      - user is trying to access a directory that does not have a default index file, and directory listings are not enabled.
    + 404 Not Found - user is able to communicate with the server, but is unable to locate the requested file or resource.
  * 5xx: Server Error
    + 500 Internal Server Error - server cannot process the request for an unknown reason. 
    + 502 Bad Gateway - server is a gateway or proxy server, and it is not receiving a valid response from the back-end servers that should actually fulfill the request.
    + 503 Service Unavailable - 
    - server is overloaded or under maintenance. This error implies that the service should become available at some point.
    - if server is not under maintenance, this can indicate that the server does not have enough CPU or memory resources to handle all of the incoming requests, or that the web server needs to be configured to allow more users, threads, or processes.
    + 504 Gateway Timeout - server is a gateway or proxy server, and it is not receiving a response from the back-end servers within the allowed time period.

2. GET requests data from a specified resource and POST submits data to be processed to a specified resource. 
  * A GET request is sent out in the URL so it is not as secure, but can be bookmarked because of this. This means it can be useful to use GET requests when a user is making a request that does not involve passwords. Information such as narrowing down a bunch of search results on a website could be a situation where using a GET request is useful.
  * A POST request is more secure since the parameters are not store in the browser history or the web server logs. An example of when to use a POST request is to submit personal information such as passwords and self-identifying information.

3. A cookie is a small piece of data that is sent from a website and stored in the user's web browser. Every time the user loads that website, that cookie is sent back to the server to notify the server of the user's previous activity.
Cookies can store information on the user such as items added to shopping card, passwords, or credit card information. Authentication cookies are the most common method for web servers to know whether a user is logged in or not, and what account they are logged into.