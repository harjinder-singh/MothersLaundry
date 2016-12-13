# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( bootstrap.css animate.min.css prettyPhoto.css 
                                                 font-awesome.min.css style.css settings.css jquery.countdown.css 
                                                 jquery.themepunch.plugins.min.js jquery.themepunch.revolution.min.js
                                                 masonry.pkgd.min.js imagesloaded.pkgd.min.js jquery.cycle.all.js 
                                                 jquery.flot.min.js jquery.flot.resize.min.js jquery.countTo.js 
                                                 isotope.js jquery.countdown.min.js jquery.js bootstrap.min.js
                                                 waypoints.min.js jquery.prettyPhoto.js html5shiv.js
                                                 custom.js respond.min.js)
