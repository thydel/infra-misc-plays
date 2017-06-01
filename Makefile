top:; @date

SHELL := bash

# strange bug in 2.3 remove role name from file name
all   := (source ~/usr/ext/ansible-stable-2.2/hacking/env-setup -q;
all   +=  ansible-galaxy install -r requirements.yml)
role   = ansible-galaxy remove $@;
role  += $(all)
roles := hg_commit

all:; $($@)
$(roles):; $(role)
.PHONY: all $(roles)

%-toc.md: %-notoc.md; gh-md-toc $< > $@

2toc  = test -f $@ && chmod u+w $@;
2toc += include.awk $< > $@ 
2toc += && chmod a-w $@
%.md: %-notoc.md %-toc.md; $(2toc)

main: HISTORY.md
.PHONY: main
