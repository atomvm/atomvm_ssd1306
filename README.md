# AtomVM SSD1306 Driver

This AtomVM drivers is provided both as a NIF and as a pure Erlang library. It can be used to drive an SSD1306 display on the ESP32 SoC for any Erlang/Elixir programs targeted for AtomVM on the ESP32 platform.

This Nif is included as an add-on to the AtomVM base image.  In order to use this Nif in your AtomVM program, you must be able to build the AtomVM virtual machine, which in turn requires installation of the Espressif IDF SDK and tool chain.

Documentation for this component can be found in the following sections:

* [Programmer's Guide](markdown/ssd1306.md)
* [Example Program](examples/ssd1306_example/README.md)
