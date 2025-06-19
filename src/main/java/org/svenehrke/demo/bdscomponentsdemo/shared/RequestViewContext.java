package org.svenehrke.demo.bdscomponentsdemo.shared;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.LocaleResolver;

import java.util.Locale;

@Component
@RequestScope
@RequiredArgsConstructor
public class RequestViewContext {
    public final HttpServletRequest request;
    public final LocaleResolver localeResolver;
    private final MessageSource messageSource;

    public final SessionViewContext svc;

    public String message(String key) {
        Locale locale = localeResolver.resolveLocale(request);
        return messageSource.getMessage(key, null, locale);
    }
    public String message(String key, Object[] args) {
        Locale locale = localeResolver.resolveLocale(request);
        return messageSource.getMessage(key, args, locale);
    }
}
