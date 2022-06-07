import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activity-form"
export default class extends Controller {
  static targets = ["top-elements__btn.is--create-act", "form"]

  connect() {
    console.log('controller activity-form is connect')
    const dateActivity = document.querySelector('#activity_activity_date').value
    if(dateActivity.length > 0){
      const weekdayArray= ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
      const dateActivity = document.querySelector('#activity_activity_date').value
      const inputDate = new Date(dateActivity);
      const day = inputDate.getDate()
      const weekday = inputDate.getDay()
      const month = inputDate.toLocaleString('default', { month: 'long' })
      let fullDate = `${weekdayArray[weekday]}, ${day} ${month} ${inputDate.getFullYear()}`;
      document.getElementById("activity_date").innerHTML = fullDate;

      const dateDeadline = document.querySelector('#activity_deadline_date').value
      let inputDate2 = new Date(dateDeadline);
      let day2 = inputDate2.getDate()
      const weekday2 = inputDate2.getDay()
      let month2 = inputDate2.toLocaleString('default', { month: 'long' })
      let fullDate2 = `${weekdayArray[weekday2]}, ${day2} ${month2} ${inputDate2.getFullYear()}`;
      document.getElementById("deadline_date").innerHTML = fullDate2;
    }
  }

  openForm(e) {
    e.preventDefault();
    document.querySelector(".form-activity").classList.add('is--active');
    document.querySelector(".top-elements__btn.is--act-done").classList.add('is--active');
  }

  closeForm(e) {
    e.preventDefault();
    document.querySelector(".form-activity").classList.remove('is--active');
    document.querySelector(".top-elements__btn.is--act-done").classList.remove('is--active');
  }

  activityDate() {
    console.log('activity date changed')
    const weekdayArray= ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
    const date = document.querySelector('#activity_activity_date').value
    const inputDate = new Date(date);
    const day = inputDate.getDate()
    const weekday = inputDate.getDay()
    const month = inputDate.toLocaleString('default', { month: 'long' })
    let fullDate = `${weekdayArray[weekday]}, ${day} ${month} ${inputDate.getFullYear()}`;
    document.getElementById("activity_date").innerHTML = fullDate;
  }

  deadlineDate() {
    console.log('deadline date changed')
    const weekdayArray= ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
    const date = document.querySelector('#activity_deadline_date').value
    let inputDate = new Date(date);
    let day = inputDate.getDate()
    const weekday = inputDate.getDay()
    let month = inputDate.toLocaleString('default', { month: 'long' })
    let fullDate = `${weekdayArray[weekday]}, ${day} ${month} ${inputDate.getFullYear()}`;
    document.getElementById("deadline_date").innerHTML = fullDate;
  }

}
