package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.streamablepages.Streamer;

@Controller
public class IndexController {

	private final Result result;
	@Inject
	private Streamer streamer;
	@Inject
	private HttpSession session;

	/**
	 * @deprecated CDI eyes only
	 */
	public IndexController() {
		this(null);
	}

	@Inject
	public IndexController(Result result) {
		this.result = result;
	}

	public void loginUser() {
		session.setAttribute("user", "logged user");
	}

	@Path("/")
	public void index() {
		streamer.local(8080).order("index/header").unorder("index/pagelet1", "index/pagelet2").order("index/footer")
				.unorder("index/pagelet1", "index/pagelet2").await();
	}
	
	@Path("/streamed-result")
	public void indexStreamer() {
		
	}

	public void header() throws InterruptedException {
		result.include("variable", "VRaptor!");
	}

	public void pagelet1() throws InterruptedException {
		Thread.sleep(2000);
	}

	public void pagelet2() throws InterruptedException {
		Thread.sleep(500);
	}

	public void footer() throws InterruptedException {
		Thread.sleep(2000);
	}
}