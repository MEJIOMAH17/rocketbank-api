.class public final Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/ToMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static toMap(Lru/rocketbank/r2d2/fragments/transfers/ToMap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/fragments/transfers/ToMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1277
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap;->Companion:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;->getConvert()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {p0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap;->getFields()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
