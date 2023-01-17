;;;; polymorph.stl.docs.lisp

(in-package #:polymorph.stl.docs)


(defsection @polymorph-maths (:title "Maths")
  (@polymorph-maths-arithmetics section)
  (@polymorph-maths-eq-and-ineq section)
  (@polymorph-maths-parametric section))


(defsection @polymorph-maths-arithmetics (:title "Arithmetics")

  (@polymorph-maths-arithmetic-basic section)
  (@polymorph-maths-arithmetic-updating section))


(defsection @polymorph-maths-arithmetic-basic
    (:title "Basic Arithmetic Functions")

  "Ad-hoc polymorphic realisation of basic arithmetic functions: `+`,
`-`, `*` and `/`."

  (+ polymorphic-function)

  "Example of CHARACTER summation:"

  "```cl-transcript
   (+ #\\a #\\5 #\\t) ; => #\\LATIN_CAPITAL_LETTER_C_WITH_DOT_ABOVE

   (format nil \"~a\" (+ #\\a #\\5 #\\t)) ; => Ċ
   ```"

  (- polymorphic-function)
  (* polymorphic-function)
  (/ polymorphic-function))


(defsection @polymorph-maths-arithmetic-updating
    (:title "Updating Macros")

  "The updating macros corresponding to the functions above: `incf`,
`decf`, `multf` and `divf`."

  (incf macro)

  "It's possible to update e.g. a `setf`-able place of type CHARACTER
whien `delta` is of same type too:"
   
  "```cl-transcript
   (incf (car '(#\\1)) #\\2) ; => #\\c
   ```"

  (decf macro)
  (multf macro)
  (divf macro))


(defsection @polymorph-maths-eq-and-ineq (:title "TODO: Equality & Inequality")

  (@polymorph-maths-equality section)
  (@polymorph-maths-inequality section))


(defsection @polymorph-maths-equality (:title "TODO: Equality")

  (= polymorphic-function)

  "```cl-transcript
   (= 3 3) ; => T

   (= \"aaa\" \"bbb\") ; => NIL
   ```")


(defsection @polymorph-maths-inequality (:title "TODO: Inequality")

  (/= polymorphic-function))


(defsection @polymorph-maths-parametric (:title "TODO: Parametric-Polymorphic")
  
  "Functions like `min` and `max` that are realized with parametric polymorphism,
even if it's more of a convention within this package."
  
  (min polymorphic-function)
  (max polymorphic-function))
