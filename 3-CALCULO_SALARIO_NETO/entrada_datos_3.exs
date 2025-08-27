defmodule Entrada_datos do
  def main() do
    nombre = Util.ingresar("Ingrese el nombre del empleado: ", :texto)

    horas_trabajadas =
      Util.ingresar("Ingrese las horas trabajadas: ", :entero) 

    tarifa_por_hora = Util.ingresar("Ingrese la tarifa por hora: ", :entero)
    salario = calcular_salario(horas_trabajadas, tarifa_por_hora)
    salario_formateado = :erlang.integer_to_list(round(salario))
    Util.mostrar_mensaje_java("El salario de #{nombre} es: #{salario_formateado}$")
  end

  defp calcular_salario(horas_trabajadas, tarifa_por_hora) do
    salario_base = horas_trabajadas * tarifa_por_hora

    bonificacion_horas_extra =
      if horas_trabajadas > 160 do
        (horas_trabajadas - 160) * tarifa_por_hora * 1.25
      else
        0
      end

    salario_total = salario_base + bonificacion_horas_extra
    salario_total
  end
end

Entrada_datos.main()
