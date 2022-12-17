;;;; polymorph.stl.docs.lisp

(in-package #:polymorph.stl.docs)


(defsection @polymorph-stl (:title "Polymorph Standard Library")

  "Attempt to document libraries of the **polymorph.stl** project."

  (@overview section)
  (@polymorph-maths section))


(defsection @overview (:title "Project Overview")
  "[polymorph.stl](https://github.com/lisp-polymorph/polymorph.stl) is a
Common Lisp standard library implementation initiative lead by
**@commander-trashdin**. It is based upon **@digicar99**'s
[polymorphic-functions](https://github.com/digikar99/polymorphic-functions)."

  "This documentation is built with the
[fork](https://github.com/vdikan/doc/tree/locate-polymorphs) of
40ants-doc system by **@svetlyak40wt** that is extended to allow for
`'polymorphic-function` symbols' documentation export.")


(defun build-docs (&rest args)
  (40ants-doc-full/builder:render-to-files
   @polymorph-stl
   :format :html
   :warn-on-undocumented-packages nil
   :base-dir (asdf:system-relative-pathname
              "polymorph.stl.docs"
              "build/"))
  (with-open-file (readme
                   (asdf:system-relative-pathname
                    "polymorph.stl.docs" "README.md")
                   :direction :output
                   :if-exists :supersede
                   :if-does-not-exist :create)
    (format readme 
            (40ants-doc-full/builder:render-to-string
             @overview
             :format :markdown))))
