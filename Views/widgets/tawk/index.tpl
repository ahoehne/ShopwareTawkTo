<script type="text/javascript">
    {literal}
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    {/literal}
    {if $userData}
        Tawk_API.visitor = {
            name: '{$userData.name}',
            email: '{$userData.email}'
        };
    {/if}
    (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='{$tawkUrl}';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
    })();
    Tawk_API.onLoad = function(){
        {block name="widgets_tawk_index_onload"}
        Tawk_API.setAttributes({
            'shopName': '{$shopName}'
            {if $userData}
            ,
            'customernumber': '{$userData.customernumber}'
            {/if}
        });
        {/block}
    };
</script>
