int uninit_global;
int init_global = 10;

int foo(int local) {
    return local + uninit_global + init_global;
}