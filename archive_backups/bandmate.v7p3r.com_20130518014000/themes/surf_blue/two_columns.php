<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('lucky_stars'); ?>
<?php    $this->inc('elements/header.php'); ?>
<br class="clear" />
<div class="bodywrap">
	<div class="eight columns bodycontent">
		<?php   $a = new Area('Main'); $a->display($c); ?>
	</div>
	<div class="eight columns columns bodycontent">
		<?php   $a = new Area('Sidebar'); $a->display($c); ?>
	</div>
	<div class="sixteen columns bodycontent">
		<?php   $a = new Area('Additional Content'); $a->display($c); ?>
	</div>
	<br class="clear" />
</div>
<?php    $this->inc('elements/footer.php'); ?>