package com.crowmarket.app.infra.common.product;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.crowmarket.app.common.constants.Constants;
import com.crowmarket.app.common.util.UtilDateTime;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao dao;
	
	@Override
	public int selectOneCount(ProductVo vo) {
	
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Product> selectList(Model model) {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public List<Product> shSelectList(ProductVo vo) {
		// TODO Auto-generated method stub
		return dao.shSelectList(vo);
	}

	@Override
	public Product selectOne(ProductVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Product dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int updele(Product dto) {
		// TODO Auto-generated method stub
		return dao.updele(dto);
	}

	@Override
	public int save(Product dto) throws Exception {
		uploadFiles(dto.getUploadImg(), dto, "productImg", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		System.out.println("제품 업로드 서비스 테스트02 : 인서트이미지");
		dao.save(dto);
		System.out.println("제품 업로드 서비스 테스트01 : 인서트info");
		return 0;
	}
	@PostConstruct
	public void selectlistCashedProductArrayList() throws Exception{
		List<Product> ProductListFormDb = (ArrayList<Product>) dao.selectlistCashedProductArrayList();
		ProductListFormDb = (ArrayList<Product>) dao.selectlistCashedProductArrayList();
		Product.cashedProductArrayList.clear();
		Product.cashedProductArrayList.addAll(ProductListFormDb);
		System.out.println("CashedProductArrayList: "+Product.cashedProductArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		Product.cashedProductArrayList.clear();
	}
	
	public static List<Product> selectListCachedProduct() throws Exception{
		List<Product> rt = new ArrayList<Product>();
		for(Product ProductRow : Product.cashedProductArrayList) {
			if(ProductRow.getDelNY() == 0) {
			rt.add(ProductRow);
		}else {
			//by pass
		}
	}
		return rt;
	}



@Override
public Product selectCompetition1(ProductVo vo) {
	return dao.selectCompetition1(vo);
}
	
@Override
public Product selectCompetition2(ProductVo vo) {
	return dao.selectCompetition2(vo);
}

@Override
public List<Product> brandSelectList(ProductVo vo) {
	return dao.brandSelectList(vo);
}

public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception {
	
	for(int i=0; i<multipartFiles.length; i++) {
	
		if(!multipartFiles[i].isEmpty()) {
			
			String className = dto.getClass().getSimpleName().toString().toLowerCase();		
			String fileName = multipartFiles[i].getOriginalFilename();
			String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
			String uuid = UUID.randomUUID().toString();
			String uuidFileName = uuid + "." + ext;
			String pathModule = className;
			String nowString = UtilDateTime.nowString();
			String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
			String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
			String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
			
			File uploadPath = new File(path);
			
			if (!uploadPath.exists()) {
				uploadPath.mkdir();
			} else {
				// by pass
			}
			  
			multipartFiles[i].transferTo(new File(path + uuidFileName));
			
			dto.setPath(pathForView);
			dto.setOriginalName(fileName);
			dto.setUuidName(uuidFileName);
			dto.setExt(ext);
			dto.setSize(multipartFiles[i].getSize());
			
			dto.setTableName(tableName);
			dto.setType(type);
//			dto.setDefaultNy();
			dto.setSort(maxNumber + i);
			dto.setPseq(dto.getProductSeq());

			dao.insertUploaded(dto);
		}
	}
}
}
