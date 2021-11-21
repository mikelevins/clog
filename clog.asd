
;;;; clog.asd

#+allegro (require :aserve)
#+allegro (require :websocket)

(asdf:defsystem #:clog
  :description "The Common Lisp Omnificent GUI"

  :author "David Botton <david@botton.com>"
  :license  "BSD"
  :version "0.9.0"
  :serial t
  :pathname "source/"
  :depends-on (#-allegro #:clack
               #-allegro #:websocket-driver
               #-allegro #:lack-middleware-static
               #-allegro #:hunchentoot
               #:alexandria
               #:cl-ppcre
	       #:bordeaux-threads
               #:trivial-open-browser
               #:parse-float
	       #:3BMD
               #:colorize
	       #:sqlite
               #:mgl-pax
               #:quri)
  :components ((:file "clog-connection")
	       (:file "clog")
	       (:file "clog-docs")
	       (:file "clog-utilities")
	       (:file "clog-base")
	       (:file "clog-element")
	       (:file "clog-element-common")
	       (:file "clog-style")
	       (:file "clog-canvas")
	       (:file "clog-form")
	       (:file "clog-multimedia")
	       (:file "clog-window")
	       (:file "clog-document")
	       (:file "clog-location")
	       (:file "clog-navigator")	       
	       (:file "clog-body")
	       (:file "clog-system")
	       (:file "clog-gui")
	       (:file "clog-web")
	       (:file "clog-helpers")))

(asdf:defsystem #:clog/tools
  :depends-on (#:clog)
  :pathname "tools/"
  :components ((:file "clog-db-admin")))

#+nil (asdf:load-system :clog)
