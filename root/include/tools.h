#ifndef GRADIENT
#define GRADIENT

#include "dual.h"
#include <vector>

namespace SGD {
    void decrease(Dual (*function)(std::vector<Dual>), std::vector<Dual>& x, int epochs, double lr);    
}

#endif
