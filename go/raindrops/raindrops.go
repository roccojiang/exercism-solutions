// Package raindrops implements a Convert function for a variation of FizzBuzz.
package raindrops

import "strconv"

// Convert returns raindrop sounds based on the factors of the input number.
func Convert(n int) (sound string) {
	// Append Pling, Plang, Plong if needed
	if n%3 == 0 {
		sound += "Pling"
	}
	if n%5 == 0 {
		sound += "Plang"
	}
	if n%7 == 0 {
		sound += "Plong"
	}

	// Return digits of n if 3, 5, 7 are not factors, i.e. the string is still empty
	if sound == "" {
		return strconv.Itoa(n)
	}

	return
}
