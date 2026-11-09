# Icono de Most Image

Dibujo propio de Grupo MOST. No queda nada del icono de la obra original:
su licencia de marca obliga a retirarlo en toda versión modificada, y en el
caso de Most Anything además no era código abierto.

**El dibujo.** Un azulejo de 512 a sangre con esquinas redondeadas (112 de
radio), degradado de `#3B82F6` a `#1D4ED8` en diagonal, y encima el motivo en
blanco: 3 trazo(s).
Dice de un vistazo qué hace el programa.

**Cómo se generan.** `tools/iconos.mjs` de la suite, que rasteriza con el
motor de Most Studio: el mismo barrido de líneas que usa el texto de área,
así que el icono es literalmente lo que Most Studio dibujaría. De ahí salen:

| Archivo | Para qué |
|---|---|
| `most-image.svg` | La pieza canónica, 512 a sangre |
| `most-image-small.svg` | La misma, para tamaños pequeños |
| `hicolor/<n>x<n>/apps/com.grupomostmexico.mostimage.png` | Tema de iconos de Linux |
| `most-image-1024.png`, `-512`, `-256`, `-64` | Los que el código incrusta por nombre |
| `most-image-macos-512.png` | Icono de ventana y Dock en macOS |
| `most-image.icns` | Paquete de macOS |
| `most-image.ico` | Ejecutable e instalador de Windows |

Si cambia el dibujo, se regenera todo de una vez. No se editan a mano: el
código los incrusta por nombre con `include_bytes!` y un archivo que falte
no es un aviso, es un error de compilación.

**Licencia.** Los dibujos son propiedad de Grupo MOST. `LICENSE.txt` es el
de la obra original y se conserva por lo que cubre de ella.
