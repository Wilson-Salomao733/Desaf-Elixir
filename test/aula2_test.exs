defmodule Aula2Test do
  use ExUnit.Case
  doctest Aula2


  test "exercicio1 soma dos múltiplos de 3 ou 5 abaixo de 1000" do
    assert Aula2.exercicio1(100) == 2418
    assert Aula2.exercicio1(50) == 593
    assert Aula2.exercicio1("50") == "valor invalido"
  end

  test "exercicio2 soma dos termos pares de Fibonacci até 4 milhões" do
    assert Aula1.exercicio2() == 4613732
  end

  test "exercicio3 maior fator primo de 600851475143" do
    assert Aula1.exercicio3() == 6857
  end

  test "exercicio4 maior palíndromo produto de dois números de 3 dígitos" do
    assert Aula1.exercicio4() == 906609
  end

  test "exercicio5 menor número divisível por 1..20" do
    assert Aula1.exercicio5() == 232792560
  end

  test "exercicio6 diferença entre o quadrado da soma e a soma dos quadrados dos 100 primeiros naturais" do
    assert Aula1.exercicio6() == 25164150
  end

  test "exercicio7 10001º número primo" do
    assert Aula1.exercicio7() == 104759
  end

  test "exercicio8 maior produto de 13 dígitos adjacentes" do
    assert Aula1.exercicio8() == 23514624000
  end

  test "exercicio9 produto do triplo pitagórico para o qual a + b + c = 1000" do
    assert Aula1.exercicio9() == 31875000
  end

  test "exercicio10 soma de todos os primos abaixo de dois milhões" do
    assert Aula1.exercicio10() == 142913828922
  end
end
