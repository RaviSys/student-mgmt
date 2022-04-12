// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


import $ from 'jquery';
global.$ = jQuery;

import "css/admin";
import "@fortawesome/fontawesome-free/css/all"

import "bootstrap";
require("trix")
require("@rails/actiontext")

import "./plugins/jquery.easing.min"
import "./plugins/sb-admin-2.min"
// import "./plugins/Chart.min"
// import "./plugins/chart-area-demo"
// import "./plugins/chart-pie-demo"
