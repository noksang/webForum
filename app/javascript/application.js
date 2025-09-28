// // Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
// import "controllers"

// // สำหรับ Rails UJS (ใช้ link_to method: :delete)
// import Rails from "@rails/ujs"

// console.log("Start");
// Rails.start()
// console.log("rails run");

// import "bootstrap"
// import * as bootstrap from "bootstrap"

// import "jquery"   // เพิ่ม jQuery
// Load Rails UJS for method: :delete
import Rails from "@rails/ujs"
Rails.start()

import "@hotwired/turbo-rails"
import "controllers"

// Optional
import "bootstrap"
import "jquery"
