int unint_global;
int init_global = 10;

int foo( int local) {
    return local + unint_global + init_global;
}