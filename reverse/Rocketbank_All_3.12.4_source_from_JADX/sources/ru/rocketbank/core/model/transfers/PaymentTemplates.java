package ru.rocketbank.core.model.transfers;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;

public class PaymentTemplates implements Serializable {
    @SerializedName("payment_templates")
    public List<Template> templates;
}
