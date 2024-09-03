const std = @import("std");
const pkg = @import("add");

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit();
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

test "basic add functionality" {
    try std.testing.expect(pkg.add(3, 7) == 10);
}
