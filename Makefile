THEOS_DEVICE_IP = 192.168.2.3
THEOS_DEVICE_PORT = 22

DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ANZpass
ANZpass_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 ANZ"
