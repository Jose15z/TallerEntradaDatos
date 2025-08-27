defmodule EntradaDatos do


  def main() do

    "Ingrese el texto: "
    |> Util.ingresar(:texto)
    |> contar_longitud()
    |> Util.mostrar_mensaje_java()


  end


  defp contar_longitud(texto) do
    "Longitud del texto: #{String.length(texto)}."
  end


end



EntradaDatos.main()
