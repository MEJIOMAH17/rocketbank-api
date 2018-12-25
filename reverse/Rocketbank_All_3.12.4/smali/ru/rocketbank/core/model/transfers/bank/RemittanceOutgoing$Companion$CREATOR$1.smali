.class public final Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "RemittanceOutgoing.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "parcel.readBundle(Bundle::class.java.classLoader)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lru/rocketbank/core/utils/CollectionUtilsKt;->fromBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setCardAccount(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setGkh(Z)V

    .line 87
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string v1, "nds"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "true"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setVat(Ljava/lang/Boolean;)V

    .line 88
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string v1, "besp"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "true"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setBesp(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion$CREATOR$1;->newArray(I)[Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
    .locals 0

    .line 94
    new-array p1, p1, [Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    return-object p1
.end method
