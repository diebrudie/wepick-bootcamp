import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  connect() {
    console.log(this.formTarget);
    console.log(this.searchInput);
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
    this.formTarget.classList.toggle('is--active');
    //document.querySelector(".form-control").focus();
  }

  closeSearch(e){
    e.preventDefault();
    this.formTarget.classList.remove('is--active');
  }

}
