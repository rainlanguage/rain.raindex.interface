# Pass 0: Process Review

## Documents Reviewed

- `CLAUDE.md` (root)
- `README.md`
- `REUSE.toml`
- `lib/rain.interpreter.interface/CLAUDE.md` (submodule)
- `foundry.toml`

## Findings

### A01-1: CLAUDE.md states compiler is 0.8.25 but pragma is ^0.8.18 (LOW)

CLAUDE.md says "Compiler: Solidity 0.8.25" which is the foundry.toml `solc` version. But it also says "Interfaces use `pragma solidity ^0.8.18`". This is accurate but could confuse a future session — the compiler version (what foundry uses to compile) and the pragma (what the source files declare) are different things. A session might change pragmas to match the stated compiler version, or vice versa.

The submodule CLAUDE.md says "Interfaces use `pragma solidity ^0.8.25`" which is also different from what this repo uses (`^0.8.18`). This inconsistency between the two CLAUDE.md files could cause a future session to use the wrong pragma when adding new files.

### A01-2: CLAUDE.md mentions no test directory but repo has no tests (INFO)

CLAUDE.md does not mention tests or a test directory. The repo has no `test/` directory — this is an interface-only library with no local tests. This is fine but a future session might try to create tests and not know where to put them or whether tests are expected. Explicitly stating "this repo has no local tests — it is interface-only" would prevent wasted effort.

### A01-3: REUSE.toml does not list CLAUDE.md or audit directory (INFO)

`REUSE.toml` lists specific files for SPDX annotation. `CLAUDE.md` and the `audit/` directory are not listed. Running `rainix-sol-legal` may fail if these files lack SPDX headers. Either add them to REUSE.toml annotations or add SPDX headers to CLAUDE.md.
