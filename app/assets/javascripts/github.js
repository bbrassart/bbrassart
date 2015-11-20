var github = {
  apiUrl: "https://api.github.com/users/bbrassart/repos",
  trigger: true,

  setInitialListeners: function() {
    var self = this;
    $('#triggerGithub').on('click',  function() {
      if (self.trigger) {
        var request = $.get(self.apiUrl);
        request.done(self.processAjax);
      }
      else {
        $('#showGithub').html("");
        $('#triggerGithub').text(`See my profile`);
      }
      self.trigger = !self.trigger;
    });

  },

  processAjax: function (response) {
    var html = ``;
    debugger;
    html += `<p>Currently working on ${response.length} projects<p><br><table class="pure-table">
    <thead>
        <tr>
            <th>Name</th>
            <th>Technology</th>
            <th>Last commit</th>
        </tr>
    </thead>
    <tbody>`;
    response.forEach(function(project) {
      html += `
          <tr>
              <th><a href="https://www.github.com/${project.full_name}" target=_blank>${project.name}</a></th>
              <th>${project.language}</th>
              <th>${project.updated_at}</th>
          </tr>`;
    });
    html += `</tbody></table>`;
    $('#showGithub').html("");
    $('#showGithub').append(html);
    $('#triggerGithub').text(`Make me smaller`);
  }
}
