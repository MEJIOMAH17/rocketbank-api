.class public final Lru/rocketbank/core/model/OneTwoTripUidOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "OneTwoTripUidOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/OneTwoTripUidOperation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneTwoTripUidOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneTwoTripUidOperation.kt\nru/rocketbank/core/model/OneTwoTripUidOperation\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,38:1\n7#2,4:39\n*E\n*S KotlinDebug\n*F\n+ 1 OneTwoTripUidOperation.kt\nru/rocketbank/core/model/OneTwoTripUidOperation\n*L\n36#1,4:39\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/OneTwoTripUidOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/OneTwoTripUidOperation$Companion;


# instance fields
.field private buttonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_text"
    .end annotation
.end field

.field private ref:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ref"
    .end annotation
.end field

.field private subtitleText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitle_text"
    .end annotation
.end field

.field private titleText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title_text"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/OneTwoTripUidOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/OneTwoTripUidOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->Companion:Lru/rocketbank/core/model/OneTwoTripUidOperation$Companion;

    .line 39
    new-instance v0, Lru/rocketbank/core/model/OneTwoTripUidOperation$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/OneTwoTripUidOperation$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 42
    sput-object v0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->titleText:Ljava/lang/String;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->subtitleText:Ljava/lang/String;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->buttonText:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->uid:Ljava/lang/String;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->ref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lru/rocketbank/core/model/OneTwoTripUidOperation;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->titleText:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->subtitleText:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->buttonText:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->uid:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "parcel.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->ref:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getRef()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleText()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->subtitleText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleText()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public final setRef(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->ref:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->subtitleText:Ljava/lang/String;

    return-void
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->titleText:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->uid:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_0

    .line 26
    iget-object p2, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->titleText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->subtitleText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lru/rocketbank/core/model/OneTwoTripUidOperation;->ref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
