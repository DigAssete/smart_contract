import Debug "mo:base/Debug";
import CanisterName "canister:canister_name";

test "greet function" {
  let result = await CanisterName.greet("Alice");
  Debug.print(debug_show(result));
  assert(result == "Hello, User!");
}