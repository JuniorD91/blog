package com.example.blog.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class SignUp {

    @GetMapping("/signup")
    fun signup() : String{
        val a = "teste"
        return "Teste"
    }

}