.class public final Lru/rocketbank/core/model/operation/DelimiterOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "DelimiterOperation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/operation/DelimiterOperation$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/operation/DelimiterOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/operation/DelimiterOperation$Companion;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/operation/DelimiterOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/operation/DelimiterOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/operation/DelimiterOperation;->Companion:Lru/rocketbank/core/model/operation/DelimiterOperation$Companion;

    .line 32
    new-instance v0, Lru/rocketbank/core/model/operation/DelimiterOperation$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/operation/DelimiterOperation$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/operation/DelimiterOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/operation/DelimiterOperation;->type:I

    .line 14
    invoke-virtual {p0, p2}, Lru/rocketbank/core/model/operation/DelimiterOperation;->setId(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/model/operation/DelimiterOperation;->type:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/model/operation/DelimiterOperation;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/model/operation/DelimiterOperation;->type:I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_0

    .line 23
    iget p2, p0, Lru/rocketbank/core/model/operation/DelimiterOperation;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    return-void
.end method
