import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("hello");
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("bg-dark")
    } else {
      this.element.classList.remove("bg-dark")
    }
  }
}
