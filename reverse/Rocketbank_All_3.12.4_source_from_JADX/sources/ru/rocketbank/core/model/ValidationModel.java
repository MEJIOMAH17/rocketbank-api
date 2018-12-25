package ru.rocketbank.core.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ValidationModel.kt */
public final class ValidationModel {
    private String id;

    public static /* bridge */ /* synthetic */ ValidationModel copy$default(ValidationModel validationModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = validationModel.id;
        }
        return validationModel.copy(str);
    }

    public final String component1() {
        return this.id;
    }

    public final ValidationModel copy(String str) {
        return new ValidationModel(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ValidationModel) {
                if (Intrinsics.areEqual(this.id, ((ValidationModel) obj).id)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.id;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ValidationModel(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ValidationModel(String str) {
        this.id = str;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        this.id = str;
    }
}
