############################################################
#
# Makefile
# 
#
############################################################

TARGETS := \
	minMaxMean

GHC := stack ghc -- \
	--make \
	-O0 \
	-Wall \
	-Werror \
	-Wno-name-shadowing \
	-Wno-type-defaults

.PHONY: all
all: $(addsuffix .out,$(TARGETS))

define make_target
$(1).out: $(1).hs
	${GHC} -o $$@ $$<
ALL_OBJS += $(1).hi $(1).o $(1).out
endef
$(foreach t,$(TARGETS),$(eval $(call make_target,$(t))))

clean:
	@rm -rf $(ALL_OBJS)
