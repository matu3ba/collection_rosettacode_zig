const std = @import("std");

pub fn main() !void {
    const cnt_lower = 26;
    var lower: [cnt_lower]u8 = undefined;
    comptime {
        var l: u8 = 0;
        var i: u8 = 0;
        while (i < 128) : (i += 1) {
            if (std.ascii.isLower(i)) {
                lower[l] = i;
                l += 1;
            }
        }
    }

    const stdout_wr = std.io.getStdOut().writer();
    for (lower) |l|
        try stdout_wr.print("{c} ", .{l});
    try stdout_wr.writeByte('\n');
}
