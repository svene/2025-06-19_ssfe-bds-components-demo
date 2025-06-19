package org.svenehrke.demo.bdscomponentsdemo.shared;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

@Component
@SessionScope
@RequiredArgsConstructor
public class SessionViewContext {
    public final AppViewContext avc;
}
