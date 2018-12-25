package ru.rocketbank.core.model.transfers.bank;

import com.google.gson.annotations.SerializedName;
import java.util.Map;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.Payments;

/* compiled from: RemittanceRequestData.kt */
public final class RemittanceRequestData {
    private final String card_token;
    @SerializedName("app_uniq_timestamp_hash")
    private final String hash = Payments.INSTANCE.newHash();
    private final Map<String, String> remittance;
    private final String remittance_kind;

    public RemittanceRequestData(RemittanceOutgoing remittanceOutgoing) {
        Intrinsics.checkParameterIsNotNull(remittanceOutgoing, "remittanceOutgoingData");
        this.card_token = remittanceOutgoing.getCardAccount();
        this.remittance = Companion.toMap(remittanceOutgoing.getMap());
        this.remittance_kind = remittanceOutgoing.getRemittance_kind();
    }

    public final String getCard_token() {
        return this.card_token;
    }

    public final Map<String, String> getRemittance() {
        return this.remittance;
    }

    public final String getRemittance_kind() {
        return this.remittance_kind;
    }

    public final String getHash() {
        return this.hash;
    }
}
