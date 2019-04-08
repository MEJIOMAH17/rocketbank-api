package ru.markkosichkin.rocketbank.api

import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL
import java.security.MessageDigest
import java.util.*
import java.util.regex.Pattern
import java.util.stream.Collectors
import kotlin.experimental.and
import kotlin.experimental.or
import java.io.OutputStreamWriter
import java.nio.charset.StandardCharsets


class Rocketbank {
    companion object {
        private val ROCKET_URL = "https://rocketbank.ru"
        private val REGISTER = "/api/v5/devices/register"
        private val VERIFY = "//api/v5/sms_verifications/%s/verify"
        private val LOGIN = "/api/v5/login"
        private val FEED = "/api/v5/accounts/%s/feed"
        private val PROFILE = "/api/v5/profile"
    }

    /**
     * @param token полученный из login
     * @param deviceToken token устройства
     * @param количество записей которое нужно вернуть.
     */
    fun feed(accountToken: String, authToken: String, deviceToken: String, resultAmount: Int): String {
        val connection = URL(String.format(ROCKET_URL + FEED, accountToken)).openConnection() as HttpURLConnection
        connection.addRequestProperty("page", "1")
        connection.addRequestProperty("per_page", resultAmount.toString())
        connection.addDefaultHeader(deviceToken)
        connection.addRequestProperty("authorization", "Token token=$authToken")
        return BufferedReader(InputStreamReader(connection.inputStream)).lines().collect(Collectors.joining())
    }


    fun profile(authToken: String, deviceToken: String): String {
        val connection = URL(String.format(ROCKET_URL + PROFILE)).openConnection() as HttpURLConnection
        connection.addDefaultHeader(deviceToken)
        connection.addRequestProperty("authorization", "Token token=$authToken")
        val reader = InputStreamReader(connection.inputStream)
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()
        return result
    }


    /**
     * @param id девайса с которым вызывался registerDevice
     * @param loginToken результат работы verify
     * @param password пароль пользователя от приложения
     */
    fun login(deviceToken: String, loginToken: String, password: String): String {
        val connection = URL(ROCKET_URL + LOGIN).openConnection() as HttpURLConnection
        connection.addDefaultHeader(deviceToken)
        val encoded = Base64.getEncoder().encodeToString(("$loginToken:$password").toByteArray(StandardCharsets.UTF_8))
        connection.setRequestProperty("Authorization", "Basic " + encoded)
        val reader = InputStreamReader(connection.inputStream)
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()

        val pattern = Pattern.compile("\"token\": *\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }


    /**
     * @param token полученный из {@link registerDevice()}
     * @param code код из смс
     */
    fun verify(token: String, deviceToken: String, code: String): String {
        val connection = URL(String.format(ROCKET_URL + VERIFY, token)).openConnection() as HttpURLConnection
        connection.addDefaultHeader(deviceToken)
        connection.setBody("id=$token&code=$code")

        val reader = InputStreamReader(connection.inputStream)
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()

        val pattern = Pattern.compile("\"login_token\": *\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }

    /**
     * Телефон в формате 79161234567
     */
    fun registerDevice(deviceToken: String, phone: String): String {
        val connection = URL(ROCKET_URL + REGISTER).openConnection() as HttpURLConnection
        connection.addDefaultHeader(deviceToken)
        connection.setBody("phone=%2B$phone")
        val reader = InputStreamReader(connection.inputStream)
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()
        val pattern = Pattern.compile("\"id\":\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }

    private fun getDeviceId(deviceToken: String): String {
        return "ANDROID$deviceToken"
    }

    private fun HttpURLConnection.addDefaultHeader(deviceToken: String) {
        val time = Date().time / 1000
        addRequestProperty("x-time", time.toString())
        addRequestProperty("x-sig", generateXsig(time))
        addRequestProperty("x-device-id", getDeviceId(deviceToken))
    }

    private fun HttpURLConnection.setBody(data: String) {
        addRequestProperty("content-type", "application/x-www-form-urlencoded")
        doOutput = true
        val outputStreamWriter = OutputStreamWriter(outputStream)
        outputStreamWriter.write(data)
        outputStreamWriter.close()
    }

    private fun generateXsig(time: Long): String {
        val md5 = MessageDigest.getInstance("MD5")
        val str = "0Jk211uvxyyYAFcSSsBK3+etfkDPKMz6asDqrzr+f7c=_" + time + "_dossantos"
        val digest = md5.digest(str.toByteArray())
        val result = StringBuilder()
        for (b in digest) {
            val x = (b.toShort() and 255) or 256
            val s = Integer.toHexString(x.toInt()).substring(1, 3)
            result.append(s)
        }
        return result.toString()
    }
}