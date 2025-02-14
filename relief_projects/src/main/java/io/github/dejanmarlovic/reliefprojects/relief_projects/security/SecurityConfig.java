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
                // Disable CSRF protection for the specified endpoints (useful for APIs)
                .csrf(csrf -> csrf
                        .ignoringRequestMatchers("/api/positions/**") // Disable CSRF for all subpaths
                )
                // Configure authorization rules
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/api/positions/**").permitAll() // Allow all endpoints starting with /api/positions/
                        .anyRequest().authenticated() // Secure other endpoints
                )
                // Enable form-based login
                .formLogin(login -> login.permitAll())
                // Enable logout functionality
                .logout(logout -> logout.permitAll());

        return http.build();
    }
}