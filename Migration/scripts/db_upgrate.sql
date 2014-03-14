delete from SiteTree where SubsiteID = 1;
delete from SiteTree where ParentID = 15;
/*
select id from SiteTree where parentId not in (select id from SiteTree) and parentId <> 0 ;
delete from SiteTree where id in (452,453,16, 58, 69, 70 , 71 , 72)


,);
 */

delete from SiteTree_Live;
delete from SiteTree_versions;
delete from SiteTree_LinkTracking;
delete from SiteTree_ImageTracking;



delete from Page_Live;
delete from Page_versions;

delete from TruckPage_Live;
delete from TruckPage_versions;

delete from ProductPage_Live;
delete from ProductPage_versions;

delete from PartsPage_Live;
delete from PartsPage_versions;

delete from OBOPage_Live;
delete from OBOPage_versions;

delete from OtherMachinesPage_Live;
delete from OtherMachinesPage_versions;

delete from NewsletterPage_Live;
delete from NewsletterPage_versions;   

delete from ImageGalleryPage_Live;
delete from ImageGalleryPage_versions;


delete from ErrorPage_Live;
delete from ErrorPage_versions;

delete from ExcavatorPage_Live;
delete from ExcavatorPage_versions;

delete from GalleryPage_Live;                
delete from GalleryPage_versions;

delete from GhostPage_Live;
delete from GhostPage_versions;


