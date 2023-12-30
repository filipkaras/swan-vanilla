$('.datatable').DataTable({
    "bServerSide": true,
    "sAjaxSource": "/todo/ajaxData",
    "bProcessing": true,
    "stateSave": true,
    "order": [[1, 'desc']],
    "aoColumns": [
        { "bSortable": true },
        { "bSortable": true },
        { "bSortable": true },
        { "bSortable": true },
        { "bSortable": false }
    ]
});