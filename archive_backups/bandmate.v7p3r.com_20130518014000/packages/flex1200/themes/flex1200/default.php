<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('flex1200');
$this->inc('elements/header.php'); ?> 

    <div class="onerow">
		<div class="col8">
			<div class="content">
				<?php   $a = new Area('Main'); $a->display($c); ?>
			</div>
		</div>
		<div class="col4 last">
			<div class="content">
				<?php   $a = new Area('Sidebar'); $a->display($c); ?>
			</div>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>