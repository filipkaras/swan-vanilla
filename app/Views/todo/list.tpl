{extends file="index.tpl"}

{block name="body"}
    <div class="row mt-4">
        <div class="col-md-12">
            <h1>To-do list</h1>
            <div class="mt-4">
                <table class="datatable">
                    <thead>
                    <tr>
                        <th>To-do</th>
                        <th>Completed</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
{/block}
{block name="script"}
<script>
    $('.datatable').DataTable({
        "bServerSide": true,
        "sAjaxSource": "/todo/ajaxData",
        "bProcessing": true,
    });
</script>
{/block}