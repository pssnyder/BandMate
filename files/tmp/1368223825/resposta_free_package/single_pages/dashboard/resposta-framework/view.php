<?php          defined('C5_EXECUTE') or die(_("Access Denied.")); 
$h = Loader::helper('concrete/interface'); ?>
<style>
.docs_navigation{
	position: fixed;
	right: 0px;
}
.docs_navigation li{
	display:list-item;
	background: #fff;
	list-style: none;
	text-transform: uppercase;
	margin: 10px 0px;
	padding: 20px;
}
.docs_navigation a{
	color: #238397;
}
.docs_navigation a:after{
	color: red;
}
.ccm-pane-body{
	min-height: 500px;
}
.ccm-pane-body h2{
	background: #dedede;
	color: #238397;  
	text-align: center;
}
.ccm-pane-body h4{
	
	color: #238397;
	
}

</style>

<div class="ccm-ui">
<div id="ccm-dashboard-page">
<div id="ccm-dashboard-content">
<div class="ccm-dashboard-page-container">
<div class="ccm-ui">
<div class="ccm-pane-header">
<ul class="ccm-pane-header-icons">

<li><a class="ccm-icon-close" onclick="ccm_closeDashboardPane(this)" href="javascript:void(0)">Close</a></li>
</ul>
<h3><?php        echo t('Framework Documentation');?></h3>
</div>
<div class="ccm-pane-body">
<div class="ccm-subnav">
<ul class="docs_navigation">

<li><a href="#docs_plugins"><?php   echo t('Plugins');?></a></li>
<li><a href="#docs_templates"><?php   echo t('Templates');?></a></li>
<li><a href="#docs_blocks"><?php   echo t('Blocks');?></a></li>
<li><a href="#docs_support"><?php   echo t('Support');?></a></li>
</ul>
</div>


<div id="docs_plugins">

<h2><?php   echo t('Plugins');?></h2>
<hr/>

<h4><?php   echo t('Grid and Breakpoints tool');?></h4>
<hr/>
<p><?php   echo t('Grid system based on 1140grid with support of breakpoints and media queries.');?></p>
<p><?php   echo t('12 columns all the way up to 1640px.');?></p>
<p><?php   echo t('Source Links');?></p>
<a target="_blank" href="http://cssgrid.net/">1140grid</a> / 
<a target="_blank" href="http://xoxco.com/projects/code/breakpoints/">breakpoints</a>
<hr/>

<h4><?php   echo t('Css Reset');?></h4>
<hr/>
<p><?php   echo t('Normalize.css modern alternative to reset css stylesheets.');?></p>
<p><?php   echo t('Source Links');?></p>
<a class="iframe" target="_blank" href="http://necolas.github.com/normalize.css/">Normalize.css</a>
<hr/>

<h4><?php   echo t('Html5 and css3 detection');?></h4>
<hr/>
<p><?php   echo t('Modernizr well known javascript library to test for html5 and css3 properties available on the browser.');?></p>
<p><?php   echo t('css3-mediaqueries.js for older browsers.');?></p>
<p><?php   echo t('Source Links');?></p>
<a class="iframe" target="_blank" href="http://www.modernizr.com/">Modernizr</a> / 
<a class="iframe" target="_blank" href="http://code.google.com/p/css3-mediaqueries-js/">css3-mediaqueries.js</a>
<hr/>


<h4><?php   echo t('Text manipulation');?></h4>
<hr/>
<p><?php   echo t('Arctext plugin to create text arc effect.');?></p>
<p><?php   echo t('fittext plugin to scale text in a responsive way.');?></p>
<p><?php   echo t('Source Links');?></p>
<a class="iframe" target="_blank" href="http://tympanus.net/codrops/2012/01/24/arctext-js-curving-text-with-css3-and-jquery/">Arctext</a> / 
<a target="_blank" href="https://github.com/davatron5000/FitText.js/blob/master/jquery.fittext.js">fittext</a>

<h4><?php   echo t('How to use:');?></h4>
<pre>
<xmp>
$example1.arctext({radius: 300})
</xmp>
</pre>


<hr/>


<h4><?php   echo t('Image Handling');?></h4>
<hr/>
<p><?php   echo t('Anystretch  plugin better background images.');?></p>

<p><?php   echo t('Source Links');?></p>
<a target="_blank" href="http://elliotjaystocks.com/blog/better-background-images-for-responsive-web-design/">Anystretch&nbsp;</a>

