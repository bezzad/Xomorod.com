jQuery(window).load(function () {
    pageGrids.InboxGrid.onRowSelect(function (e) {
        $("#name")[0].value = e.row.Name;
        $("#email")[0].value = e.row.Email;
        $("#subject")[0].value = e.row.Subject;
        $("#message")[0].value = e.row.Message;

        var id = e.row.ContactMeId;
        if ($("#isRead_" + id).prop("checked") === false) {
            $.get('/authorize/messageReadAsync', { id }, function (data) {
                if (data === true) {
                    var isReadCellOfSelectedRow = $("#isRead_" + id);
                    isReadCellOfSelectedRow.prop("checked", true);
                    isReadCellOfSelectedRow.closest("tr").removeClass("success");
                }
            });
        }
    });
});