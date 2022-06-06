import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
static targets = ["input","form", "list", "creates", "searchInput" ]

  connect() {
    console.log(this.element);
    console.log(this.formTarget);
    console.log(this.listTarget);
    console.log(this.searchInputTarget);

  }
  display(e) {
    e.preventDefault
    console.log(this.searchInputTarget)
    this.inputTarget.classList.toggle("d-none")
    this.inputTarget.classList.toggle("search-input")
    // this.createsTarget.classList.toggle("d-none")
  }
  update() {
    // this.formTarget.classList.remove("d-none")

    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }
}
