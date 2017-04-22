App.cable.subscriptions.create("AppearanceChannel", {
  // Called when the subscription is ready for use on the server.
  connected: function() {
    this.install();
    this.appear();
  },

  // Called when the WebSocket connection is closed.
  disconnected: function() {
    this.uninstall();
  },

  received: function(data) {
    console.log("data!", data);
  },

  // Called when the subscription is rejected by the server.
  rejected: function() {
    this.uninstall();
  },

  appear: function() {
    console.log("appear!");
    // Calls `AppearanceChannel#appear(data)` on the server.
    this.perform("appear", { appearing_on: $("main").data("appearing-on") });
  },

  away: function() {
    // Calls `AppearanceChannel#away` on the server.
    console.log("away!");
    this.perform("away");
  },

  install: function() {
    var buttonSelector = "[data-behavior~=appear_away]";
    var self = this;

    $(document).on("page:change.appearance", function() {
      console.log("change.appearance");
      self.appear();
    });

    $(document).on("click.appearance", buttonSelector, function() {
      console.log("click.appearance");
      self.away();
      return false;
    });

    $(buttonSelector).show();
  },

  uninstall: function() {
    $(document).off(".appearance");
  }
});
