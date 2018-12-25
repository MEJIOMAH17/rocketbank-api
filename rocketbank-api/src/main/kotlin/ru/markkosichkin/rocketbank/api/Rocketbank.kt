package ru.markkosichkin.rocketbank.api

import org.apache.http.auth.UsernamePasswordCredentials
import org.apache.http.client.methods.HttpGet
import org.apache.http.client.methods.HttpPatch
import org.apache.http.client.methods.HttpPost
import org.apache.http.client.methods.HttpRequestBase
import org.apache.http.client.utils.URIBuilder
import org.apache.http.entity.StringEntity
import org.apache.http.impl.auth.BasicScheme
import org.apache.http.impl.client.HttpClients
import java.io.BufferedReader
import java.io.InputStreamReader
import java.security.MessageDigest
import java.util.*
import java.util.regex.Pattern
import java.util.stream.Collectors
import kotlin.experimental.and
import kotlin.experimental.or


class Rocketbank {
    companion object {
        private val ROCKET_URL = "https://rocketbank.ru"
        private val REGISTER = "/api/v5/devices/register"
        private val VERIFY = "//api/v5/sms_verifications/%s/verify"
        private val LOGIN = "/api/v5/login"
        private val FEED = "/api/v5/operations/sexy_feed"
    }


    private val httpclient = HttpClients.createMinimal()

    fun feed(token: String, deviceToken: String, resultAmount: Int): String {
        val uri = URIBuilder(ROCKET_URL + FEED)
                .addParameter("token", token)
                .addParameter("page", "1")
                .addParameter("per_page", resultAmount.toString())
                .build()
        val httpGet = HttpGet(uri)
        addDefaultHeader(httpGet, deviceToken)
        httpGet.addHeader("authorization", "Token token=$token")

        val execute = httpclient.execute(httpGet)

        val reader = InputStreamReader(execute.getEntity().getContent())
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()
        return result
    }

    /**
     * @param id девайса с которым вызывался registerDevice
     * @param loginToken результат работы verify
     * @param password пароль пользователя от приложения
     */
    fun login(deviceToken: String, loginToken: String, password: String): String {
        val httpGet = HttpGet(ROCKET_URL + LOGIN)
        addDefaultHeader(httpGet, deviceToken)
        val creds = UsernamePasswordCredentials(loginToken, password)
        httpGet.addHeader(BasicScheme().authenticate(creds, httpGet))


        val execute = httpclient.execute(httpGet)

        val reader = InputStreamReader(execute.getEntity().getContent())
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
        val httpPatch = HttpPatch(String.format(ROCKET_URL + VERIFY, token))
        addDefaultHeader(httpPatch, deviceToken)
        httpPatch.addHeader("content-type", "application/x-www-form-urlencoded")
        httpPatch.entity = StringEntity("id=$token&code=$code", "UTF-8")
        val execute = httpclient.execute(httpPatch)
        val reader = InputStreamReader(execute.getEntity().getContent())
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
        val httpPost = HttpPost(ROCKET_URL + REGISTER)
        addDefaultHeader(httpPost, deviceToken)
        httpPost.addHeader("content-type", "application/x-www-form-urlencoded")
        httpPost.entity = StringEntity("phone=%2B$phone", "UTF-8")

        val execute = httpclient.execute(httpPost)
        val reader = InputStreamReader(execute.getEntity().getContent())
        val result = BufferedReader(reader).lines().collect(Collectors.toList()).toString()

        val pattern = Pattern.compile("\"id\":\"(.*?)\"")
        val matcher = pattern.matcher(result)
        matcher.find()
        return matcher.group(1)
    }

    private fun getDeviceId(deviceToken: String): String {
        return "ANDROID$deviceToken"
    }

    private fun addDefaultHeader(rq: HttpRequestBase, deviceToken: String) {
        val time = Date().time / 1000
        rq.addHeader("x-time", time.toString())
        rq.addHeader("x-sig", generateXsig(time))
        rq.addHeader("x-device-id", getDeviceId(deviceToken))
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