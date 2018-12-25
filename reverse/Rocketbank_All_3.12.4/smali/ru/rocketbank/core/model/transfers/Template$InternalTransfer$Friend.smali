.class public Lru/rocketbank/core/model/transfers/Template$InternalTransfer$Friend;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/Template$InternalTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Friend"
.end annotation


# instance fields
.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field public mobilePhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile_phone"
    .end annotation
.end field

.field final synthetic this$1:Lru/rocketbank/core/model/transfers/Template$InternalTransfer;

.field public userpicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/transfers/Template$InternalTransfer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$InternalTransfer$Friend;->this$1:Lru/rocketbank/core/model/transfers/Template$InternalTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
