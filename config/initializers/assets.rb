# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.


Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( signup.css ) 
Rails.application.config.assets.precompile += %w( index.css ) 
Rails.application.config.assets.precompile += %w( home.css ) 


Rails.application.config.assets.precompile += %w( productview.js )
Rails.application.config.assets.precompile += %w( sessionform.js )
Rails.application.config.assets.precompile += %w( userform.js )
Rails.application.config.assets.precompile += %w( usereditform.js )
Rails.application.config.assets.precompile += %w( articleform.js )

Rails.application.config.assets.precompile += %w( producto.js )
Rails.application.config.assets.precompile += %w( marcos.js )
Rails.application.config.assets.precompile += %w( promociones.js )





# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
