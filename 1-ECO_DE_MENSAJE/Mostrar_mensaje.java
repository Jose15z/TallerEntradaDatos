import javax.swing.*;

public class Mostrar_mensaje {

    /**
     * Muestra un mensaje en una ventana emergente.
     */
    public static void main(String[] args) {
        if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            JOptionPane.showMessageDialog(null, "No se recibió mensaje");
        }
    }
}