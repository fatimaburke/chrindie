// disable auto discover
Dropzone.autoDiscover = false;

$(document).ready(function(){


  var dropzone = new Dropzone (".dropzone", {
    maxFilesize: 256, // set the maximum file size to 256 MB
    paramName: "album[track]", // Rails expects the file upload to be something like model[field_name]
    addRemoveLinks: false // don't show remove links on dropzone itself.
  });

  dropzone.on("success", function(file) {
    this.removeFile(file);
    $.getScript("/albums");
  })
});
