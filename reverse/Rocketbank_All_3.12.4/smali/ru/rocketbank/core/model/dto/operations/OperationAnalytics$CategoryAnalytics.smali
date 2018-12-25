.class public final Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;
.super Ljava/lang/Object;
.source "OperationAnalytics.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/dto/operations/OperationAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion;


# instance fields
.field private final perDay:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_day"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;->Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion;

    .line 110
    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    const-string v0, "`in`.createFloatArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;->perDay:[F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$CategoryAnalytics;->perDay:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
