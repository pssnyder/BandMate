<?php  

defined('C5_EXECUTE') or die(_("Access Denied."));

class ThemeResponsiveStarterThemePackage extends Package {

	protected $pkgHandle = 'theme_responsive_starter_theme';
	protected $appVersionRequired = '5.2.2';
	protected $pkgVersion = '1.0';

	public function getPackageDescription() {
		return t("Installs the
		1140 Responsive Starter Theme.");
	}

	public function getPackageName() {
		return t("Responsive Starter Theme");
	}

	public function install() {
		$pkg = parent::install();

		// install block
		PageTheme::add('responsive_starter_theme', $pkg);
	}

}