import Vue from 'vue'
import Exam from '../Exam.vue'
import App from "../app";

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#exam',
    render: h => h(Exam, { props: document.getElementById("exam").dataset })
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
