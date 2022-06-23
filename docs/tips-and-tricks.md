# Trackpad configuration
Definitely turn on 'Tap to click' for faster clicks.
Maybe increase tracking speed (I'm just under the mean level).

# Function keys by default
Execute shortcuts more easily by using function keys by default and only using the meta-functions while also pressing the fn-key.
Open 'Keyboard' in the settings, then check the box marked “Use all F1, F2, etc. keys as standard function keys.”.

# Turn off fn as language key (emoji popup)
If you accidentally press fn, a emoji popup will open up.
You can turn it off at 'System Preferences -> Press (language key symbol)' to 'Do nothing'.

# Karabiner-Elements to customize keyboard and to configure custom global shortcuts
WARNING: there is currently no do-not-disturb key in karabiner-elements, so it will break that function. https://github.com/pqrs-org/Karabiner-Elements/issues/2516#issuecomment-750303670

https://karabiner-elements.pqrs.org/
brew install --cask karabiner-elements

Launch it (e.g. via Spotlight search), then follow the instructions to actually enable it.
I had to add karabiner_grabber manually to the list of applications that are allowed to use 'Input Monitoring'.

In the simple modifications I changed:
* fn to left_control
* caps_lock to fn

This makes it more consistent to do common actions like `control+tab` as you can hit either key.

