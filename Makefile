CC = g++
ODIR = obj
PROG = main
CXXFLAGS = -Wall -Wextra -std=c++11

OBJS = $(ODIR)/dual.o $(ODIR)/main.o $(ODIR)/sgd.o 
$(PROG) : $(ODIR) $(OBJS)
	$(CC) -o $@ $(OBJS) $(CXXFLAGS)

$(ODIR)/dual.o : ./src/dual.cpp ./include/dual.h 
	$(CC) -c ./src/dual.cpp -o $@ $(CXXFLAGS)

$(ODIR)/main.o : ./src/main.cpp ./include/dual.h ./include/sgd.h 
	$(CC) -c ./src/main.cpp -o $@ $(CXXFLAGS)

$(ODIR)/sgd.o : ./src/sgd.cpp ./include/sgd.h 
	$(CC) -c ./src/sgd.cpp -o $@ $(CXXFLAGS)

$(ODIR) :
	if [ ! -d $(ODIR) ]; then mkdir $(ODIR); fi

.PHONY : clean
clean :
	if [ -d $(ODIR) ]; then rm $(ODIR) -r; fi
	if [ -f $(PROG) ]; then rm $(PROG); fi

