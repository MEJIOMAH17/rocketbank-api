.class public final Lru/rocketbank/core/model/AccountsCurrency;
.super Ljava/lang/Object;
.source "AccountsCurrency.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final response:Lru/rocketbank/core/model/ResponseModel;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResponse()Lru/rocketbank/core/model/ResponseModel;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/AccountsCurrency;->response:Lru/rocketbank/core/model/ResponseModel;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/AccountsCurrency;->status:Ljava/lang/String;

    return-object v0
.end method
