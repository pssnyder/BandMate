<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('lucky_stars'); ?>
<?php    $this->inc('elements/header.php'); ?>
<br class="clear" />
<div class="bodywrap">
	<div class="two-thirds column bodycontent">
		<div class="pageSection">
			<h1><?php   echo $c->getCollectionName(); ?></h1>
			<p class="meta"><?php   echo t('Posted by')?> <?php   echo $c->getVersionObject()->getVersionAuthorUserName(); ?> on <?php   echo $c->getCollectionDatePublic('F j, Y'); ?></p>		
		</div>
		<div class="pageSection">
		<?php   $a = new Area('Main'); $a->display($c); ?>
		</div>
		<div class="pageSection">
		<?php   $a = new Area('Blog Post More'); $a->display($c); ?>
		</div>
	</div>
	<div class="one-third column sidebar">
		<?php   $a = new Area('Sidebar'); $a->display($c); ?>
	</div>
	<div class="sixteen columns full">
		<?php   $a = new Area('Additional Content'); $a->display($c); ?>
	</div>
	<br class="clear" />
</div>
<?php    $this->inc('elements/footer.php'); ?>