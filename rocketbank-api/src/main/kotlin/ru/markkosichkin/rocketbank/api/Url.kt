package ru.markkosichkin.rocketbank.api

class Url {
    var url: String
    var paramFlag = false

    constructor(url: String) {
        this.url = url
    }

    constructor(url: String, vararg pathParams: String) {
        this.url = url
        for (pathParam in pathParams) {
            this.url = this.url.format(pathParam)
        }
    }

    fun addParam(key: String, value: String): Url {
        if (!paramFlag) {
            url += "?"
            paramFlag = true
        } else {
            url += "&"
        }
        url = url.plus("$key=$value")
        return this
    }
}

