PLT_FILES := $(wildcard *.plt)

all: $(PLT_FILES)
	gnuplot $<

