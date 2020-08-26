package com.example.bff.controller

import com.example.bff.service.ScreenBeagleService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class ScreenController(
        private val screenBeagleService: ScreenBeagleService
) {
    @GetMapping("/screen")
    fun getFirstScreen() = screenBeagleService.createFistScreenBeagle()

    @GetMapping("/login")
    fun getLoginScreen() = screenBeagleService.createLoginScreen()
}