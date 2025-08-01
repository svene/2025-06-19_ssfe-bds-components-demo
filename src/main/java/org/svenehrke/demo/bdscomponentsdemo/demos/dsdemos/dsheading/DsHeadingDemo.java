package org.svenehrke.demo.bdscomponentsdemo.demos.dsdemos.dsheading;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.svenehrke.demo.bdscomponentsdemo.shared.RequestViewContext;

@ViewComponent
@RequiredArgsConstructor
@Controller
@Slf4j
public class DsHeadingDemo {
	private final RequestViewContext rvc;

	public static final String URL = "/demo/dsdemo/dsheading";
	public static final String TITLE = "BDS Heading Demo";

	public record Ctx(
		RequestViewContext rvc
	) implements ViewContext {}

	@GetMapping(URL)
	public ViewContext ctx() {
		return new DsHeadingDemo.Ctx(rvc);
	}
}
