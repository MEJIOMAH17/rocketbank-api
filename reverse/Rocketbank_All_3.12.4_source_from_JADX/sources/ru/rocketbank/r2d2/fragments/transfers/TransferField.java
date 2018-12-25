package ru.rocketbank.r2d2.fragments.transfers;

/* compiled from: TransferField.kt */
public enum TransferField {
    ;
    
    private final String pattern;
    private final int title;

    protected TransferField(int i, String str) {
        this.title = i;
        this.pattern = str;
    }

    public final String getPattern() {
        return this.pattern;
    }

    public final int getTitle() {
        return this.title;
    }
}
