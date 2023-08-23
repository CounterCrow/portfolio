const BOOTSTRAP5_SM_DIMENSIONS = "576";

const URL_INDEX_VIEW_XDM = "/cdm/infra/product/productList";
const URL_LOGIN_FORM_XDM = "/cdm/infra/product/productForm";

const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
const MAX_TOTAL_FILE_NUMBER = 5;				//	5

function kbToMb(bytes) {
    var e = Math.floor(Math.log(bytes)/Math.log(1024));

    if(e == "-Infinity") return 0;
    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
}