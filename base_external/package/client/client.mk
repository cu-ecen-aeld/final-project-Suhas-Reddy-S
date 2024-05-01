
##############################################################
#
# CLIENT
#
##############################################################


CLIENT_VERSION = 3151cb442c7ae2f8390829d459081ae49be51aab
CLIENT_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
CLIENT_SITE_METHOD = git
CLIENT_GIT_SUBMODULES = YES

# Set CFLAGS to include the display directory
TARGET_CFLAGS += -I$(@D)/display
TARGET_CFLAGS += -I$(@D)/motor

define CLIENT_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" -C $(@D)/client all
endef

# Adding client application
define CLIENT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client/client $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
