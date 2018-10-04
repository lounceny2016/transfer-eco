package com.transferEco.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.transferEco"})
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry){
        registry.jsp().prefix("/WEB-INF/views/").suffix(".jsp");
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry){
        registry.addViewController("/index").setViewName("index");
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry){
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
    }


}
