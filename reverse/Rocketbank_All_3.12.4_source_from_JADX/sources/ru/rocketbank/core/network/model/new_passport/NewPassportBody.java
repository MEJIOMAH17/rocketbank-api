package ru.rocketbank.core.network.model.new_passport;

import com.google.gson.annotations.SerializedName;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: NewPassportBody.kt */
public final class NewPassportBody {
    @SerializedName("images")
    private final Map<String, Integer> imagesIds;
    @SerializedName("operation_id")
    private final Long operationId;

    public static /* bridge */ /* synthetic */ NewPassportBody copy$default(NewPassportBody newPassportBody, Map map, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            map = newPassportBody.imagesIds;
        }
        if ((i & 2) != 0) {
            l = newPassportBody.operationId;
        }
        return newPassportBody.copy(map, l);
    }

    public final Map<String, Integer> component1() {
        return this.imagesIds;
    }

    public final Long component2() {
        return this.operationId;
    }

    public final NewPassportBody copy(Map<String, Integer> map, Long l) {
        Intrinsics.checkParameterIsNotNull(map, "imagesIds");
        return new NewPassportBody(map, l);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof NewPassportBody) {
                NewPassportBody newPassportBody = (NewPassportBody) obj;
                if (Intrinsics.areEqual(this.imagesIds, newPassportBody.imagesIds) && Intrinsics.areEqual(this.operationId, newPassportBody.operationId)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Map map = this.imagesIds;
        int i = 0;
        int hashCode = (map != null ? map.hashCode() : 0) * 31;
        Long l = this.operationId;
        if (l != null) {
            i = l.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("NewPassportBody(imagesIds=");
        stringBuilder.append(this.imagesIds);
        stringBuilder.append(", operationId=");
        stringBuilder.append(this.operationId);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public NewPassportBody(Map<String, Integer> map, Long l) {
        Intrinsics.checkParameterIsNotNull(map, "imagesIds");
        this.imagesIds = map;
        this.operationId = l;
    }

    public final Map<String, Integer> getImagesIds() {
        return this.imagesIds;
    }

    public /* synthetic */ NewPassportBody(Map map, Long l, int i, Ref ref) {
        if ((i & 2) != 0) {
            l = null;
        }
        this(map, l);
    }

    public final Long getOperationId() {
        return this.operationId;
    }
}
