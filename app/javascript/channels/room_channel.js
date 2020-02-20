import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    console.log("Connected to the room!");
  },

  disconnected() {
  },

  received(data) {
    console.log("Recieving:")
    console.log(data.content)
    $('#msg').append('<h3> ' + data.user.name+ '</h3>' + '<h5>' + data.content.content + '</h5>')
  }
});

