defmodule TailcallTest do
  use ExUnit.Case
  doctest Tailcall
  import Tailcall

  test "Tailcall.map returns new list" do
    assert [2,4,6] = map([1,2,3], fn n -> n * 2 end)
  end

  test "Tailcall.each loops over list and returns :done" do
    assert :done = each([1,2,3], fn n -> n end)
  end

  test "Tailcall.fac returns factorial of num" do
    assert 6 == fac(3)
  end

  test"tailcall.len returns length of list" do 
    assert 3 == len([1,2,3])
  end

  test "tailcall.sum returns total of all items in list" do 
    assert 6 == sum([1,2,3])
  end

end
