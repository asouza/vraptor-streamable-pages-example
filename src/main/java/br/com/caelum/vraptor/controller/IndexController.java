package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.streamablepages.Streamer;

import java.util.Random;

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

	@Path("/streamed-result")
	public void indexStreamer() {
	}

	@Path("/not-streamed")
	public void notStreamed() throws InterruptedException {
        Thread.sleep(1000);
	}

    @Path("/courses")
	public void courses() throws InterruptedException {
        Thread.sleep(800);
	}

    @Path("/blog")
	public void blog() throws InterruptedException {
        Thread.sleep(800);
	}

    @Path("/calendar")
	public void calendar() throws InterruptedException {
        Thread.sleep(800);
	}


}