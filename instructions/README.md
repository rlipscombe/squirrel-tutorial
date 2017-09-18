# Squirrel Bytecode Instructions

There aren't many. They don't appear to be explicitly documented anywhere.

_...I wonder whether they can be converted directly to .NET IL?..._

<table>
<tr><th>Opcode</th><th>Remarks</th></tr>
<tr><td>_OP_LINE</td><td>appears to be emitted in debug mode, provides a place to breakpoint each line.</td><tr>
<tr><td>_OP_LOAD</td><td>`stk[arg0] <- lit[arg1]`  "load literal" -- a Squirrel closure/function has a list of literal strings(?). This copies literal[a1] to TARGET. TARGET is a macro for `STK(arg0)`. Maybe think of `STK(x)` as `local x`. If you like, it could be `ldlit <src-index> <local-index>`.</td><tr>
<tr><td>_OP_LOADINT</td><td>Load a literal value (in arg1) to TARGET.</td><tr>
<tr><td>_OP_LOADFLOAT</td><td>As above, but for floats.</td><tr>
<tr><td>_OP_DLOAD</td><td>Load two literals. TARGET gets lit[a1]; STK(2) gets lit[a3]</td><tr>
<tr><td>_OP_TAILCALL</td><td>tail call the closure at stk(arg1); it shifts things around on the stack</td><tr>
<tr><td>_OP_CALL</td><td>recursive call to stk[arg1]</td><tr>
<tr><td>_OP_PREPCALL</td><td></td><tr>
<tr><td>_OP_PREPCALLK</td><tr>
<tr><td>_OP_GETK</td><td></td><tr>
<tr><td>_OP_MOVE</td><td></td><tr>
<tr><td>_OP_NEWSLOT</td><td></td><tr>
<tr><td>_OP_DELETE</td><td></td><tr>
<tr><td>_OP_SET</td><td></td><tr>
<tr><td>_OP_GET</td><td></td><tr>
<tr><td>_OP_EQ</td><td></td><tr>
<tr><td>_OP_NE</td><td></td><tr>
<tr><td>_OP_ADD</td><td>TARGET <- stk[arg2] + stk[arg1]</td><tr>
<tr><td>_OP_SUB</td><td>TARGET <- stk[arg2] - stk[arg1] (check the order)</td><tr>
<tr><td>_OP_MUL</td><td>TARGET <- stk[arg2] * stk[arg1]</td><tr>
<tr><td>_OP_DIV</td><td>TARGET <- stk[arg2] / stk[arg1]</td><tr>
<tr><td>_OP_MOD</td><td>TARGET <- stk[arg2] % stk[arg1]</td><tr>
<tr><td>_OP_BITW</td><td>TARGET <- stk[arg2] `arg3` stk[arg1], where `arg3` can be `&`, `|`, `^`, `<<`, `>>`, unsigned-shr.</td><tr>
<tr><td>_OP_RETURN</td><td></td><tr>
<tr><td>_OP_LOADNULLS</td><td>Null out the stack starting at arg0, counting arg1 slots (i.e. stk[arg0..arg0+arg1]).</td><tr>
<tr><td>_OP_LOADROOT</td><td>TARGET <- _roottable</td><tr>
<tr><td>_OP_LOADBOOL</td><td>TARGET <- (bool)arg1</td><tr>
<tr><td>_OP_DMOVE</td><td>stk(arg0) <- stk(arg1); stk(arg2) <- stk(arg3)</td><tr>
<tr><td>_OP_JMP</td><td>Unconditional relative jump by sarg1</td><tr>
<tr><td>_OP_JCMP</td><td>Run the comparison in arg3 against stk(arg2) and stk(arg0). If false (zero), relative jump by sarg1.</td><tr>
<tr><td>_OP_JZ</td><td><code>jz stk[arg0]</code>If stk[arg0] is zero, relative jump by `sarg1`</td><tr>
<tr><td>_OP_GETOUTER</td><td></td><tr>
<tr><td>_OP_SETOUTER</td><td></td><tr>
<tr><td>_OP_NEWOBJ</td><td>based on arg3, TARGET <- new Table(arg1)/Array(arg1)/Class(arg1, arg2)</td><tr>
<tr><td>_OP_APPENDARRAY</td><td></td><tr>
<tr><td>_OP_COMPARITH</td><td></td><tr>
<tr><td>_OP_INC</td><td></td><tr>
<tr><td>_OP_INCL</td><td></td><tr>
<tr><td>_OP_PINC</td><td></td><tr>
<tr><td>_OP_PINCL</td><td></td><tr>
<tr><td>_OP_CMP</td><td></td><tr>
<tr><td>_OP_EXISTS</td><td></td><tr>
<tr><td>_OP_INSTANCEOF</td><td></td><tr>
<tr><td>_OP_AND</td><td></td><tr>
<tr><td>_OP_OR</td><td></td><tr>
<tr><td>_OP_NEG</td><td></td><tr>
<tr><td>_OP_NOT</td><td></td><tr>
<tr><td>_OP_BWNOT</td><td></td><tr>
<tr><td>_OP_CLOSURE</td><td></td><tr>
<tr><td>_OP_YIELD</td><td></td><tr>
<tr><td>_OP_RESUME</td><td></td><tr>
<tr><td>_OP_FOREACH</td><td></td><tr>
<tr><td>_OP_POSTFOREACH</td><td></td><tr>
<tr><td>_OP_CLONE</td><td></td><tr>
<tr><td>_OP_TYPEOF</td><td></td><tr>
<tr><td>_OP_PUSHTRAP</td><td></td><tr>
<tr><td>_OP_POPTRAP</td><td></td><tr>
<tr><td>_OP_THROW</td><td></td><tr>
<tr><td>_OP_NEWSLOTA</td><td></td><tr>
<tr><td>_OP_GETBASE</td><td></td><tr>
<tr><td>_OP_CLOSE</td><td></td><tr>
</table>
