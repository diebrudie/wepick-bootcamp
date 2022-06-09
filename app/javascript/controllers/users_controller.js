import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="users"
export default class extends Controller {
  connect() {
    console.log("users controller connected")
  }
}
