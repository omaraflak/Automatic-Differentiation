#include "../include/sgd.h"

void SGD::decrease(Dual (*function)(std::vector<Dual>), std::vector<Dual>& x, int epochs, double lr){
    for(int i=0 ; i<epochs ; i++){
        for(Dual& var : x){
            var.setDerivative(1);
            var -= lr*function(x).getDerivative();
            var.setDerivative(0);
        }
    }
}
