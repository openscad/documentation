subdirs := OpenSCAD_Tutorial/Chapter_1/
sources := $(wildcard $(addsuffix *.scad, $(subdirs)))
objects := $(patsubst %.scad, %.png, $(sources))

.PHONY : all
all : $(objects)

.PHONY : clean
clean :
	rm -f $(objects)

%.png : %.scad
	openscad --render --view axes,scales --imgsize 800,600 -o $@ $<
