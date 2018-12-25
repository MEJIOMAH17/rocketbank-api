.class public final Lio/card/payment/ui/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/network/api/CafeApi;",
        ">;"
    }
.end annotation


# instance fields
.field private final module$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialize/util/KeyboardUtil;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialize/util/KeyboardUtil;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    iput-object p1, p0, Lio/card/payment/ui/ActivityHelper;->module$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 2017
    iput-object p2, p0, Lio/card/payment/ui/ActivityHelper;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static setActivityTheme(Landroid/app/Activity;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 1102
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const p1, 0x103006e

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_2
    const p1, 0x103000c

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 3022
    iget-object v0, p0, Lio/card/payment/ui/ActivityHelper;->retrofitProvider:Ljavax/inject/Provider;

    .line 3023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    const-string v1, "retrofit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    const-class v1, Lru/rocketbank/core/network/api/CafeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(CafeApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/network/api/CafeApi;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 4048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3022
    :cond_0
    check-cast v0, Lru/rocketbank/core/network/api/CafeApi;

    return-object v0
.end method
