package org.svenehrke.demo.bdscomponentsdemo.jte;

import gg.jte.ContentType;
import gg.jte.TemplateEngine;
import gg.jte.resolve.DirectoryCodeResolver;
import gg.jte.resolve.ResourceCodeResolver;
import gg.jte.springframework.boot.autoconfigure.JteProperties;
import gg.jte.springframework.boot.autoconfigure.JteViewResolver;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;

import java.nio.file.Path;
import java.util.List;

@Configuration
@EnableConfigurationProperties(JteProperties.class)
public class JteComponentConfig {

    private final JteProperties jteProperties;

    public JteComponentConfig(JteProperties jteProperties) {
        this.jteProperties = jteProperties;
    }

    @Bean
    public ViewResolver viewResolver() {
        return new JteViewResolver(jteEngine(), jteProperties);
    }

    @Bean
    public TemplateEngine jteEngine() {
//        DirectoryCodeResolver directoryCodeResolverTemplate = new DirectoryCodeResolver(
//            Path.of("src/main/resources/templates")
//        );
        DirectoryCodeResolver directoryCodeResolverComponent = new DirectoryCodeResolver(
            Path.of("src/main/java")
        );
        ResourceCodeResolver resourceCodeResolver = new ResourceCodeResolver("");
        CompositeCodeResolver compositeCodeResolver
            = new CompositeCodeResolver(
            List.of(
                resourceCodeResolver,
                directoryCodeResolverComponent
            ));
        return TemplateEngine.create(
            compositeCodeResolver,
            Path.of("jte-classes"),
            ContentType.Html,
            this.getClass().getClassLoader()
        );
    }
}
