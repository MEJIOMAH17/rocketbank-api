package ru.markkosichkin.rocketbank.api

import okhttp3.*
import ru.markkosichkin.rocketbank.util.Base64
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL
import java.security.MessageDigest
import java.util.regex.Pattern
import java.util.stream.Collectors
import kotlin.experimental.and
import kotlin.experimental.or
import java.io.OutputStreamWriter
import java.nio.charset.StandardCharsets
import java.util.Date


class Rocketbank {
    companion object {
        private val ROCKET_URL = "https://rocketbank.ru"
        private val REGISTER = "/api/v5/devices/register"
        private val VERIFY = "//api/v5/sms_verifications/%s/verify"
        private val LOGIN = "/api/v5/login"
        private val FEED = "/api/v5/accounts/%s/feed"
        private val PROFILE = "/api/v5/profile"
        var client = OkHttpClient()
    }

    /**
     * @param token полученный из login
     * @param deviceToken token устройства
     * @param количество записей которое нужно вернуть.
     */
    fun feed(accountToken: String, authToken: String, deviceToken: String, resultAmount: Int): String {
        return client.newCall(Request.Builder()
                .url(
                        Url(ROCKET_URL + FEED, accountToken)
                                .addParam("page", "1")
                                .addParam("per_page", resultAmount.toString())
                                .url
                )
                .addDefaultHeader(deviceToken)
                .addHeader("authorization", "Token token=$authToken")
                .build())
                .execute().body()!!.string()
    }


    fun profile(authToken: String, deviceToken: String): String {
        return client.newCall(Request.Builder()
                .url(ROCKET_URL + PROFILE)
                .addDefaultHeader(deviceToken)
                .addHeader("authorization", "Token token=$authToken")
                .build()).execute().body()!!.string()

    }


    /**
     * @param id девайса с которым вызывался registerDevice
     * @param loginToken результат работы verify
     * @param password пароль пользователя от приложения
     */
    fun login(deviceToken: String, loginToken: String, password: String): String {

        val encoded = Base64.getEncoder().encodeToString(("$:$").toByteArray(StandardCharsets.UTF_8))

        val result = client
                .newCall(Request.Builder()
                        .url(
                                Url(ROCKET_URL + LOGIN)
                                        .url)
                        .addHeader("Authorization", Credentials.basic(loginToken, password))
                        .addDefaultHeader(deviceToken)
                        .build()).execute().body()!!.string()

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

        val result = client.newCall(Request.Builder()
                .url(
                        Url(ROCKET_URL + VERIFY, token)
                                .url)
                .patch(FormBody.Builder()
                        .add("id", token)
                        .add("code", code)
                        .build())
                .addDefaultHeader(deviceToken)
                .build()

        ).execute().body()!!.string()

        val pattern = Pattern.compile("\"login_token\": *\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }

    /**
     * Телефон в формате 79161234567
     */
    fun registerDevice(deviceToken: String, phone: String): String {
        val result = client.newCall(Request.Builder()
                .url(
                        Url(ROCKET_URL + REGISTER)
                                .url)
                .addHeader("content-type", "application/x-www-form-urlencoded")
                .addDefaultHeader(deviceToken)
                .post(FormBody.Builder()
                        .add("phone", phone)
                        .build())
                .build()).execute().body()!!.string()
        val pattern = Pattern.compile("\"id\":\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }

    private fun mediaType() = MediaType.get("application/x-www-form-urlencoded")

    private fun getDeviceId(deviceToken: String): String {
        return "ANDROID$deviceToken"
    }

    private fun Request.Builder.addDefaultHeader(deviceToken: String): Request.Builder {
        val time = Date().time / 1000
        addHeader("x-time", time.toString())
        addHeader("x-sig", generateXsig(time))
        addHeader("x-device-id", getDeviceId(deviceToken))
        return this
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