package ru.rocketbank.r2d2.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.widget.RemoteViews;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.WidgetData;
import ru.rocketbank.core.utils.RocketAction;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.StartupActivity;

/* compiled from: RocketWidgetProvider.kt */
public final class RocketWidgetProvider extends AppWidgetProvider {
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appWidgetManager, "appWidgetManager");
        Intrinsics.checkParameterIsNotNull(iArr, "appWidgetIds");
        int length = iArr.length;
        WidgetData widgeState = RocketApplication.Companion.getInjector().getWidgetManager().getWidgeState();
        String realmGet$operator = widgeState.realmGet$operator();
        Pair providerInfo = realmGet$operator != null ? getProviderInfo(context, realmGet$operator) : null;
        length--;
        if (length >= 0) {
            int i = 0;
            while (true) {
                int i2 = iArr[i];
                PendingIntent activity = PendingIntent.getActivity(context, 0, new Intent(context, StartupActivity.class).setAction(RocketAction.ACTION_REFILL), 0);
                PendingIntent activity2 = PendingIntent.getActivity(context, 0, new Intent(context, StartupActivity.class).setAction(RocketAction.ACTION_PHONE), 0);
                RemoteViews remoteViews = new RemoteViews(context.getPackageName(), C0859R.layout.widget);
                remoteViews.setOnClickPendingIntent(C0859R.id.refill, activity);
                remoteViews.setOnClickPendingIntent(C0859R.id.rightPart, activity2);
                remoteViews.setTextViewText(C0859R.id.balance, widgeState.realmGet$balance());
                remoteViews.setTextViewText(C0859R.id.rocket_money, widgeState.realmGet$miles());
                if (widgeState.realmGet$unlimitedCashouts()) {
                    remoteViews.setTextViewText(C0859R.id.limit, context.getString(C0859R.string.unlimited));
                } else {
                    remoteViews.setTextViewText(C0859R.id.limit, widgeState.realmGet$number());
                }
                if (providerInfo != null) {
                    Object second = providerInfo.getSecond();
                    if (second == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
                    }
                    remoteViews.setImageViewBitmap(C0859R.id.operator, ((BitmapDrawable) second).getBitmap());
                    remoteViews.setViewVisibility(C0859R.id.rightPart, 0);
                    remoteViews.setTextViewText(C0859R.id.phone, (CharSequence) providerInfo.getFirst());
                } else {
                    remoteViews.setViewVisibility(C0859R.id.rightPart, 4);
                }
                appWidgetManager.updateAppWidget(i2, remoteViews);
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        super.onUpdate(context, appWidgetManager, iArr);
    }

    private final Pair<String, Drawable> getProviderInfo(Context context, String str) {
        String str2;
        switch (str.hashCode()) {
            case 76684:
                if (str.equals("MTS") != null) {
                    str2 = "Мой МТС";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_mts);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 1597948:
                if (str.equals("4165") != null) {
                    str2 = "Мой Билайн";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_beeline);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 1632517:
                if (str.equals("5659") != null) {
                    str2 = "Мой Мотив";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_motiv);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 1633381:
                if (str.equals("5725") != null) {
                    str2 = "Мой ТЕЛЕ2";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_tele2);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 931072710:
                if (str.equals("5725_new") != null) {
                    str2 = "Мой ТЕЛЕ2";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_tele2);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 1449678693:
                if (str.equals("114108") != null) {
                    str2 = "Моя YOTA";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_yota);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            case 1661294323:
                if (str.equals("MEGAFON") != null) {
                    str2 = "Мой Мегафон";
                    context = ContextCompat.getDrawable(context, C0859R.drawable.ic_megaphone);
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    return new Pair(str2, context);
                }
                break;
            default:
                break;
        }
        return null;
    }
}
