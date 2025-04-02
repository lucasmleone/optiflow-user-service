Problema: Al intentar enviar un trigger desde GitHub, este no llegó a su destino. Esto se debió a que el puerto 8080 dejó de estar expuesto a través de ngrok. Como consecuencia, Jenkins siguió funcionando, pero no pudo recibir señales, lo que impidió que se activara el trabajo.

Síntomas: Al revisar GitHub, se observó que la solicitud no llegó a su destino. Además, los trabajos no se ejecutaron para la detección de nuevas ramas, push o PR.

Solución: Se expuso el puerto nuevamente y se actualizó la dirección en el webhook de GitHub.
