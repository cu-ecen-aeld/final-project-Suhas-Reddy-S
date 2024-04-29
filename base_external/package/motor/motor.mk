
##############################################################
#
# MOTOR
#
##############################################################


MOTOR_VERSION = 65fdc2c36efc50c12dbbbd53bc5c89f6b754a715
MOTOR_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
MOTOR_SITE_METHOD = git
MOTOR_GIT_SUBMODULES = YES

define MOTOR_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/motor all
endef

# Adding pwm motor bash script and application
define MOTOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/motor/motor.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/motor/speed_control $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))