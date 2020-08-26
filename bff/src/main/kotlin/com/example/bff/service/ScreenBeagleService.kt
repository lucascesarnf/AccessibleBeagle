package com.example.bff.service

import com.example.bff.builder.LoginScreenBuilder
import com.example.bff.builder.ScreenBeagleBuilder
import org.springframework.stereotype.Service

@Service
class ScreenBeagleService {
    fun createFistScreenBeagle() = ScreenBeagleBuilder
    fun createLoginScreen() = LoginScreenBuilder()
}