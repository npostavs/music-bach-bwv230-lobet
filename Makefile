

paper-size ?= $(shell cat /etc/papersize)

LYFLAGS := -dpaper-size=\"$(paper-size)\"
LYFLAGS += -dno-point-and-click

all : bach_BWV_230_Lobet_den_Herrn_alle_Heiden.pdf
%.pdf : %.ly
	lilypond $(LYFLAGS) $<

clean :
	-rm *.pdf *.midi
.PHONY : all clean
