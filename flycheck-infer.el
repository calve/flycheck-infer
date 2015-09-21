(flycheck-define-checker javac-infer
    "A Java syntax and style checker using infer."
    :command ("infer" "--" "javac" source)
    :error-patterns
    ((error line-start (file-name) ":" line ":" " error:" (message) line-end)
     (warning line-start (file-name) ":" line ":" " warning:" (message) line-end)
     (info line-start (file-name) ":" line ":" " info:" (message) line-end))
      :modes java-mode)
