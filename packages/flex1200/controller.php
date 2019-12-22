<?php  defined('C5_EXECUTE') or die(_("Access Denied."));

class Flex1200Package extends Package {

	protected $pkgHandle = 'flex1200';
	protected $appVersionRequired = '5.4.2.2';
	protected $pkgVersion = '1.1';
	
	public function getPackageDescription() {
		return t("A lightweight, minimalistic responsive framework theme.");
	}
	
	public function getPackageName() {
		return t("Flex1200");
	}
	
	public function install() {
		$pkg = parent::install();
		
		// install theme		
		PageTheme::add('flex1200', $pkg);
		
		// auto-install page types
		$pt = CollectionType::getByHandle('right_sidebar');
		if(!is_object($pt)) {
			$data['ctHandle'] = 'right_sidebar';
			$data['ctName'] = t('Right Sidebar');
			$hpt = CollectionType::add($data, $pkg);
		}
		$pt = CollectionType::getByHandle('left_sidebar');
		if(!is_object($pt)) {
			$data['ctHandle'] = 'left_sidebar';
			$data['ctName'] = t('Left Sidebar');
			$hpt = CollectionType::add($data, $pkg);
		}
		$pt = CollectionType::getByHandle('three_columns');
		if(!is_object($pt)) {
			$data['ctHandle'] = 'three_columns';
			$data['ctName'] = t('Three Columns');
			$hpt = CollectionType::add($data, $pkg);
		}
		$pt = CollectionType::getByHandle('full');
		if(!is_object($pt)) {
			$data['ctHandle'] = 'full';
			$data['ctName'] = t('Full');
			$hpt = CollectionType::add($data, $pkg);
		}

	}

}