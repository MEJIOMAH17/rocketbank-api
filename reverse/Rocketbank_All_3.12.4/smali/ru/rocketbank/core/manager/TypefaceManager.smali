.class public final Lru/rocketbank/core/manager/TypefaceManager;
.super Ljava/lang/Object;
.source "TypefaceManager.java"


# static fields
.field private static typefaceManager:Lru/rocketbank/core/manager/TypefaceManager;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/TypefaceManager;->map:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lru/rocketbank/core/manager/TypefaceManager;
    .locals 1

    .line 34
    sget-object v0, Lru/rocketbank/core/manager/TypefaceManager;->typefaceManager:Lru/rocketbank/core/manager/TypefaceManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lru/rocketbank/core/manager/TypefaceManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/TypefaceManager;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/TypefaceManager;->typefaceManager:Lru/rocketbank/core/manager/TypefaceManager;

    .line 37
    :cond_0
    sget-object v0, Lru/rocketbank/core/manager/TypefaceManager;->typefaceManager:Lru/rocketbank/core/manager/TypefaceManager;

    return-object v0
.end method

.method private getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 102
    iget-object v0, p0, Lru/rocketbank/core/manager/TypefaceManager;->map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 106
    iget-object p1, p0, Lru/rocketbank/core/manager/TypefaceManager;->map:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Roboto-Regular.ttf"

    .line 62
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "Roboto-Black.ttf"

    .line 53
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "rocket-symbols-2.0.otf"

    .line 43
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-string p1, "Roboto-Bold.ttf"

    .line 51
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string p1, "IconOperation.ttf"

    .line 59
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string p1, "IconMenu.ttf"

    .line 57
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string p1, "OCRAEXT.TTF"

    .line 55
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "Roboto-Thin.ttf"

    .line 49
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_8
    const-string p1, "Roboto-Medium.ttf"

    .line 47
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-string p1, "Roboto-Light.ttf"

    .line 45
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getTypeface(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public final setTypeface(ILandroid/widget/TextView;)V
    .locals 1

    .line 89
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2084
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2085
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    return-void
.end method

.method public final setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, -0x1

    .line 1076
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1084
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1085
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setSubpixelText(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method