<h4><?php   echo t('How to use:');?></h4>
<pre>
<xmp>
$('.div01').anystretch("img01.jpg");
</xmp>
</pre>

<hr/>

<h4><?php   echo t('Tooltips');?></h4>
<hr/>
<p><?php   echo t('Easy Tooltips');?></p>
<p><?php   echo t('Source Links');?></p>
<a target="_blank" href="http://code.drewwilson.com/entry/tiptip-jquery-plugin">TipTip&nbsp;</a>

<h4><?php   echo t('How to use:');?></h4>
<pre>
<xmp>
Wrap images/links/words with class="tiptip" and title="your content for tooltip"

Setting it up your way:

$(function(){
$(".someClass").tipTip();
});

$(function(){
$(".someClass").tipTip({maxWidth: "auto", edgeOffset: 10});
});

<p>
Cras sed ante. Phasellus in massa. <a href="" class="someClass" title="This will show up in the TipTip popup.">
Curabitur dolor eros</a>, gravida et, hendrerit ac, cursus non, massa.
<span id="foo">
<img src="image.jpg" class="someClass" title="A picture of the World" />
</span>
</p>
</xmp>
</pre>


<hr/>
<h4><?php   echo t('Scroll to top');?></h4>
<hr/>
<p><?php   echo t('A button his added by default to the bottom right corner to scroll to top.');?></p>
<hr/>

</div>

























<div id="docs_templates">

<h2><?php   echo t('Templates');?></h2>
<hr/>
<h4><?php   echo t('Image Modal');?></h4>
<hr/>
<p><?php   echo t('Image Modal its a template for the core image block.');?></p>
<hr/>
<h4><?php   echo t('Navigation');?></h4>
<hr/>
<p><?php   echo t('Navigation template its based on core auto-nav block.');?></p>
<hr/>
<h4><?php   echo t('Filterable (Free version)');?></h4>
<hr/>
<p><?php   echo t('Filterable its a template for core page list block');?></p>
<hr/>
<h4><?php   echo t('Filterable QuickSand (Comercial version)');?></h4>
<hr/>
<p><?php   echo t('Filterable Quicksand its a template for core page list block');?></p>
<h4><?php   echo t('How to use (applies to both free and comercial templates) :');?></h4>
<p><?php   echo t('2 attributes are installed upon instalation filterable image and filterable categories.');?></p>
<p><?php   echo t('To setup first go to page attributes and in filterable categories add your categories. ');?></p>
<p><?php   echo t('Second on the page that will include the page list block add the atribute filterable categories and select all categories. Once done you page list block can use the template filterable.');?></p>
<p><?php   echo t('Finnaly to each page you choose to show in filterable you must add both atributes to page, so filterable image and categories and for each page you must choose an image and the categories that the page belongs to.');?></p>
</div>

<div id="docs_blocks">

<h2><?php   echo t('Blocks');?></h2>
<hr/>
<h4><?php   echo t('Flex Slider (free)');?></h4>
<hr/>
<p><?php   echo t('Flex slider its a responsive slider for your projects');?></p>
<hr/>
<h4><?php   echo t('Camera Slider (comercial)');?></h4>
<hr/>
<p><?php   echo t('Camera slider its and advanced responsive slider for your projects');?></p>
<hr/>
<h4><?php   echo t('Hover css3 effects (comercial)');?></h4>
<hr/>
<p><?php   echo t('Camera slider its and advanced responsive slider for your projects');?></p>
<hr/>
<h4><?php   echo t('Responsive Gallery (Comercial)');?></h4>
<hr/>
<p><?php   echo t('Responsive gallery add-on also available in the marketplace here.');?> <a href="http://www.concrete5.org/marketplace/addons/responsive-image-gallery/">Link</a></p>
<hr/>
<h4><?php   echo t('Colorbox (Comercial)');?></h4>
<hr/>
<p><?php   echo t('Colorbox plugin modified to be responsive, pick a image and choose an hover image and a set of images.');?></p>

</div>

<div id="docs_support">

<h2><?php   echo t('Support');?></h2>
<hr/>
<p><?php   echo t('c5team@concrete5-labs.com');?> / <?php   echo t('Via concrete5 support routes.');?></p>
<p><?php   echo t('Please review this product and if any issues arise contact us before reviewing.');?></p>
</div>


</div>
<div class="ccm-pane-footer"></div>

</div></div></div></div>