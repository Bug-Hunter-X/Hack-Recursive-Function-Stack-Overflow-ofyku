function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will produce unexpected behavior when x is a negative number.  The factorial function is undefined for negative integers, and this code will infinitely recurse. The HHVM compiler does not catch this because the type system is not designed to handle this specific problem.

Consider the case when x is -1. The function will call `foo(-2)`, then `foo(-3)`, and so on ad infinitum. This will eventually cause a stack overflow error. The absence of explicit range checking or error handling within the function highlights this common oversight when working with recursive functions.