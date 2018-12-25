.class public final Lru/rocketbank/core/model/InnResponseData;
.super Ljava/lang/Object;
.source "InnResponseData.kt"


# instance fields
.field private final gisGkh:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gis_gkh"
    .end annotation
.end field

.field private inn:Ljava/lang/String;

.field private kpp:Ljava/lang/String;

.field private recipient_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "inn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/InnResponseData;->inn:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/InnResponseData;->kpp:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/model/InnResponseData;->recipient_name:Ljava/lang/String;

    iput-boolean p4, p0, Lru/rocketbank/core/model/InnResponseData;->gisGkh:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/InnResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getGisGkh()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lru/rocketbank/core/model/InnResponseData;->gisGkh:Z

    return v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/InnResponseData;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getKpp()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/InnResponseData;->kpp:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient_name()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/InnResponseData;->recipient_name:Ljava/lang/String;

    return-object v0
.end method

.method public final setInn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/InnResponseData;->inn:Ljava/lang/String;

    return-void
.end method

.method public final setKpp(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/InnResponseData;->kpp:Ljava/lang/String;

    return-void
.end method

.method public final setRecipient_name(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/InnResponseData;->recipient_name:Ljava/lang/String;

    return-void
.end method
