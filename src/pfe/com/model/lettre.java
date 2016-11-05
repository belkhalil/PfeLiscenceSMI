package pfe.com.model;

public class lettre {
	String  majh,makh,cheda;
	int freq;
	boolean safir;
	char nom;
	
public lettre() {
		freq=0;
		safir=false;
		nom=' ';
		majh=" ";
		makh=" ";
		cheda=" ";
		
	}
public lettre(String majh, String makh, String cheda, int cmpt,
			boolean safir, char nom) {
		super();
		this.majh = majh;
		this.makh = makh;
		this.cheda = cheda;
		this.freq = cmpt;
		this.safir = safir;
		this.nom = nom;
	}

public char getNom() {
	return nom;
}
public void setNom(char nom) {
	this.nom = nom;
}
public String getMajh() {
	return majh;
}

public void setMajh(String majh) {
	this.majh = majh;
}
public String getMakh() {
	return makh;
}

public void setMakh(String makh) {
	this.makh = makh;
}

public String getCheda() {
	return cheda;
}

public void setCheda(String cheda) {
	this.cheda = cheda;
}

public float getFreq() {
	return freq;
}


public void setFreq(int cmpt) {
	this.freq = cmpt;
}

public boolean isSafir() {
	return safir;
}

public void setSafir(boolean safir) {
	this.safir = safir;
}

public void Type(char h)
{
	switch(h)
	 {
	    case 'أ':this.setMajh("majhour");this.setMakh("halki");this.setCheda("chadid");this.setCheda("chibh layn");//mochkila f l alif 
		break;
		case 'ب':this.setMajh("majhour");this.setMakh("chafawi");this.setCheda("chadid");
		break;
		case 'ت':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ث':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("rakhew");
		break;
		case 'ج':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ح':this.setMajh("mahmous");	this.setMakh("halki");this.setCheda("rakhew");
		break;
		case 'خ':this.setMajh("mahmous");this.setMakh("halki");this.setCheda("rakhew");
		break;
		case 'د':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ذ':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("rakhew");
		break;
		case 'ر':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("motawassit");
		break;
		case 'ز':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("rakhew");this.setSafir(true);
		break;
		case 'س':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("rakhew");this.setSafir(true);
		break;
		case 'ش':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("rakhew");
		break;
		case 'ص':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("rakhew");this.setSafir(true);
		break;
		case 'ض':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("rakhew");
		break;
		case 'ظ':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("rakhew");
		break;
		case 'ط':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ع':this.setMajh("majhour");this.setMakh("halki");this.setCheda("motawassit");
		break;
		case 'غ':this.setMajh("majhour");this.setMakh("halki");this.setCheda("rakhew");
		break;
		case 'ف':this.setMajh("mahmous");this.setMakh("chafawi");this.setCheda("rakhew");
		break;
		case 'ق':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ك':this.setMajh("mahmous");this.setMakh("lisani");this.setCheda("chadid");
		break;
		case 'ل':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("motawassit");
		break;
		case 'م':this.setMajh("majhour");this.setMakh("chafawi");this.setCheda("motawassit");
		break;
		case 'ن':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("motawassit");
		break;
		case 'ه':this.setMajh("mahmous");this.setMakh("halki");this.setCheda("rakhew");
		break;
		case 'و':this.setMajh("majhour");this.setMakh("chafawi");this.setCheda("rakhew");this.setMajh("layn");this.setCheda("chibh layn");
		break;
		case 'ي':this.setMajh("majhour");this.setMakh("lisani");this.setCheda("rakhew");this.setMajh("layn");this.setCheda("chibh layn");
		break;
		case 'ا':this.setCheda("rakhew");this.setMajh("layn");
		break;
			}
}	
}
