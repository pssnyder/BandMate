<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
Loader::model('attribute/categories/collection');
$pkg = Package::getByHandle('flex1200'); ?>
<?php    $this->inc('elements/header.php'); ?>
    <div class="onerow">
		<div class="col12">
			<div class="content">
				<?php   $a = new Area('Main'); $a->display($c); ?>
			</div>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>