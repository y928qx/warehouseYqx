package gouzao;

public class Neibulei {
	private Inner inner;// ��������Inner���һ��ʵ��������--����
	String name = "Outter";

	public void print() {
		System.out.println("����---Outter");
	}

	public Inner getInnerInstance() {                               // wai
		if (inner == null) {
			inner = new Inner();
		}
		return inner;
	}

	public void readInnerName() {
		String tmpName = getInnerInstance().name;
		System.out.println("����Outter��  ���ҿ��Է����ڲ�������֣�" + tmpName);
	}

	public void execInnerPrint() {
		System.out.println("�����ⲿ�࣬�ҽ�Ҫִ���ڲ�����ķ�����");
		getInnerInstance().print();
		System.out.println("�����ⲿ�࣬��ִ���ڲ���ķ��������ˣ�");
	}

	class Inner {                                                             // neibulei
		String name = "Inner";

		public void readOutterName() {
			System.out.println("�����ڲ���ķ��������Լ����ڲ���������ǣ�" + name + " �ҵ��ⲿ��������ǣ�" + Neibulei.this.name);
		}

		public void print() {
			// System.out.println();
			System.out.println("����---Inner");
		}

		public void execOutterPrint() {
			System.out.println("�����ڲ��࣬�ҽ�Ҫִ���ⲿ���print����--------------");
			Neibulei.this.print();
			System.out.println("�����ڲ��࣬�ҽ�Ҫִ���ⲿ���print��������-----------");
		}
	}

	public static void main(String[] args) {
		Neibulei outter = new Neibulei();
		outter.print(); // �����ⲿ��Ĵ�ӡ����
		outter.readInnerName();
		outter.execInnerPrint();

		// Neibulei.Inner inner2 = outter.new Inner();
		Neibulei.Inner inner2 = outter.getInnerInstance();
		inner2.print(); // �����ڲ��۵ķ���
		inner2.readOutterName();
		inner2.execOutterPrint();

	}

}
