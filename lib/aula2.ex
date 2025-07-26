defmodule Aula2 do

  @spec sum_multiples(any()) :: integer()
  def sum_multiples(n) do
    if is_integer(n) do
    1..n
    |> Enum.filter(fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end)
    |> Enum.sum()
    else
      "valor invalido"
    end
  end

  @spec sum_even_fibonacci(any()) :: integer()
  def sum_even_fibonacci (n) do
    if is_integer(n) do
    Stream.unfold({1, 2}, fn {a, b} ->
      if a > n do
        nil
      else
        {a, {b, a + b}}
      end
    end)
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.sum()
    else
      "valor invalido"
    end
  end

  @spec prime_factor(any()) :: integer()
  def prime_factor (n) do
    if is_integer(n) do
      fator_primo(n)
    else
     "valor invalido"
    end
  end

  defp fator_primo(n, divisor \\ 2) do
    cond do
      divisor * divisor > n -> n
      rem(n, divisor) == 0 -> fator_primo(div(n, divisor), divisor)
      true -> fator_primo(n, divisor + 1)
    end
  end

  def palindromo(a, b) do
    if (is_list(a) or is_struct(a, Range)) and (is_list(b) or is_struct(b, Range)) do
      (for a <- a, b <- b, do: a * b)
    ## Aqui tem que ter passado uma lista Ex:Aula2.exercicio4(100..999, 100..999)
    |> IO.inspect()
    |> Enum.filter(&palindromo?/1)
    |> Enum.max()
    else
      "valor invalido, passe uma lista ex:1..999"
    end
  end

  defp palindromo?(n) do
    s = Integer.to_string(n)
    s == String.reverse(s)
  end

  def smallest_number_divisible(n) do
    if is_integer(n) do
    Enum.reduce(1..n, 1, &mmc/2)
    else
      "valor invalido"
    end
  end

  defp mmc(a, b), do: div(a * b, mdc(a, b))
  defp mdc(a, 0), do: a
  defp mdc(a, b), do: mdc(b, rem(a, b))

  def diference_between_square_and_sum(n) do
    if is_integer(n) do
    soma = Enum.sum(1..n)
    quadrado_soma = soma * soma
    soma_quadrados = Enum.sum(Enum.map(1..n, &(&1 * &1)))
    quadrado_soma - soma_quadrados
    else
      "valor invalido"
    end
  end

  def biggest_prime_number(n) do
    if is_integer(n) do
    primos = Stream.iterate(2, &(&1 + 1))
    |> Stream.filter(&primo?/1)
    |> Enum.take(n)
    List.last(primos)
    else
      "valor invalido"
    end
  end

  defp primo?(n) when n < 2, do: false
  defp primo?(2), do: true
  defp primo?(n) do
    max = :math.sqrt(n) |> trunc
    Enum.all?(2..max, fn x -> rem(n, x) != 0 end)
  end

  def exercicio8(numero, tamanho_janela) do
    if is_integer(numero) and is_integer(tamanho_janela) do
    numero
    |> to_string()
    |> String.replace("\n", "")
    |> String.graphemes()
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk_every(tamanho_janela, 1, :discard)
    |> Enum.map(&Enum.product/1)
    |> Enum.max()
    else
      "valor invalido"
    end
  end

  def exercicio9 do
    (for a <- 1..998, b <- (a+1)..999, c = 1000 - a - b, a < b and b < c, a * a + b * b == c * c, do: a * b * c)
    |> List.first()
  end

  def sum_of_primes(n) do
    if is_integer(n) do
    limite = n
    primos = :math.sqrt(limite) |> trunc
    sieve = Enum.to_list(2..limite-1)
    crivo(sieve, primos)
    |> Enum.sum()
    else
      "valor invalido"
    end
  end

  defp crivo([], _), do: []
  defp crivo([h | t], max) when h > max, do: [h | t]
  defp crivo([h | t], max) do
    [h | crivo(Enum.reject(t, fn x -> rem(x, h) == 0 end), max)]
  end
end
