cookie is a string identifier saved in client , browser or app , and is created by server when first request for server,
and then server return a reponse about a key Set-Cookie, browser keeps it in own storage . when browser send request to server again,
it will add this cookie to request header, and server will recognized this request was made by a authed user. 
cookie has many types : session cookie, pesistent cookie and so on. server add expires key-val to make the cookie persistent. 
and the session cookie is only kept in this session, when browser closed, the cookie is lost. 

# XSS     note: the site here is not web-site, rather than host or machine . 
# CSRF    

