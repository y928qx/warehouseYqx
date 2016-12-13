package Abstract;

public class TestPhone {

	public static void main(String[] args) {

		phone iPhone = new Iphone();
		iPhone.startOs();

		phone hPhone = new Hphone();
		hPhone.startOs();

		phone mphone = new Mphone();
		mphone.startOs();

		mphone.setModel("ƻ��7");
		// mphone.printSelf();

		mphone.setVender("����");
		mphone.printSelf();

		// TODO Auto-generated method stub

	}

}
