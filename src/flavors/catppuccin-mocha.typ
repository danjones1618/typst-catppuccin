// Catppuccin Mocha for Typst
// Author: TimeTravelPenguin
// Last build: 2024-08-03T22:52:17.173083+10:00

#let mocha = (
  name: "Mocha",
  emoji: "🌿",
  order: 3,
  dark: true,
  light: false,
  colors: (
    rosewater: (
      name: "Rosewater",
      order: 0,
      hex: "#f5e0dc",
      rgb: rgb(245, 224, 220),
      accent: true,
    ),
    flamingo: (
      name: "Flamingo",
      order: 1,
      hex: "#f2cdcd",
      rgb: rgb(242, 205, 205),
      accent: true,
    ),
    pink: (
      name: "Pink",
      order: 2,
      hex: "#f5c2e7",
      rgb: rgb(245, 194, 231),
      accent: true,
    ),
    mauve: (
      name: "Mauve",
      order: 3,
      hex: "#cba6f7",
      rgb: rgb(203, 166, 247),
      accent: true,
    ),
    red: (
      name: "Red",
      order: 4,
      hex: "#f38ba8",
      rgb: rgb(243, 139, 168),
      accent: true,
    ),
    maroon: (
      name: "Maroon",
      order: 5,
      hex: "#eba0ac",
      rgb: rgb(235, 160, 172),
      accent: true,
    ),
    peach: (
      name: "Peach",
      order: 6,
      hex: "#fab387",
      rgb: rgb(250, 179, 135),
      accent: true,
    ),
    yellow: (
      name: "Yellow",
      order: 7,
      hex: "#f9e2af",
      rgb: rgb(249, 226, 175),
      accent: true,
    ),
    green: (
      name: "Green",
      order: 8,
      hex: "#a6e3a1",
      rgb: rgb(166, 227, 161),
      accent: true,
    ),
    teal: (
      name: "Teal",
      order: 9,
      hex: "#94e2d5",
      rgb: rgb(148, 226, 213),
      accent: true,
    ),
    sky: (
      name: "Sky",
      order: 10,
      hex: "#89dceb",
      rgb: rgb(137, 220, 235),
      accent: true,
    ),
    sapphire: (
      name: "Sapphire",
      order: 11,
      hex: "#74c7ec",
      rgb: rgb(116, 199, 236),
      accent: true,
    ),
    blue: (
      name: "Blue",
      order: 12,
      hex: "#89b4fa",
      rgb: rgb(137, 180, 250),
      accent: true,
    ),
    lavender: (
      name: "Lavender",
      order: 13,
      hex: "#b4befe",
      rgb: rgb(180, 190, 254),
      accent: true,
    ),
    text: (
      name: "Text",
      order: 14,
      hex: "#cdd6f4",
      rgb: rgb(205, 214, 244),
      accent: false,
    ),
    subtext1: (
      name: "Subtext 1",
      order: 15,
      hex: "#bac2de",
      rgb: rgb(186, 194, 222),
      accent: false,
    ),
    subtext0: (
      name: "Subtext 0",
      order: 16,
      hex: "#a6adc8",
      rgb: rgb(166, 173, 200),
      accent: false,
    ),
    overlay2: (
      name: "Overlay 2",
      order: 17,
      hex: "#9399b2",
      rgb: rgb(147, 153, 178),
      accent: false,
    ),
    overlay1: (
      name: "Overlay 1",
      order: 18,
      hex: "#7f849c",
      rgb: rgb(127, 132, 156),
      accent: false,
    ),
    overlay0: (
      name: "Overlay 0",
      order: 19,
      hex: "#6c7086",
      rgb: rgb(108, 112, 134),
      accent: false,
    ),
    surface2: (
      name: "Surface 2",
      order: 20,
      hex: "#585b70",
      rgb: rgb(88, 91, 112),
      accent: false,
    ),
    surface1: (
      name: "Surface 1",
      order: 21,
      hex: "#45475a",
      rgb: rgb(69, 71, 90),
      accent: false,
    ),
    surface0: (
      name: "Surface 0",
      order: 22,
      hex: "#313244",
      rgb: rgb(49, 50, 68),
      accent: false,
    ),
    base: (
      name: "Base",
      order: 23,
      hex: "#1e1e2e",
      rgb: rgb(30, 30, 46),
      accent: false,
    ),
    mantle: (
      name: "Mantle",
      order: 24,
      hex: "#181825",
      rgb: rgb(24, 24, 37),
      accent: false,
    ),
    crust: (
      name: "Crust",
      order: 25,
      hex: "#11111b",
      rgb: rgb(17, 17, 27),
      accent: false,
    ),
  )
)