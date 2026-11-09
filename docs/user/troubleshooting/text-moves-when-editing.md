<!-- Modificado por Grupo MOST para Most Image. Obra original: PhotoCraft del equipo ArtCraft (https://github.com/storytold/photocraft), Apache-2.0. -->
---
title: Text moves when I start editing a PSD text layer
description: In Most Image 0.7.0, a text layer from a Photoshop file can jump when you click it with the Type tool. Most Image 0.8.2 fixes the known causes; update.
order: 20
verified: 0.8.2
---

Update Most Image. In version 0.7.0, a text layer from a Photoshop file could jump or disappear when you started editing it. Most Image 0.8.2 reads the text's styles and position the way Photoshop saved them, so the text stays where it was.

## Symptoms

- You open a PSD that was made in Photoshop and click one of its text layers with the **Horizontal Type Tool**. The text shifts, often to the left, as soon as editing starts.
- Centered text may show as left-aligned in the options bar.
- In some files, text that you click can disappear.

## Fix

2. Open the PSD again and click the text layer with the **Horizontal Type Tool**.

If you already saved the file in 0.7.0 after the text moved, the moved text is now in the file. Go back to your original PSD if you still have it.

## Why this happens

Clicking a PSD text layer with the Type tool starts editing it, and Most Image then lays the text out itself instead of showing the pixels Photoshop saved. Most Image 0.7.0 read the alignment and size of each run of text only from Photoshop's default styles, and ignored part of the text position that recent Photoshop versions store. Both are fixed in 0.8.2 ([issue 3795](https://github.com/mapachstudio/most-image/issues/3795), [pull request 3819](https://github.com/mapachstudio/most-image/pull/3819)).

## Still stuck?

