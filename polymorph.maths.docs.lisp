;;;; polymorph.stl.docs.lisp

(in-package #:polymorph.stl.docs)


(defsection @polymorph-maths (:title "Maths")

  (= polymorphic-function)

  "```cl-transcript
   (= 3 3) ; => T

   (= \"aaa\" \"bbb\") ; => NIL
   ```"

  (/= polymorphic-function))
