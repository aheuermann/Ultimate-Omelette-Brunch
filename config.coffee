exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      
      defaultExtension: 'js'
      
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: [
          'vendor/styles/bootstrap.css'
        ]

    templates:
      joinTo: 'javascripts/templates.js'

  plugins:
    stylus:
      linenos: yes
      firebug: yes
    jade:
      pretty: yes
