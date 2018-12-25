package ru.rocketbank.core.model.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import ru.rocketbank.core.model.Atm;

public class Atms {
    private List<Atm> atms;
    @SerializedName("last_update")
    private long lastUpdate;
    private Integer time;

    public List<Atm> getAtms() {
        return this.atms;
    }

    public boolean isEmpty() {
        if (this.atms != null) {
            if (!this.atms.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public Long getTime() {
        return Long.valueOf(this.lastUpdate);
    }
}
