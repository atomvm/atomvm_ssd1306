# `ssd1306_inversion_example`

This small example shows how you can inverse the screen display without affecting other contents of the display.

When display is invested, all bits with value `1` are interpreted as pixel turned off, while bits with value `0` are pixels turned on.

For this application, you will need the same setup and tools as with the main `ssd1306_example` project.
Please refer to README.md there.

If all goes according to plan, congratulations -- your SSD1306 display should be alternating between text on black background and black text on bright background every second.
