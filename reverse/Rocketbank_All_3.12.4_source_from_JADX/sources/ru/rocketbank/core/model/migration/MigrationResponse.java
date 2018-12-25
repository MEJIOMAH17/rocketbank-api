package ru.rocketbank.core.model.migration;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;

public class MigrationResponse extends GenericRequestResponseData {
    @SerializedName("tochka_joining")
    private Migration migration;

    public Migration getMigration() {
        return this.migration;
    }
}
