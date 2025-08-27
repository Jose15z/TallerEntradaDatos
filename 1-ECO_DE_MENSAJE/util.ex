defmodule Util do
  def ingresar(mensaje, :texto) do
    case System.cmd("java", ["-cp", ".", "IngresarMensaje", "input", mensaje]) do
      {output, 0} ->
        IO.puts("texto ingresado correctamente.")
        IO.puts("Entrada: #{output}")
        String.trim(output)

      {error, code} ->
        IO.puts("Error al ingresar el texto.Código: #{code}")
        IO.puts("Detalles: #{error}")
        nil
    end
  end

  def mostrar_mensaje_java(mensaje) do
    System.cmd("java", ["Mostrar_mensaje", mensaje])
  end
end
