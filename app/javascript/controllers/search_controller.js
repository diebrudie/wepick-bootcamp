import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ['searchInput']
  connect() {
    console.log("Hello search")
  }

  // display(e) {
  //   e.preventDefault
  //   console.log(this.searchInputTarget)
  //   this.searchInputTarget.classList.remove('d-none')
  // }
}
