export fn d(n: usize, buf: [*]c_int) void {
    var i: usize = 0;
    while (i < n) {
        buf[i] = @intCast(c_int, (i + 9) % 10);
        i += 1;
    }
}
