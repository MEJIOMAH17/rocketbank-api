.class public Lru/rocketbank/core/network/model/PaymentResponse$Field;
.super Ljava/lang/Object;
.source "PaymentResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/PaymentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/network/model/PaymentResponse$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/network/model/PaymentResponse$Field;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lru/rocketbank/core/network/model/PaymentResponse$Field;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lru/rocketbank/core/network/model/PaymentResponse$Field;->value:Ljava/lang/String;

    return-void
.end method
