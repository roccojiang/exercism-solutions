// Package hamming implements a function for calculating Hamming Distances.
package hamming

import "errors"

// Distance returns the Hamming Distance between two DNA strands.
func Distance(strandA, strandB string) (distance int, err error) {
	// Convert strings to rune slices for Unicode support
	a := []rune(strandA)
	b := []rune(strandB)

	// Raise error if lengths are unequal
	if len(a) != len(b) {
		return -1, errors.New("sequences don't have equal length")
	}

	// Compare runes for not just ASCII but also Unicode utf-8 support
	// If strings weren't converted into rune slices, s[i] would be a byte instead of a rune
	for i := range a {
		if a[i] != b[i] {
			distance++
		}
	}

	return // Naked return: returns distance, nil
}
