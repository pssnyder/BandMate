<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('flex1200');
$this->inc('elements/header.php'); ?>

    <div class="onerow">
		<div class="col12">
			<div class="content">
				<?php  print $innerContent; ?>
			</div>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>