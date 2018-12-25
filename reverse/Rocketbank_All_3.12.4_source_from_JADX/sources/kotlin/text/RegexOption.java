package kotlin.text;

/* compiled from: Regex.kt */
public enum RegexOption implements FlagEnum {
    ;
    
    private final int mask;
    private final int value;

    protected RegexOption(int i, int i2) {
        this.value = i;
        this.mask = i2;
    }

    public final int getMask() {
        return this.mask;
    }

    public final int getValue() {
        return this.value;
    }
}
