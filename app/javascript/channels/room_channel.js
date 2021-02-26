import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    // console.log("Receiving:")
    // console.log(data)

    if (data.user.id === data.user_id){
      $(`#channel-${data.channel.id}`).append('<p class="text-right alert alert-primary"role = "alert">' + data.message.content + ' - ' +  data.user.name + '</p>')
    } else {
      $(`#channel-${data.channel.id}`).append('<p class="text-right alert alert-success"role = "alert">' + data.message.content + ' - ' +  data.user.name + '</p>')
    }
  }
});
