PRJ=assertions

all: test

compil::
	gprbuild.exe -j4 -g -gnatef $(PRJ).gpr

clean::
	gprclean.exe $(PRJ).gpr

test: compil
	cd $(PRJ)_test && make run
