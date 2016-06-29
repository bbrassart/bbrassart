var mobileNavMenu = {
    setInitialListeners: function() {
        $("select").change(function() {
            window.location = $(this).find("option:selected").val();
        });
    }
};
