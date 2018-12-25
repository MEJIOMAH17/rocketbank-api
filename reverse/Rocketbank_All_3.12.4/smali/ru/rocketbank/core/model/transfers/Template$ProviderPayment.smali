.class public Lru/rocketbank/core/model/transfers/Template$ProviderPayment;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderPayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;
    }
.end annotation


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;",
            ">;"
        }
    .end annotation
.end field

.field private provider_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getProvider_id()I
    .locals 1

    .line 106
    iget v0, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->provider_id:I

    return v0
.end method

.method public setFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->fields:Ljava/util/List;

    return-void
.end method

.method public setProvider_id(I)V
    .locals 0

    .line 110
    iput p1, p0, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->provider_id:I

    return-void
.end method

.method public toStringFields()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 119
    invoke-virtual {p0}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method
