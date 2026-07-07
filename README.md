# Flutter CustomPainter UI Practice

A small Flutter project I made just to practice `CustomPainter`. Instead of
using regular widgets for buttons and shapes, I drew them myself using
`Path`.

Demo:

<img width="400" height="551" alt="fruits" src="https://github.com/user-attachments/assets/cd74b9a6-d6ea-4d64-b487-9f300bfd2f7d" />

<img width="400" height="551" alt="plant" src="https://github.com/user-attachments/assets/c81f42ed-bb35-4a5b-af5d-ec7747f18d25" />

## What it does

- Custom-drawn curved buttons and shapes (not the default Flutter widgets)
- A quantity selector (1 / 5 / 10 pack) with a custom-painted highlight for
  whichever one is selected
- Two flows: a fruits shop (home + details) and a plants shop (home +
  details)

## Built with

- Flutter / Dart
- CustomPainter / CustomPaint
- google_fonts
- flutter_rating

## Folder structure

```
lib/
└── features/
    ├── fruits/
    │   ├── fruits_home/
    │   └── fruits_details/
    └── plants/
        ├── plant_home/
        ├── plant_details/
        └── shared_widgets/
```

## How to run it

```bash
flutter pub get
flutter run
```

## Notes

This is just a UI practice project, no backend or real state management —
the goal was to get comfortable with drawing custom shapes (arcs, curves)
with Canvas and Path instead of relying only on built-in widgets.