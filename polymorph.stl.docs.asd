;;;; polymorph.stl.docs.asd

(asdf:defsystem #:polymorph.stl.docs
  :description "Documentation for the libraries of polymorph.stl project."
  :author "Vladimir Dikan <vdikan@vivaldi.net>"
  ;; :license  "GPL"
  :version "0.0.1"
  :serial t
  :depends-on (#:40ants-doc-full #:polymorph.maths)
  :components ((:file "package") 
               (:file "polymorph.maths.docs")
               (:file "polymorph.stl.docs")))
