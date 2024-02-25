# Python

### Conditional 


#### any()
This expression returns True if any element of the iterable is true.
If the iterable is empty, it will return False.
```python
>>> any([1>0,1==0,1<0])
True
>>> any([1<0,2<1,3<2])
False
>>> any([1,2,3,4,-5])<0
True
```

#### all()
This expression returns True if all of the elements of the iterable are true. If the iterable is empty, it will return True.
```python
>>> all(['a'<'b','b'<'c'])
True
>>> all(['a'<'b','c'<'b'])
False
>>> all([1,2,3,4,-5])<0
False
```

Example
```python
n=int(input())
inp=list(map(int, input().split(" ")))
print(False) if all(inp)<0 and any([str(x)[::-1]==str(x) for x in inp]) else print(True)
```

### Sorting
```python
s = str(input())
lower=sorted(filter(lambda x: x.islower(), s))
upper=sorted(filter(lambda x: x.isupper(), s))
even=sorted(filter(lambda x: x.isnumeric() and int(x) % 2 == 0, s))
odd=sorted(filter(lambda x: x.isnumeric() and int(x) % 2 == 1, s))
print("".join(lower+upper+odd+even))
```

### Combination
```python
from itertools import *
n=[[1,2],[3,4],[5,6]]
print([i for i in product(*n)])
>>>[(1, 3, 5), (1, 3, 6), (1, 4, 5), (1, 4, 6), (2, 3, 5), (2, 3, 6), (2, 4, 5), (2, 4, 6)]

from itertools import product
k, m = map(int, input().split())
n=[list(map(int, input().split(" "))) for i in range(int(k))]
print(max([sum(map(lambda x: x**2, i)) for i in product(*n)]))
```

### set
```python
print(len(set(input() for _ in range(n))))
```