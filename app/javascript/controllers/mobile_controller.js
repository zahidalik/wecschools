import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile"
export default class extends Controller {
  // static targets = [ "changeable" ]

  toggle() {
    document.getElementById("mobile-menu").classList.toggle("hidden");
    // console.log("it works")
    // this.changeableTarget.classList.toggle('hidden')
  }
}
