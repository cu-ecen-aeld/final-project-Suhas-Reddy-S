
##############################################################
#
# MOTOR
#
##############################################################


MOTOR_VERSION = aed012aa2ce86f636b78e34a4d314a251163f68a
MOTOR_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
MOTOR_SITE_METHOD = git
MOTOR_GIT_SUBMODULES = YES

# Set CFLAGS to include the display directory
TARGET_CFLAGS += -I$(@D)/display

# Make sure that the display object files are compiled
define MOTOR_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" -C $(@D)/motor all
endef

# Adding pwm motor bash script and speed control application
define MOTOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/motor/motor.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/motor/speed_control $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))