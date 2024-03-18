package com.movieapp.service;

import java.util.ArrayList;
import java.util.List;

public class MovieDetails {
	public List<String> showMovies(String language){
		List<String> movies = new ArrayList<String>();
		if(language.equals("Kannada")) {
			movies.add("Googly");
			movies.add("KGF");
			movies.add("Kantara");
			movies.add("Ugramm");
		}
		if(language.equals("Hindi")) {
			movies.add("12th Fail");
			movies.add("MS Dhoni");
			movies.add("Fighter");
			movies.add("Jawan");
		}
		if(language.equals("Tamil")) {
			movies.add("Captain Miller");
			movies.add("Jigarthanda");
			movies.add("Mynaa");
			movies.add("Karnan");
		}
		if(language.equals("Telugu")) {
			movies.add("Sita Ramam");
			movies.add("July");
			movies.add("Hanuman");
			movies.add("Eagle");
		}
		if(language.equals("English")) {
			movies.add("Jesus Revolution");
			movies.add("Anyone but you");
			movies.add("The Prestige");
			movies.add("Cool Hand Luke");
		}
		return movies;
	}
}
