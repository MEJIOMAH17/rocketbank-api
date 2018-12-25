.class public final Lru/rocketbank/core/utils/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.kt"


# instance fields
.field private applicationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ru.rocketbank.core"

    .line 6
    iput-object v0, p0, Lru/rocketbank/core/utils/AppConfig;->applicationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/utils/AppConfig;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final setApplicationId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/utils/AppConfig;->applicationId:Ljava/lang/String;

    return-void
.end method
