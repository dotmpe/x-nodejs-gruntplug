# x-nodejs-gruntplugin-mpe

Based on generated code. Docs below.
Going to experiment with concrete plugins in branches,
currently some exploration for a Python Docutils plugin is done.

Branch docs
	f_htdocs
		- Plugin for Python docutils building into
		  book/site/manual/reference/...

		  Somewhat like other build-systems like sphynx which may provide
		  inspiration.

TODO rewrite generated docs below

## Getting Started
This plugin requires Grunt.

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install x-nodejs-gruntplugin-mpe --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('x-nodejs-gruntplugin-mpe');
```

## The "x_nodejs_gruntplugin_mpe" task

### Overview
In your project's Gruntfile, add a section named `x_nodejs_gruntplugin_mpe` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  x_nodejs_gruntplugin_mpe: {
    options: {
      // Task-specific options go here.
    },
    your_target: {
      // Target-specific file lists and/or options go here.
    },
  },
})
```

### Options

#### options.separator
Type: `String`
Default value: `',  '`

A string value that is used to do something with whatever.

#### options.punctuation
Type: `String`
Default value: `'.'`

A string value that is used to do something else with whatever else.

### Usage Examples

#### Default Options
In this example, the default options are used to do something with whatever. So if the `testing` file has the content `Testing` and the `123` file had the content `1 2 3`, the generated result would be `Testing, 1 2 3.`

```js
grunt.initConfig({
  x_nodejs_gruntplugin_mpe: {
    options: {},
    files: {
      'dest/default_options': ['src/testing', 'src/123'],
    },
  },
})
```

#### Custom Options
In this example, custom options are used to do something else with whatever else. So if the `testing` file has the content `Testing` and the `123` file had the content `1 2 3`, the generated result in this case would be `Testing: 1 2 3 !!!`

```js
grunt.initConfig({
  x_nodejs_gruntplugin_mpe: {
    options: {
      separator: ': ',
      punctuation: ' !!!',
    },
    files: {
      'dest/default_options': ['src/testing', 'src/123'],
    },
  },
})
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
_(Nothing yet)_

## License
Copyright (c) 2014 . Licensed under the GPLv3 license.
