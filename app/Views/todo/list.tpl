{extends file="index.tpl"}

{block name="body"}
    <div class="row mt-4">
        <div class="col-md-8">
            <h1>To-do list</h1>
        </div>
        <div class="col-md-4 text-end">
            <a href="/todo/create" type="button" class="btn btn-primary">New to-do</a>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-12">
            <table class="datatable">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Date Created</th>
                    <th>To-do</th>
                    <th>Completed</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
{/block}
{block name="script"}
<script>
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
</script>
{/block}