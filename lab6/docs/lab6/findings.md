# Task C1 — Code smells

| Smell | Where | Principle it breaks |
|---|---|---|
| Long if/elif chain on `kind` | Inside the course loop and after it | OCP: adding a student type requires editing existing logic |
| Magic numbers (`1200`, `2000`, `5000`, `0.5`) | Fee calculations | Readability/maintainability: business rules are buried in literals |
| Multiple responsibilities (calculate, format, write file, print) | Entire `make_invoice` function | SRP: one function has several reasons to change |
| Direct file-system dependency (`open`) | File-writing lines | DIP: calculation depends on a concrete disk operation, making tests harder |
| Manual open/write/close | File-writing lines | Reliability/clean resource management: a context manager should manage the file |
| Repeats fee calculation per course | Loop over `student.courses` | Simplicity: total hours can be calculated once and passed to a policy |
