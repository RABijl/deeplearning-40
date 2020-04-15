convert "trainB/train/*.jpg" -set filename:base "%[basename]" -negate "trainB_inverted/train/%[filename:base].jpg"

