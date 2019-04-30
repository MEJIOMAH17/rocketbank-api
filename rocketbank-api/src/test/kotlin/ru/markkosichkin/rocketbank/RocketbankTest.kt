package ru.markkosichkin.rocketbank

import org.junit.Test
import ru.markkosichkin.rocketbank.api.Rocketbank
import java.io.FileWriter

import java.util.UUID

class RocketbankTest {
    val loginToken = "2h2XgPuhQVenzsQxtd_e"
    val deviceToken = "4891a192-c1c7-4a0b-a8a0-e1cc6c244ba8"
    @Test
    fun testRocket() {
        val rocketbank = Rocketbank()
//        val deviceTocken = UUID.randomUUID().toString()
//        println(deviceTocken)
//        val registerToken = rocketbank.registerDevice(deviceToken, "79168713361")
//        println(registerToken)
        var code = "8020"
//        val loginTocken = rocketbank.verify("3c906987329e-ee89263dc960-5465561f4c1b", deviceToken, code!!)
//        println(loginToken)
        val sessionTocken = rocketbank.login(deviceToken, loginToken, "0048")
        println(rocketbank.profile(sessionTocken, deviceToken))
        FileWriter("xxx").write(
                rocketbank.feed("f9cd468b28c8cc31e4a0abca82166c9f", sessionTocken, deviceToken, 9999))

    }
}
