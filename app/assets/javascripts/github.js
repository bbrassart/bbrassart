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
        window.location.href="#github";
      }
      self.trigger = !self.trigger;
    });

  },

  processAjax: function (response) {
    var html = ``;
    html += `
    <h2 class="github--projects__text content-head content-head-ribbon">
      Currently working on ${response.length} projects</h2>
    <table class="pure-table">
    <thead>
        <tr>
            <th class='is-center'>Name</th>
            <th class='is-center'>Technology</th>
            <th class='is-center'>Last commit</th>
        </tr>
    </thead>
    <tbody>`;
    response.forEach(function(project) {
      html += `
          <tr>
              <th><a class='repo-link' href="https://www.github.com/${project.full_name}" target=_blank>${project.name}</a></th>
              <th>${project.language}</th>
              <th>${project.updated_at.slice(0, 10)}</th>
          </tr>`;
    });
    html += `</tbody></table>`;
    $('#showGithub').html("");
    $('#showGithub').append(html);
    $('#triggerGithub').text(`Make me smaller`);
    window.location.href="#github";
  }
}
