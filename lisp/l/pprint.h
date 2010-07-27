static pointer UWP20718();
static pointer (*ftab[7])();

#define QUOTE_STRINGS_SIZE 70
static char *quote_strings[QUOTE_STRINGS_SIZE]={
    "\" \"",
    "\"~X\"",
    "*standard-output*",
    "if",
    "fboundp",
    "quote",
    "pprint",
    "symbol-function",
    "*undefined*",
    "methods",
    "assoc",
    ":direction",
    ":output",
    "open",
    "\"'\"",
    "array",
    "array-rank",
    "array-total-size",
    "float-vector-p",
    "\"#f(\"",
    "\"#(\"",
    "\")\"",
    "\"(\"",
    "(defun defclass defmacro)",
    "(lambda macro)",
    "(set setq)",
    "(nil)",
    "\". \"",
    "\")\"",
    "\"(\"",
    "\" \"",
    "\")\"",
    ":element-type",
    "((:float . \"f\") (:integer . \"i\"))",
    "array-dimension",
    "\"a\"",
    "\"#2~A(\"",
    "\"(\"",
    "\"~S\"",
    "\" \"",
    "\")\"",
    "\"~%\"",
    "\")\"",
    "\"LISP\"",
    "\"LISP\"",
    "*package*",
    "\"no such package\"",
    "(spaces pf px pp-method pprint tprint pprint-file *undefined*)",
    "spaces",
    "\"(n &optional (file t))\"",
    "px",
    "\"(x &optional (strm t))\"",
    "pf",
    "\"(func &optional (file *standard-output*))\"",
    "pp-method",
    "\"(cls selector &optional (file *standard-output*))\"",
    "\"(sexp &optional (file *standard-output*) (tab 0) (platen 75))\"",
    "pprint-file",
    "\"(obj file)\"",
    "pprint1",
    "\"(sexp file pltn platen)\"",
    "pparg",
    "\"(sexp pltn platen file)\"",
    "pprint-array",
    "\"(a strm tab)\"",
    "tprint",
    "\"table-print obj tab [indent platen current-pos]\"",
    ":pprint",
    "\"@(#)$Id: pprint.l,v 1.1.1.1 2003/11/20 07:46:31 eus Exp $\"",
    "provide",
  };
