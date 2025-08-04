# Why Dijkstra is Wrong About Slice Notation
I recently came across Dijkstra's discussion over the best way to represent the indices of a slice.

[Read the original article here](https://www.cs.utexas.edu/~EWD/transcriptions/EWD08xx/EWD831.html).

He starts:

> To denote the subsequence of natural numbers 2, 3, ..., 12 without the pernicious three dots, four conventions are open to us

at a high level, his argument boils down to the following:
- subtracting the start index from the end index should produce the number of elements
- tbd


I actually question his initial premise that dot dot dot is "pernicious"
<define pernicious/>

> pernicious: having a harmful effect, especially in a gradual or subtle way.

<if we were truly optimizing for minimal typing, everyone would be writing in J>
<something to be said about the right balance of verbosity vs tersity. how to maximize ease of typing with ease of reading>
<slicing is common enough that the shorter, the better, so long as clarity is not sacrificed>
<TODO: pull stuff from chats on subject>

<conflating a bit lists/sets of numbers with indexing into an existing list>

How do languages generate the sequence of numbers 2,3,...,12:
This is slightly distinct from slicing syntax in these languages
```
s = 'this is a string of characters'
```
say we wanted to slice `is is a str` out of the middle (2-12 inclusive if 0-indexed)
### Python
```python
list(range(2,13))
s = 'this is a string of characters'
s[2:13]
```

### Matlab
```matlab
2:12
s = 'this is a string of characters'
s(3:13)
```

### Julia
```julia
2:12
s = 'this is a string of characters'
s[3:13]
```

### Typescript
```typescript
Array.from({ length: 11 }, (_, i) => i + 2);
s = 'this is a string of characters'
s.slice(2,13)
```

### Rust
```rust
s[2..13]
```

### Haskell
```haskell
[2..12]
slice 2 13 s
```



### Dewy
```dewy
s[2..12]
s[2..13)
```
