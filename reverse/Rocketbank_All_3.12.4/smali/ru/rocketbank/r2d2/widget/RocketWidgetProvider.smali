.class public final Lru/rocketbank/r2d2/widget/RocketWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "RocketWidgetProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketWidgetProvider.kt\nru/rocketbank/r2d2/widget/RocketWidgetProvider\n*L\n1#1,95:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final getProviderInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7f080192

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "MEGAFON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 79
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u041c\u0435\u0433\u0430\u0444\u043e\u043d"

    const v1, 0x7f080164

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_1
    const-string v0, "114108"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 78
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u044f YOTA"

    const v1, 0x7f0801a3

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_2
    const-string v0, "5725_new"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 83
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u0422\u0415\u041b\u04152"

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_3
    const-string v0, "5725"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 80
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u0422\u0415\u041b\u04152"

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_4
    const-string v0, "5659"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 77
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u041c\u043e\u0442\u0438\u0432"

    const v1, 0x7f08016a

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_5
    const-string v0, "4165"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 81
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u0411\u0438\u043b\u0430\u0439\u043d"

    const v1, 0x7f080134

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :sswitch_6
    const-string v0, "MTS"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 82
    new-instance p2, Lkotlin/Pair;

    const-string/jumbo v0, "\u041c\u043e\u0439 \u041c\u0422\u0421"

    const v1, 0x7f08016b

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12b8c -> :sswitch_6
        0x1861fc -> :sswitch_5
        0x18e905 -> :sswitch_4
        0x18ec65 -> :sswitch_3
        0x377f0ac6 -> :sswitch_2
        0x56685765 -> :sswitch_1
        0x630556f3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v0, p3

    .line 25
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getWidgetManager()Lru/rocketbank/core/manager/WidgetManager;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lru/rocketbank/core/manager/WidgetManager;->getWidgeState()Lru/rocketbank/core/realm/WidgetData;

    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Lru/rocketbank/core/realm/WidgetData;->realmGet$operator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 30
    invoke-direct {p0, p1, v2}, Lru/rocketbank/r2d2/widget/RocketWidgetProvider;->getProviderInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    const/4 v3, 0x0

    move v4, v3

    .line 35
    :goto_1
    aget v5, p3, v4

    .line 38
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v7, Lru/rocketbank/core/utils/RocketAction;->ACTION_REFILL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 39
    invoke-static {p1, v3, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 41
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v8, Lru/rocketbank/core/utils/RocketAction;->ACTION_PHONE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 42
    invoke-static {p1, v3, v7, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 46
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c01c7

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v9, 0x7f0902d1

    .line 47
    invoke-virtual {v8, v9, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f0902e7

    .line 48
    invoke-virtual {v8, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f09006e

    .line 2010
    invoke-virtual {v1}, Lru/rocketbank/core/realm/WidgetData;->realmGet$balance()Ljava/lang/String;

    move-result-object v9

    .line 50
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0902f6

    .line 2011
    invoke-virtual {v1}, Lru/rocketbank/core/realm/WidgetData;->realmGet$miles()Ljava/lang/String;

    move-result-object v9

    .line 51
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2019
    invoke-virtual {v1}, Lru/rocketbank/core/realm/WidgetData;->realmGet$unlimitedCashouts()Z

    move-result v7

    const v9, 0x7f090218

    if-nez v7, :cond_1

    .line 3017
    invoke-virtual {v1}, Lru/rocketbank/core/realm/WidgetData;->realmGet$number()Ljava/lang/String;

    move-result-object v7

    .line 54
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const v7, 0x7f1104c6

    .line 56
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    const v9, 0x7f09029c

    .line 61
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {v8, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f0902b0

    .line 63
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    const/4 v7, 0x4

    .line 65
    invoke-virtual {v8, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    :goto_3
    invoke-virtual {p2, v5, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    if-eq v4, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 72
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
