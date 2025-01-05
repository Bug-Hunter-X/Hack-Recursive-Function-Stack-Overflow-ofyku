function foo(x: int): int {
  if (x < 0) {
    return -1; // Or throw an exception
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5);
}

This improved version includes a check for negative input (x < 0). If a negative number is provided, the function returns -1 (an error indicator). You could also choose to throw an exception for more robust error handling.  This prevents the infinite recursion and the resulting stack overflow.