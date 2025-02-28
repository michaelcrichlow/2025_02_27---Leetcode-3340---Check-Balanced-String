package test

import "core:fmt"
print :: fmt.println

main :: proc() {
	print(isBalanced("1234"))	// false
	print(isBalanced("24123"))	// true
}


// Leetcode 3340. Check Balanced String
isBalanced :: proc(s: string) -> bool {
	total_odd := 0
	total_even := 0
	
	for val, i in s {
		if i % 2 == 0 {
			total_even += int_cast(val)
		} else if i % 2 != 0 {
			total_odd += int_cast(val)
		}
	}

	return total_even == total_odd
}