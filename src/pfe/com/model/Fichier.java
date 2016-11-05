package pfe.com.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;



public class Fichier {
 private static String url;
 private  static Texte  contenu;
 private static BufferedReader read;

public String getUrl() {
	return url;
}

public void setUrl(String url) {
	this.url = url;
}

public Texte getContenu() {
	return contenu;
}

public void setContenu(Texte contenu) {
	this.contenu = contenu;
}

public Fichier(String url, Texte contenu) {
	super();
	this.url = url;
	this.contenu = contenu;
}

public Fichier() {
	super();
	// TODO Auto-generated constructor stub
}
  public static void inverse()
  { 
  for(int i=0;i<url.length();i++)
  {
	  char s=url.charAt(i);
	 if(s=='\\'){
			s ='/';
	 }
  }
	  
  }
public void lire() throws IOException
{
     inverse(); 
	FileReader file= new FileReader(url);
      read = new BufferedReader(file);
      String text=" ";
      String line=read.readLine();
      while(line!=null);
      {
      text+=line;
      line=read.readLine();

      }
    contenu=new Texte();
    contenu.setContenu(text);
    
}

}
