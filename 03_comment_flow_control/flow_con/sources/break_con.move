module flow_con::break_con ;

use std::debug::print;

fun init(_ctx: &mut TxContext) {
    let b = min_factor(10);
    print(&b);
}

fun min_factor(n: u64): u64 {
    let mut i = 2;

    while (i <= n) {
        if (n % i == 0) break ; // 1
        i = i + 1
    };
    // 2
    i
}

