package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArtistDAO;
import vo.ArtistVO;

public class InsertController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String artist_id = req.getParameter("artist_id");
		String artist_name = req.getParameter("artist_name");
		String artist_birth = req.getParameter("artist_birth");
		String artist_gender = req.getParameter("artist_gender");
		String talent = req.getParameter("talent");
		String agency = req.getParameter("agency");

		ArtistVO a = new ArtistVO();

		a.setArtist_id(artist_id);
		a.setAgency(agency);
		a.setArtist_birth(artist_birth);
		a.setArtist_name(artist_name);
		a.setTalent(talent);
		a.setArtist_gender(artist_gender);
		
		ArtistDAO dao = new ArtistDAO();
		
		int n = dao.insertArtist(a);
		
		if (n > 0) {
			req.getRequestDispatcher("/list.do").forward(req, resp);
		} else {
			
		}

	}

}
