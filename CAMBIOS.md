# Cambios respecto a la obra original

Most Image es una obra derivada de **PhotoCraft**, del equipo ArtCraft y
su comunidad (https://github.com/storytold/photocraft), distribuida bajo Apache-2.0.

Este archivo cumple la cláusula 4(b) de Apache-2.0, que obliga a declarar los
cambios. Los archivos que admiten comentarios lo dicen además en su cabecera.

## Qué se ha cambiado

- **La marca.** Se ha retirado la de ArtCraft —nombre, wordmark, logo y marca
  «A»— y puesto la de Grupo MOST, como exige `docs/brand/LICENSE-brand.txt`
  de la obra original para toda versión modificada.
- Nombre de producto: `PhotoCraft` → `Most Image`.
- Identificador del paquete: `ai.storyteller.photocraft` → `com.grupomostmexico.mostimage`.
- Extensión de archivo: `.photocraft` → `.mostimage`.
- Icono de la aplicación y marca de la interfaz, sustituidos por los nuestros.
- Carpeta `docs/brand/` de la obra original, eliminada.

Lo que NO se ha tocado: los nombres internos de los crates de Rust. Son
identificadores de código, no marcas presentadas al usuario.

## Archivos modificados sin aviso en cabecera

Su formato no admite comentarios:

(ninguno)

## Qué más se ha cambiado

### Integración continua

Se han retirado los workflows que llamaban a
`storytold/craft-common-actions` y se ha puesto uno propio,
`.github/workflows/most-macos.yml`, que invoca el
`packaging/macos/package.sh` de este mismo repositorio.

El motivo no es preferencia: `craft-common-actions` es público pero **no
declara licencia**, así que no hay permiso para copiarlo ni fijarlo a una
revisión propia, y sus workflows se seguían en `@main`. Con eso,
`release.yml` entregaba el certificado de firma de Apple y
`sonarcloud.yml` usaba `secrets: inherit`, que entrega todos los secretos
del repositorio. Se conservan los workflows con trabajos propios, que no
dependen de nadie.

### Nombres de archivo

El remarcado inicial cambió el contenido de los archivos pero no sus
nombres. Se han renombrado los que se instalan en la máquina del cliente o
los que descarga:

- `packaging/linux/ai.storyteller.photocraft.*` → `packaging/linux/com.grupomostmexico.mostimage.*`
  (AppStream y Flatpak exigen además que ese nombre sea el identificador de
  la aplicación).
- `packaging/windows/photocraft.wxs` y `.en-us.wxl` → `most-image.*`.
- Nombre de los artefactos: `photocraft-<versión>-<sistema>` → `most-image-…`.
- Recursos del icono: `photocraft.icns`, `photocraft.ico`, `photocraft-*.png` →
  `most-image.*`, que es como los escribe nuestro generador. El código los
  incrusta por nombre con `include_bytes!`, así que mientras no coincidían
  el programa no compilaba.

### Instalador de macOS

- `packaging/macos/dmg/background.svg`: nombre y dibujo nuestros. En Most
  Image el título venía como contornos vectoriales, no como texto; se ha
  devuelto a `<text>` para que sea legible y modificable.
- `background.tiff` regenerado sin `resvg`, que no estaba disponible: lo
  dibuja QuickLook con las fuentes del propio repositorio incrustadas.
  Diferencias aceptadas frente a `generate.py`: una sola página a 144 dpi
  en vez de dos (72 y 144), y compresión LZW en vez de Deflate, porque
  `sips` no ofrece Deflate. Cuando haya `resvg`, `generate.py` vuelve a
  ser la fuente.
- `DS_Store` regenerado: guarda un alias al fondo que incluye el nombre del
  volumen, y seguía siendo el original.

### Procedencia de los recursos

`ASSETS.md` / `ATTRIBUTION.md` atribuían al equipo ArtCraft los iconos que
ahora son nuestros, y listaban archivos de `docs/brand/` que se
eliminaron. Se han corregido esas filas. Las que describen obra ajena no se
han tocado.

### Lo que sigue sin tocarse

Los nombres de los paquetes de Rust (`photocraft-*`) y las carpetas `apps/`,
`crates/` y `xtask/`. Son identificadores de código fuente, no identidad
del producto. También el identificador interno del formato de documento,
que es un valor de compatibilidad: cambiarlo rompería la lectura de los
archivos existentes.

## Atribución

> Most Image está basado en PhotoCraft, del equipo ArtCraft y su
> comunidad (https://github.com/storytold/photocraft), bajo licencia Apache-2.0. Grupo MOST no está
> asociado con el equipo ArtCraft, que no patrocina ni avala este producto.

Total de archivos modificados: 521.
