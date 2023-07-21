package com.crowmarket.app.infra.commen.member;

import com.crowmarket.app.infra.commen.base.Base;

public class Member extends Base{

private String memberSeq;
private String adminNY;
private String memberId;
private String memberPW;
private String memberName;
private String memberEmail;
private String memberPhone;
private String memberNickName;
private String memberDob;
private String memberGenderCD;

/*--------------------------------------------------------*/
public String getMemberSeq() {
	return memberSeq;
}
public void setMemberSeq(String memberSeq) {
	this.memberSeq = memberSeq;
}

public String getMemberName() {
	return memberName;
}
public void setMemberName(String memberName) {
	this.memberName = memberName;
}
public String getMemberEmail() {
	return memberEmail;
}
public void setMemberEmail(String memberEmail) {
	this.memberEmail = memberEmail;
}
public String getMemberPhone() {
	return memberPhone;
}
public void setMemberPhone(String memberPhone) {
	this.memberPhone = memberPhone;
}
public String getMemberId() {
	return memberId;
}
public void setMemberId(String memberId) {
	this.memberId = memberId;
}
public String getMemberPW() {
	return memberPW;
}
public void setMemberPW(String memberPW) {
	this.memberPW = memberPW;
}
public String getMemberNickName() {
	return memberNickName;
}
public void setMemberNickName(String memberNickName) {
	this.memberNickName = memberNickName;
}
public String getMemberDob() {
	return memberDob;
}
public void setMemberDob(String memberDob) {
	this.memberDob = memberDob;
}
public String getAdminNY() {
	return adminNY;
}
public void setAdminNY(String adminNY) {
	this.adminNY = adminNY;
}
public String getMemberGenderCD() {
	return memberGenderCD;
}
public void setMemberGenderCD(String memberGenderCD) {
	this.memberGenderCD = memberGenderCD;
}


}
