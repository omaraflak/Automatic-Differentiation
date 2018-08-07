CC = g++
ODIR = obj
CXXFLAGS = -std=c++11
OBJS = $(ODIR)/dual.o $(ODIR)/tools.o $(ODIR)/main.o 

all : $(ODIR) $(OBJS) 

$(ODIR)/dual.o : src/dual.cpp include/dual.h 
	$(CC) -c $< -o $@ $(CXXFLAGS)

$(ODIR)/tools.o : src/tools.cpp include/tools.h 
	$(CC) -c $< -o $@ $(CXXFLAGS)

$(ODIR)/main.o : src/main.cpp include/dual.h include/tools.h 
	$(CC) -c $< -o $@ $(CXXFLAGS)

$(ODIR) : 
	if [ ! -d $(ODIR) ]; then mkdir $(ODIR); fi

clean : 
	if [ -d $(ODIR) ]; then rm $(ODIR) -r; fi

.PHONY : all
.PHONY : clean

