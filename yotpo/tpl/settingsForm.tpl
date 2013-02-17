   <div class="y-settings-white-box">
    <form action="{$action}" method="post">
      <div class="y-page-header">
        <i class="y-logo"></i>Settings</div>
           {if !$finishedRegistration && !$allreadyUsingYotpo}<div class="y-settings-title">To customize the look and feel of the widget, and to edit your Mail After Purchase settings, just head to the 
            {if $appKey && $appKey != '' && $oauthToken && $oauthToken != ''}
              <a class="y-href" href="https://api.yotpo.com/users/b2blogin?app_key={$appKey}&secret={$oauthToken}" target="_blank">Yotpo Dashboard.</a></div> 
            {else}
              <a class="y-href" href="https://www.yotpo.com/?login=true" target="_blank">Yotpo Dashboard.</a></div> 
            {/if}
           {/if}
   {if $allreadyUsingYotpo}<div class="y-settings-title">To get your api key and secret token  
     <a class="y-href" href="https://www.yotpo.com/?login=true" target="_blank">log in here</a>, And go to your account settings.</div> 
   {/if}

      {if $finishedRegistration}<div class="y-settings-title">All set! The Yotpo widget is now properly installed on your shop. </br>
    To customize the look and feel of the widget, and to edit your Mail After Purchase settings, just head to the 
      {if $appKey && $appKey != '' && $oauthToken && $oauthToken != ''}
        <a class="y-href" href="https://api.yotpo.com/users/b2blogin?app_key={$appKey}&secret={$oauthToken}" target="_blank">Yotpo Dashboard.</a></div> 
      {else}
        <a class="y-href" href="https://www.yotpo.com/?login=true" target="_blank">Yotpo Dashboard.</a></div> 
      {/if}
    {/if}

      <fieldset id="y-fieldset">
        
        <div class="y-label">{l s='Select widget language' mod='yotpo'}
          <select name="yotpo_language">
            <option value="en" {if $widgetLanguage == "en"}selected{/if}>English</option>
            <option value="de" {if $widgetLanguage == "de"}selected{/if}>German</option>
            <option value="es" {if $widgetLanguage == "es"}selected{/if}>Spanish</option>
            <option value="fr" {if $widgetLanguage == "fr"}selected{/if}>French</option>
            <option value="he" {if $widgetLanguage == "he"}selected{/if}>Hebrew</option>
            <option value="hr" {if $widgetLanguage == "hr"}selected{/if}>Croatian</option>
            <option value="it" {if $widgetLanguage == "it"}selected{/if}>Italian</option>
            <option value="ja" {if $widgetLanguage == "ja"}selected{/if}>Japanese</option>
            <option value="nl" {if $widgetLanguage == "nl"}selected{/if}>Dutch</option>
            <option value="pt" {if $widgetLanguage == "pt"}selected{/if}>Portuguese</option>
            <option value="sv" {if $widgetLanguage == "sv"}selected{/if}>Swedish</option>
            <option value="vi" {if $widgetLanguage == "vi"}selected{/if}>Vietnamese</option>
          </select>
        </div>

        <div class="y-label">{l s='Select widget location' mod='yotpo'}
          <select name="yotpo_widget_location">
            <option value="footer" {if $widgetLocation == "footer"}selected{/if}>Page footer</option>
            <option value="tab" {if $widgetLocation == "tab"}selected{/if}>Tab</option>
            <option value="other" {if $widgetLocation == "other"}selected{/if}>Other (click update to see instructions)</option>
          </select>
        </div>
        {if $widgetLocation == "other"}
        <div class="y-label">{l s='In order to locate the widget in a custom position, please open the "root" folder, then enter the "themes" library. Locate the specific theme you would like the widget to show up on, and in this specific themes folder, locate the file "product.tpl". Add the code here, wherever you would like it placed.' mod='yotpo'}</br> </br> 
          <div class="y-code">
            {literal}

            &lt;div class=&quot;yotpo reviews&quot; </br>
               data-appkey=&quot;{$yotpoAppkey}&quot;</br>
               data-domain=&quot;{$yotpoDomain}&quot;</br>
               data-product-id=&quot;{$yotpoProductId}&quot;</br>
               data-product-models=&quot;{$yotpoProductModel}&quot; </br>
               data-name=&quot;{$yotpoProductName}&quot; </br>
               data-url=&quot;{$link-&gt;getProductLink($smarty.get.id_product, $smarty.get.id_product.link_rewrite)|escape:&#39;htmlall&#39;:&#39;UTF-8&#39;}&quot; </br>
               data-image-url=&quot;{$yotpoProductImageUrl}&quot; </br>
               data-description=&quot;{$yotpoProductDescription}&quot; </br>
               data-bread-crumbs=&quot;{$yotpoProductBreadCrumbs}&quot;</br>
               data-lang=&quot;{$yotpoLanguage}&quot;&gt; </br>
              &lt;/div&gt;
           {/literal}
         </div>
        </div>
        {/if}
        <div class="y-label">{l s='Select tab name' mod='yotpo'}</div>
        <div class="y-input">
          <input type="text" name="yotpo_widget_tab_name" value="{$tabName}"/>
        </div>

        <div class="y-label">{l s='App key' mod='yotpo'}</div>
        <div class="y-input">
          <input type="text" name="yotpo_app_key" value="{$appKey}"/>
        </div>

        <div class="y-label">{l s='Secret token' mod='yotpo'}</div>
        <div class="y-input">
          <input type="text" name="yotpo_oauth_token" value="{$oauthToken}"/>
        </div>

        <div class="y-label">{l s='Mail after purchase' mod='yotpo'}
            <input type="checkbox" name="yotpo_map_enabled" value="yotpo_map_enabled" {if $mapEnabled}checked="checked"{/if} />
        </div>
        
      </fieldset>
      <div class="y-footer">
        <input type="submit" name="yotpo_settings" value="{l s='Update' mod='yotpo'}" class="y-submit-btn" />
      </div>
    </form>

    </div>

