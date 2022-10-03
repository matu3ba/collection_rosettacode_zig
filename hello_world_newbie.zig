// http://www.rosettacode.org/wiki/Hello_world/Newbie#Zig
// - Install zig from https://ziglang.org/download/.
// - Extract into your path
// - `zig run newbie.zig`
const std = @import("std");
pub fn main() !void {
    const stdout = std.io.getStdOut();
    // `try` is a shorthand for `fn_call() catch |err| return err;`.
    // See also documentation for `catch`, `defer` and `errdefer`
    // for code flow adjustments
    try stdout.writer().writeAll("Hello world!\n");
}

const std = @import("std");
pub fn main() !void {
    // If you only want to quickly debug things and panic on failure,
    // you can use `debug.print` to print to standard error
    // Dont use debug code in production.
    std.debug.print("Hello, world!\n", .{});
}
