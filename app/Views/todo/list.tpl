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
                    <tbody>
                        {foreach $todos as $todo}
                        <tr>
                            <td>{$todo['todo']}</td>
                            <td>{if $todo['completed']}Áno{else}Nie{/if}</td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
{/block}
{block name="script"}
<script>
    $('.datatable').DataTable({
        ajax: '/todo/ajaxData'
    });
</script>
{/block}