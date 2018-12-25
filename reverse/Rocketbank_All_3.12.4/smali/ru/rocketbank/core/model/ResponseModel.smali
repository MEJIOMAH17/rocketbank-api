.class public final Lru/rocketbank/core/model/ResponseModel;
.super Ljava/lang/Object;
.source "ResponseModel.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private showIt:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_it"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/ResponseModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 21
    iget v0, p0, Lru/rocketbank/core/model/ResponseModel;->status:I

    return v0
.end method

.method public final isShowIt()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lru/rocketbank/core/model/ResponseModel;->showIt:Z

    return v0
.end method
