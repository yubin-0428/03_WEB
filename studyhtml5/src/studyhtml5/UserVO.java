package studyhtml5;

public class UserVO {
	
	private String userId; // 사용자id
	private String passwd; // 비밀번호
	private String name; // 이름
	
	public UserVO() {}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", passwd=" + passwd + ", name=" + name + "]";
	}
	
	
}
