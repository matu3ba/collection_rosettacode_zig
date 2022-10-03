const std = @import("std");
const File = std.fs.File;

fn demonstrate(array: [][]const u8, outfile: File) !void {
    const stdout_wr = outfile.writer();
    // field access
    // slice access
    // sorting
    // printing
    try stdout_wr.print("fruit.len = {d}\n", .{array.len});
}

pub fn main() !void {
    //var arena_instance = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    //defer arena_instance.deinit();
    //const arena = arena_instance.allocator();
    // left hand side type can be ommitted
    const fruit1: [2][]const u8 = [_][]const u8{ "apples", "oranges" };
    const stdout = std.io.getStdOut();
    demonstrate(&fruit1, stdout);

    //const fruit2 = arena.alloc(
}
