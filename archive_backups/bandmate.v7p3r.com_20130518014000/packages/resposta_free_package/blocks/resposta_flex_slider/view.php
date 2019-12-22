<?php   defined('C5_EXECUTE') or die(_("Access Denied.")); ?>

<!-- Hook up the FlexSlider -->
<script type="text/javascript">
$(window).load(function() {
	$('#flexslider<?php   echo $bID; ?>').flexslider({
		animation: 'slide',
		controlsContainer: '.flex-container'
	});
});
</script>

<!--=============================
Markup for SLIDE animation
=================================-->
<div class="flex-container">
	<div class="flexslider" id="flexslider<?php   echo $bID; ?>">
		<ul class="slides">

			<?php   foreach ($images as $img): ?>
			<li>

				<?php   if ($img->linkUrl): ?>
					<a href="<?php   echo $img->linkUrl; ?>"><img src="<?php   echo $img->large->src; ?>" /></a>
				<?php   else: ?>
					<img src="<?php   echo $img->large->src; ?>" />
				<?php   endif; ?>

				<?php   if ($img->title): ?>
					<p class="flex-caption"><?php   echo $img->title; ?></p>
				<?php   endif; ?>

			</li>
			<?php   endforeach; ?>

		</ul>
	</div>
</div>
