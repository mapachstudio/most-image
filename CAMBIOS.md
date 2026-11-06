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

- `crates/ui-egui/src/i18n/ar.tsv`
- `crates/ui-egui/src/i18n/bs.tsv`
- `crates/ui-egui/src/i18n/cs.tsv`
- `crates/ui-egui/src/i18n/da.tsv`
- `crates/ui-egui/src/i18n/de.tsv`
- `crates/ui-egui/src/i18n/el.tsv`
- `crates/ui-egui/src/i18n/es.tsv`
- `crates/ui-egui/src/i18n/fi.tsv`
- `crates/ui-egui/src/i18n/fr.tsv`
- `crates/ui-egui/src/i18n/hi.tsv`
- `crates/ui-egui/src/i18n/hu.tsv`
- `crates/ui-egui/src/i18n/id.tsv`
- `crates/ui-egui/src/i18n/it.tsv`
- `crates/ui-egui/src/i18n/ja.tsv`
- `crates/ui-egui/src/i18n/ko.tsv`
- `crates/ui-egui/src/i18n/nb.tsv`
- `crates/ui-egui/src/i18n/nl.tsv`
- `crates/ui-egui/src/i18n/pl.tsv`
- `crates/ui-egui/src/i18n/pt-br.tsv`
- `crates/ui-egui/src/i18n/ru.tsv`
- `crates/ui-egui/src/i18n/sr.tsv`
- `crates/ui-egui/src/i18n/sv.tsv`
- `crates/ui-egui/src/i18n/tr.tsv`
- `crates/ui-egui/src/i18n/uk.tsv`
- `crates/ui-egui/src/i18n/vi.tsv`
- `crates/ui-egui/src/i18n/zh-hans.tsv`
- `crates/ui-egui/src/i18n/zh-hant.tsv`
- `docs/integration-testing/approved-selection.json`
- `docs/integration-testing/portable-build-record.json`
- `docs/integration-testing/regression-results.json`
- `docs/integration-testing/trimmed-selection-2026-10-29.json`
- `packaging/linux/ai.storyteller.photocraft.metainfo.xml.in`
- `packaging/linux/ai.storyteller.photocraft.mime.xml`
- `packaging/macos/Info.plist.in`
- `packaging/macos/entitlements.plist`
- `packaging/windows/install-policy.json`
- `packaging/windows/portable.txt`
- `packaging/windows/symbols.txt`

## Atribución

> Most Image está basado en PhotoCraft, del equipo ArtCraft y su
> comunidad (https://github.com/storytold/photocraft), bajo licencia Apache-2.0. Grupo MOST no está
> asociado con el equipo ArtCraft, que no patrocina ni avala este producto.

Total de archivos modificados: 522.
