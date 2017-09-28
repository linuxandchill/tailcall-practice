defmodule Tailcall do
  @moduledoc """
    tail-call optimized recursive functions
  """

  @doc """
    loops over list and returns :done
  """
  def each([], _func), do: :done
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  @doc """
  returns factorial product of num
  """
  def fac(num, prod \\ 1)
  def fac(0, prod), do: prod
  def fac(num, prod) do
    fac(num - 1, num * prod)
  end

  @doc """
  finds length of list
  """
  def len(list), do: len(list, 0)
  def len([], count), do: count
  def len([_head|tail], count) do
    len(tail, count + 1)
  end

  @doc """
    returns total of all items in list added up
  """
  def sum(list), do: sum(list, 0)
  def sum([], total), do: total
  def sum([head | tail], total) do
    sum(tail, head + total)
  end

  @doc """
  returns new, modded, list
  """
  def map(list, func), do: map(list, func, [])

  def map([], _func,  acc) do
    :lists.reverse(acc)
  end

  def map([head|tail], func, acc) do
    map(tail, func, [func.(head) | acc])
  end

end
