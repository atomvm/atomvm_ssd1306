COMPONENT_ADD_INCLUDEDIRS := nifs/include ../../main
COMPONENT_ADD_LDFLAGS = -Wl,--whole-archive -l$(COMPONENT_NAME) -Wl,--no-whole-archive
COMPONENT_SRCDIRS := nifs
CXXFLAGS += -fno-rtti
