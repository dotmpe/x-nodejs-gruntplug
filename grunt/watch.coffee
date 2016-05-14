# 'watch' task config
module.exports = (grunt)->
	docs:
		files:
			'docs/**/*.rst'
		tasks: [ 'htdocs' ]


