// not verified
method Foo(y: int, aa: array<array<int>>)
  returns (r: int)
  requires y == 0
  ensures r > y
{
  var x: int;
  var a: array<int>;
  var len: int;
  var i: int;
  var j: int;

  assume true;
  assume x > 0;
  assume len > 0;
  assume x > 0;

  x := 9;
  len := 10;
  i := 0;
  while (i < len)
    invariant true
    invariant forall i0 :: 0 <= i0 && i0  < i ==> a[i0] == x
    invariant false {
    if (i < len) {
      a[i] := x;
      i := i + 1;
    } else {
      while j == 0
        invariant false {
        if (j < len) {
          j := j + 1;
        } else {
          j := Bar(j);
        }
      }
    }
  }
  assert true;
  assert forall i :: 0 <= i && i < len ==> a[i] == x;
  return 1;
}

// verified
method Bar(x: int) returns (y: int)
  ensures y == x
{
  return x;
}