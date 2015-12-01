var github = {
  apiUrl: "https://api.github.com/users/bbrassart/repos",
  trigger: true,

  setInitialListeners: function() {
    var self = this;
    $('#triggerGithub').on('click',  function() {
      if (self.trigger) {
        $.ajax({
          type: "get",
          url: self.apiUrl,
          context: self,
          success: self.processAjax
        })
      }
      else {
        setTimeout(function(){ $('#showGithub').html(""); }, 400);
        $('#showGithub').fadeOut("slow");
        $("#limitGithub").animate({
          height: 0
        },"slow");
        $('#triggerGithub').text(`See my profile`);
        window.location.href="#github";
      }
      self.trigger = !self.trigger;
    });
  },

  buildHeader: function(response) {
    return `<h2 class="github--projects__text content-head content-head-ribbon">
    Currently working on ${response.length} projects</h2>`
  },

  buildMainTableHeader: function() {
    return `<table class="pure-table">
    <thead>
        <tr>
            <th class='is-center'>Name</th>
            <th class='is-center'>Language</th>
            <th class='is-center'>Last commit</th>
        </tr>
    </thead>
    <tbody>`
  },

  buildChartRow: function(project) {
    return `<tr><th>
    <a class='repo-link' href="https://www.github.com/${project.full_name}" target=_blank>
    ${project.name}</a></th><th>${project.language}</th>
    <th>${project.updated_at.slice(0, 10)}</th></tr>`
  },

  buildCloseTable: function() {
    return `</tbody></table>`
  },

  createHashOfTechs: function(response) {
    var techs = {};
    response.forEach(function(project) {
      if (techs[project.language]) {
        techs[project.language] += 1;
      } else {
        techs[project.language] = 1;
      };
    });
    return techs;
  },

  processAjax: function (response) {
    var techs = this.createHashOfTechs(response);
    var self = this;
    var html = ``;
    html += this.buildHeader(response);
    html += this.buildMainTableHeader()
    response.forEach(function(project) {
      html += self.buildChartRow(project);
    });
    html += this.buildCloseTable();

    $('#showGithub').html("");
    $('#showGithub').append(html);
    $('#showGithub').fadeIn("slow");
    $("#limitGithub").animate({
      height: $("#showGithub").height()
    },"slow");

    $('#triggerGithub').text(`Make me smaller`);

    window.location.href="#github";
  }
}
