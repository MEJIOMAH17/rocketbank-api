package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: Regex.kt */
public final class RegexKt$fromInt$$inlined$apply$lambda$1 extends Lambda implements Function1<T, Boolean> {
    final /* synthetic */ int $value$inlined;

    public RegexKt$fromInt$$inlined$apply$lambda$1(int i) {
        this.$value$inlined = i;
        super(1);
    }

    public final boolean invoke(T t) {
        FlagEnum flagEnum = (FlagEnum) t;
        return (this.$value$inlined & flagEnum.getMask()) == flagEnum.getValue() ? true : null;
    }
}
