package io.github.dejanmarlovic.reliefprojects.relief_projects.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                // Disable CSRF for POST requests if you're not using form submissions (like with Postman)
                .csrf()
                .ignoringRequestMatchers("/positions/save_position","positions/add")  // Disable CSRF for this endpoint
                .and()
                .authorizeRequests()
                .requestMatchers("/positions/save_position","/positions/add").permitAll()  // Open access to the /add_position endpoint
                .anyRequest().authenticated()  // Secure other URLs
                .and()
                .formLogin()  // Form-based login
                .permitAll()
                .and()
                .logout()  // Enable logout functionality
                .permitAll();

        return http.build();  // Required in Spring Security 5+
    }
}