.class public Lru/rocketbank/core/BaseApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "BaseApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 17
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    return-void
.end method
