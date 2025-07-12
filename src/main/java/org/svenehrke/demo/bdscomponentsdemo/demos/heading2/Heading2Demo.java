package org.svenehrke.demo.bdscomponentsdemo.demos.heading2;

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
public class Heading2Demo {
    private final RequestViewContext rvc;

    public static final String URL = "/demo/heading2";
    public static final String TITLE = "Heading2 Component Demo";

    public record Ctx(
        RequestViewContext rvc
    ) implements ViewContext {}

    @GetMapping(URL)
    public ViewContext ctx() {
        return new Ctx(rvc);
    }
}
