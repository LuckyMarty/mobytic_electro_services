$('#mobytic_ttc_ht').change(
    function () {
        if (this.checked) {
            document.cookie = "mobytic_TTC_HT=TTC";
            // location.reload(true);
        } else {
            document.cookie = "mobytic_TTC_HT=HT";
            // location.reload(true);
        }
        location.reload(true);
    }
);