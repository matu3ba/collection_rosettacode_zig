// http://www.rosettacode.org/wiki/Hello_world/Text#Zig
const std = @import("std");
pub fn main() !void {
    try std.io.getStdOut().writer().writeAll("Hello world!\n");
}
