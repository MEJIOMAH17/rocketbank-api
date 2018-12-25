package ru.rocketbank.core.nfc;

/* compiled from: CardDataRaw.kt */
public final class CardDataRaw {
    private int month;
    private String pan;
    private int year;

    public final String getPan() {
        return this.pan;
    }

    public final void setPan(String str) {
        this.pan = str;
    }

    public final int getMonth() {
        return this.month;
    }

    public final void setMonth(int i) {
        this.month = i;
    }

    public final int getYear() {
        return this.year;
    }

    public final void setYear(int i) {
        this.year = i;
    }
}
