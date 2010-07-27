static pointer (*ftab[35])();

#define QUOTE_STRINGS_SIZE 280
static char *quote_strings[QUOTE_STRINGS_SIZE]={
    "event",
    ":cursor",
    ":off",
    ":event-row",
    ":event-col",
    "event-button",
    ":select",
    "*shell-window*",
    ":width",
    ":height",
    "send-message",
    "super",
    ":create",
    ":event-mask",
    "(:configure)",
    ":font",
    "font-cour10",
    ":title",
    "\"eustop ~d\"",
    "panel",
    ":parent",
    ":x",
    ":y",
    "font-courb12",
    "textwindow",
    "eustop-history-window",
    ":create-item",
    "button-item",
    "\"attach\"",
    ":attach",
    "\"FilePanel\"",
    ":filepanel",
    "\"history\"",
    ":refresh-history",
    "\"exit\"",
    ":exit",
    "\"alloc\"",
    ":alloc",
    "slider-item",
    "\"interval\"",
    ":interval",
    ":min",
    ":max",
    ":value-format",
    "\"~3,1f\"",
    ":detach",
    ":resize",
    ":reparent",
    ":label",
    "\"detach\"",
    "*root*",
    "\"attach\"",
    "xflush",
    "filepanel",
    ":win-row-max",
    ":win-col-max",
    ":clear",
    ":put-line",
    "\"~2d: ~A~%\"",
    "*history*",
    "*history-index*",
    ":scroll",
    "\"~2d: ~A~%\"",
    "\"****=~s\"",
    "***",
    "\"*** =~s\"",
    "**",
    "\"**  =~s\"",
    "*",
    ":clear-lines",
    "\"GC ~4d: (~s+~s)/~ss, ~sKB/~sKB\"",
    "/=",
    "get-history",
    "1",
    "line-edit",
    "terpri",
    "add-history",
    ":update-history",
    "make-string-input-stream",
    "evaluate-stream",
    "*top-selector-interval*",
    "oddp",
    ":image-string",
    "\"*\"",
    "\" \"",
    "*eustop-window*",
    ":time-tick",
    ":update-gc",
    "eustop-win",
    "eustop-update-history",
    "*toplevel-hook*",
    "eustop-update-gc",
    "system:*gc-hook*",
    "eustop-exit",
    "system:*exit-hook*",
    "eustop-win-time-tick",
    "*timer-job*",
    ":test",
    ":test-not",
    ":key",
    "member",
    "\"DISPLAY\"",
    "opendisplay",
    "*display*",
    "zerop",
    "*standard-input*",
    "\"connected to Xserver DISPLAY=~A~%\"",
    "\"DISPLAY\"",
    "warn",
    "\"*-courier-medium-r-*-8-*\"",
    "font-id",
    "font-cour8",
    "\"*-courier-medium-r-*-10-*\"",
    "\"*-courier-medium-r-*-12-*\"",
    "font-cour12",
    "\"*-courier-medium-r-*-14-*\"",
    "font-cour14",
    "\"*-courier-medium-r-*-18-*\"",
    "font-cour18",
    "\"*-courier-bold-r-*-12-*\"",
    "\"*-courier-bold-r-*-14-*\"",
    "font-courb14",
    "\"*-courier-bold-r-*-18-*\"",
    "font-courb18",
    "\"*-courier-bold-r-*-24-*\"",
    "font-courb24",
    "\"*-times-medium-r-*-10-*\"",
    "font-times10",
    "\"*-times-medium-r-*-12-*\"",
    "font-times12",
    "\"*-times-bold-r-*-12-*\"",
    "font-timesb12",
    "\"*-times-bold-r-*-14-*\"",
    "font-timesb14",
    "\"*-times-bold-r-*-18-*\"",
    "font-timesb18",
    "\"*-times-bold-r-*-24-*\"",
    "font-timesb24",
    "\"lucidasans-bold-12\"",
    "font-lucidasans-bold-12",
    "\"lucidasans-bold-14\"",
    "font-lucidasans-bold-14",
    "\"*-Helvetica-Bold-R-Normal-*-12-*\"",
    "font-helvetica-bold-12",
    "\"*-Helvetica-Medium-R-Normal-*-12-*\"",
    "font-helvetica-12",
    "\"*-fixed-medium-r-normal-*-14-*\"",
    "font-a14",
    "defaultscreen",
    "*screen-no*",
    "defaultscreenofdisplay",
    "*screen*",
    "defaultvisualofscreen",
    "*visual*",
    "make-string",
    "matchvisualinfo",
    ":long",
    "*visual-pseudo-8*",
    "*visuals*",
    "*visual-true-8*",
    "*visual-direct-8*",
    "*visual-true-15*",
    "*visual-direct-15*",
    "*visual-true-16*",
    "*visual-direct-16*",
    "*visual-true-24*",
    "*visual-direct-24*",
    "doessaveunders",
    "*save-under*",
    "defaultdepth",
    "*depth*",
    "whitepixel",
    "*whitepixel*",
    "blackpixel",
    "*blackpixel*",
    "*fg-pixel*",
    "*bg-pixel*",
    "gcontext",
    "*defaultgc*",
    ":foreground",
    ":background",
    "xwindow",
    ":init",
    "defaultrootwindow",
    "\"WINDOWID\"",
    "\"WINDOWID\"",
    "read-from-string",
    "*whitegc*",
    ":foreback",
    "*blackgc*",
    "colormap",
    "defaultcolormap",
    "*color-map*",
    ":name",
    ":set-colormap",
    "\"\"",
    ":depth",
    "create-ximage",
    "*default-ximage*",
    "make-gray-gc",
    "*gray-gc*",
    "make-gray-pixmap",
    "*gray-pixmap*",
    "*gray25-pixmap*",
    "*gray50-pixmap*",
    "*gray75-pixmap*",
    "make-gc-from-pixmap",
    "*gray25-gc*",
    "*gray50-gc*",
    "*gray75-gc*",
    "lisp::*use-top-selector*",
    "*top-selector*",
    ":add-port",
    "display-fd",
    "window-main-one",
    "\"X events are being asynchronously monitored.~%\"",
    "\"Xserver connection failed\"",
    "warning-message",
    "\"X\"",
    "\"X\"",
    "*package*",
    "\"no such package\"",
    ":xdecl",
    "\"Xdecl.l\"",
    "require",
    "(*shell-window* *eustop-window* eustop-win)",
    ":vtype",
    ":global",
    "*gray*",
    "\"#b0b0b0\"",
    "*bisque1*",
    "\"#ffe4c4\"",
    "*bisque2*",
    "\"#eed5b7\"",
    "*bisque3*",
    "\"#cdb79e\"",
    "*lightblue2*",
    "\"#b2dfee\"",
    "*lightpink1*",
    "\"#ffaeb9\"",
    "*maroon*",
    "\"#b03060\"",
    "*max-intensity*",
    ":super",
    ":slots",
    "nil",
    ":metaclass",
    ":element-type",
    ":size",
    ":documentation",
    "make-class",
    ":buttonpress",
    "\"(self class event)\"",
    ":buttonrelease",
    "\"(self class event)\"",
    "(euspan gcpan contained attach-button history-win last-history history-list result-history-win tick)",
    "\"(self class &rest args)\"",
    "\"(self class e)\"",
    "\"(self class e)\"",
    "\"(self class e)\"",
    "\"(self class e)\"",
    "\"(self class)\"",
    "\"(self class free total)\"",
    ":configurenotify",
    "\"(self class event)\"",
    "\"(self class n button)\"",
    "\"(self class x)\"",
    "\"(self class x)\"",
    "\"(self class x interval)\"",
    "\"(self class &rest x)\"",
    "\"nil\"",
    "\"nil\"",
    "\"(free total)\"",
    "\"nil\"",
    "\"nil\"",
    "init-xwindow",
    "\"(&optional (display (unix:getenv \\\"DISPLAY\\\")))\"",
    ":xtop",
    "\"@(#)$Id: Xtop.l,v 1.1.1.1 2003/11/20 07:46:36 eus Exp $\"",
    "provide",
  };
