<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
Loader::model('attribute/categories/collection');
$pkg = Package::getByHandle('flex1200'); ?>
<?php    $this->inc('elements/header.php'); ?>
    <div class="onerow">
		<div class="col4">
			<div class="content">
				<?php   $a = new Area('Sidebar'); $a->display($c); ?>
			</div>
		</div>
		<div class="col8 last">
			<div class="content">
				<?php   $a = new Area('Main'); $a->display($c); ?>
			</div>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>