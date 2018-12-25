package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.CheckCardData;
import ru.rocketbank.core.model.dto.ResponseData;

/* compiled from: ResetShortCodeRespone.kt */
public final class ResetShortCodeRespone {
    @SerializedName("reset_short_code")
    private ResetShortCode resetShortCode;
    @SerializedName("response_data")
    private ResponseData responseData;

    /* compiled from: ResetShortCodeRespone.kt */
    public static final class ResetShortCode {
        @SerializedName("check_card")
        private final CheckCardData checkCard;
        private final String token;

        public final String getToken() {
            return this.token;
        }

        public final CheckCardData getCheckCard() {
            return this.checkCard;
        }
    }

    public final ResetShortCode getResetShortCode() {
        return this.resetShortCode;
    }

    public final void setResetShortCode(ResetShortCode resetShortCode) {
        this.resetShortCode = resetShortCode;
    }

    public final ResponseData getResponseData() {
        return this.responseData;
    }

    public final void setResponseData(ResponseData responseData) {
        this.responseData = responseData;
    }
}
