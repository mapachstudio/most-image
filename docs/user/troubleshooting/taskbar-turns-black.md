<!-- Modificado por Grupo MOST para Most Image. Obra original: PhotoCraft del equipo ArtCraft (https://github.com/storytold/photocraft), Apache-2.0. -->
---
title: The Windows taskbar turns black when Most Image is maximized
description: On Windows 11, Most Image 0.7.0 can turn the taskbar black or hide it when maximized. Most Image 0.8.2 fixes this; update.
order: 10
verified: 0.8.2
---

Update Most Image. Version 0.7.0 on Windows 11 could turn the taskbar black or hide it while the window was maximized. Most Image 0.8.2 includes the fix.

## Symptoms

- You maximize the Most Image window, or switch it to full screen, and the Windows taskbar turns completely black or is hidden.
- After you resize the window and maximize it again, a black bar the height of the taskbar stays at the bottom of the screen.

## Fix

1. Check your version with **Help › System Info…**, which starts with "Most Image" and the version.
3. Start Most Image again and maximize the window.

A user who saw the black taskbar on 0.7.0 confirmed that it is gone in 0.8.2 ([issue 3864](https://github.com/mapachstudio/most-image/issues/3864)).

## Why this happens

Most Image draws its own title bar. When such a window was maximized, Windows sized it to cover the whole screen, taskbar included, took it for a full-screen app and dropped the taskbar's background. The fix keeps a maximized Most Image window clear of the taskbar ([issue 3144](https://github.com/mapachstudio/most-image/issues/3144), [pull request 3308](https://github.com/mapachstudio/most-image/pull/3308)).

## Still stuck?

