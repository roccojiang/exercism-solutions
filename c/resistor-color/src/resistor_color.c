#include "resistor_color.h"

int color_code(resistor_band_t color) { return color; }

// Returns pointer to a const, so caller may not modify array
// Static so caller does not have to free() the result
const resistor_band_t *colors(void) {
  static resistor_band_t colors[WHITE + 1];

  for (int color = BLACK; color <= WHITE; color++) {
    colors[color] = color;
  }

  return colors;
}
