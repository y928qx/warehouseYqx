package Abstract;
import lombok.Getter;
import lombok.Setter;

public abstract class phone {

	@lombok.Setter@lombok.Getter
	private static String os="Android";
	@lombok.Setter@lombok.Getter
	private String model;
	@Setter@Getter
	private String vender;
	


	public abstract void startOs();
	public void printSelf() {
		System.out.println("�ҵ��ͺ��ǣ�"+model);
		System.out.println("�ҵ���������Ϊ��"+vender);
		
		
	}

}
