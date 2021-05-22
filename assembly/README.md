## Structure of a NASM Program

![Structure of Nasm](https://cs.lmu.edu/~ray/images/nasmstructure.png)

### Directives

Each directive has a user level or a primitive form

- User Level
  - Not enclosed in square brackets
- Primitive
  - Usually enclosed in square brackets

#### BITS

- For specifying the processor operating mode
- Usually used in flat binary files
- For different bit modes you can scale up but cannot scale down
  - 16 -> 32
  - 32 -/> 16

`USE16` is alias for BITS 16
`USE32` is alias for BITS 32

#### GLOBAL

- Like delcaring a global variable.
  - In order to use it in a different asm file you need to also do `extern` in that specific asm file referencing the current global name


### Sections

- Different from __SECT__ directive

### Labels

- Essentially applying a label to block of code, useful for organizing and reference.
- lables starting with `.` are special, they're considered local labels, and are usually associated with a label that doesn't start with a `.`

### Instructions

<table>
<tbody><tr><td><code>mov</code>&nbsp;<i>x</i>,&nbsp;<i>y</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><i>x</i> ← <i>y</i>
</td></tr><tr><td><code>and</code> <i>x</i>, <i>y</i></td><td><i>x</i> ← <em>x</em> and <i>y</i>
</td></tr><tr><td><code>or</code> <i>x</i>, <i>y</i></td><td><i>x</i> ← <em>x</em> or <i>y</i>
</td></tr><tr><td><code>xor</code> <i>x</i>, <i>y</i></td><td><i>x</i> ← <em>x</em> xor <i>y</i>
</td></tr><tr><td><code>add</code> <i>x</i>, <i>y</i></td><td><i>x</i> ← <em>x</em> + <i>y</i>
</td></tr><tr><td><code>sub</code> <i>x</i>, <i>y</i></td><td><i>x</i> ← <em>x</em> – <i>y</i>
</td></tr><tr><td><code>inc</code> <i>x</i></td><td><i>x</i> ← <em>x</em> + 1
</td></tr><tr><td><code>dec</code> <i>x</i></td><td><i>x</i> ← <em>x</em> – 1
</td></tr><tr><td><code>syscall</code></td><td>Invoke an operating system routine
</td></tr>
<tr><td><code>db</code></td><td>A <a href="http://www.nasm.us/xdoc/2.11.02/html/nasmdoc3.html#section-3.2">pseudo-instruction</a>
  that declares bytes that will be in memory when the program runs
</td></tr>
<tr><td><code>d*</code></td><td>Basically used for declaring initialized data in speciifc "containers". Eg. DB = declare byte, DD = declare decimal(floating point constant)
</td></tr>
</tbody>
</table>


### Operands

- Register Operands
  - integer registers(64 bit wide)
    - ![Register Operands](http://www.c-jump.com/CIS77/asm_images/eax.png)
  - xmm registers
    - 128 bit wide
    - ![XMM Registers](https://cs.lmu.edu/~ray/images/rdx.png)
- Memory Operands
  - A way to directly address the memory
  - Usually using brackets.
    - Can use a displacement number to get different blocks of memory
    - Kind of like C arrays can be accessed using pointer arithmetic
- Immediate Operands
  - Basically constants, can be written pretty much anyway(binary, hex, decimal, etc)



---

## References

[NASM Manual](https://www.nasm.us/doc/nasmdoc0.html)

[NASM Tutorial](https://cs.lmu.edu/~ray/notes/nasmtutorial/)

[Intel Processor Manual](https://software.intel.com/content/www/us/en/develop/articles/intel-sdm.html)