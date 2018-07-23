" VIM rc
" 	Author: Alexander Maricich
"

" Viewdoc:
" 	Flexable viewer for any documentation
Plugin 'powerman/vim-plugin-viewdoc'

" Clojure documentation lookup
let g:viewdoc_clj_cmd = "lein exec -ep \"(use 'clojure.repl) (doc "
let g:viewdoc_clj_cmd_post = ")\""
function s:ViewDoc_clojure(topic, filetype, synid, have_context)
	let h = { "ft": "clojure" }
	let h.topic = a:topic
	let h.cmd = printf('%s%s%s', g:viewdoc_clj_cmd, a:topic, g:viewdoc_clj_cmd_post)
	return h
endfunction
let g:ViewDoc_clojure = function('s:ViewDoc_clojure')
