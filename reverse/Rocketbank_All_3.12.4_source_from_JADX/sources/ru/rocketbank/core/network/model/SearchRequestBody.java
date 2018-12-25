package ru.rocketbank.core.network.model;

/* compiled from: SearchRequestBody.kt */
public final class SearchRequestBody {
    private int page;
    private int perPage;
    /* renamed from: q */
    private String f457q;
    private String token;

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public final String getQ() {
        return this.f457q;
    }

    public final void setQ(String str) {
        this.f457q = str;
    }

    public final int getPage() {
        return this.page;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final void setPerPage(int i) {
        this.perPage = i;
    }
}
