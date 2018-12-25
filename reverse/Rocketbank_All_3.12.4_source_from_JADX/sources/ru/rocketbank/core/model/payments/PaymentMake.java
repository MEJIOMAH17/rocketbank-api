package ru.rocketbank.core.model.payments;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.provider.ProviderField;

public class PaymentMake extends GenericRequestResponseData {
    private float amount;
    private List<ProviderField> fields;
    private int id;
    private String name;
    @SerializedName("provider_id")
    private int providerId;

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof PaymentMake)) {
            PaymentMake paymentMake = (PaymentMake) obj;
            if (paymentMake.providerId == this.providerId && paymentMake.fields.equals(this.fields) != null) {
                return true;
            }
        }
        return null;
    }

    public float getAmount() {
        return this.amount;
    }

    public int getId() {
        return this.id;
    }

    public int getProviderId() {
        return this.providerId;
    }

    public List<ProviderField> getFields() {
        return this.fields;
    }

    public String getName() {
        return this.name;
    }
}
