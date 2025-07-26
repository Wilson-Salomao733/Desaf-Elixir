defmodule Aula1 do
  def exercicio1 do
    1..1000
    |> Enum.filter(fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end)
    |> Enum.sum()
  end

  def exercicio2 do
    Stream.unfold({1, 2}, fn {a, b} ->
      if a > 4_000_000 do
        nil
      else
        {a, {b, a + b}}
      end
    end)
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.sum()
  end

  def exercicio3 do
    fator_primo(600_851_475_143)
  end

  defp fator_primo(n, divisor \\ 2) do
    cond do
      divisor * divisor > n -> n
      rem(n, divisor) == 0 -> fator_primo(div(n, divisor), divisor)
      true -> fator_primo(n, divisor + 1)
    end
  end

  def exercicio4 do
    for(a <- 100..999, b <- 100..999, do: a * b)
    |> Enum.filter(&palindromo?/1)
    |> Enum.max()
  end

  defp palindromo?(n) do
    s = Integer.to_string(n)
    s == String.reverse(s)
  end

  def exercicio5 do
    Enum.reduce(1..20, 1, &mmc/2)
  end

  defp mmc(a, b), do: div(a * b, mdc(a, b))
  defp mdc(a, 0), do: a
  defp mdc(a, b), do: mdc(b, rem(a, b))

  def exercicio6 do
    soma = Enum.sum(1..100)
    quadrado_soma = soma * soma
    soma_quadrados = Enum.sum(Enum.map(1..100, &(&1 * &1)))
    quadrado_soma - soma_quadrados
  end

  def exercicio7 do
    primos =
      Stream.iterate(2, &(&1 + 1))
      |> Stream.filter(&primo?/1)
      |> Enum.take(10_001)

    List.last(primos)
  end

  defp primo?(n) when n < 2, do: false
  defp primo?(2), do: true

  defp primo?(n) do
    max = :math.sqrt(n) |> trunc
    Enum.all?(2..max, fn x -> rem(n, x) != 0 end)
  end

  def exercicio8 do
    numero =
      """
      73167176531330624919225119674426574742355349194934
      96983520312774506326239578318016984801869478851843
      85861560789112949495459501737958331952853208805511
      12540698747158523863050715693290963295227443043557
      66896648950445244523161731856403098711121722383113
      62229893423380308135336276614282806444486645238749
      30358907296290491560440772390713810515859307960866
      70172427121883998797908792274921901699720888093776
      65727333001053367881220235421809751254540594752243
      52584907711670556013604839586446706324415722155397
      53697817977846174064955149290862569321978468622482
      83972241375657056057490261407972968652414535100474
      82166370484403199890008895243450658541227588666881
      16427171479924442928230863465674813919123162824586
      17866458359124566529476545682848912883142607690042
      24219022671055626321111109370544217506941658960408
      07198403850962455444362981230987879927244284909188
      84580156166097919133875499200524063689912560717606
      05886116467109405077541002256983155200055935729725
      71636269561882670428252483600823257530420752963450
      """
      |> String.replace("\n", "")

    digits = String.graphemes(numero) |> Enum.map(&String.to_integer/1)

    Enum.chunk_every(digits, 13, 1, :discard)
    |> Enum.map(&Enum.product/1)
    |> Enum.max()
  end

  def exercicio9 do
    for(
      a <- 1..998,
      b <- (a + 1)..999,
      c = 1000 - a - b,
      a < b and b < c,
      a * a + b * b == c * c,
      do: a * b * c
    )
    |> List.first()
  end

  def exercicio10 do
    limite = 2_000_000
    primos = :math.sqrt(limite) |> trunc
    sieve = Enum.to_list(2..(limite - 1))

    crivo(sieve, primos)
    |> Enum.sum()
  end

  defp crivo([], _), do: []
  defp crivo([h | t], max) when h > max, do: [h | t]

  defp crivo([h | t], max) do
    [h | crivo(Enum.reject(t, fn x -> rem(x, h) == 0 end), max)]
  end
end
