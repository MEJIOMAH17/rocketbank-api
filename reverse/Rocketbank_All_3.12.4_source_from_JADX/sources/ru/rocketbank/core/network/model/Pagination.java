package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: Pagination.kt */
public final class Pagination {
    @SerializedName("current_page")
    private final int current_page;
    @SerializedName("per_page")
    private final int perPage;
    @SerializedName("total_count")
    private final int totalCount;
    @SerializedName("total_pages")
    private final int totalPages;

    public static /* bridge */ /* synthetic */ Pagination copy$default(Pagination pagination, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = pagination.current_page;
        }
        if ((i5 & 2) != 0) {
            i2 = pagination.perPage;
        }
        if ((i5 & 4) != 0) {
            i3 = pagination.totalCount;
        }
        if ((i5 & 8) != 0) {
            i4 = pagination.totalPages;
        }
        return pagination.copy(i, i2, i3, i4);
    }

    public final int component1() {
        return this.current_page;
    }

    public final int component2() {
        return this.perPage;
    }

    public final int component3() {
        return this.totalCount;
    }

    public final int component4() {
        return this.totalPages;
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
            if (this.current_page == pagination.current_page) {
                if (this.perPage == pagination.perPage) {
                    if (this.totalCount == pagination.totalCount) {
                        if (this.totalPages == pagination.totalPages) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.current_page * 31) + this.perPage) * 31) + this.totalCount) * 31) + this.totalPages;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Pagination(current_page=");
        stringBuilder.append(this.current_page);
        stringBuilder.append(", perPage=");
        stringBuilder.append(this.perPage);
        stringBuilder.append(", totalCount=");
        stringBuilder.append(this.totalCount);
        stringBuilder.append(", totalPages=");
        stringBuilder.append(this.totalPages);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Pagination(int i, int i2, int i3, int i4) {
        this.current_page = i;
        this.perPage = i2;
        this.totalCount = i3;
        this.totalPages = i4;
    }

    public final int getCurrent_page() {
        return this.current_page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final int getTotalPages() {
        return this.totalPages;
    }
}
