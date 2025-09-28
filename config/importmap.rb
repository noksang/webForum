# # Pin npm packages by running ./bin/importmap

# pin "application"
# pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.3
# pin "@hotwired/turbo-rails", to: "turbo.min.js"
# pin "@hotwired/stimulus", to: "stimulus.min.js"
# pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
# pin_all_from "app/javascript/controllers", under: "controllers"
# pin "bootstrap", to: "bootstrap.bundle.min.js"
# pin "jquery", to: "jquery.js" # @3.7.1
# Pin npm packages by running ./bin/importmap

pin "application"
pin "@rails/ujs", to: "rails-ujs.js", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.bundle.min.js"
pin "jquery", to: "jquery.js"
