defmodule Util do


  def mostrar_mensaje_java(mensaje) do
    System.cmd("java", ["Mostrar_mensaje", mensaje])
  end


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
    def ingresar(mensaje, :entero) do
      mensaje
      |> ingresar(:texto)
      |> String.to_integer()
    rescue
      ArgumentError ->
        "Error,se espera que ingrese un número real\n"
        |> mostrar_error()

        mensaje
        |> ingresar(:entero)
    end
  end
