import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activity-form"
export default class extends Controller {
  static classes = [ "top-elements__btn.is--create-act" ]

  connect() {
    console.log('controller is connect')
  }

  openForm(e) {
    e.preventDefault();
    document.querySelector(".form-activity").classList.add('is--active');
  }

  closeForm(e) {
    e.preventDefault();
    document.querySelector(".form-activity").classList.remove('is--active');
  }
}
