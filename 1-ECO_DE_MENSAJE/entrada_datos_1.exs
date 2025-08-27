defmodule EntradaDatos do
  def main() do
    "Ingrese el texto: "
    |> Util.ingresar(:texto)
    |> convertir_a_mayusculas()
    |> Util.mostrar_mensaje_java()
  end

  defp convertir_a_mayusculas(texto) do
    "Texto en mayusculas: #{String.upcase(texto)}."
  end
end

EntradaDatos.main()
