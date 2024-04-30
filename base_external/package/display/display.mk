
##############################################################
#
# DISPLAY
#
##############################################################


DISPLAY_VERSION = 7ab02ceebdb2db388b8a28937861e69701d68525
DISPLAY_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
DISPLAY_SITE_METHOD = git
DISPLAY_GIT_SUBMODULES = YES

define DISPLAY_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/display all
endef

# Adding I2C display application
define DISPLAY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/display/display.so $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
