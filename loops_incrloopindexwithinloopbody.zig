// naive port from the C solution
const std = @import("std");

const Limit = 42;

fn isPrime(n: u64) bool {
    if (n % 2 == 0) return n == 2;
    if (n % 3 == 0) return n == 3;
    var d: u64 = 5;
    while (d * d <= n) {
        if (n % d == 0) return false;
        d += 2;
        if (n % d == 0) return false;
        d += 4;
    }
    return true;
}
pub fn main() !void {
    const stdout_wr = std.io.getStdOut().writer();
    var i: u64 = Limit;
    var n: i32 = 0;
    while (n < Limit) : (i += 1) {
        n += 1;
        try stdout_wr.print("n = {2d} {19d}\n", .{ n, i });
        i += i - 1;
    }
}
