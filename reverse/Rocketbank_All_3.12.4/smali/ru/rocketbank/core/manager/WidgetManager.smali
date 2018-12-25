.class public final Lru/rocketbank/core/manager/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/WidgetManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWidgetManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WidgetManager.kt\nru/rocketbank/core/manager/WidgetManager\n*L\n1#1,117:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/WidgetManager$Companion;

.field private static final TAG:Ljava/lang/String; = "WidgetManager"


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final context:Landroid/content/Context;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final widgetApi:Lru/rocketbank/core/network/api/WidgetApi;

.field private final widgetStorage:Lru/rocketbank/core/user/WidgetStorage;

.field private widgetUpdateListener$67c53dc7:Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/WidgetManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/WidgetManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/WidgetManager;->Companion:Lru/rocketbank/core/manager/WidgetManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/utils/MoneyFormatter;Lru/rocketbank/core/user/WidgetStorage;Lru/rocketbank/core/network/api/WidgetApi;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyFormatter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetStorage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/WidgetManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/manager/WidgetManager;->authorization:Lru/rocketbank/core/user/Authorization;

    iput-object p3, p0, Lru/rocketbank/core/manager/WidgetManager;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iput-object p4, p0, Lru/rocketbank/core/manager/WidgetManager;->widgetStorage:Lru/rocketbank/core/user/WidgetStorage;

    iput-object p5, p0, Lru/rocketbank/core/manager/WidgetManager;->widgetApi:Lru/rocketbank/core/network/api/WidgetApi;

    return-void
.end method


# virtual methods
.method public final getWidgeState()Lru/rocketbank/core/realm/WidgetData;
    .locals 1

    .line 106
    iget-object v0, p0, Lru/rocketbank/core/manager/WidgetManager;->widgetStorage:Lru/rocketbank/core/user/WidgetStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/WidgetStorage;->read()Lru/rocketbank/core/realm/WidgetData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/core/realm/WidgetData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/WidgetData;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final setUpdateListener$4abaf3d4(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1

    const-string v0, "widgetUpdateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lru/rocketbank/core/manager/WidgetManager;->widgetUpdateListener$67c53dc7:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void
.end method

.method public final updateWidgetData()V
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/manager/WidgetManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$widgetToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p0, Lru/rocketbank/core/manager/WidgetManager;->widgetStorage:Lru/rocketbank/core/user/WidgetStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/WidgetStorage;->clear()V

    :cond_1
    return-void

    :cond_2
    return-void
.end method
