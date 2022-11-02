# veracrypt_browser_cache

creates, formats, and mounts a temporary veracrypt drive that can be scheduled (scheduled to run with highest privileges) to run on startup to provide an empty/clean cache to your browser on every windows restart

windows

1. install git desktop or other source of openssl.exe
2. launch Task Scheduler, create task
3. configure to run with highest privileges, and to run whether user is logged on or not
4. configure trigger to run on system start
5. configure action to start a program and locate the vera.cmd
6. edit vera.cmd to provide the path to where openssl.exe is located.  increase the default 200M to meet your needs
7. reboot or run the scheduled task

firefox

1. about:config
2. create a string for browser.cache.disk.parent_directory
3. set to r:\
4. restart firefox
5. check path is used in about:cache

chrome

1. add the following parameter to the chrome shortcut
    --disk-cache-dir="r:\" --disk-cache-size=20485760
    
    

