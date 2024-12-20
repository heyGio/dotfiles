import time

import numpy as np


def fun(bello: int) -> int:
    x = 1

    if bello == 1:
        return 0
    else:
        return x + bello


def main():
    variable = [0, 1, 2, 3]

    for i in range(len(variable)):
        print(fun(variable[i]))


if __name__ == "__main__":
    main()
