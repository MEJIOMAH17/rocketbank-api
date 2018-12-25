.class public Lru/rocketbank/core/utils/ParcelableUtilsKt;
.super Ljava/lang/Object;
.source "ParcelableUtils.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/WidgetManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorizationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/UserModule;

.field private final moneyFormatterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/MoneyFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final widgetApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/WidgetApi;",
            ">;"
        }
    .end annotation
.end field

.field private final widgetStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/WidgetStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/UserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/WidgetStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/MoneyFormatter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/WidgetApi;",
            ">;)V"
        }
    .end annotation

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p1, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->module:Lru/rocketbank/core/dagger/UserModule;

    .line 1035
    iput-object p2, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->contextProvider:Ljavax/inject/Provider;

    .line 1036
    iput-object p3, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->authorizationProvider:Ljavax/inject/Provider;

    .line 1037
    iput-object p4, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->widgetStorageProvider:Ljavax/inject/Provider;

    .line 1038
    iput-object p5, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->moneyFormatterProvider:Ljavax/inject/Provider;

    .line 1039
    iput-object p6, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->widgetApiProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create$430d575d(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lru/rocketbank/core/utils/ParcelableUtilsKt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/UserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/WidgetStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/MoneyFormatter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/WidgetApi;",
            ">;)",
            "Lru/rocketbank/core/utils/ParcelableUtilsKt;"
        }
    .end annotation

    .line 2061
    new-instance v7, Lru/rocketbank/core/utils/ParcelableUtilsKt;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/utils/ParcelableUtilsKt;-><init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 3014
    invoke-virtual {p0}, Lru/rocketbank/core/utils/ParcelableUtilsKt;->get()Lru/rocketbank/core/manager/WidgetManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lru/rocketbank/core/manager/WidgetManager;
    .locals 5

    .line 1044
    iget-object v0, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->contextProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->authorizationProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/user/Authorization;

    iget-object v2, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->widgetStorageProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/user/WidgetStorage;

    iget-object v3, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->moneyFormatterProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/utils/MoneyFormatter;

    iget-object v4, p0, Lru/rocketbank/core/utils/ParcelableUtilsKt;->widgetApiProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/api/WidgetApi;

    .line 1045
    invoke-static {v0, v1, v2, v3, v4}, Lru/rocketbank/core/dagger/UserModule;->provideWidgetManager(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/user/WidgetStorage;Lru/rocketbank/core/utils/MoneyFormatter;Lru/rocketbank/core/network/api/WidgetApi;)Lru/rocketbank/core/manager/WidgetManager;

    move-result-object v0

    .line 1044
    check-cast v0, Lru/rocketbank/core/manager/WidgetManager;

    return-object v0
.end method
