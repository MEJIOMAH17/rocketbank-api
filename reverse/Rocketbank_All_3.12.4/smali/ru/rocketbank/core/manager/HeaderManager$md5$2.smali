.class final Lru/rocketbank/core/manager/HeaderManager$md5$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HeaderManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/HeaderManager;-><init>(Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/AppInfoManager;Lru/rocketbank/core/manager/GeolocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/manager/HeaderManager$md5$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/manager/HeaderManager$md5$2;

    invoke-direct {v0}, Lru/rocketbank/core/manager/HeaderManager$md5$2;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/HeaderManager$md5$2;->INSTANCE:Lru/rocketbank/core/manager/HeaderManager$md5$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/core/manager/HeaderManager$md5$2;->invoke()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    .line 16
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method
