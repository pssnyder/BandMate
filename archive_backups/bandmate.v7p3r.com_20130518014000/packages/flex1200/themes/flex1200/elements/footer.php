<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('flex1200');?>
	<div class="onerow"><!-- Start Footer -->
		<div class="col12 footer">
			<div class="content">
				<p>&copy; <?php   echo date('Y')?> <?php   echo SITE?>. <?php   echo t('All rights reserved.')?>&nbsp;
				<?php   
				$u = new User();
				if ($u->isRegistered()) { ?>
				<?php    
				if (Config::get("ENABLE_USER_PROFILES")) {
					$userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
				} else {
					$userName = $u->getUserName();
				}
				?>
				|&nbsp;<?php   echo t('Logged in as <b>%s</b>.', $userName)?> <a href="<?php   echo $this->url('/login', 'logout')?>"><?php   echo t('Sign Out')?></a>
				<?php    } else { ?>
				<a href="<?php   echo $this->url('/login')?>"><?php   echo t('Sign In')?></a></p>
				<?php    } ?>
				</p>
			</div>
		</div>
	</div><!-- End Footer -->
</div><!-- End container -->
<?php   Loader::element('footer_required'); ?>
</body>
</html>