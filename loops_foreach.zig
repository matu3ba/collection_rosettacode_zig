const std = @import("std");

pub fn main() !void {
    const stdout_wr = std.io.getStdOut().writer();

    // 1. The index size is comptime-known
    const a1: []const u8 = &[_]u8{ 'a', 'b', 'c' };
    // also works with slices
    //const a2: [] u8 = &a1;
    for (a1) |el_a|
        try stdout_wr.print("{c}\n", .{el_a});
    // Convention is to provide a `next()` method, if we dont
    // have comptime-known index sizes
    // TODO
}
