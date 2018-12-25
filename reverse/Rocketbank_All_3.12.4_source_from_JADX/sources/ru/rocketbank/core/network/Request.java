package ru.rocketbank.core.network;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: Request.kt */
public final class Request {
    public static final Request INSTANCE = new Request();
    public static final String LINK;
    public static final String LINK_API;
    public static final String LINK__GEO_YANDEX_API = "https://geocode-maps.yandex.ru/";

    static {
        String string = BaseRocketApplication.getContext().getString(C0859R.string.server_url);
        Intrinsics.checkExpressionValueIsNotNull(string, "BaseRocketApplication.ge…ring(R.string.server_url)");
        LINK = string;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(LINK);
        stringBuilder.append(BaseRocketApplication.getContext().getString(C0859R.string.api_link));
        LINK_API = stringBuilder.toString();
    }

    private Request() {
    }
}
