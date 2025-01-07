def add(a: int, b: int) -> int:
    """Add two numbers together.

    This function takes two numbers, a and b, and returns their sum.
    This is sample function to demonstrate how to write a function

    Args:
        a: first number
        b: second number
    Returns:
        Sum of a and b
        Typical usage example:
        add(2, 3)

    Raises:
        TypeError: if a or b is not an integer


    """
    try:
        return a + b
    except TypeError as e:
        msg = "a and b must be integers"
        raise TypeError(msg) from e


def _private_add(a: int, b: int) -> int:
    return a + b
