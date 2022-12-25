;;;; polymorph.stl.docs.lisp

(in-package #:polymorph.stl.docs)


(defsection @polymorph-maths (:title "Maths")
  (@polymorph-maths-arithmetics section)
  (@polymorph-maths-eq-and-ineq section)
  (@polymorph-maths-parametric section))


(defsection @polymorph-maths-arithmetics (:title "TODO: Arithmetics")

  (@polymorph-maths-arithmetic-basic section)
  (@polymorph-maths-arithmetic-updating section))


(defsection @polymorph-maths-arithmetic-basic
    (:title "TODO: Basic Arithmetic Functions")

  "Ad-hoc polymorphic realisation of basic arithmetic functions: `+`,
`-`, `*` and `/`."

  (+ polymorphic-function)
  (- polymorphic-function)
  (* polymorphic-function)
  (/ polymorphic-function))


(defsection @polymorph-maths-arithmetic-updating
    (:title "TODO: Updating Macros")

  "incf, decf, multf, divf are updating macros corresponding to the functions above"

  (incf macro))


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
