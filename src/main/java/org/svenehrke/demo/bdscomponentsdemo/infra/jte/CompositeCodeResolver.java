package org.svenehrke.demo.bdscomponentsdemo.infra.jte;

import gg.jte.CodeResolver;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class CompositeCodeResolver implements CodeResolver {
    private final List<CodeResolver> codeResolvers;

    public CompositeCodeResolver(List<CodeResolver> codeResolvers) {
        this.codeResolvers = codeResolvers;
    }

    @Override
    public String resolve(String name) {
        var content = "";
        for (CodeResolver codeResolver : this.codeResolvers) {
            try {
                String resolve = codeResolver.resolve(name);
                if(Objects.nonNull(resolve)){
                    content = resolve;
                }
            } catch (Exception ex) {
                // ignore
            }
        }
        if(!content.isEmpty())
            return content;
        return null;
    }

    @Override
    public long getLastModified(String name) {
        long lastModified = -1;
        for (CodeResolver codeResolver : this.codeResolvers) {
            try {
                lastModified = codeResolver.getLastModified(name);
                if(lastModified > 0)
                    return lastModified;
            } catch (Exception ex) {
                lastModified = -1;
            }
        }
        if(lastModified != -1)
            return lastModified;
        throw new RuntimeException("Could not find template " + name);
    }

    @Override
    public List<String> resolveAllTemplateNames() {
        List<String> allTemplateNames = new ArrayList<>();
        for (CodeResolver codeResolver : this.codeResolvers) {
            try {
                allTemplateNames.addAll(codeResolver.resolveAllTemplateNames());
            } catch (Exception ex) {
                // ignore
            }
        }
        return allTemplateNames;
    }}
