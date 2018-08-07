CC = g++
BIN = bin
CXXFLAGS = -std=c++11
OBJS_MAIN = root/obj/dual.o root/obj/tools.o root/obj/main.o 

all : main 

main : $(BIN) 
	$(MAKE) -C root obj obj/dual.o obj/tools.o obj/main.o 
	$(CC) -o $(BIN)/main $(OBJS_MAIN) $(CXXFLAGS)

$(BIN) : 
	if [ ! -d $(BIN) ]; then mkdir $(BIN); fi

clean : 
	$(MAKE) -C root clean
	if [ -d $(BIN) ]; then rm $(BIN) -r; fi

.PHONY : all
.PHONY : main
.PHONY : clean

