<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php    $this->inc('elements/header.php'); ?>

	<div class="nine columns">
		<div class="content">
			<div class="pageSection">
				<h1><?php   echo $c->getCollectionName(); ?></h1>
				<p class="meta"><?php   echo t('Posted by')?> <?php   echo $c->getVersionObject()->getVersionAuthorUserName(); ?> on <?php   echo $c->getCollectionDatePublic('F j, Y'); ?></p>		
			</div>
			<div class="pageSection">
				<?php   $as = new Area('Main'); $as->display($c); ?>
			</div>
			<div class="pageSection">
				<?php   $a = new Area('Blog Post More'); $a->display($c); ?>
			</div>
			<div class="pageSection">
				<?php   $ai = new Area('Blog Post Footer'); $ai->display($c); ?>
			</div>
		</div>
	</div>
	<div class="four columns">
		<div class="content">
		<?php   $a = new Area('Sidebar'); $a->display($c); ?>
		</div>
	</div>
	<div class="three columns">
		<div class="content">
		<?php   $a = new Area('Sidebar 2'); $a->display($c); ?>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>