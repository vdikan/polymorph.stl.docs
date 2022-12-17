;;;; package.lisp

(defpackage #:polymorph.stl.docs
  (:documentation "Attempt to document libraries of the polymorph.stl project.")
  (:use #:cl #:40ants-doc)
  (:shadowing-import-from #:polymorph.maths
                          #:= #:/=
                          #:< #:<= #:> #:>=
                          #:max #:min
                          #:+ #:- #:* #:/
                          #:incf #:decf)
  (:export #:build-docs))
