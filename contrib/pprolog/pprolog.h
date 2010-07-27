static pointer clo513();
static pointer clo518();
static pointer clo523();
static pointer clo526();
static pointer (*ftab[7])();

#define QUOTE_STRINGS_SIZE 98
const static char *quote_strings[QUOTE_STRINGS_SIZE]={
    "*prolog-predicates*",
    "prolog",
    "remprop",
    "(cons nil nil)",
    "fetch",
    "*subst*",
    "*undo-list*",
    "cddar",
    "prolog_builtin",
    "*new-subst*",
    "*old-subst*",
    "*cue*",
    "refute",
    "*proved*",
    "*prolog-debug*",
    "member",
    "-",
    ".",
    "\". expected, but ~s is encountered~%\"",
    "\"portable prolog  EusLisp~%\"",
    "open",
    "\"~%PRL> \"",
    "ok",
    "+",
    "*defined*",
    "*false*",
    "(end unix:exit quit ok stop epilog)",
    "epilog",
    "body",
    "string",
    "\"P_\"",
    "progn",
    "defun",
    "putprop",
    "quote",
    "deleted",
    "(special *old-subst* *cue* *new-subst* *undo-list* *subst*)",
    ":special",
    "(special *prolog-debug*)",
    "(special *prolog-predicates*)",
    "init-prolog",
    "\"nil\"",
    "newsubst",
    "\"nil\"",
    "var?",
    "\"(x)\"",
    "assigned?",
    "\"(x subst)\"",
    "link",
    "\"(x x-subst y y-subst)\"",
    "unify",
    "\"(x x-subst y y-subst)\"",
    "\"(x subst)\"",
    "fetch-value",
    "\"(x subst)\"",
    "undo",
    "\"nil\"",
    "try-sys",
    "\"(form subst)\"",
    "refutes",
    "\"(clause *new-subst* *old-subst* *cue*)\"",
    "refuten",
    "\"(clause definition)\"",
    "\"(clause)\"",
    "define-clause",
    "\"(clause)\"",
    "read-clauses",
    "\"(file)\"",
    "\"(&optional (file t))\"",
    "defsyspred",
    "\"(name arglist &rest body)\"",
    "p_call",
    "\"(args subst)\"",
    "call",
    "p_evalq",
    "\"(args subst)\"",
    "evalq",
    "p_eval",
    "\"(args subst)\"",
    "eval",
    "p_purge",
    "\"(args subst)\"",
    "purge",
    "p_load",
    "\"(args subst)\"",
    "load",
    "p_print",
    "\"(args subst)\"",
    "print",
    "p_false",
    "\"(args subst)\"",
    "false",
    "p_not",
    "\"(args subst)\"",
    "not",
    "p_assert",
    "\"(args subst)\"",
    "assert",
  };
