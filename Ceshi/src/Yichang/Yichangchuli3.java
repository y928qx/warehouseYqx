package Yichang;

public class Yichangchuli3 {
	

public static void main(String[] args) {

	int v3=0;
		try {
			int v1 = Integer.parseInt(args[0]);
			int v2 = Integer.parseInt(args[1]);
			v3 = v1 / v2;
	           return;
	} catch (ArrayIndexOutOfBoundsException e) {
		System.out.println("�����ڲ���Խ���ˣ��Ҵ�ӡ�Ķ�ջ��Ϣ����");
		// TODO Auto-generated catch block
		e.printStackTrace();
		return;
	} catch (ArithmeticException e) {
		System.out.println("�����ڲ����㷨�e�`�ˣ��Ҵ�ӡ�Ķ�ջ��Ϣ����");
		// TODO Auto-generated catch block
		e.printStackTrace();
		return;
	}finally {
		System.out.println("���۲�׽��ʲô�쳣���Ҷ��ᱻִ��");
		System.out.println(" v3 = "+v3);
	}
	
}


}
