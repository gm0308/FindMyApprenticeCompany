package vo;

public class MemberVO {
	private String memberId;
	private String memberPwd;
	private String memberName;
	
	public MemberVO()
	{
		super();
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public String getMemberId()
	{
		return memberId;
	}
	
	public void setMemberPwd(String memberPwd)
	{
		this.memberPwd = memberPwd;
	}
	
	public String getMemberPwd()
	{
		return memberPwd;
	}
	
	public void setMemberName(String memberName)
	{
		this.memberName = memberName;
	}
	
	public String getMemberName()
	{
		return memberName;
	}
}