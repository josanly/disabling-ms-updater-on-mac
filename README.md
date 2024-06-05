# Disabling Microsoft AutoUpdate on Mac

Sometimes `Microsoft AutoUpdate` is annoying. It pops when you do not want it does. 

I made a small and simple `Bash` script to easy switch it on/off: `on-off-microsoft-update.bash`

It is a very basic script which rename the application file (`/System/Volumes/Data/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app`). 

# Install

Easy to install, you only need to download the script and save it where you want to store it on your Mac.

Then you need to change the permissions to be able to run it.

```Bash
chmod a+x /path/to/on-off-microsoft-update.bash
```

# Usage

To run the script:

* Open a terminal
* Execute the script with the mode you want to activate (`on`/`off`)

```Bash
/path/to/on-off-microsoft-update.bash on    # activate MS Updater
/path/to/on-off-microsoft-update.bash off   # deactivate MS Updater
```
