<?php    

defined('C5_EXECUTE') or die(_("Access Denied."));

class LuckyStarsPackage extends Package {

	protected $pkgHandle = 'lucky_stars';
	protected $appVersionRequired = '5.5.1';
	protected $pkgVersion = '1.0';
	
	public function getPackageDescription() {
		return t("Thank your lucky stars for this awesome responsive theme!");
	}
	
	public function getPackageName() {
		return t("Lucky Stars");
	}
	
	public function install() {
		$pkg = parent::install();
		// load stuff we need
		Loader::model('collection_types');
		Loader::model('collection_attributes');
		Loader::model('package');
		// install theme		
		PageTheme::add('lucky_stars', $pkg);	
		// install blocks
		BlockType::installBlockTypeFromPackage('lucky_cta', $pkg);
		
		// install page types
		$ct = CollectionType::getByHandle('home');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'home';
			$data['ctName'] = t('Home');
			$hpt = CollectionType::add($data, $pkg);
		}
		$ct = CollectionType::getByHandle('two_columns');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'two_columns';
			$data['ctName'] = t('Two Columns');
			$hpt = CollectionType::add($data, $pkg);
		}
		$ct = CollectionType::getByHandle('left_sidebar');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'left_sidebar';
			$data['ctName'] = t('Left Sidebar');
			$hpt = CollectionType::add($data, $pkg);
		}
		$ct = CollectionType::getByHandle('right_sidebar');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'right_sidebar';
			$data['ctName'] = t('Right Sidebar');
			$hpt = CollectionType::add($data, $pkg);
		}
		$ct = CollectionType::getByHandle('full');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'full';
			$data['ctName'] = t('Full');
			$hpt = CollectionType::add($data, $pkg);
		}
		$ct = CollectionType::getByHandle('blog_entry');
		if((!is_object($ct)) || ($ct->getCollectionTypeID() < 1)) {
			$data['ctHandle'] = 'blog_entry';
			$data['ctName'] = t('Blog Entry');
			$hpt = CollectionType::add($data, $pkg);
		}
		
	}
	public function uninstall(){
		parent::uninstall();
	}

}