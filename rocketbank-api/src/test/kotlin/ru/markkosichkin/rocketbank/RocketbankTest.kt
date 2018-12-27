package ru.markkosichkin.rocketbank

import org.junit.Test
import ru.markkosichkin.rocketbank.api.Rocketbank

import java.util.UUID

class RocketbankTest {
    val loginToken="2h2XgPuhQVenzsQxtd_e"
    val deviceToken="4891a192-c1c7-4a0b-a8a0-e1cc6c244ba8"
    @Test
    fun testRocket() {
        val rocketbank = Rocketbank()
//        val deviceTocken = UUID.randomUUID().toString()
//        println(deviceTocken)
//        val registerToken = rocketbank.registerDevice(deviceTocken, "79168713361")
//        var code = "4444"
//        val loginTocken = rocketbank.verify(registerToken, deviceTocken, code!!)
        println(loginToken)
        val sessionTocken = rocketbank.login(deviceToken, loginToken, "0048")
        println(rocketbank.profile(sessionTocken,deviceToken))
//        println(rocketbank.feed("f9cd468b28c8cc31e4a0abca82166c9f",sessionTocken,deviceToken,9999))
    }
}
