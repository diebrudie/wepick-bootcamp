import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  connect() {
    console.log(this.formTarget);
    console.log(this.searchIconTarget);
  }
  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }

  openSearch(e){
    e.preventDefault();
    this.formTarget.classList.add('is--active');
  }
}
