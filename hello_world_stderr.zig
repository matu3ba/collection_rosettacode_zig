// http://www.rosettacode.org/wiki/Hello_world/Standard_error#Zig
const std = @import("std");
pub fn main() !void {
    try std.io.getStdErr().writer().writeAll("Goodbye, World!\n");
    // debug messages are also printed to stderr
    //std.debug.print("Goodbye, World!\n");
}
