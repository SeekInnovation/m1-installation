# Trackpad configuration
Definitely turn on 'Tap to click' for faster clicks.
Maybe increase tracking speed (I'm just under the mean level).

# Keyboard

## Repeat
I set the repeat delay to minimum and the repeat speed to maximum.

## Function keys by default
Execute shortcuts more easily by using function keys by default and only using the meta-functions while also pressing the fn-key.
Open 'Keyboard' in the settings, then check the box marked “Use all F1, F2, etc. keys as standard function keys.”.

## Turn off fn as language key (emoji popup)
If you accidentally press fn, a emoji popup will open up.
You can turn it off at 'System Preferences -> Press (language key symbol)' to 'Do nothing'.

## Re-map fn and caps-lock
In Keyboard -> modifiers you can re-map the modifiers, e.g.
* fn -> control
* caps-lock -> fn
I personally neither need nor want caps-lock, so I prefer an additional control button which is hard to reach for me.

# Disable Language Switcher popup
https://apple.stackexchange.com/questions/466101/removing-language-icon-from-input-fields-after-upgrading-to-macos-sonoma
```bash
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0
```

# Hostname
The default hostname is long and not personal.
You can change it under 'System Preferences' > 'Sharing' at the top in the field 'Computer Name'.
https://support.apple.com/guide/mac-help/change-computers-local-hostname-mac-mchlp2322/mac
