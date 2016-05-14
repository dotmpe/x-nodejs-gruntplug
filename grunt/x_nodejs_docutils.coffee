### Grunt x_nodejs_docutils config ###
module.exports =  (grunt)->
	options:
		standalone: true
		#banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
		
	# Method 1: explicit dependencies
	example_1:
		files: [
			src: [ 'doc/main.rst', 'doc/foo/main.rst', 'doc/foo/bar/main.rst' ]
			dest: 'build/doc1/main.html'
		]

	# Method 2: using multi-task files attribute and expand build each individually,
	# but no tracking of dependency
	example_2:
		files: [
			expand: true
			cwd: 'doc/'
			src: '**/*.rst'
			dest: 'build/doc2/'
			ext: '.html'
			filter: (fn)->
				return true
		]

	# 
	example_3:
		files: [
			expand: true
			cwd: 'doc/'
			src: 'build/**/*.htsite'
			dest: 'build/'
			ext: '.html'
		]

	# example: build all files named <target>.rst
	# ie grunt htdocs:dist:main for main.rst
	dist:
		files: [
			expand: true
			cwd: 'doc/'
			src: ['**/<%= grunt.task.current.args[0] %>.rst'],
			dest: 'build/'
			ext: '.html'
		]


