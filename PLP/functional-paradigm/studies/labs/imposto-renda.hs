import Text.Printf
main:: IO()
main = do
  salario <- readLn :: IO Float
  let impostoPago = calcularImposto salario
  let text1 = "O valor do imposto de renda retido eh: R$"
  let text2 = "O salario liquido eh: R$"
  printf "%s %.2f\n" text1 impostoPago
  printf "%s $%.2f\n" text2 (salario - impostoPago)


calcularImposto:: Float -> Float
calcularImposto salario
  | salario <= 1903.98 = calcularImpostoPorSalario salario 142.80 0.075 1903.99
  | salario <= 3751.05 = calcularImpostoPorSalario salario 354.80 0.15 2826.66
  | salario <= 4664.68 = calcularImpostoPorSalario salario 636.13 0.225 3751.06
  | otherwise = calcularImpostoPorSalario salario 869.36 0.275 4664.68

calcularImpostoPorSalario:: Float -> Float -> Float -> Float -> Float
calcularImpostoPorSalario salario valorFixo porcentagem faixaTributacao = valorFixo + (salario - faixaTributacao) * porcentagem
