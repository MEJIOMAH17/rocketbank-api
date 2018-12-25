.class public Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/Template$ProviderPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldPayment"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->name:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->value:Ljava/lang/String;

    return-void
.end method
