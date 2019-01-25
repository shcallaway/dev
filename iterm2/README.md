# [iTerm 2](https://iterm2.com/)

> A terminal emulator for macOS that does amazing things.

## plist

plist (Property List) is how macOS applications store preferences. You should move `com.googlecode.iterm2.plist` to `~/Library/Preferences/com.googlecode.iterm2.plist` and input this path into the "Load preferences from a custom folder or URL" field within the iTerm preferences window.

## Dynamic Profiles

Dynamic Profiles allow you to store iTerm profiles as JSON outside of the usual macOS preferences database. They are essentially plist files in JSON format. If you prefer this method, you should refer to [this documentation](https://www.iterm2.com/documentation-dynamic-profiles.html).

