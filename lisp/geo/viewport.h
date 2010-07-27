static pointer CLO3854();
static pointer UWP4140();
static pointer CLO4149();
static pointer (*ftab[15])();

#define QUOTE_STRINGS_SIZE 269
static char *quote_strings[QUOTE_STRINGS_SIZE]={
    "float-vector-p",
    "inverse-matrix",
    "homo-viewport-clip",
    "homo2normal",
    "homogenize",
    "tempfv1",
    "tempfv2",
    "#(:xcenter :ycenter :width :height)",
    ":width",
    ":height",
    ":xcenter",
    ":ycenter",
    ":newcoords",
    "#(:dimension :xcenter :ycenter :width :height)",
    "super",
    ":init",
    ":dimension",
    "send",
    ":flush",
    ":ndc-point-to-screen",
    ":view",
    ":color",
    ":draw-point",
    ":ndc-line-to-screen",
    ":draw-line",
    "string",
    ":draw-string",
    ":draw-image-string",
    ":ndc-width-to-screen",
    ":ndc-height-to-screen",
    ":draw-rectangle",
    ":draw-fill-rectangle",
    ":draw-arc",
    ":draw-fill-arc",
    ":draw-line-ndc",
    ":draw-polyline-ndc",
    ":draw-box-ndc",
    ":project",
    ":draw-arc-ndc",
    ":draw-fill-arc-ndc",
    "#f(-1.0 -1.0 0.0)",
    "#f(1.0 1.0 0.0)",
    ":draw-star-ndc",
    ":spos",
    ":epos",
    ":visible-segments",
    ":line-style",
    ":invisible-segments",
    ":viewpoint",
    ":distance",
    ":all-edges",
    ":draw-edge",
    ":worldcoords",
    ":draw-faces",
    ":faces",
    ":transform-vector",
    "#f(0.0 0.0 0.0)",
    "(2 3)",
    "4",
    "\"draw vector?\"",
    ":draw-one",
    ":draw",
    "find-method",
    ":drawners",
    "line",
    "edge-image",
    ":draw-edge-image",
    "body",
    ":visible-edges",
    "faceset",
    ":edges",
    "face",
    "polygon",
    ":draw-star",
    "coordinates-p",
    ":draw-axis",
    "2dlnseg",
    ":draw-2dlnseg",
    "colormaterial",
    ":material",
    "linecolor",
    ":set-erase-mode",
    ":set-show-mode",
    ":clear",
    "#(:viewing :viewport :viewsurface :alternate :name)",
    ":name",
    "alt-surface",
    "*viewers*",
    ":center",
    ":size",
    ":resize",
    ":adjust-viewport",
    ":aspect",
    "viewer",
    "*viewer*",
    ":viewsurface",
    ":line-width",
    ":descendants",
    ":erase",
    ":draw-arrow",
    "*viewsurface*",
    "*epsilon*",
    "*contact-threshold*",
    "*parallel-threshold*",
    "*coplanar-threshold*",
    "*ignore-approximated-edges*",
    "flatten",
    ":viewing",
    "hid2",
    "*hid*",
    "*draw-invisible-edges*",
    "*invisible-edges*",
    ":approximated-p",
    "xflush",
    ":function",
    "find-if",
    "string-equal",
    "#(:viewport :viewsurface :viewing :dimension :size :width :height :x :y :title :name :parent :border-width :background :viewpoint :target :viewdistance :hither :yon :screen :screen-x :screen-y :xcenter :ycenter :backing-store :save-under :alternate)",
    "\"eusx view\"",
    "default-viewsurface",
    ":x",
    ":y",
    ":title",
    ":parent",
    ":border-width",
    ":background",
    ":backing-store",
    ":save-under",
    "viewport",
    ":xview",
    "*features*",
    "member",
    ":xwindow",
    "viewing2d",
    ":pos",
    "perspective-viewing",
    ":target",
    ":viewdistance",
    ":hither",
    ":yon",
    ":screen-x",
    ":screen-y",
    "x::*display*",
    "x::xdrawable",
    "x::xpixmap",
    ":create",
    ":viewport",
    ":alternate",
    "instance",
    "gcontext",
    ":free",
    "let",
    "gcsave",
    ":gc",
    "unwind-protect",
    "progn",
    "vsfsave",
    "viewer-surface",
    "setf",
    "\"GEOMETRY\"",
    "\"GEOMETRY\"",
    "*package*",
    "\"no such package\"",
    ":vtype",
    ":global",
    "*viewing*",
    "*viewport*",
    "(*viewer* *viewing* *viewsurface* *viewers* *viewport* draw draw-tree erase draw-axis draw-arrow hid *draw-invisible-edges* hidd cls draw-step draw-hid draw-thick draw-thick-step find-viewer view with-gc with-viewsurface)",
    ":super",
    "coordinates",
    ":slots",
    "nil",
    ":metaclass",
    ":element-type",
    ":documentation",
    "make-class",
    "\"(self class &optional v)\"",
    "\"(self class &optional v)\"",
    "\"(self class &optional x (y x))\"",
    "\"(self class &optional v)\"",
    "\"(self class &optional v)\"",
    "\"(self class &optional w (h w))\"",
    ":screen-point-to-ndc",
    "\"(self class p)\"",
    "\"(self class wid)\"",
    "\"(self class hei)\"",
    "\"(self class p)\"",
    "\"(self class p1 p2 &optional (do-clip t))\"",
    "\"(self class &rest args &key xcenter ycenter width height &allow-other-keys)\"",
    "\"(self class &rest args &key (dimension 3) (xcenter 100) (ycenter 100) (width 200) (height 200) &allow-other-keys)\"",
    "propertied-object",
    "((eye :forward (:look :view :viewpoint :view-direction :zoom :translate :locate :viewdistance :screen)) (port) (surface))",
    "\"(self class &rest msg)\"",
    "\"(self class &rest msg)\"",
    "\"(self class &rest msg)\"",
    "\"(self class)\"",
    ":point-to-screen",
    "\"(self class p)\"",
    ":draw-point-ndc",
    "\"(self class p &optional color)\"",
    "\"(self class p1 p2 &optional (do-clip t) (color nil))\"",
    ":draw-string-ndc",
    "\"(self class point string &optional color)\"",
    ":draw-image-string-ndc",
    "\"(self class point string &optional color)\"",
    ":draw-rectangle-ndc",
    "\"(self class point width height &optional color)\"",
    ":draw-fill-rectangle-ndc",
    "\"(self class point width height &optional color)\"",
    "\"(self class point width height &optional (angle1 0) (angle2 2pi) color)\"",
    "\"(self class point width height angle1 angle2 &optional color)\"",
    "\"(self class polyline)\"",
    "\"(self class lower-left upper-right)\"",
    "\"(self class point &optional (size 0.02))\"",
    "\"(self class p1 p2 &optional (do-clip t) (color nil))\"",
    ":draw-box",
    "\"(self class v &optional (size (/ (send surface :width) 300.0)))\"",
    ":draw-polyline",
    "\"(self class vlist)\"",
    "\"(self class point width height &optional (angle1 0) (angle2 2pi) color &aux v)\"",
    "\"(self class point width height &optional (angle1 0) (angle2 2pi) color &aux v)\"",
    "\"(self class p1 p2 &optional (do-clip t) (color nil))\"",
    ":pane",
    "\"(self class)\"",
    "\"(self class v &optional size)\"",
    "\"(self class l)\"",
    "\"(self class ei &optional (dashed-invisibles nil) (color (send ei :color)))\"",
    "\"(self class e &optional color)\"",
    "\"(self class flist &optional (normal-clip nil) color)\"",
    ":draw-body",
    "\"(self class bod &optional (normal-clip t))\"",
    "\"(self class coords &optional size)\"",
    "\"(self class thing info)\"",
    "\"(self class thing &optional info)\"",
    "\"(self class thing)\"",
    "\"(self class)\"",
    "\"(self class &key ((:viewing ving)) ((:viewport vport)) ((:viewsurface vsurf)) alternate name)\"",
    "\"(self class &optional w h (cx (/ w 2)) (cy (/ h 2)))\"",
    "\"(self class width &optional (height width))\"",
    "draw",
    "\"(&rest things &aux vw (thickness))\"",
    "draw-tree",
    "\"(&rest ccs)\"",
    "erase",
    "\"(&rest things &aux (vw *viewer*) (thickness))\"",
    "draw-axis",
    "\"(&rest thing &aux (vw *viewer*) (scale 10.0))\"",
    "draw-arrow",
    "\"(p1 p2)\"",
    "hid",
    "\"(&rest thing &aux (vw *viewer*) (drawners) (bodies))\"",
    "hidd",
    "\"(&rest thing &aux (vw *viewer*) (drawners) (bodies))\"",
    "cls",
    "\"(&optional (vw *viewer*))\"",
    "draw-hid",
    "\"(segments &optional (v *viewer*))\"",
    "draw-step",
    "\"(&rest objs &aux (*viewer* *viewer*) (thickness 3))\"",
    "find-viewer",
    "\"(name)\"",
    "view",
    "\"view: create a viewer with a viewsurface and a viewing.\nType of viewsurface is determined by *features*.\nxview  --> canvas-viewsurface\nxlib   --> xwindow\nnone   --> tektro-viewsurface\nCreated viewer instance is pushed in the *viewers* list.\nTo get viewing or viewsurface object in the viewer, send :viewing or\n:viewsurface message to the viewer\n	keyword parameters:\n	:x, :y	--location where the window appears\n	:size, :height, :width	--window size\n	:title	--window name\n	:viewpoint, :target	--viewing coords\n	:viewdistance, :hither, :yon, :screen	--projection parameters\"",
    "with-gc",
    "\"(system:gc &rest forms)\"",
    "with-viewsurface",
    "\"(vsf &rest forms)\"",
    "\"@(#)$Id: viewport.l,v 1.1.1.1 2003/11/20 07:46:30 eus Exp $\"",
    "provide",
  };
