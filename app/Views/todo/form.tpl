{extends file="index.tpl"}

{block name="body"}
    <div class="row justify-content-center mt-4">
        <div class="col-md-6">
            <h1>{if $edit}Update{else}New{/if} to-do</h1>
        </div>
    </div>
    <div class="row justify-content-center mt-4">
        <div class="col-md-6">
            {$form}
        </div>
    </div>
{/block}