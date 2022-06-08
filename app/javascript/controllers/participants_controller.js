import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="participants"
export default class extends Controller {
  targets = ["new_participant"]

  connect() {
    console.log("participants connected")
  }

}
