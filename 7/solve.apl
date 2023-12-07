
data ← ⊃⊃¨⎕FIO[49] ⊃⎕ARG[(⎕ARG ⍳ ⊂'--')+1]
order ← '123456789TJQKA'
type ← (1 1 1 1 1) (1 1 1 2 2) (1 2 2 2 2) (1 1 3 3 3) (2 2 3 3 3) (1 4 4 4 4) (5 5 5 5 5)
get_type ← {{⍵[⍋⍵]}+⌿∘.=⍨⊃⍵}
len ← (⍴data)[1]
hands ← {order ⍳ ⍵}¨ ((len⍴5)/⍳len) ⊂ , data ↑⍨ len,5
bids ← ⍎ , 0 5 ↓ data
groups ← type ⍳ get_type¨ hands
part1 ← +/{⍵×⍳≢⍵} bids[⊃{hands ⍳ ⍵}¨ ,/{,⍵[⍋⍵]}¨ groups[⍋groups] ⊂ hands[⍋groups]]
part1

