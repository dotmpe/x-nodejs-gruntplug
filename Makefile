default:

todo.list: .
	grep -srIn 'TODO\|XXX\|FIXME' --exclude-dir 'node_modules' . | \
		grep -v Makefile:4: > $@


