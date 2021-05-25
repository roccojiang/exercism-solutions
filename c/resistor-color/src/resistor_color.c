#include "resistor_color.h"

int color_code(resistor_band_t color) { return (int)color; }

resistor_band_t *colors(void) {
  static resistor_band_t colors[WHITE + 1];

  for (int color = BLACK; color <= WHITE; color++) {
    colors[color] = color;
  }

  return colors;
}
