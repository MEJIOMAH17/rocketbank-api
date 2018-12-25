package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import ru.rocketbank.core.model.Atm;
import ru.rocketbank.core.model.AtmsData;

public class AtmsCashinResponse {
    public List<Atm> atms;
    @SerializedName("last_update")
    public long lastUpdate;

    public AtmsCashinResponse(AtmsData atmsData) {
        this.atms = atmsData.getAtms();
        this.lastUpdate = atmsData.getTimestamp();
    }
}
