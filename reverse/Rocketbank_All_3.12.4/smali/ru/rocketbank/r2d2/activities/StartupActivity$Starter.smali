.class final Lru/rocketbank/r2d2/activities/StartupActivity$Starter;
.super Ljava/lang/Object;
.source "StartupActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Starter"
.end annotation


# instance fields
.field private final data:Ljava/lang/String;

.field private final resetType:I

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->resetType:I

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->token:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getResetType()I
    .locals 1

    .line 90
    iget v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->resetType:I

    return v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->token:Ljava/lang/String;

    return-object v0
.end method
