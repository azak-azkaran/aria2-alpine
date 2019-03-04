# aria2-alpine
Docker image for Aria2 RPC daemon based on the super lightweight Alpine Linux

The following Environment Variables are available:
* __[DOWNLOAD_DIR](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-d)__: Download Folder. Default: __downloads__
* __[CONCURRENT_DOWNLOADS](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-j)__: Set the maximum number of parallel downloads for every queue item. See also the --split option. Default: __4__
* __[SPLIT](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-s)__: Download a file using N connections. If more than N URIs are given, first N URIs are used and remaining URIs are used for backup. If less than N URIs are given, those URIs are used more than once so that N connections total are made simultaneously. Default: __4__
* __[CONNECTIONS_PER_SERVER](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-x)__: The maximum number of connections to one server for each download. Default: __4__
* __[USER_AGENT](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-u)__: Set user agent for HTTP(S) downloads. 
* __[FILE_ALLOCATION](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-file-allocation)__: Specify file allocation method.
* __[AUTO_FILE_RENAMING](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-auto-file-renaming)__: Rename file name if the same file already exists. Default __true__
* __[RPC_SECRET](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-rpc-secret)__: Set RPC secret authorization token
