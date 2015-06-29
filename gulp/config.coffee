module.exports = {
  browserify: [
    {
      input      : ['./source/javascripts/index.js']
      output     : 'index.js'
      extensions : ['.js']
      destination: './build/javascripts/'
    }
  ]
  watch:
    sass: './source/stylesheets/**/*.scss'
    css: './source/stylesheets/**/*.css'
  compass:
    design: {
      src: './source/stylesheets/style.scss'
      css: 'source/stylesheets'
      sass: 'source/stylesheets'
    }
    development: {
      src: './source/stylesheets/development.scss'
      css: 'source/stylesheets'
      sass: 'source/stylesheets'
    }
  jsLibConcat:
    name: 'lib.js'
    srcs: [
      './bower_components/react/react-with-addons.js'
      './bower_components/lodash/dist/lodash.js'
    ]
    dest: './build/javascripts/'
  cssConcat:
    name: 'all.css'
    srcs: [
      './source/stylesheets/sanitize.css'
      './source/stylesheets/style.css'
      './source/stylesheets/development.css'
    ]
    dest: './build/stylesheets/'
}

