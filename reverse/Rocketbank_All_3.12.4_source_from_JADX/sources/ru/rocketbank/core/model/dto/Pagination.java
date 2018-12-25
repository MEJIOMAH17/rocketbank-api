package ru.rocketbank.core.model.dto;

import com.google.gson.annotations.SerializedName;

/* compiled from: Pagination.kt */
public final class Pagination {
    @SerializedName("current_page")
    private final int currentPage;
    @SerializedName("per_page")
    private final int perPage;
    @SerializedName("total_count")
    private final int totalCount;
    @SerializedName("total_pages")
    private final int totalPages;

    public static /* bridge */ /* synthetic */ Pagination copy$default(Pagination pagination, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = pagination.totalPages;
        }
        if ((i5 & 2) != 0) {
            i2 = pagination.currentPage;
        }
        if ((i5 & 4) != 0) {
            i3 = pagination.perPage;
        }
        if ((i5 & 8) != 0) {
            i4 = pagination.totalCount;
        }
        return pagination.copy(i, i2, i3, i4);
    }

    public final int component1() {
        return this.totalPages;
    }

    public final int component2() {
        return this.currentPage;
    }

    public final int component3() {
        return this.perPage;
    }

    public final int component4() {
        return this.totalCount;
    }

    public final Pagination copy(int i, int i2, int i3, int i4) {
        return new Pagination(i, i2, i3, i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Pagination) {
            Pagination pagination = (Pagination) obj;
            if (this.totalPages == pagination.totalPages) {
                if (this.currentPage == pagination.currentPage) {
                    if (this.perPage == pagination.perPage) {
                        if (this.totalCount == pagination.totalCount) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.totalPages * 31) + this.currentPage) * 31) + this.perPage) * 31) + this.totalCount;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Pagination(totalPages=");
        stringBuilder.append(this.totalPages);
        stringBuilder.append(", currentPage=");
        stringBuilder.append(this.currentPage);
        stringBuilder.append(", perPage=");
        stringBuilder.append(this.perPage);
        stringBuilder.append(", totalCount=");
        stringBuilder.append(this.totalCount);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Pagination(int i, int i2, int i3, int i4) {
        this.totalPages = i;
        this.currentPage = i2;
        this.perPage = i3;
        this.totalCount = i4;
    }

    public final int getTotalPages() {
        return this.totalPages;
    }

    public final int getCurrentPage() {
        return this.currentPage;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }
}
