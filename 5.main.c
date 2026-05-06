int unint_global;
int init_global = 10;

int foo( int local) {
    return local + unint_global + init_global;
}

extern char _data_src_start_;
extern char _data_dst_start_;
extern char _data_dst_end_;

void _load_data() {
    /*char *src = _data_src_start_ ; */ // this is wront
    char *src = &_data_src_start_ ; // & address should be used
    char *dst = &_data_dst_start_ ;
    char *dst_end = &_data_dst_end_;

    while (dst != dst_end) {
        *dst = *src;
        dst++;
        src++;
    }
}