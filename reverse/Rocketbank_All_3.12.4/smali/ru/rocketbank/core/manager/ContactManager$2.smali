.class final Lru/rocketbank/core/manager/ContactManager$2;
.super Ljava/lang/Object;
.source "ContactManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/ContactManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/RocketShortcutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/manager/ContactManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/manager/ContactManager$2;

    invoke-direct {v0}, Lru/rocketbank/core/manager/ContactManager$2;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/ContactManager$2;->INSTANCE:Lru/rocketbank/core/manager/ContactManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    .line 1068
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
