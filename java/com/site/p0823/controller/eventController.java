package com.site.p0823.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class eventController {

	
	@RequestMapping("event")
	public String event() {
		return "/event/event";
	}
	@RequestMapping("eventbespoke")
	public String eventbespoke() {
		return "/event/eventbespoke";
	}
	
}//class
