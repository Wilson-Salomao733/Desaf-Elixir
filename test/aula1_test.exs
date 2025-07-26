defmodule Aula1Test do
  use ExUnit.Case
  doctest Aula1

  test "exercicio1 soma dos múltiplos de 3 ou 5 abaixo de 1000" do
    assert Aula1.exercicio1() == 234_168
  end

  test "exercicio2 soma dos termos pares de Fibonacci até 4 milhões" do
    assert Aula1.exercicio2() == 4_613_732
  end

  test "exercicio3 maior fator primo de 600851475143" do
    assert Aula1.exercicio3() == 6857
  end

  test "exercicio4 maior palíndromo produto de dois números de 3 dígitos" do
    assert Aula1.exercicio4() == 906_609
  end

  test "exercicio5 menor número divisível por 1..20" do
    assert Aula1.exercicio5() == 232_792_560
  end

  test "exercicio6 diferença entre o quadrado da soma e a soma dos quadrados dos 100 primeiros naturais" do
    assert Aula1.exercicio6() == 25_164_150
  end

  test "exercicio7 10001º número primo" do
    assert Aula1.exercicio7() == 104_759
  end

  test "exercicio8 maior produto de 13 dígitos adjacentes" do
    assert Aula1.exercicio8() == 23_514_624_000
  end

  test "exercicio9 produto do triplo pitagórico para o qual a + b + c = 1000" do
    assert Aula1.exercicio9() == 31_875_000
  end

  test "exercicio10 soma de todos os primos abaixo de dois milhões" do
    assert Aula1.exercicio10() == 142_913_828_922
  end
end
