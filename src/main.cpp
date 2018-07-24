#include <iostream>
#include "../include/dual.h"
#include "../include/sgd.h"

Dual function(std::vector<Dual> x){
    return x[0]*x[0]+x[1]*x[1]; // x^2 + y^2
}

int main() {
    std::vector<Dual> x = {Dual(50), Dual(50)}; // 50 are the default values
    SGD::decrease(function, x, 10, 0.7); // 10 iterations, 0.7 learning rate
    std::cout << "f = " << function(x) << std::endl;
    for(unsigned int i=0 ; i<x.size() ; i++){
        std::cout << "x[" << i << "] = " << x[i] << std::endl;
    }
    return 0;
}
