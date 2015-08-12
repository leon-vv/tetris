
nanovg/build/libnanovg.a:
	cd nanovg; premake4 gmake; cd build; make nanovg;

tetris: tetris.c nanovg/build/libnanovg.a
	gcc tetris.c -o tetris -lnanovg -lGL -lGLU -lm -lGLEW `pkg-config --libs glfw3` -L ./nanovg/build

