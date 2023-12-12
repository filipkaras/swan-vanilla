{if $flashMessages}
    {foreach $flashMessages as $msgs}
        {foreach $msgs as $type => $msg}
            <div class="alert alert-{if $type == MSG_ERROR}danger{elseif $type == MSG_SUCCESS}success{else}info{/if}" onclick="this.remove()">
                {$msg}
            </div>
        {/foreach}
    {/foreach}
{/if}