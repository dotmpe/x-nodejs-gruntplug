### Grunt x_nodejs_docutils config ###
module.exports = 
	options:
		banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
	docs:
		src: [ 'doc/**/*.rst' ]
	build:
		{}

