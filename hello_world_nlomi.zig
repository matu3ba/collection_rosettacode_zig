// http://www.rosettacode.org/wiki/Hello_world/Newline_omission#Zig
const std = @import("std");
pub fn main() !void {
    try std.io.getStdOut().writer().writeAll("Hello world!");
}
