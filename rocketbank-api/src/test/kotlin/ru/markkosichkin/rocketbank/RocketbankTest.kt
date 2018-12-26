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
        println(rocketbank.feed(sessionTocken,deviceToken,1))
    }
}
