defmodule Aula2Test do
  use ExUnit.Case
  doctest Aula2

  describe "sum_multiples/1 - soma dos múltiplos de 3 ou 5 abaixo de um número" do
    test "retorna 2418 para números abaixo de 100" do
      assert Aula2.sum_multiples(100) == 2418
    end

    test "retorna 593 para números abaixo de 50" do
      assert Aula2.sum_multiples(50) == 593
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.sum_multiples('50') == "valor invalido"
    end
  end

  describe "sum_even_fibonacci/1 - soma dos termos pares de Fibonacci até um número" do
    test "retorna 4613732 para números até 4 milhões" do
      assert Aula2.sum_even_fibonacci(4_000_000) == 4_613_732
    end

    test "retorna 188 para números até 400" do
      assert Aula2.sum_even_fibonacci(400) == 188
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.sum_even_fibonacci('400') == "valor invalido"
    end
  end

  describe "prime_factor/1 - maior fator primo de um número" do
    test "retorna 6857 para o maior fator primo de 600851475143" do
      assert Aula2.prime_factor(600_851_475_143) == 6857
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.prime_factor('600_851_475_143') == "valor invalido"
    end
  end

  describe "palindromo/2 - maior palíndromo produto de dois números de 3 dígitos" do
    test "retorna 906609 para o maior palíndromo produto de dois números de 3 dígitos" do
      assert Aula2.palindromo(100..999, 100..999) == 906_609
    end
  end

  describe "smallest_number_divisible/1 - menor número divisível por um número" do
    test "retorna 232792560 para o menor número divisível por 1..20" do
      assert Aula2.smallest_number_divisible(20) == 232_792_560
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.smallest_number_divisible("20") == "valor invalido"
    end
  end

  describe "diference_between_square_and_sum/1 - diferença entre o quadrado da soma e a soma dos quadrados dentro de algum número natural" do
    test "diferença entre o quadrado da soma e a soma dos quadrados dos 100 primeiros naturais" do
      assert Aula2.diference_between_square_and_sum(100) == 25_164_150
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.diference_between_square_and_sum("100") == "valor invalido"
    end
  end

  describe "biggest_prime_number/1 - maior número primo" do
    test "10001º número primo" do
      assert Aula2.biggest_prime_number(10001) == 104_759
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.biggest_prime_number("10001") == "valor invalido"
    end
  end

  describe "sum_of_primes/1 - soma de todos os primos abaixo de um número" do
    test "soma de todos os primos abaixo de dois milhões" do
      assert Aula2.sum_of_primes(2_000_000) == 142_913_828_922
    end

    test "retorna erro para valor inválido (string)" do
      assert Aula2.sum_of_primes("2000000") == "valor invalido"
    end
  end
end
