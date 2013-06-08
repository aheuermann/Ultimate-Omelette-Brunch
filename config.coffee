exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  conventions:
    ignored: /(^vendor\\.*\.less)|(^vendor\/.*\.less)|(^|\/)node_modules\/|(^|\/)_/
    assets: /^app\/assets\//
  
  modules:
    definition: false
    wrapper: false
  
  files:
    javascripts:
      
      defaultExtension: 'js'
      
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/js/test.js': /^test(\/|\\)(?!vendor)/
        'test/js/test-vendor.js': /^test(\/|\\)(?=vendor)/

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
        'test/css/test.css': /^test/

    templates:
      joinTo: 
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes
    jade_angular:
      modules_folder: 'templates'
      locals: {}
