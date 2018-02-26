integratedCKEDITOR('description-tuyen-dung',height=200);
integratedCKEDITOR('content-tuyen-dung',height=800);
integratedCKEDITOR('seo-description-tuyen-dung',height=200);
if ($('#btnBrowseImageTuyenDung').length) {
    var button1 = document.getElementById('btnBrowseImageTuyenDung');
    button1.onclick = function () {
        selectFileWithKCFinder('pathImageTuyenDung','showHinhTuyenDung');
    }
}