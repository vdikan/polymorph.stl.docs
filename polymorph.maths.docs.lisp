;;;; polymorph.stl.docs.lisp

(in-package #:polymorph.stl.docs)


(defsection @polymorph-maths (:title "Maths")
  
  "Definitions found in POLYMORPH.MATHS package."
  
  (@polymorph-maths-arithmetics section)
  (@polymorph-maths-eq-and-ineq section)
  (@polymorph-maths-comparisons section)
  (@polymorph-maths-parametric section))


(defsection @polymorph-maths-arithmetics (:title "Arithmetics")

  (@polymorph-maths-arithmetic-basic section)
  (@polymorph-maths-arithmetic-updating section))


(defsection @polymorph-maths-arithmetic-basic
    (:title "Basic Arithmetic Functions")

  "Ad-hoc polymorphic realisation of basic arithmetic functions:
[+][polymorphic-function], [-][polymorphic-function], [*][polymorphic-function] and [/][polymorphic-function]."

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


(defsection @polymorph-maths-eq-and-ineq (:title "Equality & Inequality")

  (= polymorphic-function)

  "Below are some examples of [=][polymorphic-function] applied to the 
arguments of listed types:"

  "```cl-transcript
   (= 3 3) ; => T

   (= \"aaa\" \"bbb\") ; => NIL

   (= \"hello\" \"hello\") ; => T

   (= 'a 'A) ; => T

   (= '|a| 'A) ; => NIL

   (= '(4 . 2) '(4 . 2)) ; => T 

   (= '() nil) ; => T

   (= '() '(not-empty)) ; => NIL

   (= #(1 2 3 4) #(1 2 3 4)) ; => T

   (= '(1 1 1 1 1) '(1 1 0 1 1)) ; => NIL
   ```"

  (/= polymorphic-function)

  "Examples of inequality test:"

  "```cl-transcript
   (/= '(1 1 1 1 1) '(1 1 0 1 1)) ; => T

   (/= #(1 2 3 4) #(1 2 3 4)) ; => NIL

   (/= 'a '|A| 'A) ; => NIL
   ```")

 
(defsection @polymorph-maths-comparisons (:title "Order Comparison Functions")

  (< polymorphic-function)
  (<= polymorphic-function)
  (> polymorphic-function)
  (>= polymorphic-function))
  

(defsection @polymorph-maths-parametric (:title "Parametric-Polymorphic")
  
  "Functions like [min][polymorphic-function] and [max][polymorphic-function] that are realized with parametric polymorphism,
even if it's more of a convention within this package."
  
  (min polymorphic-function)
  (max polymorphic-function)

  "Comparison works for arguments of all types where
[<][polymorphic-function] order comparison function is defined."

  "```cl-transcript
   (min \"narrow\" \"thin\" \"fat\" \"thick\") ; => \"fat\"

   (min #\\c #\\, #\\; #\\a) ; => #\\,
   ```")

