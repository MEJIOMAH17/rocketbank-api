.class public final Lru/rocketbank/core/model/card/Bin;
.super Ljava/lang/Object;
.source "Bin.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/card/Bin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bin.kt\nru/rocketbank/core/model/card/Bin\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,51:1\n7#2,4:52\n*E\n*S KotlinDebug\n*F\n+ 1 Bin.kt\nru/rocketbank/core/model/card/Bin\n*L\n49#1,4:52\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/card/Bin;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/card/Bin$Companion;


# instance fields
.field private advice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advice"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private transferHint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_hint"
    .end annotation
.end field

.field private transferWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_works"
    .end annotation
.end field

.field private works:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "works"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/card/Bin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/card/Bin$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/card/Bin;->Companion:Lru/rocketbank/core/model/card/Bin$Companion;

    .line 52
    new-instance v0, Lru/rocketbank/core/model/card/Bin$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/card/Bin$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 55
    sput-object v0, Lru/rocketbank/core/model/card/Bin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/model/card/Bin;->works:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/Bin;->advice:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/Bin;->transferHint:Ljava/lang/String;

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/model/card/Bin;->transferWorks:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/card/Bin;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdvice()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/card/Bin;->advice:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/card/Bin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferHint()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/card/Bin;->transferHint:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferWorks()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lru/rocketbank/core/model/card/Bin;->transferWorks:Z

    return v0
.end method

.method public final getWorks()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lru/rocketbank/core/model/card/Bin;->works:Z

    return v0
.end method

.method public final setAdvice(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/card/Bin;->advice:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/model/card/Bin;->name:Ljava/lang/String;

    return-void
.end method

.method public final setTransferHint(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/card/Bin;->transferHint:Ljava/lang/String;

    return-void
.end method

.method public final setTransferWorks(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lru/rocketbank/core/model/card/Bin;->transferWorks:Z

    return-void
.end method

.method public final setWorks(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lru/rocketbank/core/model/card/Bin;->works:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 23
    iget-boolean p2, p0, Lru/rocketbank/core/model/card/Bin;->works:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 24
    iget-object p2, p0, Lru/rocketbank/core/model/card/Bin;->advice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 25
    iget-object p2, p0, Lru/rocketbank/core/model/card/Bin;->transferHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 26
    iget-boolean p2, p0, Lru/rocketbank/core/model/card/Bin;->transferWorks:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 27
    iget-object p2, p0, Lru/rocketbank/core/model/card/Bin;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method
