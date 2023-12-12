{extends file="index.tpl"}

{block name="body"}
    <div class="row mt-4">
        <div class="col-md-8">
            <h1>To-do list</h1>
        </div>
        <div class="col-md-4 text-end">
            <button type="button" class="btn btn-primary">New to-do</button>
        </div>
    </div>
    {include file="inc/result.tpl"}
    <div class="row mt-4">
        <div class="col-md-12">
            <table class="datatable">
                <thead>
                <tr>
                    <td>ID</td>
                    <th>To-do</th>
                    <th>Completed</th>
                    <td>Action</td>
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
        "stateSave": true
    });
</script>
{/block}