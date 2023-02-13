export fn d(n: usize, buf: [*]c_int, init: c_int) void {
    var i: usize = 0;
    while (i < n) {
        buf[i] = @mod(@intCast(c_int, i) + init, 10);
        i += 1;
    }
}
