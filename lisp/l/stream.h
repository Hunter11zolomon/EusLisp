static pointer UWP347();
static pointer UWP422();
static pointer UWP429();
static pointer (*ftab[13])();

#define QUOTE_STRINGS_SIZE 252
static char *quote_strings[QUOTE_STRINGS_SIZE]={
    "input-stream-p",
    "output-stream-p",
    ":infd",
    ":outfd",
    "send",
    ":flag",
    ":async",
    ":fname",
    "make-string",
    "string",
    ":reset",
    ":input",
    ":output",
    "o_nonblock",
    "send-message",
    "super",
    ":prin1",
    "\"~s ~s ~d\"",
    ":init",
    "\"buffer string is too short for :read-bytes\"",
    ":chars-left",
    "plusp",
    ":tail-string",
    "replace",
    ":discard",
    "\"EOF hit\"",
    "concatenate",
    "io-stream",
    "file-stream",
    "\"non string\"",
    "stream",
    "let",
    "make-string-input-stream",
    "if",
    "member",
    ":start",
    "quote",
    "cadr",
    "nil",
    ":end",
    "make-string-output-stream",
    ":short",
    "unix::ntohs",
    ":port",
    "unix::htons",
    "\"~d.~d.~d.~d ~d\"",
    "#(:domain :pathname :service :port :host :protocol)",
    "\"echo\"",
    "\"HOST\"",
    "socket-address",
    ":start1",
    ":local",
    ":domain",
    ":listen",
    "socket-port",
    "\"\"",
    "\"\"",
    ":accept",
    "socket-stream",
    ":address",
    "\"~a: make-client-socket-stream: connect timeout~%\"",
    "*program-name*",
    "warn",
    "connect-sigalarm-handler",
    "old-sigalarm-handler",
    ":host",
    "*select-stream-vector*",
    "*asynchronous-streams*",
    "*asynchronous-stream-functions*",
    "defun",
    "progn",
    "pushnew",
    "unix:signal",
    "unix::sigio",
    "sigio-handler",
    "integerp",
    "unix:fcntl",
    "f_setfl",
    "logior",
    "f_getfl",
    "0",
    "fasync",
    "f_setown",
    "unix:getpid",
    "t",
    "setf",
    "aref",
    ":direction",
    "open",
    "broadcast-stream",
    ":fd",
    "*max-port-fd*",
    ":element-type",
    ":bit",
    "make-array",
    ":add-port",
    "find-method",
    "\"stream or fd expected for select port\"",
    "\"too many streams for selection\"",
    ":get-stream-fd",
    "functionp",
    ":select-loop",
    ":select",
    "\"LISP\"",
    "\"LISP\"",
    "*package*",
    "\"no such package\"",
    "(reset-stream make-two-way-stream make-msgq-input-stream make-msgq-output-stream make-string-input-stream make-string-output-stream with-input-from-string with-output-to-string get-output-stream-string read-from-string princ-to-string prin1-to-string socket-address make-socket-address destinations socket-port make-socket-port socket-stream make-server-socket-stream make-client-socket-stream make-dgram-socket *select-stream-vector* connect-server open-server select-stream *asynchronous-streams* *asynchronous-stream-functions* sigio-handler def-async broadcast-stream make-broadcast-stream read-buffer write-buffer)",
    ":instream",
    "\"(self class &optional in)\"",
    ":outstream",
    "\"(self class &optional out)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    ":in",
    "\"(self class &rest mesg)\"",
    ":out",
    "\"(self class &rest mesg)\"",
    "\"(self class)\"",
    "\"(self class flag)\"",
    "\"(self class)\"",
    "\"(self class in out)\"",
    "\"(self class &optional set)\"",
    "\"(self class &optional (n 1))\"",
    ":count",
    "\"(self class)\"",
    ":tail",
    "\"(self class &optional set)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    ":buffer",
    "\"(self class &optional start size)\"",
    "\"(self class dir buf &optional start end)\"",
    "reset-stream",
    "\"(s)\"",
    ":constant",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class flag)\"",
    ":nonblock",
    "\"(self class flag)\"",
    "\"(self class &optional (strm t) &rest msgs)\"",
    "\"(self class f name dir &optional (size 128))\"",
    ":read-bytes",
    "\"(self class n-bytes &optional (buf (make-string n-bytes)) (offset 0))\"",
    ":read-bytes-eof",
    "\"(self class)\"",
    "make-two-way-stream",
    "\"(in out)\"",
    "make-msgq-input-stream",
    "\"(k &optional (size 128))\"",
    "make-msgq-output-stream",
    "\"(k &optional (size 128))\"",
    "\"(s &optional start end)\"",
    "\"(&optional (s 64) start end)\"",
    "with-input-from-string",
    "\"(vstring &rest forms)\"",
    "with-output-to-string",
    "\"(vstring &rest forms)\"",
    "get-output-stream-string",
    "\"(s)\"",
    "read-from-string",
    "\"(s &optional (eof-error-p t) (eof-value nil))\"",
    "princ-to-string",
    "\"(x &optional (l 16))\"",
    "prin1-to-string",
    "\"(x &optional (l 16))\"",
    ":global",
    ":super",
    ":slots",
    ":metaclass",
    ":byte",
    ":size",
    ":documentation",
    "make-class",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    ":next-port",
    "\"(self class)\"",
    "\"(self class &optional (strm t))\"",
    "make-socket-address",
    "\"(&key (domain af_inet) ((:pathname path)) (service \\\"echo\\\") (port (unix:getservbyname service)) (host (unix:getenv \\\"HOST\\\")) protocol)\"",
    "object",
    "(id address)",
    "(socket-port-id socket-port-address)",
    "\"(self class)\"",
    "\"(self class)\"",
    ":id",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class &optional (backlog 3))\"",
    "\"(self class)\"",
    "\"(self class)\"",
    "\"(self class on)\"",
    "\"(self class addr)\"",
    "make-socket-port",
    "\"(addr)\"",
    "(address fd)",
    "\"(self class)\"",
    "\"(self class sockid addr &optional (size 128))\"",
    "make-server-socket-stream",
    "\"(sockport &optional (size 512))\"",
    ":vtype",
    "\"(s x)\"",
    "make-client-socket-stream",
    "\"(address &optional (timeout 5) (size 512))\"",
    "make-dgram-socket",
    "\"(addr)\"",
    "connect-server",
    "\"(host port &optional (timeout 5))\"",
    "vector",
    "select-stream",
    "\"SELECT-STREAM stream-list [timeout 0.0]\"",
    "\"(sig code)\"",
    "def-async",
    "\"DEF-ASYNC stream lambda-list . forms\"",
    "(destinations)",
    ":destinations",
    "\"(self class &optional d)\"",
    "\"(self class dests)\"",
    ":flush",
    "\"(self class &aux buf)\"",
    ":close",
    "\"(self class)\"",
    "make-broadcast-stream",
    "\"(&rest streams &aux dests)\"",
    "read-buffer",
    "\"(fname buf &optional (len (length buf)))\"",
    "write-buffer",
    "\"(fname buf &optional (len (length buf)))\"",
    "(port-selector)",
    "port-selector",
    "propertied-object",
    "(port-bits streams ready-bits)",
    "\"(self class &rest port-handlers)\"",
    "\"(self class strm)\"",
    "\"(self class strm handler &rest arglist)\"",
    ":remove-port",
    "\"(self class strm)\"",
    ":streams",
    "\"(self class)\"",
    ":fds",
    "\"(self class)\"",
    "\"(self class &optional (timeout 0.1))\"",
    "\"(self class &optional (timeout 0.1) (idle-func) &rest idle-args)\"",
  };
