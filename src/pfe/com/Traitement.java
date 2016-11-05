package pfe.com;

import java.io.IOException;
//import java.sql.SQLException;



import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;

import pfe.com.model.Texte;
import pfe.com.model.lettre;

/**
 * Servlet implementation class Traitement
 */
@WebServlet({ "/Traitement", "/T" })
public class Traitement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Main m;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Traitement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	    m = new Main();
	}
	@Override
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO Auto-generated method stub
	
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/*
		 * tout les bouton aurons le men name "btn" et la difference c'est au 'value' il  sera la fonction faite par le bouton 
		 */
		request.setCharacterEncoding( "UTF-8" );
		Texte t = new Texte();   
		String op=request.getParameter("btn") ; //btn est la valeur de l'atribut name du bouton "traitement" 
		if(op.equals("entrer"))
		{
			m.Zero();
		String tx=request.getParameter("aerodique");
	    t.setContenu(tx);
		t.setTaille(tx.length());
	
	     m.calculer(t);
	     try {
			ResultSet r=m.total();
			ArrayList<lettre> a=new ArrayList<lettre>();
			while(r.next()){
			lettre l=new lettre();
			l.setNom(r.getString(2).charAt(0));
			l.setFreq(r.getInt(7));
			a.add(l);
			}
			HttpSession ses=request.getSession(true);
			ses.setAttribute("l", a);
		     response.sendRedirect("resultat.jsp");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		 }	
		}
	   }
	  } 
