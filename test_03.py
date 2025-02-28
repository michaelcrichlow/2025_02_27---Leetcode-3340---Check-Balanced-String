def isBalanced(num: str) -> bool:
    total_odd = 0
    total_even = 0

    for i, val in enumerate(num):
        if i % 2 == 0:
            total_even += int(val)
        elif i % 2 != 0:
            total_odd += int(val)

    return total_even == total_odd


def main() -> None:
    print(isBalanced("1234"))     # False
    print(isBalanced("24123"))    # True


if __name__ == '__main__':
    main()
