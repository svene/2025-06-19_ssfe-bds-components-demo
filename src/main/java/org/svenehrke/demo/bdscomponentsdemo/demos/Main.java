package org.svenehrke.demo.bdscomponentsdemo.demos;

import de.tschuehly.spring.viewcomponent.core.component.ViewComponent;
import de.tschuehly.spring.viewcomponent.jte.ViewContext;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.view.RedirectView;
import org.svenehrke.demo.bdscomponentsdemo.shared.RequestViewContext;

@ViewComponent
@RequiredArgsConstructor
@Controller
@Slf4j
public class Main {
    private final RequestViewContext rvc;

    public static final String URL = "/main";

    public record Ctx(
        RequestViewContext rvc,
        String name
    ) implements ViewContext {}

    @GetMapping("/")
    public RedirectView index() {
        return new RedirectView(URL);
    }

    @GetMapping(URL)
    public ViewContext ctx() {
        return new Ctx(rvc, "name");
    }
}
