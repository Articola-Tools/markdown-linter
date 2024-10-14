all

rule 'MD003', :style => :atx
rule 'MD004', :style => :dash
rule 'MD007', :indent => 4
rule 'MD010', :ignore_code_blocks => :true
rule 'MD013', :line_length => 80, :tables => false
rule 'MD024', :allow_different_nesting => true
rule 'MD026', :punctuation => '.,;:!'
rule 'MD029', :style => :ordered
exclude_rule 'MD033'