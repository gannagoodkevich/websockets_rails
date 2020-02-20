require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

import "bootstrap";

$.ajax({
    type: "GET",
    url: "/",
    complete: function () {
        let name = prompt("Enter your name");
        $.ajax({
            type: "POST",
            url: "/users",
            data: {user: {name: name}}
        });
    }
});

