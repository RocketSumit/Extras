# Python 3

## Input

```python
# multiple line input:
# x
# y
# z
# n
>>> x, y, z, n = (int(input()) for _ in range(4))

# same line input
# x, y, z, n
>>> x,y,z, n = map(int, input().split())
```

## String Formatting

```python
>>> print("{0:{width}d} {0:{width}o} {0:{width}X} {0:{width}b}".format(10, width = 4))
10   12    A 1010
```

## Cartesian Product

In the terms of Mathematics Cartesian Product of two sets is defined as the set of all ordered pairs (a, b) where a belongs to A and b belongs to B. itertools.product() is used to find the cartesian product from the given iterator, output is lexicographic ordered.

```python
>>> from itertools import product
>>> arr1 = [1,2,3]
>>> arr2 = [4,5,6]
>>> list(product(arr1, arr2))
[(1, 4), (1, 5), (1, 6), (2, 4), (2, 5), (2, 6), (3, 4), (3, 5), (3, 6)]
```

## List compression

```python
# example: print all combination of [0 a],[0 b],[0 c] such that a+b+c != n
>>> print([[a, b, c] for a in range(0, x+1) for b in range(0, y+1) for c in range(0, z+1)
    if a+b+c != n])
```

## String manipulation

- split or modify

```python
>>> string = "Hey, buddy"
>>> s = string[:3]
>>> print(s)
"Hey"
```

- swapcase()

```python
# Swapping cases
>>> string = "hEllo"
>>> string.swapcase()
HeLLO
```

- join()

```python
>>> a = "-".join(['this', 'is', 'a', 'string'])
>>> print(a)
this-is-a-string
```

## String validators

- **str.isalnum()**

This method checks if all the characters of a string are alphanumeric *(a-z, A-Z and 0-9).*

.

```python
>>> print 'ab123'.isalnum()
True
>>> print 'ab123#'.isalnum()
False
```

- **str.isalpha()**

This method checks if all the characters of a string are alphabetical (a-z and A-Z).

```python
>>> print 'abcD'.isalpha()
True
>>> print 'abcd1'.isalpha()
False
```

- **str.isdigit()**

This method checks if all the characters of a string are digits *(0-9).*

```python
>>> print '1234'.isdigit()
True
>>> print '123edsd'.isdigit()
False
```

- **str.islower()**

This method checks if all the characters of a string are lowercase characters (a-z).

```python
>>> print 'abcd123#'.islower()
True
>>> print 'Abcd123#'.islower()
False
```

- **str.isupper()**

This method checks if all the characters of a string are uppercase characters (A-Z).

```python
>>> print 'ABCD123#'.isupper()
True
>>> print 'Abcd123#'.isupper()
False
```

## Text alignment

**ljust(width)**

This method returns a left aligned string of length *width*.

```python
>>> width = 10
>>> print('Welcome'.ljust(width,'-'))
Welcome---
```

**.center(width)**

This method returns a centered string of length *width*.

```python
>>> width = 11
>>> print('Welcome'.center(width,'-'))
--Welcome--
```

**.rjust(width)**

This method returns a right aligned string of length *width*.

```python
>>> width = 10
>>> print('Welcome'.rjust(width,'-'))
---Welcome
```